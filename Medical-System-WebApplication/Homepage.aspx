<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Medical_System_WebApplication.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
    <div class="container-fluid p-0 video-section">
        <video class="object-fit-cover"  autoplay muted loop id="video-background">
            <source src="src/homepage-video.mp4" type="video/mp4"/>
        </video>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="section2" runat="server">
</asp:Content>
