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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_LogIn_Click(object sender, EventArgs e)
        {
            // check if login email exists in database

            string sql = "SELECT COUNT(*) FROM Patient WHERE PatientEmailAddress = @PatientEmailAddress";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            string sqlPwd = "SELECT PatientPassword FROM Patient WHERE PatientPassword = @PatientPassword";
            string strConPwd = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conPwd = new SqlConnection(strConPwd);
            SqlCommand cmdPwd = new SqlCommand(sqlPwd, conPwd);


            Session["loggedInEmail"] = loginEmailInput.Text;
            string PatientEmail = loginEmailInput.Text;
            string PatientPassword = loginPasswordInput.Text;

            cmd.Parameters.AddWithValue("@PatientEmailAddress", PatientEmail);
            cmd.Parameters.AddWithValue("@PatientPassword", PatientPassword);

            con.Open();
            int existCount = Convert.ToInt32(cmd.ExecuteScalar()); // run sql statement and return single value
            string pwd = Convert.ToString(cmdPwd.ExecuteScalar());

            if (existCount > 0) // email exists
            {
                // check if login credentials correct, direct to dashboard
                if (pwd == PatientPassword)
                { // if correct password
                    Response.Redirect("PatientDashboard.aspx");
                }
                else
                {
                    //ModelState.AddModelError(string.Empty, "Email does not exists.")
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect password. Please try again.')", true);
                }

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