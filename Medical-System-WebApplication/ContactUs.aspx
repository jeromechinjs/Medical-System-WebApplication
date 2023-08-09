<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Medical_System_WebApplication.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
    <form>
        <div>Our Hours of Operation
            <table style="width: 100%;" border="1">
                <tr border="1"> <%--header--%>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr> <%--monday--%>
                    <td><strong>Monday</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr> <%--tuesday--%>
                    <td><strong>Tuesday</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr> <%--wednesday--%>
                    <td><strong>Wednesday</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr> <%--thursday--%>
                    <td><strong>Thurday</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr> <%--friday--%>
                    <td><strong>Friday</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr> <%--saturday--%>
                    <td><strong>Saturday</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr> <%--sunday--%>
                    <td><strong>Sunday</strong></td>
                    <td class="text-center">Closed</td>
                </tr>
            </table>
        </div>
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
    </form>
</asp:Content>

<%-- Notes (Inside the Contact Us)
    - Location / map information
    - Contact information
    - Hours of operation--%>

<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server"></asp:Content>


