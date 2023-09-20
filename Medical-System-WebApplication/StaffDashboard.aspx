﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="StaffDashboard.aspx.cs" Inherits="Medical_System_WebApplication.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="profile" runat="server">
    <div class="col-10 p-4 flex-column d-flex justify-content-center">
        <p class="my-3 fs-2 fw-bolder">Personal Info</p>

        <div class="mb-4 flex">
            <asp:Label for="emailData" class="form-label" runat="server" Text="Email Address"></asp:Label>
        </div>

        <div class="mb-4">
            <asp:Label for="passwordData" class="form-label" runat="server" Text="Password"></asp:Label>
        </div>

    </div>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="appointments" runat="server">
    <div class="col-10 p-4 flex-column d-flex justify-content-center">
        <p class="my-3 fs-2 fw-bolder">Appointments</p>

        <div class="container">
            <asp:GridView class="table table-bordered table-condensed table-responsive table-hover " ID="gvAppointmentManage" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="AppointmentID"
                ShowHeaderWhenEmpty="True" OnRowCommand="gvAppointmentManage_RowCommand" OnRowDeleting="gvAppointmentManage_RowDeleting" AllowSorting="True">
                <%-- Theme --%>

                <Columns>
                    <%-- Patient ID --%>

                    <asp:TemplateField HeaderText="Patient ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("PatientID") %>' runat="server" />
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox ID="txtPatientID" Text='<%# Eval("PatientID") %>' runat="server" />
                        </EditItemTemplate>

                        <FooterTemplate>
                            <asp:TextBox ID="txtPatientIDFooter" runat="server" />
                        </FooterTemplate>

                    </asp:TemplateField>

                    <%-- Appointment Date --%>

                    <asp:TemplateField HeaderText="Appointment Date">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("AppointmentDate") %>' runat="server" />
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox ID="txtAppointmentDate" Text='<%# Eval("AppointmentDate") %>' runat="server" />
                        </EditItemTemplate>

                        <FooterTemplate>
                            <asp:TextBox ID="txtAppointmentDateFooter" runat="server" />
                        </FooterTemplate>

                    </asp:TemplateField>


                    <%-- Appointment Time --%>

                    <asp:TemplateField HeaderText="Appointment Time">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("AppointmentTime") %>' runat="server" />
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox ID="txtAppointmentTime" Text='<%# Eval("AppointmentTime") %>' runat="server" />
                        </EditItemTemplate>

                        <FooterTemplate>
                            <asp:TextBox ID="txtAppointmentTimeFooter" runat="server" />
                        </FooterTemplate>

                    </asp:TemplateField>

                    <%-- Concern --%>

                    <asp:TemplateField HeaderText="Concern and Request">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("ConcernAndRequest") %>' runat="server" />
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox ID="txtConcernAndRequest" Text='<%# Eval("ConcernAndRequest") %>' runat="server" />
                        </EditItemTemplate>

                        <FooterTemplate>
                            <asp:TextBox ID="txtConcernAndRequestFooter" runat="server" />
                        </FooterTemplate>

                    </asp:TemplateField>

                    <%-- Specialty ID --%>

                    <asp:TemplateField HeaderText="Specialty ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("SpecialtyID") %>' runat="server" />
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:TextBox ID="txtSpecialtyID" Text='<%# Eval("SpecialtyID") %>' runat="server" />
                        </EditItemTemplate>

                        <FooterTemplate>
                            <asp:TextBox ID="txtSpecialtyIDFooter" runat="server" />
                        </FooterTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/src/check-mark.png" runat="server" CommandName="Delete" ToolTip="Check" Width="20px" Height="20px" />
                        </ItemTemplate>

                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/src/add.png" runat="server" CommandName="AddNew" ToolTip="AddNew" Width="20px" Height="20px" />
                        </FooterTemplate>

                    </asp:TemplateField>

                </Columns>
            </asp:GridView>

            <br />

            <br />
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="enquiry" runat="server">
    <div class="col-10 p-4 flex-column d-flex justify-content-center">
        <p class="my-3 fs-2 fw-bolder">Enquiries</p>
        <asp:GridView class="table table-bordered table-condensed table-responsive table-hover " ID="gvFeedback" runat="server" DataSourceID="sqlFeedback" AutoGenerateColumns="False" DataKeyNames="FeedbackName" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="FeedbackName" HeaderText="Name" ReadOnly="True" SortExpression="FeedbackName"></asp:BoundField>
                <asp:BoundField DataField="FeedbackEmail" HeaderText="Email" SortExpression="FeedbackEmail"></asp:BoundField>
                <asp:BoundField DataField="FeedbackPhone" HeaderText="Phone Number" SortExpression="FeedbackPhone"></asp:BoundField>
                <asp:BoundField DataField="FeedbackPatient" HeaderText="Patient? (Y = Yes / N = No)" SortExpression="FeedbackPatient"></asp:BoundField>
                <asp:BoundField DataField="FeedbackTextBox" HeaderText="Feedback Content" SortExpression="FeedbackTextBox"></asp:BoundField>
            </Columns>
        </asp:GridView>
        
        <asp:SqlDataSource ID="sqlFeedback" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
        
    </div>
</asp:Content>


