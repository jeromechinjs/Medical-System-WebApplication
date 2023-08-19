using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Medical_System_WebApplication
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack || DropDownList2.SelectedValue == "-1")
            {
                string command = SqlDataSource1.SelectCommand; // added just for debug purpose
                SqlDataSource1.SelectCommand = "SELECT * FROM Product";
                SqlDataSource1.DataBind();
                DataList1.DataBind();
            }
            //if (!Page.IsPostBack)
            //{
            //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            //    SqlCommand com = new SqlCommand("SELECT * from Product", con);
            //    SqlDataAdapter da = new SqlDataAdapter(com);
            //    DataSet ds = new DataSet();
            //    da.Fill(ds, "Product");

            //    con.Open();



            //    con.Close();
            //}
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}