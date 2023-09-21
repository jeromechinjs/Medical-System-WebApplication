using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.CodeDom;

namespace Medical_System_WebApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter dataAdapter;
        DataSet ds = new DataSet();
        string query;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Appointment_Calendar.Visible = false;

                GetSpecialty();
                FindADoctor_DropDown.Items.Insert(0, " Find A Doctor");

            }

            if (!string.IsNullOrEmpty(Request.QueryString["PatientName"]))
            {
                con.Open();
                cmd = new SqlCommand("SELECT PatientID, PatientName, PatientEmailAddress, PatientPhoneNum FROM [Patient] WHERE PatientName = @PatientName", con);
                cmd.Parameters.AddWithValue("@PatientName", Request.QueryString["PatientName"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txt_PatientID.Text = dr["PatientID"].ToString();
                    txt_PatientName.Text = dr["PatientName"].ToString();
                    txt_Email.Text = dr["PatientEmailAddress"].ToString();
                    txt_Phone.Text = dr["PatientPhoneNum"].ToString();
                }
                con.Close();
            } 
        }
        private void GetSpecialty()
        {
            query = "Select * from Specialty";
            dataAdapter = new SqlDataAdapter(query, con);

            dataAdapter.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                AnySpecialty_DropDown.DataSource = ds;
                AnySpecialty_DropDown.DataTextField = "SpecialtyName";
                AnySpecialty_DropDown.DataValueField = "SpecialtyID";
                AnySpecialty_DropDown.DataBind();
                AnySpecialty_DropDown.Items.Insert(0, new ListItem("Any Specialties", "0"));
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void MedicalConcernTextBo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void img_appointment_Click(object sender, ImageClickEventArgs e)
        {
            if (Appointment_Calendar.Visible)
            {
                Appointment_Calendar.Visible = false;
            }
            else
            {
                Appointment_Calendar.Visible = true;
            }
            Appointment_Calendar.Attributes.Add("style", "position:absolute");
        }

        protected void Appointment_Calendar_SelectionChanged(object sender, EventArgs e)
        {
            txt_Appointment.Text = Appointment_Calendar.SelectedDate.ToString("dd/MM/yyyy");
            Appointment_Calendar.Visible = false;

        }

        protected void Appointment_Calendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Azure;
            }
        }

        protected void AnySpecialty_DropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string get_SpecialtyID, get_SpecialtyName;

             get_SpecialtyID = AnySpecialty_DropDown.SelectedValue.ToString();
             get_SpecialtyName = AnySpecialty_DropDown.SelectedItem.Text;

             if (get_SpecialtyID != "0")
             {
                 query = "Select DoctorID, DoctorName from Doctor where SpecialtyID ='"+ get_SpecialtyID.ToString() + "'";
                 dataAdapter = new SqlDataAdapter(query, con);
                 dataAdapter.Fill(ds);
                 if (ds.Tables[0].Rows.Count > 0)
                 {
                     FindADoctor_DropDown.DataSource = ds;
                     FindADoctor_DropDown.DataTextField = "DoctorName";
                     FindADoctor_DropDown.DataValueField = "DoctorID";
                     FindADoctor_DropDown.DataBind();
                     FindADoctor_DropDown.Items.Insert(0, new ListItem("Choose " + get_SpecialtyName.ToString()));
                     FindADoctor_DropDown.SelectedIndex = 0;
                 }
             }
        }

        protected void btn_searchDoctor_Click(object sender, EventArgs e)
        {
            /*string display;
            display = "Your Specialty: " + AnySpecialty_DropDown.SelectedItem.Text + "Your Doctor: " + FindADoctor_DropDown.SelectedItem.Text + "";
            Display.Text = display;*/
            
            if(FindADoctor_DropDown.SelectedIndex == 0)
            {
                Response.Write("<script>alert('Please select Specialty or Doctor Name to proceed');</script>");
            }
            else
            {
                Response.Redirect(FindADoctor_DropDown.SelectedItem.Text.Trim() + ".aspx");
            }

            
            
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
           
            string sqlQuery = "INSERT INTO [Appointment] (PatientID, AppointmentDate," + "AppointmentTime, ConcernAndRequest, SpecialtyName) VALUES (@PatientID, @AppointmentDate, @AppointmentTime, @ConcernAndRequest, @SpecialtyName)";
            cmd = new SqlCommand(sqlQuery, con);

            string PatientID = txt_PatientID.Text;
            cmd.Parameters.AddWithValue("PatientID", PatientID);

            string AppointmentDate = txt_Appointment.Text;
            cmd.Parameters.AddWithValue("AppointmentDate", AppointmentDate);

            string AppointmentTime = Appointment_Time_DropDown.Text;
            cmd.Parameters.AddWithValue("AppointmentTime", AppointmentTime);

            string ConcernAndRequest = MedicalConcernTextBox.Text;
            cmd.Parameters.AddWithValue("ConcernAndRequest", ConcernAndRequest);

            string SpecialtyName = DropDownSelectSpeciality.Text;
            cmd.Parameters.AddWithValue("SpecialtyName", SpecialtyName);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Thanks for the booking. Booked Successfully.');</script>");
        }
    }
}