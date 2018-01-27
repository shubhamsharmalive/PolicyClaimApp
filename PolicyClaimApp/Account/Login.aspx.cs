using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using PolicyClaimApp.Models;
using System.Xml;

namespace PolicyClaimApp.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = new UserManager();
                ApplicationUser user = manager.Find(UserName.Text, Password.Text);
                if (user != null)
                {
                    IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                else
                {
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
                }
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string text = string.Empty;
            string passkey = string.Empty;
            XmlDocument XmlDocObj = new XmlDocument();
            XmlDocObj.Load(Server.MapPath("UserDetails.xml"));
            XmlNodeList xnl = XmlDocObj.SelectNodes("/UserDetails/user");
            foreach (XmlNode node in xnl)
            {
                text = (node.FirstChild).InnerText;
                if (text == UserName.Text)
                {
                    passkey = (node.LastChild).InnerText;
                    if(passkey==Password.Text)
                    {
                        Session["IsLoggedIn"] = "Y";
                        Response.Redirect("ClaimPolicy.aspx");
                    }
                }
            }
        }
    }
}