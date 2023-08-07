<%@ Page Title="Appointment" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Medical_System_WebApplication.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
	
	<div>
		<h2>Doctor Appointment</h2>
		<asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
			<p>	&nbsp;</p>
	</div>
	<form id="form1" runat="server">
		Patient&#39;s Information
		<br />
		<br />
		<asp:Label ID="PatientID_Label" runat="server" Text="Patient ID: "></asp:Label>
		<asp:Label ID="PatientID_Label_Content" runat="server"></asp:Label>
		<br />
		<br />
		<asp:Label ID="PatientName_Label" runat="server" Text="Patient Name"></asp:Label>
		<br />
		<br />
		<asp:TextBox ID="txt_PatientName" runat="server" OnTextChanged="TextBox1_TextChanged1" Width="300px"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Email_Label" runat="server" Text="Email Address"></asp:Label>
		<br />
		<asp:TextBox ID="txt_Email" runat="server" Width="300px"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="phoneNum_Label" runat="server" Text="Phone Number"></asp:Label>
		<br />
		<asp:TextBox ID="txt_Phone" runat="server" Width="300px"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Gender_Label" runat="server" Text="Gender"></asp:Label>
		<br />
		<asp:DropDownList ID="dropDown_Gender" runat="server" Width="300px">
			<asp:ListItem>Male</asp:ListItem>
			<asp:ListItem>Female</asp:ListItem>
		</asp:DropDownList>
		<br />
		<br />
		<asp:Label ID="Birth_Label" runat="server" Text="Date Of Birth"></asp:Label>
		<br />
		<asp:TextBox ID="txt_Birth_Calander" runat="server" type="date" Width="300px"></asp:TextBox>
		<br />
		<br />
		Appointment Details<br />
		<br />
		<asp:Label ID="requestSpeciality_Label" runat="server" Text="Request Speciality"></asp:Label>
			<br />
		<br />
		<asp:DropDownList ID="DropDownSelectSpeciality" runat="server" AutoPostBack="True" Width="300px">
			<asp:ListItem>Select Speciality</asp:ListItem>
			<asp:ListItem>Pain Management</asp:ListItem>
			<asp:ListItem>Dose Vaccination</asp:ListItem>
			<asp:ListItem>Spine Management</asp:ListItem>
		</asp:DropDownList>
	
	
		<br />
		<asp:ScriptManager ID="ScriptManager1" runat="server">
		</asp:ScriptManager>
		<br />
		
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">
			<ContentTemplate>
				
				<asp:Label ID="appointment_Label" runat="server" Text="Appointment Date"></asp:Label>
				<br />
				<asp:TextBox ID="txt_Appointment" runat="server" Width="300px" BackColor="#FFFFCC" ReadOnly="True">Select Appointment Date</asp:TextBox>
				<asp:ImageButton ID="img_appointment" runat="server" Height="25px" ImageAlign="AbsBottom" ImageUrl="~/src/calendar_appointment.png" OnClick="img_appointment_Click" Width="31px" />
				<asp:Calendar ID="Appointment_Calendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnDayRender="Appointment_Calendar_DayRender" OnSelectionChanged="Appointment_Calendar_SelectionChanged" Width="200px">
					<DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
					<NextPrevStyle VerticalAlign="Bottom" />
					<OtherMonthDayStyle ForeColor="#808080" />
					<SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
					<SelectorStyle BackColor="#CCCCCC" />
					<TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
					<TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
					<WeekendDayStyle BackColor="#FFFFCC" />
				</asp:Calendar>
			</ContentTemplate>
		</asp:UpdatePanel>
		<br />
		<br />
		<asp:Label ID="MedicalConcern_Label" runat="server" Text=" Medical Concern or Request (REQUIRED)"></asp:Label>
		<br />
		<br />
		<asp:TextBox ID="MedicalConcernTextBo" runat="server" AutoPostBack="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Dotted" Columns="1" EnableTheming="True" ForeColor="#333333" Height="165px" MaxLength="1000" OnTextChanged="MedicalConcernTextBo_TextChanged" TextMode="MultiLine" Width="455px"></asp:TextBox>
		<br />
		<br />
		<asp:Button ID="btn_Submit" runat="server" BackColor="#80FFFF" ForeColor="#000099" Text="Submit" />
	
	
	</form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server">
</asp:Content>
