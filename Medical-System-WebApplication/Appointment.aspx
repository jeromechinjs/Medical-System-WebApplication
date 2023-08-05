<%@ Page Title="Appointment" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Medical_System_WebApplication.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
	
	<div>
		<h2>Doctor Appointment</h2>
		<asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
			<p>	&nbsp;</p>
	</div>
	<form id="form1" runat="server">
		<asp:Label ID="requestSpeciality_Label" runat="server" Text="Request Speciality"></asp:Label>
			<br />
		<br />
		<asp:DropDownList ID="DropDownSelectSpeciality" runat="server" AutoPostBack="True" Width="311px">
			<asp:ListItem>Select Speciality</asp:ListItem>
			<asp:ListItem>Pain Management</asp:ListItem>
			<asp:ListItem>Dose Vaccination</asp:ListItem>
			<asp:ListItem>Spine Management</asp:ListItem>
		</asp:DropDownList>
	
	
		<br />
		<br />
		<br />
		<asp:Label ID="MedicalConcern_Label" runat="server" Text=" Medical Concern or Request (REQUIRED)"></asp:Label>
		<br />
		<br />
		<asp:TextBox ID="MedicalConcernTextBo" runat="server" AutoPostBack="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Dotted" Columns="1" EnableTheming="True" ForeColor="#333333" Height="165px" MaxLength="1000" OnTextChanged="MedicalConcernTextBo_TextChanged" TextMode="MultiLine" Width="455px"></asp:TextBox>
		<br />
		<br />
		<asp:Button ID="btn_firstPhase" runat="server" BackColor="#80FFFF" ForeColor="#000099" Text="Next" />
	
	
	</form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server">
</asp:Content>
