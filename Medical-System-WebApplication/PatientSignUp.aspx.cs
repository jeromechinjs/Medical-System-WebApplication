using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical_System_WebApplication
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_SignUp_Click(object sender, EventArgs e)
        {
            // check if login credentials correct, direct to dashboard
            Response.Redirect("PatientDashboard.aspx");
        }
    }
}