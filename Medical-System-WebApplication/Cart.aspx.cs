using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Medical_System_WebApplication
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                
                String[] cart = Session["Cart"].ToString().Split(',');

                cart = cart.Where(x => !string.IsNullOrEmpty(x)).ToArray();

                if (cart != null)
                {
                    DataTable dt = new DataTable();
                    DataRow dr;
                    dt.Columns.Add("productName");
                    dt.Columns.Add("productImage");
                    dt.Columns.Add("productPrice");
                    dt.Columns.Add("productTotal");

                    dr = dt.NewRow();

                    foreach (string item in cart)
                    {
                        Debug.WriteLine(item);                        

                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                        SqlDataAdapter da = new SqlDataAdapter("SELECT * from Product where ProductID= '" + item + "'", con);
                        DataSet ds = new DataSet();

                        da.Fill(ds);


                        //dr["productName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        //dr["productImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        //dr["productPrice"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();


                        //int b = Convert.ToInt32(tb.Text.ToString());

                        //int totalPrice = productPrice * b;

                        //dr["ProductTotal"] = 5;


                        dt.Rows.Add(ds.Tables[0].Rows[0]["ProductName"].ToString(), ds.Tables[0].Rows[0]["ProductImage"].ToString(), ds.Tables[0].Rows[0]["ProductPrice"].ToString(), 5);
                        
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
                
                if (GridView1.DataSource == null)
                {
                    string emptyCart = "<div class=\"card w-100 my-5 p-3\">\r\n    <h2>No Items in Cart</h2>\r\n</div>";
                    Button2.Visible = false;
                    CartItem.Controls.Add(new LiteralControl(emptyCart));
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string productName = btn.CommandArgument.ToString();
            string productID = "";

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            SqlCommand command = new SqlCommand("SELECT ProductID from Product where ProductName= '" + productName + "'", con);

            con.Open();
            SqlDataReader read = command.ExecuteReader();
            if (read.Read())
            {
                productID = read.GetString(0);
            }
            con.Close();
            Session["Cart"] = Session["Cart"].ToString().Replace(productID,"");
            
            Response.Redirect("Cart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }
    }


}