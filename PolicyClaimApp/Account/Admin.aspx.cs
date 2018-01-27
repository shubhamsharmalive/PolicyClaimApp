using System;
using System.Collections.Generic;
using System.Data;
using System.Xml;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PolicyClaimApp.Account
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void gridDataBind()
        {
            DataSet ds = new DataSet();
            //reading data from the BookStore.xml...     
            ds.ReadXml(Server.MapPath("ClaimDetailsData.xml"));
            //Adding dataset ds as a datasource of the grid view...     
            gvBookStoreRecords.DataSource = ds;
            //binding data with grid view...     
            gvBookStoreRecords.DataBind();


        }

        public void gridUserDataBind()
        {
            DataSet ds = new DataSet();
            //reading data from the BookStore.xml...     
            ds.ReadXml(Server.MapPath("UserDetails.xml"));
            //Adding dataset ds as a datasource of the grid view...     
            gvUser.DataSource = ds;
            //binding data with grid view...     
            gvUser.DataBind();


        }

        protected void AllPolicies_Click(object sender, EventArgs e)
        {
            this.gridDataBind();
        }

        protected void AllUser_Click(object sender, EventArgs e)
        {
            this.gridUserDataBind();
        } 

    }
}