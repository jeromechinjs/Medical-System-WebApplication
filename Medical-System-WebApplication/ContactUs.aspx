<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Medical_System_WebApplication.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
        <style>
            table, tr, td {
                border: 1px solid black;
                border-collapse: collapse;
            }

            td{
                text-align: center;
            }
        </style>

        <div class="container my-4">
            <h2>Contact Us</h2>
            <p>Our Hours of Operation</p>
            <table style="width: 100%;" border="1">
                <tr>
                    <td><strong>Day of the Week</strong></td>
                    <td><strong>Hours of Operation</strong></td>
                </tr>
                <tr>
                    <td>Monday</td>
                    <td>8:00 AM ~ 8:00 PM</td>
                </tr>
                <tr>
                    <td>Tuesday</td>
                    <td>8:00 AM ~ 8:00 PM</td>
                </tr>
                <tr>
                    <td>Wednesday</td>
                    <td>8:00 AM ~ 8:00 PM</td>
                </tr>
                <tr>
                    <td>Thurday</td>
                    <td>8:00 AM ~ 8:00 PM</td>
                </tr>
                <tr>
                    <td>Friday</td>
                    <td>8:00 AM ~ 8:00 PM</td>
                </tr>
                <tr>
                    <td>Saturday</td>
                    <td>8:00 AM ~ 6:00 PM</td>
                </tr>
                <tr>
                    <td>Sunday</td>
                    <td><strong>Closed</strong></td>
                </tr>
            </table>
            <br />
            <div>
                If any questions, please call: <asp:HyperLink ID="ContectNumber" runat="server">+60 12-345 6789</asp:HyperLink>
                <br />
                or send a E-mail to us: <asp:HyperLink ID="email" runat="server">MedicalCentre@gmail.com</asp:HyperLink>
            </div>
            <br />
            <div>
                Visit our Medical Centre, at: <asp:HyperLink ID="Address" runat="server"><div>No.123, Jalan Ampang Utara, <br />Taman Pandah Mewah, <br />68000 Ampang, <br />Selangor.</div></asp:HyperLink>
            </div>
        </div>
</asp:Content>

<%-- Notes (Inside the Contact Us)
    - Location / map information
    - Contact information
    - Hours of operation--%>

<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server"></asp:Content>


