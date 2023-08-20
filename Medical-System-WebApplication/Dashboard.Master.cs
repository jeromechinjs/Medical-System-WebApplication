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

        string currentPageUrl = HttpContext.Current.Request.Url.AbsolutePath;

        protected void Page_Load(object sender, EventArgs e)
        {
            appointments.Visible = false;
            enquiry.Visible = false;

            // hide btn enquiry in navbar when in patient dashboard
            if (currentPageUrl == "/StaffDashboard.aspx")
            {
                btnEnquiry.Visible = true;
            } else
            {
                btnEnquiry.Visible = false;
            }


        }

        protected void profileView_Click(object sender, EventArgs e)
        {
            profile.Visible = true;
            appointments.Visible = false;
            enquiry.Visible = false;

        }

        protected void appointmentView_Click(object sender, EventArgs e)
        {
            profile.Visible = false;
            appointments.Visible = true;
            enquiry.Visible = false;

        }
        protected void enquiriesView_Click(object sender, EventArgs e)
        {
            profile.Visible = false;
            appointments.Visible = false;
            enquiry.Visible = true;
        }


    }
}