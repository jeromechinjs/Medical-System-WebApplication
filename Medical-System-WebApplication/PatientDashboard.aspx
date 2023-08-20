<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="PatientDashboard.aspx.cs" Inherits="Medical_System_WebApplication.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="profile" runat="server">
	<div class="col-10 p-4 flex-column d-flex justify-content-center">
		<p class="my-3 fs-2 fw-bolder">Personal Info</p>

		<asp:DetailsView class="table table-bordered table-condensed table-responsive table-hover" ID="profileInfo" AutoGenerateRows="False" DataKeyNames="PatientID" runat="server" Height="100%" Width="80%" DataSourceID="SqlDataSource1">
			<Fields>
				<asp:BoundField DataField="PatientID" HeaderText="ID" ReadOnly="True" SortExpression="PatientID" />
                <asp:BoundField DataField="PatientName" HeaderText="Name" SortExpression="PatientName" />
                <asp:BoundField DataField="PatientEmailAddress" HeaderText="Email" SortExpression="PatientEmailAddress" />
                <asp:BoundField DataField="PatientPhoneNum" HeaderText="Phone Number" SortExpression="PatientPhoneNum" />
				<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="Birth Date" SortExpression="DateOfBirth" />
				                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />

			</Fields>
		</asp:DetailsView>                   
	</div>
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
		ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
		SelectCommand="SELECT * FROM [Patient]"
		UpdateCommand="UPDATE [Patient] SET PatientID = @PatientID, PatientName = @PatientName, PatientEmailAddress = @PatientEmailAddress, PatientPhoneNum = @PatientPhoneNum, Gender = @Gender, DateOfBirth = @DateOfBirth
        WHERE PatientID = @PatientID">

		<UpdateParameters>
			<asp:Parameter Name="PatientID" Type="String" />
			<asp:Parameter Name="PatientName" Type="String" />
			<asp:Parameter Name="PatientEmailAddress" Type="String" />
			<asp:Parameter Name="PatientPhoneNum" Type="String" />
			<asp:Parameter Name="Gender" Type="String" />
			<asp:Parameter Name="DateOfBirth" Type="DateTime" />
		</UpdateParameters>               
	</asp:SqlDataSource>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="appointments" runat="server">
	<div class="col-10 p-4 flex-column d-flex justify-content-center">
 		<p class="my-3 fs-2 fw-bolder">Appointments</p>
		<div class="container">
			<asp:GridView class="table table-bordered table-condensed table-responsive table-hover" ID="gvAppointmentManage" runat="server" AutoGenerateColumns="False" DataKeyNames="AppointmentID"
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
	</div>

</asp:Content>
