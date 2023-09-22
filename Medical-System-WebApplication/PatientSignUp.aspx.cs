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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_SignUp_Click(object sender, EventArgs e)
        {
            // check if login email exists in database
            // check if patient email is duplicated

            string sql = "SELECT COUNT(*) FROM Patient WHERE PatientEmailAddress = @PatientEmailAddress";
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            string PatientEmail = txt_Email.Text;
            string PatientPassword = password.Text;

            cmd.Parameters.AddWithValue("@PatientEmailAddress", PatientEmail);
            cmd.Parameters.AddWithValue("@PatientPassword", PatientPassword);

            con.Open();
            int existCount = Convert.ToInt32(cmd.ExecuteScalar()); // run sql statement and return single value

            if (existCount > 0) // email exists
            {
                // check if login credentials correct, direct to dashboard
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Email already existed')", true);

            }
            else
            { // email does not exist (insert new patient data)

                string sql2 = "INSERT INTO [Patient] (PatientName, PatientEmailAddress, PatientPassword, PatientAddress, PatientCity, PatientState, PatientZipcode, PatientPhoneNum, Gender, DateOfBirth) " +
                    "VALUES (@PatientName, @PatientEmailAddress, @PatientPassword, @PatientAddress, @PatientCity, @PatientState, @PatientZipcode, @PatientPhoneNum, @Gender, @DateOfBirth)"; // Patient (all field names) values(@field name)
                string strCon2 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con2 = new SqlConnection(strCon2);
                SqlCommand cmd2 = new SqlCommand(sql2, con2);

                string PatientName = patientFirstName.Text + " " + patientLastName.Text;
                string PatientAddress = address.Text;
                string PatientCity = city.Text;
                string PatientState = state.Text;
                string PatientZipcode = zipcode.Text;
                string PatientPhone = txt_Phone.Text;
                string PatientGender = dropDown_Gender.Text;
                string PatientDOB = txt_Birth_Calander.Text;

                cmd2.Parameters.AddWithValue("@PatientName", PatientName);
                cmd2.Parameters.AddWithValue("@PatientEmailAddress", PatientEmail);
                cmd2.Parameters.AddWithValue("@PatientPassword", PatientPassword);
                cmd2.Parameters.AddWithValue("@PatientAddress", PatientAddress);
                cmd2.Parameters.AddWithValue("@PatientCity", PatientCity);
                cmd.Parameters.AddWithValue("@PatientState", PatientState);
                cmd2.Parameters.AddWithValue("@PatientZipcode", PatientZipcode);
                cmd2.Parameters.AddWithValue("@PatientPhoneNum", PatientPhone);
                cmd2.Parameters.AddWithValue("@Gender", PatientGender);
                cmd2.Parameters.AddWithValue("@DateOfBirth", PatientDOB);

                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();

                // if patient email is unique, add new patient and redirect into patient dashboard
                Response.Redirect("PatientDashboard.aspx");
            }

            con.Close();
          
        }
    }
}