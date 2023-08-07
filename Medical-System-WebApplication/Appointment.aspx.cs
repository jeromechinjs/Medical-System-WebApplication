using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical_System_WebApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Appointment_Calendar.Visible = false;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void MedicalConcernTextBo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void img_appointment_Click(object sender, ImageClickEventArgs e)
        {
            if (Appointment_Calendar.Visible)
            {
                Appointment_Calendar.Visible = false;
            }
            else
            {
                Appointment_Calendar.Visible = true;
            }
            Appointment_Calendar.Attributes.Add("style", "position:absolute");
        }

        protected void Appointment_Calendar_SelectionChanged(object sender, EventArgs e)
        {
            txt_Appointment.Text = Appointment_Calendar.SelectedDate.ToString("dd/MM/yyyy");
            Appointment_Calendar.Visible = false;

        }

        protected void Appointment_Calendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Azure;
            }
        }
    }
}