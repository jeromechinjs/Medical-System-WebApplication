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
