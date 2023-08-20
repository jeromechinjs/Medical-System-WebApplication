using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;
using System.Web.UI.HtmlControls;

namespace Medical_System_WebApplication
{
    public partial class Site2 : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void profileView_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }

        protected void appointmentView_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");

        }
    }
}