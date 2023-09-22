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

            if (!Page.IsPostBack)
            {
                string CustomerID = Request.QueryString["CustomerId"] ?? "";
                string sql = "select * from Customers where CustomerID = @CustomerID";

                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@CustomerID", CustomerID);

                con.Open();

            }
        }


        void PopulateGridView()
        {
            con.Open();
            DataTable table = new DataTable();

            dataAdapter = new SqlDataAdapter("SELECT * FROM Appointment", con);
          

            dataAdapter.Fill(table);

            if (table.Rows.Count > 0)
            {
                if (Session["PatientEmailAddress"] != null)
                {
                    gvAppointmentManage.DataSource = table;

                    string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                    string query = "SELECT A.PatientID, A.AppointmentDate, A.AppointmentTime, A.ConcernAndRequest, P.PatientEmailAddress FROM A Appointment, P Patient WHERE A.PatientID = P.PatientID AND P.PatientEmailAddress=" + Session["PatientEmmailAddress"] + "";
                    

                    using (SqlConnection con = new SqlConnection(conString))
                    {
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            con.Open();
                            cmd.Parameters.AddWithValue("@P." + Session["PatientEmailAddress"] + "", Session["PatientEmailAddress"]);
                            
                            gvAppointmentManage.DataBind();
                            con.Close();
                        }
                    }
                    
                }
                else
                {
                    Response.Redirect("PatientLogin.aspx");
                }
            }
                
                //cmd.Parameters.AddWithValue("@P." + Session["PatientEmailAddress"] + "", !string.IsNullOrEmpty(this.Page.User.Identity.Name) ? this.Page.User.Identity.Name : (object)DBNull.Value);
                //using (SqlConnection con = new SqlConnection(conString))
                //{
                //    using (SqlDataAdapter sda = new SqlDataAdapter())
                //    {
                //        cmd.Connection = con;
                //        sda.SelectCommand = cmd;
                //        using (DataTable dt = new DataTable())
                //        {
                //            sda.Fill(dt);
                            
                //        }
                //    }
                //}
                
            
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
            con.Close();


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
                Response.Write("<script>alert('Appointment Canceled.');</script>");

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + ");</script>");
            }

        }

    }

}
