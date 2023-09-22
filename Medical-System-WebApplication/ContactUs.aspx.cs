using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Medical_System_WebApplication
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void feedback_submit_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO [Feedback] (FeedbackName, FeedbackEmail, FeedbackPhone, FeedbackPatient, FeedbackTextBox) " +
                "VALUE (@FeedbackName, @FeedbackEmail, @FeedbackPhone, @FeedbackPatient, @FeedbackTextBox)";

            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            string FeedbackName = feedback_name.Text;
            string FeedbackEmail = feedback_email.Text;
            string FeedbackPhone = feedback_phone.Text;
            string FeedbackPatient = feedback_patient.SelectedValue;
            string FeedbackTextBox = feedback_textbox.Text;

            cmd.Parameters.AddWithValue("@FeedbackName", FeedbackName);
            cmd.Parameters.AddWithValue("@FeedbackEmail", FeedbackEmail);
            cmd.Parameters.AddWithValue("@FeedbackPhone", FeedbackPhone);
            cmd.Parameters.AddWithValue("@FeedbackPatient", FeedbackPatient);
            cmd.Parameters.AddWithValue("@FeedbackTextBox", FeedbackTextBox);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("ContactUs.aspx");
        }
    }
}