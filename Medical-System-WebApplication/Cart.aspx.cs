using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Medical_System_WebApplication
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("productName");
                dt.Columns.Add("productImage");
                dt.Columns.Add("productPrice");
                dt.Columns.Add("productTotal");

                dr = dt.NewRow();

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                SqlDataAdapter da = new SqlDataAdapter("SELECT * from Product where ProductID= '" + Request.QueryString["id"] + "'", con);
                DataSet ds = new DataSet();

                da.Fill(ds);


                dr["productName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                dr["productImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                dr["productPrice"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();

                int productPrice = Convert.ToInt32(ds.Tables[0].Rows[0]["ProductPrice"].ToString());

                //TextBox tb = (TextBox)GridView1.Rows[0].FindControl("quantity");
                //int b = Convert.ToInt32(tb.Text.ToString());

                //int totalPrice = productPrice * b;
                
                dr["ProductTotal"] = 5;

                dt.Rows.Add(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }


    }
}