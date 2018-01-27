using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace PolicyClaimApp.Account
{
    public partial class ClaimPolicy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClaimPolicy_Click(object sender, EventArgs e)
        {

            // creating object of XML DOCument class   
            XmlDocument XmlDocObj = new XmlDocument();
            //loading XML File in memory   
            XmlDocObj.Load(Server.MapPath("ClaimDetailsData.xml"));
            //Select root node which is already defined   
            XmlNode RootNode = XmlDocObj.SelectSingleNode("PolicyClaims");
            //Creating one child node with tag name book   
            XmlNode bookNode = RootNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "book", ""));
            //adding node title to book node and inside it data taking from tbTitle TextBox   

            bookNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Name", "")).InnerText = txtName.Text;
            //adding node Author to book node and inside it data taking from tbAuthor TextBox   
            bookNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Policy", "")).InnerText = txtPolicy.Text;
            //adding node Year to book node and inside it data taking from tbYear TextBox   
            bookNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Email", "")).InnerText = txtEmail.Text;
            //adding node tbPrice to book node and inside it data taking from tbPrice TextBox   
            //bookNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Price", "")).InnerText = tbPrice.Text;

            //after adding node, saving BookStore.xml back to the server   
            XmlDocObj.Save(Server.MapPath("ClaimDetailsData.xml"));

            //Calling grid view binding method.   
            //gridDataBind();  
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myScript", "openEmailClient();", true);
        }
    }
}