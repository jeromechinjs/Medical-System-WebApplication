using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical_System_WebApplication
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        // Appointment Management 

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
                Response.Write("<script>alert('Patient Checked in! Appointment Completed. ');</script>");

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + ");</script>");
            }

        }

    }

}