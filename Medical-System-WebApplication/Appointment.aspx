<%@ Page Title="Appointment" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Medical_System_WebApplication.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">

	<style>
		div.card {
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			text-align: center;
		}

		div.vertical-center {
			text-align: unset;
		}
	</style>


	<div class="container my-4">
		<h2>Doctor Appointment</h2>
		<asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
		<p>&nbsp;</p>
		<form id="form1" runat="server">
			<%-- Patient's information--%>
			<div class="container mt-4 ms-3">
				<div class="row">

					<div class="col p-0 my-2 my-lg-0">
						<h2>Patient&#39s Information</h2>
						<div class="mb-3 mt-3">
							<asp:Label for="txtPatientID_Content" ID="PatientID_Label" runat="server" Text="Patient ID"></asp:Label>
							&nbsp;<asp:TextBox ID="txt_PatientID" class="form-control" runat="server" ReadOnly="True" Width="320px"></asp:TextBox>
						</div>

						<div class="mb-3">
							<asp:Label for="txt_PatientName" ID="PatientName_Label" runat="server" Text="Patient Name"></asp:Label>
							<asp:TextBox ID="txt_PatientName" class="form-control" runat="server" OnTextChanged="TextBox1_TextChanged1" Width="320px"></asp:TextBox>
						</div>

						<div class="mb-3">
							<asp:Label for="txt_Email" ID="Email_Label" runat="server" Text="Email Address"></asp:Label>
							<asp:TextBox ID="txt_Email" class="form-control" placeholder="name@example.com" runat="server" Width="320px"></asp:TextBox>
						</div>

						<div class="mb-3">
							<asp:Label for="txt_Phone" ID="phoneNum_Label" runat="server" Text="Phone Number"></asp:Label>
							<asp:TextBox ID="txt_Phone" class="form-control" runat="server" Width="320px"></asp:TextBox>
						</div>

						<div class="mb-3">
							<asp:Label for="dropDown_Gender" ID="Gender_Label" runat="server" Text="Gender"></asp:Label>
							<asp:DropDownList class="form-select" ID="dropDown_Gender" runat="server" Width="320px">
								<asp:ListItem>Male</asp:ListItem>
								<asp:ListItem>Female</asp:ListItem>
							</asp:DropDownList>
						</div>

						<div class="mb-3">
							<asp:Label for="txt_Birth_Calander" ID="Birth_Label" runat="server" Text="Date Of Birth"></asp:Label>
							<asp:TextBox ID="txt_Birth_Calander" class="form-control" runat="server" type="date" Width="320px"></asp:TextBox>
						</div>
					</div>



					<%-- Appointment's information--%>
					<div class="col p-0 my-2 my-lg-0">
						<h2>Appointment Details</h2>
						<div class="container mt-3">
							<div class="mb-3 mt-3">
								<asp:Label for="DropDownSelectSpeciality" ID="requestSpeciality_Label" runat="server" Text="Request Speciality"></asp:Label>
								<asp:DropDownList ID="DropDownSelectSpeciality" class="form-select" runat="server" AutoPostBack="True" Width="320px">
									<asp:ListItem>Select Specialty</asp:ListItem>
									<asp:ListItem>Pain Management</asp:ListItem>
									<asp:ListItem>Dose Vaccination</asp:ListItem>
									<asp:ListItem>Spine Management</asp:ListItem>
								</asp:DropDownList>
							</div>

							<div class="mb-3">
								<asp:ScriptManager ID="ScriptManager1" runat="server">
								</asp:ScriptManager>
								<br />
								<asp:UpdatePanel ID="UpdatePanel1" runat="server">
									<ContentTemplate>

										<asp:Label for="txt_Appointment" ID="appointment_Label" runat="server" Text="Appointment Date"></asp:Label>
										<asp:TextBox ID="txt_Appointment" runat="server" class="form-control" Width="320px" BackColor="#FFFFCC" ReadOnly="True">Select Appointment Date</asp:TextBox>
										<asp:ImageButton ID="img_appointment" runat="server" Height="25px" ImageAlign="AbsBottom" ImageUrl="~/src/calendar_appointment.png" OnClick="img_appointment_Click" Width="31px" />
										<asp:Calendar ID="Appointment_Calendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnDayRender="Appointment_Calendar_DayRender" OnSelectionChanged="Appointment_Calendar_SelectionChanged" Width="200px">
											<DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
											<NextPrevStyle VerticalAlign="Bottom" />
											<OtherMonthDayStyle ForeColor="#808080" />
											<SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
											<SelectorStyle BackColor="#CCCCCC" />
											<TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
											<TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
											<WeekendDayStyle BackColor="#FFFFCC" />
										</asp:Calendar>
									</ContentTemplate>
								</asp:UpdatePanel>
							</div>

							<div class="mb-3">
								<asp:Label for="Appointment_Time_DropDown" ID="Appointment_Time_Label" runat="server" Text="Appointment Time"></asp:Label>
								<asp:DropDownList ID="Appointment_Time_DropDown" class="form-select" runat="server" Width="320px">
									<asp:ListItem>10:00AM - 11:00AM</asp:ListItem>
								</asp:DropDownList>
							</div>

							<div class="mb-3">
								<asp:Label for="MedicalConcernTextBox" ID="MedicalConcern_Label" runat="server" Text=" Medical Concern or Request (REQUIRED)"></asp:Label>
								<asp:TextBox ID="MedicalConcernTextBox" runat="server" class="form-control" AutoPostBack="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Dotted" Columns="1" EnableTheming="True" ForeColor="#333333" Height="165px" MaxLength="1000" OnTextChanged="MedicalConcernTextBo_TextChanged" TextMode="MultiLine" Width="400px"></asp:TextBox>

								<br />
								<asp:Button class="btn btn-sm btn-primary" ID="btn_Submit" runat="server" Text="Submit" Width="130px" OnClick="btn_Submit_Click" />


							</div>
						</div>
					</div>


					<div class="col p-0 my-2 my-lg-0">
						<div class="card my-4">
							<h2 class="card-body">Find a doctor</h2>
							<div class="container mt-3 ms-3">

								<div class="mb-3 ms-4">
									<asp:DropDownList ID="AnySpecialty_DropDown" runat="server" class="form-select" Width="300px" AutoPostBack="True" OnSelectedIndexChanged="AnySpecialty_DropDown_SelectedIndexChanged">
										<asp:ListItem Value="0">Any Specialties</asp:ListItem>
									</asp:DropDownList>
								</div>

								<div class="mb-3 ms-4">
									<asp:DropDownList ID="FindADoctor_DropDown" runat="server" class="form-select" Width="300px" AutoPostBack="True">
									</asp:DropDownList>
								</div>
								<div class="mb-3">
									<asp:Button ID="btn_searchDoctor" class="btn btn-primary" runat="server" Text="Search" OnClick="btn_searchDoctor_Click" />


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


		</form>
	</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server">
</asp:Content>
