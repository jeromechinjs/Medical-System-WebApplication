<%@ Page Title="Staff Log In" Language="C#" MasterPageFile="~/LoginPage.Master" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="Medical_System_WebApplication.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="loginPageTitle" runat="server">
    View Patient Appointments, <br> All In One Place.
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="loginPageLists" runat="server">
    <div>
        <div class="my-4">  
            <img src="src/alert-circle.svg" class="icon">
            <span class="ms-4 text-light align-self-center">View upcoming appointments</span>
        </div>
        <div class="my-4">  
            <img src="src/align-right.svg" class="icon">
            <span class="ms-4 text-light align-self-center">Convenient glance of information</span>
        </div>
        <div class="my-4"> 
            <img src="src/list.svg" class="icon">
            <span class="ms-4 text-light align-self-center">Get your tasks done</span>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="loginFormText" runat="server">
    Log into your account to view upcoming patient appointments.
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="loginForm" runat="server">
    <form id="loginForm" runat="server" class="d-flex flex-column justify-content-center">
	    <div class="mb-4">
		    <asp:Label for="loginEmailInput" class="form-label" runat="server" Text="Email Address"></asp:Label>
            <asp:RequiredFieldValidator ID="requiredEmail" runat="server" ErrorMessage="Kindly enter your email" ControlToValidate="loginEmailInput" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
		    <asp:TextBox ID="loginEmailInput" class="form-control" type="email" placeholder="name@example.com" runat="server"></asp:TextBox>
        </div>

	    <div class="mb-4">
		    <asp:Label for="loginPasswordInput" class="form-label" runat="server" Text="Password"></asp:Label>
            <asp:RequiredFieldValidator ID="requiredPassword" runat="server" ErrorMessage="Kindly enter your password" ControlToValidate="loginPasswordInput" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="loginPasswordInput" class="form-control" type="password" runat="server"></asp:TextBox>
	    </div>

        <asp:ValidationSummary ID="validationSummaryPatientLogin" runat="server" CssClass="text-danger" />

        <asp:Button class="btn btn-primary" ID="btn_Login" runat="server" Text="Log In" OnClick="btn_LogIn_Click" />
    </form>
</asp:Content>


