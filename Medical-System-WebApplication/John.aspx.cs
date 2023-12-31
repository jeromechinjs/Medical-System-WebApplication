﻿using System;
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
    public partial class John : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter dataAdapter;
        DataSet ds = new DataSet();
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetSpecialty();
                FindADoctor_DropDown.Items.Insert(0, " Find A Doctor");
            }
        }

        private void GetSpecialty()
        {
            query = "Select * from Specialty";
            dataAdapter = new SqlDataAdapter(query, con);

            dataAdapter.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                AnySpecialty_DropDown.DataSource = ds;
                AnySpecialty_DropDown.DataTextField = "SpecialtyName";
                AnySpecialty_DropDown.DataValueField = "SpecialtyID";
                AnySpecialty_DropDown.DataBind();
                AnySpecialty_DropDown.Items.Insert(0, new ListItem("Any Specialties", "0"));
            }
        }

        protected void AnySpecialty_DropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string get_SpecialtyID, get_SpecialtyName;

            get_SpecialtyID = AnySpecialty_DropDown.SelectedValue.ToString();
            get_SpecialtyName = AnySpecialty_DropDown.SelectedItem.Text;

            if (get_SpecialtyID != "0")
            {
                query = "Select DoctorID, DoctorName from Doctor where SpecialtyID ='" + get_SpecialtyID.ToString() + "'";
                dataAdapter = new SqlDataAdapter(query, con);
                dataAdapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    FindADoctor_DropDown.DataSource = ds;
                    FindADoctor_DropDown.DataTextField = "DoctorName";
                    FindADoctor_DropDown.DataValueField = "DoctorID";
                    FindADoctor_DropDown.DataBind();
                    FindADoctor_DropDown.Items.Insert(0, new ListItem("Choose " + get_SpecialtyName.ToString()));
                    FindADoctor_DropDown.SelectedIndex = 0;
                }
            }
        }

        protected void btn_searchDoctor_Click(object sender, EventArgs e)
        {
            /*string display;
            display = "Your Specialty: " + AnySpecialty_DropDown.SelectedItem.Text + "Your Doctor: " + FindADoctor_DropDown.SelectedItem.Text + "";
            Display.Text = display;*/

            Response.Redirect(FindADoctor_DropDown.SelectedItem.Text.Trim() + ".aspx");

        }
    }
}