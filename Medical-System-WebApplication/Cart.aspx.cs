using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Web.UI.WebControls.WebParts;
using static System.Net.Mime.MediaTypeNames;

namespace Medical_System_WebApplication
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Session["Cart"] != null)
                {
                    String[] cart = Session["Cart"].ToString().Split(',');

                    cart = cart.Where(x => !string.IsNullOrEmpty(x)).ToArray();

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

                        dt.Rows.Add(ds.Tables[0].Rows[0]["ProductName"].ToString(), ds.Tables[0].Rows[0]["ProductImage"].ToString(), ds.Tables[0].Rows[0]["ProductPrice"].ToString(), ds.Tables[0].Rows[0]["ProductPrice"].ToString());

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
            Session["Cart"] = Session["Cart"].ToString().Replace(productID, "");

            Response.Redirect("Cart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        protected void txt_OnTextChanged(object sender, EventArgs e)
        {
            TextBox quantityTB = (TextBox)sender;

            GridViewRow gridRow = (GridViewRow)((TextBox)sender).NamingContainer;
            int rowIndex = gridRow.RowIndex;

            int quantity = Convert.ToInt32(quantityTB.Text);

            System.Diagnostics.Debug.WriteLine(quantity);

            System.Diagnostics.Debug.WriteLine(rowIndex + "Hi am row index");

            GridViewRow rowTest = GridView1.Rows[rowIndex];

            System.Diagnostics.Debug.WriteLine(GridView1.Rows[rowIndex].Cells[2].Text);

            string rowPrice = GridView1.Rows[rowIndex].Cells[2].Text;

            int price = Convert.ToInt32(rowPrice);

            System.Diagnostics.Debug.WriteLine(rowPrice + " Hi am price");

            int total = 0;
            total = quantity * price;

            GridView1.Rows[rowIndex].Cells[4].Text = total.ToString();

        }
    }

}
