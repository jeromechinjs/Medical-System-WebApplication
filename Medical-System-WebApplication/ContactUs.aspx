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
            <p><strong>For more informations, please call: </strong><a href="tel:+60312345678">+603-1234 5678</a></p>

            <p><strong>For Medical Inquiries, please use WhapsApp to contact us: </strong><a href="https://wa.me/60123456789">+6012-345 6789</a></p>

            <p><strong>Email: </strong><a href="mailto:medical.centre@gmail.com">medical.centre@gmail.com</a></p>      
        </div>
        <br />
        <div>
            <h4><strong>Visit our Medical Centre</strong></h4>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127491.42139435375!2d101.45619059726558!3d3.06608540000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc4c848dc32f31%3A0x77197dd40b736133!2z5Y-M5aiB5Yy755aX5Lit5b-D!5e0!3m2!1szh-CN!2smy!4v1692587924198!5m2!1szh-CN!2smy" width=100% height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

        </div>
        <br />
        <div>
            <h4><strong>Our Hours of Operation</strong></h4>
            <table style="width: 70%;" border="1">
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
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server">
    <div class="container my-4">
        <br />
        <h2>Feedback</h2>
        <p>Do you have any suggestions want to share with us?</p>
        <form id="form1" runat="server">
            <div>
                <asp:Label for="feedback_name" class="form-label" runat="server" Text="Your Name: "></asp:Label>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Please fill up your name!" ControlToValidate="feedback_name" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="feedback_name" class="form-control" type="name" placeholder="Full Name" runat="server"></asp:TextBox>
                <br />

                <asp:Label for="feedback_email" class="form-label" runat="server" Text="Your Email: "></asp:Label>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Please fill up your Email!" ControlToValidate="feedback_email" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="feedback_email" class="form-control" type="email" placeholder="name@example.com" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="feedback_email" Display="Dynamic" ErrorMessage="Please fill the correct email format!" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">E.g. example@example.com</asp:RegularExpressionValidator>
                <br />
                
                <asp:Label for="feedback_phone" class="form-label" runat="server" Text="Your Phone Number: "></asp:Label>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Please fill in your phone number!" ControlToValidate="feedback_phone" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="feedback_phone" class="form-control" type="phone" placeholder="012 345 6789" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="feedback_phone" Display="Dynamic" ErrorMessage="Please fill in your phone number with number only!" ForeColor="Red" ValidationExpression="^\d+">E.g. 012-1233210 or 0121233210</asp:RegularExpressionValidator>
                <br />

                <asp:Label for="feedback_patient" class="form-label" runat="server" Text="Are you an existing patient?"></asp:Label>
                <asp:RequiredFieldValidator ID="rfvPatient" runat="server" ErrorMessage="Please choose you are a patient or not!" ControlToValidate="feedback_patient" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:RadioButtonList ID="feedback_patient" runat="server" RepeatDirection="Vertical" RepeatLayout="Flow">
                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                    <asp:ListItem Value="N">No</asp:ListItem>
                </asp:RadioButtonList>
                <br />

                <asp:RequiredFieldValidator ID="rfvTextBox" runat="server" ErrorMessage="Please fill up your suggestion or feedback." ControlToValidate="feedback_textbox" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>                
                <asp:Label for="feedback_textbox" runat="server" Text="Inquiry / Feedback / Suggestion"></asp:Label>
                <asp:TextBox ID="feedback_textbox" class="form-control" runat="server" AutoPostBack="True" Height="165px" MaxLength="1000" Width=100% TextMode="MultiLine"></asp:TextBox>
                <br />
                
                <asp:Button ID="feedback_submit" class="btn btn-sm btn-primary" runat="server" Text="Submit" OnClick="feedback_submit_Click" />
                <asp:ValidationSummary ID="vsFeedback" ShowMessageBox="true" ShowSummary="false" runat="server" />            
            </div>
        </form>
    </div>
</asp:Content>