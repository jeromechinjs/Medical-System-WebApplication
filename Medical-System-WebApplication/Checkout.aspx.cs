using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Medical_System_WebApplication
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";


            if (!IsPostBack)
            {
                String[] cart = Session["Cart"].ToString().Split(',');

                cart = cart.Where(x => !string.IsNullOrEmpty(x)).ToArray();
                foreach (var item in cart)
                {
                    Debug.WriteLine(item);

                    DataTable dt = new DataTable();
                    DataRow dr;
                    dt.Columns.Add("productName");
                    dt.Columns.Add("productImage");
                    dt.Columns.Add("productPrice");
                    dt.Columns.Add("productTotal");

                    dr = dt.NewRow();



                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                    SqlDataAdapter da = new SqlDataAdapter("SELECT * from Product where ProductID= '" + item + "'", con);
                    DataSet ds = new DataSet();

                    da.Fill(ds);


                    dr["productName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                    dr["productImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                    dr["productPrice"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();

                    //int productPrice = Convert.ToInt32(ds.Tables[0].Rows[0]["ProductPrice"].ToString());

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }
    }
}