<%@ Page Title="Patient Log In" Language="C#" MasterPageFile="~/LoginPage.Master" AutoEventWireup="true" CodeBehind="PatientLogin.aspx.cs" Inherits="Medical_System_WebApplication.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="loginPageTitle" runat="server">
    Hi there. <br> Great to see you.
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="loginPageLists" runat="server">
    <div>
        <div class="my-4">  
            <img src="src/people.svg" class="icon">
            <span class="ms-4 text-light align-self-center">Best advice from doctors</span>
        </div>
        <div class="my-4">  
            <img src="src/headset.svg" class="icon">
            <span class="ms-4 text-light align-self-center">Available 24/7 for consultation</span>
        </div>
        <div class="my-4"> 
            <img src="src/alarm.svg" class="icon">
            <span class="ms-4 text-light align-self-center">Get your questions answered within 1 hour</span>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="loginFormText" runat="server">
        Log into your account to view your appointments and profile details.
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

<asp:Content ID="Content4" ContentPlaceHolderID="patientSignUpTxt" runat="server">
        <a href="PatientSignUp.aspx" class="text-center mt-4" target="_blank">Don't have an account yet? Create one here</a>
</asp:Content>

