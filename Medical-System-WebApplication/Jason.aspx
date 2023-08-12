<%@ Page Title="Dr.Jason - Pain Management" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Jason.aspx.cs" Inherits="Medical_System_WebApplication.Jason" %>


<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">


	<style>
		div.card {
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.09);
			text-align: center;
		}

		div.vertical-center {
			text-align: unset;
		}
	</style>


	<div class="container">
		<br />
		<h2>Dr. Jason</h2>
		<form id="form1" runat="server">

			<asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>

			<%-- Doctor's Img and location information--%>
			<div class="container mt-4 ms-3">
				<div class="row">

					<div class="col p-0">
						<h4>Doctor's Information</h4>


						<div class="mb-3">
							<div class="card" style="width: 70%; height: 30%">
								<asp:Image ID="JohnImg" class="card-img-top" alt="Dr. John" runat="server" ImageUrl="~/src/test.jpg" Height="300px" />
							</div>
						</div>

						<div class="mb-3">
							<h5>Location: </h5>
						</div>

						<div class="mb-3">
							<p>first floor office 301B</p>
						</div>
					</div>

					<%-- Doctor's detail information--%>
					<div class="col">
						<div class="container mt-3">
							<div class="mb-3 mt-3">
								<br />
								<h3>Dr. Jason</h3>
							</div>

							<div class="mb-3 me-3">
								<p><strong>Specialty &nbsp;&nbsp;&nbsp;&nbsp;:</strong>  Pain Management</p>
								<p><strong>Languages &nbsp;&nbsp;:</strong>  English, Mandarin</p>
								<p><strong>Gender &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</strong>  Male</p>
								<p><strong>Qualification:</strong>  MBChb (Leeds University, UK), Master in Anesthesiology (UM) , Fellowship in Intensive Care (MOH)</p>
								<p><strong>Assistant &nbsp;&nbsp;&nbsp;&nbsp;:</strong>  N/A</p>
								<br />

							</div>
							<br />

						</div>
					</div>

					<div class="col">
						<div class="card">
							<h2 class="card-body">Find a doctor</h2>
							<div class="container mt-3 ms-3">
								<div class="mb-3 mt-3">
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
			</div>

		</form>
	</div>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server">
</asp:Content>