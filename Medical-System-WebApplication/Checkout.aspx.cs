﻿using System;
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
            txtAddress.Text = "";
            TextBox2.Text = "";


            if (!IsPostBack)
            {

                if (Session["Cart"] != null)
                {
                    String[] cart = Session["Cart"].ToString().Split(',');

                    cart = cart.Where(x => !string.IsNullOrEmpty(x)).ToArray();

                    System.Diagnostics.Debug.WriteLine(cart);
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

                        GridView1.FooterRow.Cells[4].Text = Session["Sum"].ToString();

                        System.Diagnostics.Debug.WriteLine(Session["Sum"].ToString());
                        GridView1.FooterRow.Cells[3].HorizontalAlign = HorizontalAlign.Center;
                        GridView1.FooterRow.Cells[4].HorizontalAlign = HorizontalAlign.Center;

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
                            rowQuantity.BorderStyle = BorderStyle.None;
                        }
                    }

                }
            }
        }

        protected void placeOrder(object sender, EventArgs e)
        {   
            if (Session["Cart"] != null)
            {
                String[] cart = Session["Cart"].ToString().Split(',');

                cart = cart.Where(x => !string.IsNullOrEmpty(x)).ToArray();

                String[] quantity = Session["Quantity"].ToString().Split(',');

                quantity = quantity.Where(x => !string.IsNullOrEmpty(x)).ToArray();

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                


                int currentQuantity = 0;
                int count = 0;
                foreach(GridViewRow row in GridView1.Rows)
                {
                    con.Open();
                    SqlCommand commandSelect = new SqlCommand("Select ProductQuantity FROM Product Where ProductID= '" + cart[count] + "'", con);
                    SqlDataReader read = commandSelect.ExecuteReader();
                    if (read.Read())
                    {
                        currentQuantity = read.GetInt32(0);
                    }

                    con.Close();
                    con.Open();
                    SqlCommand command = new SqlCommand("Update Product SET ProductQuantity= @ProductQuantity WHERE ProductID= @ProductID", con);

                    int newQuantity = currentQuantity - Convert.ToInt32(quantity[count]);

                    command.Parameters.AddWithValue("@ProductQuantity", newQuantity);

                    command.Parameters.AddWithValue("@ProductID", cart[count]);

                    command.ExecuteNonQuery();
                    con.Close();

                    count++;
                }


            }

            Session["Cart"] = null;
            Session["Total"] = null;
            Session["Quantity"] = null;


            Response.Redirect("Homepage.aspx");
        }

    }
}