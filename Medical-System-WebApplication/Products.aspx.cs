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
        ArrayList cart = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Product";
                SqlDataSource1.DataBind();
                DataList1.DataBind();
            }
            //|| DropDownList2.SelectedValue == "-1"

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            string productID = btn.CommandArgument.ToString();

            cart.Add(productID);
            Debug.WriteLine(cart.Count);
            Session["Cart"] = cart;
        }
    }
}