using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical_System_WebApplication
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_LogIn_Click(object sender, EventArgs e)
        {
            // check if login email exists in database

            string sql = "SELECT COUNT(*) FROM STAFF WHERE StaffEmailAddress = @StaffEmailAddress";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            Session["loggedInEmail"] = loginEmailInput.Text;
            string StaffEmail = loginEmailInput.Text;
            string StaffPassword = loginPasswordInput.Text;

            cmd.Parameters.AddWithValue("@StaffEmailAddress", StaffEmail);

            con.Open();
            int existCount = Convert.ToInt32(cmd.ExecuteScalar()); // run sql statement and return single value

            if (existCount > 0) // email exists
            {
                // check if login credentials correct, direct to dashboard
                Response.Redirect("StaffDashboard.aspx");
            }
            else
            {
                //ModelState.AddModelError(string.Empty, "Email does not exists.")
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Email does not exists')", true);
            }

            //cmd.ExecuteNonQuery();
            con.Close();


        }
    }
}