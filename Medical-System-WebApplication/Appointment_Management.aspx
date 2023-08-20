﻿<%@ Page Title="Appointment Schedule" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Appointment_Management.aspx.cs" Inherits="Medical_System_WebApplication.Appointment_Management" %>

<<<<<<< HEAD
<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
=======
<asp:Content ID="Content1" ContentPlaceHolderID="completedAppointments" runat="server">
>>>>>>> a3a194ca67e0ef286f22088725465af8a3f84822


	<form id="form1" runat="server">
		<div class ="container">
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
			<asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green"/>

			<br />
			<asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

		</div>
	</form>


</asp:Content>
