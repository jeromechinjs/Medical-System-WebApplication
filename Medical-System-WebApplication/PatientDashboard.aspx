﻿<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="PatientDashboard.aspx.cs" Inherits="Medical_System_WebApplication.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="profile" runat="server">
	<p class="my-3 fs-2 fw-bolder">Personal Info</p>
                   
	<div class="mb-4 flex">
		<asp:Label for="emailData" class="form-label" runat="server" Text="Email Address"></asp:Label>
	</div>

	<div class="mb-4">
		<asp:Label for="passwordData" class="form-label" runat="server" Text="Password"></asp:Label>
	</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="appointments" runat="server">
	<div class="container">
		<asp:GridView class="table table-bordered table-condensed table-responsive table-hover " ID="gvAppointmentManage" runat="server" AutoGenerateColumns="False" DataKeyNames="AppointmentID"
			ShowHeaderWhenEmpty="True" OnRowDeleting="gvAppointmentManage_RowDeleting" AllowSorting="True">
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

				<asp:TemplateField>
					<ItemTemplate>
						<asp:ImageButton ImageUrl="~/src/deletebtn.png" runat="server" CommandName="Delete" ToolTip="Check" Width="20px" Height="20px" />
					</ItemTemplate>

				</asp:TemplateField>

			</Columns>
		</asp:GridView>
	</div>

</asp:Content>
