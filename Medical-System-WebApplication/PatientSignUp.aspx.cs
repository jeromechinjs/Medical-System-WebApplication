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
            string sql = "INSERT INTO [Patient] (PatientName, PatientEmailAddress, PatientPassword, PatientAddress, PatientCity, PatientState, PatientZipcode, PatientPhoneNum, Gender, DateOfBirth) " +
                "VALUES (@PatientName, @PatientEmailAddress, @PatientPassword, @PatientAddress, @PatientCity, @PatientState, @PatientZipcode, @PatientPhoneNum, @Gender, @DateOfBirth)"; // Patient (all field names) values(@field name)
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            string PatientName = patientFirstName.Text + " " + patientLastName.Text;
            string PatientEmail = txt_Email.Text;
            string PatientPassword = password.Text;
            string PatientAddress = address.Text;
            string PatientCity = city.Text;
            string PatientState = state.Text;
            string PatientZipcode = zipcode.Text;
            string PatientPhone = txt_Phone.Text;
            string PatientGender = dropDown_Gender.Text;
            string PatientDOB = txt_Birth_Calander.Text;

            cmd.Parameters.AddWithValue("@PatientName", PatientName);
            cmd.Parameters.AddWithValue("@PatientEmailAddress", PatientEmail);
            cmd.Parameters.AddWithValue("@PatientPassword", PatientPassword);
            cmd.Parameters.AddWithValue("@PatientAddress", PatientAddress);
            cmd.Parameters.AddWithValue("@PatientCity", PatientCity);
            cmd.Parameters.AddWithValue("@PatientState", PatientState);
            cmd.Parameters.AddWithValue("@PatientZipcode", PatientZipcode);
            cmd.Parameters.AddWithValue("@PatientPhoneNum", PatientPhone);
            cmd.Parameters.AddWithValue("@Gender", PatientGender);
            cmd.Parameters.AddWithValue("@DateOfBirth", PatientDOB);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            // check if patient email is duplicated

            // if patient email is unique, add new patient and redirect into patient dashboard
            Response.Redirect("PatientDashboard.aspx");
        }
    }
}