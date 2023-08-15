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
            <br />
            <div>
                <p><strong>If any questions, please call: </strong><asp:HyperLink ID="ContectNumber" runat="server">+60 12-345 6789</asp:HyperLink></p>
                <p><strong>Email: </strong><asp:HyperLink ID="email" runat="server">MedicalCentre@gmail.com</asp:HyperLink></p>
            </div>
            <br />
            <div>
                <h4><strong>Visit our Medical Centre</strong></h4>
                <asp:HyperLink ID="Address" runat="server">No.123, Jalan Ampang Utara, Taman Pandah Mewah, 68000 Ampang, Selangor.</asp:HyperLink>
            </div>
            <br />
            <div>
                <h4><strong>Our Hours of Operation</strong></h4>
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
            </div>
            <br />
            <div>
                <h4><strong>Suggestion</strong></h4> <%--thinking...--%>
            </div>            
        </div>
</asp:Content>

<%-- Notes (Inside the Contact Us)
    - Location / map information
    - Contact information
    - Hours of operation--%>

<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server"></asp:Content>


