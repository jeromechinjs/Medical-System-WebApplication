﻿<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Medical_System_WebApplication.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
    <form>
        <div>Our Hours of Operation</div>
        <br />
        <div>
            If any questions, please call: <asp:HyperLink ID="ContectNumber" runat="server">+60 12-345 6789</asp:HyperLink>
        </div>
        <br />
        <div>
            Visit our Medical Centre, at: <asp:HyperLink ID="Address" runat="server"><div>No.123, Jalan Ampang Utara, <br />Taman Pandah Mewah, <br />68000 Ampang, <br />Selangor.</div></asp:HyperLink>
        </div>
    </form>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server"> 
    testing 2
</asp:Content>


<%-- Notes (Inside the Contact Us)
    - Location / map information
    - Contact information
    - Hours of operation--%>
