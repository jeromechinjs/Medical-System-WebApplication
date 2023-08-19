<%@ Page Title="Appointment Schedule" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Appointment_Management.aspx.cs" Inherits="Medical_System_WebApplication.Appointment_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="upcomingAppointments" runat="server">

	<!---------- copied into dashboard.master ----------->

	<form id="form1" runat="server">
		<div>
			<asp:GridView ID="gvAppointmentManage" runat="server" AutoGenerateColumns="False" DataKeyNames="AppointmentID" 
				ShowHeaderWhenEmpty="True" OnRowDeleting="gvAppointmentManage_RowDeleting"

				BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True">
				<%-- Theme --%>
				<FooterStyle BackColor="White" ForeColor="#000066" />
				<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
				<RowStyle ForeColor="#000066" />
				<SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
				<SortedAscendingCellStyle BackColor="#F1F1F1" />
				<SortedAscendingHeaderStyle BackColor="#007DBB" />
				<SortedDescendingCellStyle BackColor="#CAC9C9" />
				<SortedDescendingHeaderStyle BackColor="#00547E" />

				<Columns>
					<%-- Appointment ID --%>
					<asp:TemplateField HeaderText="Appointment ID">
						<ItemTemplate>
							<asp:Label Text='<%# Eval("AppointmentID") %>' runat="server" />
						</ItemTemplate>

						<EditItemTemplate>
							<asp:TextBox ID="txtAppointmentID" Text='<%# Eval("AppointmentID") %>' runat="server" />
						</EditItemTemplate>

						<FooterTemplate>
							<asp:TextBox ID="txtAppointmentIDFooter" runat="server" />
						</FooterTemplate>

					</asp:TemplateField>

					<%-- Patient ID --%>

					<asp:TemplateField HeaderText="Patient ID">
						<ItemTemplate>
							<asp:Label Text='<%# Eval("PatientID") %>' runat="server" />
						</ItemTemplate>

						<EditItemTemplate>
							<asp:TextBox ID="txtPatientID" Text='<%# Eval("PatientID") %>' runat="server" />
						</EditItemTemplate>

					</asp:TemplateField>

					<%-- Appointment Date --%>

					<asp:TemplateField HeaderText="Appointment Date">
						<ItemTemplate>
							<asp:Label Text='<%# Eval("AppointmentDate") %>' runat="server" />
						</ItemTemplate>

						<EditItemTemplate>
							<asp:TextBox ID="txtAppointmentDate" Text='<%# Eval("AppointmentDate") %>' runat="server" />
						</EditItemTemplate>

					</asp:TemplateField>


					<%-- Appointment Time --%>

					<asp:TemplateField HeaderText="Appointment Time">
						<ItemTemplate>
							<asp:Label Text='<%# Eval("AppointmentTime") %>' runat="server" />
						</ItemTemplate>

						<EditItemTemplate>
							<asp:TextBox ID="txtAppointmentTime" Text='<%# Eval("AppointmentTime") %>' runat="server" />
						</EditItemTemplate>

					</asp:TemplateField>

					<%-- Concern --%>

					<asp:TemplateField HeaderText="Concern and Request">
						<ItemTemplate>
							<asp:Label Text='<%# Eval("ConcernAndRequest") %>' runat="server" />
						</ItemTemplate>

						<EditItemTemplate>
							<asp:TextBox ID="txtConcernAndRequest" Text='<%# Eval("ConcernAndRequest") %>' runat="server" />
						</EditItemTemplate>

					</asp:TemplateField>

					<%-- Specialty ID --%>

					<asp:TemplateField HeaderText="Specialty ID">
						<ItemTemplate>
							<asp:Label Text='<%# Eval("SpecialtyID") %>' runat="server" />
						</ItemTemplate>

						<EditItemTemplate>
							<asp:TextBox ID="txtSpecialtyID" Text='<%# Eval("SpecialtyID") %>' runat="server" />
						</EditItemTemplate>

					</asp:TemplateField>

					<asp:TemplateField>
						<ItemTemplate>
							<asp:ImageButton ImageUrl="~/src/check-mark.png" runat="server" CommandName="Check" ToolTip="Check" Width="20px" Height="20px" />
						</ItemTemplate>

					</asp:TemplateField>

				</Columns>
			</asp:GridView>

			<br />
			<asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green"/>

			<br />
			<asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

		</div>
	</form>

		<!---------- copied into dashboard.master ----------->

</asp:Content>
