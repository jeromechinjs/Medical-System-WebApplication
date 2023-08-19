using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Medical_System_WebApplication
{
    public partial class Appointment_Management : System.Web.UI.Page
    {
	//---------- copied into dashboard.master.cs -----------

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter dataAdapter;
        DataSet ds = new DataSet();
        string query;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridView();
            }
        }

        void PopulateGridView()
        {
            DataTable table = new DataTable();
            
            dataAdapter = new SqlDataAdapter("SELECT * FROM Appointment", con);
            con.Close();

            dataAdapter.Fill(table);


            if (table.Rows.Count > 0)
            {
                gvAppointmentManage.DataSource = table;
                gvAppointmentManage.DataBind();
            }
            else
            {
                table.Rows.Add(table.NewRow());

                gvAppointmentManage.DataSource = table;
                gvAppointmentManage.DataBind();
                gvAppointmentManage.Rows[0].Cells.Clear();
                gvAppointmentManage.Rows[0].Cells.Add(new TableCell());
                gvAppointmentManage.Rows[0].Cells[0].ColumnSpan = table.Columns.Count;
                gvAppointmentManage.Rows[0].Cells[0].Text = "No Appointment is found !!";
                gvAppointmentManage.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
            

        }

        protected void gvAppointmentManage_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string query = "DELETE FROM Appointment WHERE AppointmentID = @AppointmentID";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@AppointmentID", Convert.ToInt32(gvAppointmentManage.DataKeys[e.RowIndex].Value.ToString()));

                cmd.ExecuteNonQuery();
                PopulateGridView();
                lblSuccessMessage.Text = "Appointment Checked in !";
                lblErrorMessage.Text = "";
                con.Close();
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
            

        }
     //---------- copied into dashboard.master.cs -----------

        protected void gvAppointmentManage_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                    string query = "INSERT INTO Appointment (PatientID, AppointmentDate, AppointmentTime, ConcernAndRequest, SpecialtyID) VALUES (@PatientID, @AppointmentDate, @AppointmentTime, @ConcernAndRequest, @SpecialtyID)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@PatientID", (gvAppointmentManage.FooterRow.FindControl("txtPatientIDFooter") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@AppointmentDate", (gvAppointmentManage.FooterRow.FindControl("txtAppointmentDateFooter") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@AppointmentTime", (gvAppointmentManage.FooterRow.FindControl("txtAppointmentTimeFooter") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@ConcernAndRequest", (gvAppointmentManage.FooterRow.FindControl("txtConcernAndRequestFooter") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@SpecialtyID", (gvAppointmentManage.FooterRow.FindControl("txtSpecialtyIDFooter") as TextBox).Text.Trim());
                    con.Open();
                    cmd.ExecuteNonQuery();
                    PopulateGridView();
                    lblSuccessMessage.Text = "New Appointment Added!";
                    lblErrorMessage.Text = "";

                    con.Close();

                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
            
        }


    }
}
