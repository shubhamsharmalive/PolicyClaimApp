using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using PolicyClaimApp.Models;
using System.Xml;

namespace PolicyClaimApp.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
           // creating object of XML DOCument class   
            XmlDocument XmlDocObj = new XmlDocument();
            //loading XML File in memory   
            XmlDocObj.Load(Server.MapPath("UserDetails.xml"));
            //Select root node which is already defined   
            XmlNode RootNode = XmlDocObj.SelectSingleNode("UserDetails");
            //Creating one child node with tag name book   
            XmlNode bookNode = RootNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "user", ""));
            //adding node title to book node and inside it data taking from tbTitle TextBox   

            bookNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "UserName", "")).InnerText = txtUserName.Text;
            //adding node Author to book node and inside it data taking from tbAuthor TextBox   
            bookNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Email", "")).InnerText = txtEmail.Text;
            //adding node Year to book node and inside it data taking from tbYear TextBox   
            bookNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Mobile", "")).InnerText = txtMobile.Text;
            //adding node tbPrice to book node and inside it data taking from tbPrice TextBox   
            bookNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "UserRole", "")).InnerText = ddlUser.Text;
            bookNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Password", "")).InnerText = Password.Text;

            //after adding node, saving BookStore.xml back to the server   
            XmlDocObj.Save(Server.MapPath("UserDetails.xml"));
          
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);

        }
    }
}