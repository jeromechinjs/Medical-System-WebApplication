<%@ Page Title="Appointment" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Medical_System_WebApplication.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">

	<div>
		<h2>Doctor Appointment</h2>
		<asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
		<p>&nbsp;</p>
	</div>
	<form id="form1" runat="server">
		<div class="container">

			<%-- Patient's information--%>
			<div class="container mt-3">
				<div class="row">
					<div class="col">
						<h2>Patient&#39s Information</h2>
						<div class="mb-3 mt-3">
							<asp:Label ID="PatientID_Label" runat="server" Text="Patient ID: "></asp:Label>
							&nbsp;<asp:TextBox ID="txtPatientID_Content" class="form-control" runat="server" ReadOnly="True" Width="400px"></asp:TextBox>
						</div>

						<div class="mb-3">
							<asp:Label ID="PatientName_Label" runat="server" Text="Patient Name"></asp:Label>
							<asp:TextBox ID="txt_PatientName" class="form-control" runat="server" OnTextChanged="TextBox1_TextChanged1" Width="400px"></asp:TextBox>
						</div>

						<div class="mb-3">
							<asp:Label ID="Email_Label" runat="server" Text="Email Address"></asp:Label>
							<asp:TextBox ID="txt_Email" class="form-control" runat="server" Width="400px"></asp:TextBox>
						</div>

						<div class="mb-3">
							<asp:Label ID="phoneNum_Label" runat="server" Text="Phone Number"></asp:Label>
							<asp:TextBox ID="txt_Phone" class="form-control" runat="server" Width="400px"></asp:TextBox>
						</div>

						<div class="mb-3">
							<asp:Label ID="Gender_Label" runat="server" Text="Gender"></asp:Label>
							<asp:DropDownList class="form-select" ID="dropDown_Gender" runat="server" Width="400px">
								<asp:ListItem>Male</asp:ListItem>
								<asp:ListItem>Female</asp:ListItem>
							</asp:DropDownList>
						</div>

						<div class="mb-3">
							<asp:Label ID="Birth_Label" runat="server" Text="Date Of Birth"></asp:Label>
							<asp:TextBox ID="txt_Birth_Calander" class="form-control" runat="server" type="date" Width="400px"></asp:TextBox>
						</div>
					</div>



					<%-- Appointment's information--%>
					<div class="col">
						<h2>Appointment Details</h2>
						<div class="container mt-3">
							<div class="mb-3 mt-3">
								<asp:Label ID="requestSpeciality_Label" runat="server" Text="Request Speciality"></asp:Label>
								<asp:DropDownList ID="DropDownSelectSpeciality" class="form-select" runat="server" AutoPostBack="True" Width="400px">
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

										<asp:Label ID="appointment_Label" runat="server" Text="Appointment Date"></asp:Label>
										<asp:TextBox ID="txt_Appointment" runat="server" class="form-control" Width="400px" BackColor="#FFFFCC" ReadOnly="True">Select Appointment Date</asp:TextBox>
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
								<asp:Label ID="Appointment_Time_Label" runat="server" Text="Appointment Time"></asp:Label>
								<asp:DropDownList ID="Appointment_Time_DropDown" class="form-select" runat="server" Width="400px">
									<asp:ListItem>10:00AM - 11:00AM</asp:ListItem>
								</asp:DropDownList>
							</div>

							<div class="mb-3">
								<asp:Label ID="MedicalConcern_Label" runat="server" Text=" Medical Concern or Request (REQUIRED)"></asp:Label>
								<asp:TextBox ID="MedicalConcernTextBox" runat="server" class="form-control" AutoPostBack="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Dotted" Columns="1" EnableTheming="True" ForeColor="#333333" Height="165px" MaxLength="1000" OnTextChanged="MedicalConcernTextBo_TextChanged" TextMode="MultiLine" Width="455px"></asp:TextBox>
							</div>
						</div>
					</div>
						<div class="col">
						<h2>Find a doctor</h2>
						<div class="container mt-3">
							<div class="mb-3 mt-3">
								<div class="mb-3">
								<asp:DropDownList ID="AnySpecialty_DropDown" runat="server" class="form-select" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="AnySpecialty_DropDown_SelectedIndexChanged">
									<asp:ListItem Value ="0">Any Specialty</asp:ListItem>
									<asp:ListItem Value ="1">xx</asp:ListItem>
									</asp:DropDownList>
									</div>

								<div class="mb-3">
								<asp:DropDownList ID="FindADoctor_DropDown" runat="server" class="form-select" Width="250px" AutoPostBack="True">
									<asp:ListItem Value="0">Find A Doctor</asp:ListItem>
									<asp:ListItem Value="1">xx</asp:ListItem>
									</asp:DropDownList>
									</div>
								<div class="mb-3">
									<asp:Button ID="btn_searchDoctor" class="btn btn-primary" runat="server" Text="Search" />


								</div>

								</div>
							</div>
							</div>
				</div>
			</div>
		</div>

		<asp:Button class="btn btn-primary" ID="btn_Submit" runat="server" Text="Submit" />


	</form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server">
</asp:Content>
