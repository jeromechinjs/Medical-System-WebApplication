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

                if (Session["Cart"] != null && ViewState["Grid"] == null)
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

                    int count = 0;
                    foreach (string item in cart)
                    {

                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                        SqlDataAdapter da = new SqlDataAdapter("SELECT * from Product where ProductID= '" + item + "'", con);
                        DataSet ds = new DataSet();

                        da.Fill(ds);


                        if (Session["Total"] != null)
                        {
                            String[] total = Session["Total"].ToString().Split(',');
                            total = total.Where(x => !string.IsNullOrEmpty(x)).ToArray();

                            

                            dt.Rows.Add(ds.Tables[0].Rows[0]["ProductName"].ToString(), ds.Tables[0].Rows[0]["ProductImage"].ToString(), ds.Tables[0].Rows[0]["ProductPrice"].ToString(), total[count]);
                                                        
                        }
                        else
                        {
                            dt.Rows.Add(ds.Tables[0].Rows[0]["ProductName"].ToString(), ds.Tables[0].Rows[0]["ProductImage"].ToString(), ds.Tables[0].Rows[0]["ProductPrice"].ToString(), ds.Tables[0].Rows[0]["ProductPrice"].ToString());
                        }

                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        count++;
                    }

                    if (Session["Quantity"] != null)
                    {
                        String[] quantity = Session["Quantity"].ToString().Split(',');
                        quantity = quantity.Where(x => !string.IsNullOrEmpty(x)).ToArray();
                        int countQuantity = 0;
                        foreach (GridViewRow row in GridView1.Rows)
                        {
                            TextBox rowQuantity = (TextBox)row.FindControl("TextBox1");
                            rowQuantity.Text = quantity[countQuantity++];
                        }
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


            GridViewRow rowTest = GridView1.Rows[rowIndex];

            string rowPrice = GridView1.Rows[rowIndex].Cells[2].Text;

            int price = Convert.ToInt32(rowPrice);


            int total = 0;
            total = quantity * price;

            GridView1.Rows[rowIndex].Cells[4].Text = total.ToString();

            string totalPriceList = "";
            string quantityList = "";

            foreach (GridViewRow row in GridView1.Rows)
            {
                TextBox rowQuantity = (TextBox)row.FindControl("TextBox1");

                quantityList = quantityList + "," + rowQuantity.Text;
                totalPriceList = totalPriceList + "," + row.Cells[4].Text;
            }

            Session["Quantity"] = quantityList;
            Session["Total"] = totalPriceList;

            System.Diagnostics.Debug.WriteLine(Session["Quantity"]);
            System.Diagnostics.Debug.WriteLine(Session["Total"]);
        }

    }
}
