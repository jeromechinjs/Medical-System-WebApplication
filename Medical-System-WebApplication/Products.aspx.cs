using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
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
            if (!Page.IsPostBack)
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Product";
                SqlDataSource1.DataBind();
                DataList1.DataBind();
            }

            if (DropDownList2.SelectedValue == "-1")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Product";
            }
            else
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM [Product] inner join ProductCategory on Product.CategoryID=ProductCategory.CategoryID and ProductCategory.CategoryID=@CategoryID";
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            string productID = btn.CommandArgument.ToString();

            if (Session["cart"] != null)
            {
                Session["Cart"] = Session["Cart"] + "," + productID;
            }
            else
            {
                Session["Cart"] = productID;
            }
            System.Diagnostics.Debug.WriteLine(Session["Cart"]);
        }
    }
}

