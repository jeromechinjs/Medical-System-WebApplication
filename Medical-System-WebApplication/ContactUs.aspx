<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Medical_System_WebApplication.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
    <form>
        <div>Our Hours of Operation</div>
        <style>
            table, tr, td {
                border: 1px solid black;
                border-collapse: collapse;

            }
        </style>
        <form class="row g-3">
              <div class="col-md-6">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail4">
              </div>
              <div class="col-md-6">
                <label for="inputPassword4" class="form-label">Password</label>
                <input type="password" class="form-control" id="inputPassword4">
              </div>
              <div class="col-12">
                <label for="inputAddress" class="form-label">Address</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
              </div>
              <div class="col-12">
                <label for="inputAddress2" class="form-label">Address 2</label>
                <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
              </div>
              <div class="col-md-6">
                <label for="inputCity" class="form-label">City</label>
                <input type="text" class="form-control" id="inputCity">
              </div>
              <div class="col-md-4">
                <label for="inputState" class="form-label">State</label>
                <select id="inputState" class="form-select">
                  <option selected>Choose...</option>
                  <option>...</option>
                </select>
              </div>
              <div class="col-md-2">
                <label for="inputZip" class="form-label">Zip</label>
                <input type="text" class="form-control" id="inputZip">
              </div>
              <div class="col-12">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="gridCheck">
                  <label class="form-check-label" for="gridCheck">
                    Check me out
                  </label>
                </div>
              </div>
              <div class="col-12">
                <button type="submit" class="btn btn-primary">Sign in</button>
              </div>
            </form>
            <table style="width: 100%;" border="1">
                <tr> <%--header--%>
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


