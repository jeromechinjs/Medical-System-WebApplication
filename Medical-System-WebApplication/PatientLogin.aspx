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

<asp:Content ID="Content4" ContentPlaceHolderID="patientSignUp" runat="server">
        <a href="PatientSignUp.aspx" class="text-center mt-4" target="_blank">Don't have an account yet? Create one here</a>
</asp:Content>


