<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientSignUp.aspx.cs" Inherits="Medical_System_WebApplication.WebForm8" %>

<!DOCTYPE html>

<html  lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Patient Sign Up</title>

    <!-- Link to Bootstrap CSS library (and custom css) -->
    <link href="Style.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- favicon -->
    <link rel="icon" type="image/x-icon" href="src/leaves-icon.svg">
    
</head>
<body>
    <main>
        <div class="container-fluid py-5 overflow-x-hidden">
            <div class="row">

                <!-- background -->
                <div class="flex-column loginBg fixed-top w-50 justify-content-center align-items-center d-none d-sm-flex">
                    <p class="fs-2 fw-light">
                        Let's get you sign up. <br /> Kindly fill in your details.
                    </p>
                </div>


                <div class="col d-none d-sm-block"></div> <!-- spacings -->
                <div class="col flex-column d-flex justify-content-center">
                    <!-- signup form -->
                    <img src="src/leaves-icon.svg" class="align-self-center" alt="Logo" width="40" height="44" />
                    <p class="my-3 text-center fs-3 fw-bolder text-success">Sign Up</p>

                    <form id="patientSignUpForm" runat="server" class="d-flex flex-column justify-content-center">
                            <!-- Patient ID auto generate -->
<%--		                <div class="my-3">
			                <asp:Label for="txtPatientID_Content" ID="PatientID_Label" runat="server" Text="Patient ID"></asp:Label>
			                <asp:TextBox ID="txtPatientID_Content" class="form-control" runat="server" ReadOnly="True" ></asp:TextBox>
		                </div>--%>
                        <div class="row">
                            <div class="col">
			                    <asp:Label for="patientFirstName" class="form-label" ID="patientFirstName_Label" runat="server" Text="First Name"></asp:Label>
                                <asp:RequiredFieldValidator ID="requiredFirstName" runat="server" ErrorMessage="Kindly enter your first name" ControlToValidate="patientFirstName" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                                <asp:TextBox ID="patientFirstName" class="form-control" runat="server" ></asp:TextBox>
                            </div>
                             <div class="col">
			                    <asp:Label for="patientLastName" class="form-label" ID="patientLastName_Label" runat="server" Text="Last Name"></asp:Label>
                                 <asp:RequiredFieldValidator ID="requiredLastName" runat="server" ErrorMessage="Kindly enter your last name" ControlToValidate="patientLastName" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                                <asp:TextBox ID="patientLastName" class="form-control" runat="server" ></asp:TextBox>
                            </div>
                        </div>

		                <div class="my-3">
			                <asp:Label for="txt_Email" class="form-label" ID="Email_Label" runat="server" Text=" Address"></asp:Label>
			                <asp:RequiredFieldValidator ID="requiredEmailSignup" runat="server" ErrorMessage="Kindly enter an email" ControlToValidate="txt_Email" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt_Email" class="form-control" placeholder="name@example.com" runat="server" ></asp:TextBox>
		                </div>

                        <div class="my-3">
			                <asp:Label for="password" class="form-label" ID="password_Label" runat="server" Text="Password"></asp:Label>
			                <asp:RequiredFieldValidator ID="requiredPassword" runat="server" ErrorMessage="Kindly enter a password" ControlToValidate="password" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="password" class="form-control" runat="server" ></asp:TextBox>
		                </div>

                        <div class="my-3">
			                <asp:Label for="address" class="form-label" ID="address_Label" runat="server" Text="Address"></asp:Label>
			                <asp:RequiredFieldValidator ID="requiredAddress" runat="server" ErrorMessage="Kindly enter your address" ControlToValidate="address" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="address" class="form-control" runat="server" ></asp:TextBox>
		                </div>

                        <div class="row my-3">
                            <div class="col">
			                    <asp:Label for="city" class="form-label" ID="city_Label" runat="server" Text="City"></asp:Label>
                                <asp:RequiredFieldValidator ID="requiredCity" runat="server" ErrorMessage="Kindly enter your city" ControlToValidate="city" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                                <asp:TextBox ID="city" class="form-control" runat="server" ></asp:TextBox>
                            </div>
                             <div class="col">
			                    <asp:Label for="state" class="form-label" ID="state_Label" runat="server" Text="State"></asp:Label>
                                <asp:RequiredFieldValidator ID="requiredState" runat="server" ErrorMessage="Kindly enter your state" ControlToValidate="state" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                                <asp:TextBox ID="state" class="form-control" runat="server" ></asp:TextBox>
                            </div>
                            <div class="col">
			                    <asp:Label for="zipcode" class="form-label" ID="zipcode_Label" runat="server" Text="Zipcode"></asp:Label>
                                <asp:RequiredFieldValidator ID="requiredXipcode" runat="server" ErrorMessage="Kindly enter your zipcode" ControlToValidate="zipcode" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                                <asp:TextBox ID="zipcode" class="form-control" runat="server" ></asp:TextBox>
                            </div>

                        </div>

		                <div class="my-3">
			                <asp:Label for="txt_Phone" ID="phoneNum_Label" runat="server" Text="Phone Number"></asp:Label>
			                <asp:RequiredFieldValidator ID="requiredPhoneNum" runat="server" ErrorMessage="Kindly enter your phone number" ControlToValidate="txt_Phone" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt_Phone" class="form-control" runat="server" ></asp:TextBox>
		                </div>

		                <div class="my-3">
			                <asp:Label for="dropDown_Gender" ID="Gender_Label" runat="server" Text="Gender"></asp:Label>
			                <asp:RequiredFieldValidator ID="requiredGender" runat="server" ErrorMessage="Kindly select your gender" ControlToValidate="dropDown_Gender" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:DropDownList class="form-select" ID="dropDown_Gender" runat="server" >
				                <asp:ListItem Value="Male">Male</asp:ListItem>
				                <asp:ListItem Value="Female">Female</asp:ListItem>
                               	<asp:ListItem Value="Unknown">Rather Not Say</asp:ListItem>
			                </asp:DropDownList>
		                </div>

		                <div class="my-3">
			                <asp:Label for="txt_Birth_Calander" ID="Birth_Label" runat="server" Text="Date Of Birth"></asp:Label>
			                <asp:RequiredFieldValidator ID="requiredBirthDate" runat="server" ErrorMessage="Kindly enter your birth date" ControlToValidate="txt_Birth_Calander" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt_Birth_Calander" class="form-control" runat="server" type="date" ></asp:TextBox>
		                </div>

                        <asp:ValidationSummary ID="validationSummaryPatientSignup" runat="server" CssClass="text-danger" />

                        <asp:Button class="btn btn-primary my-3" ID="btn_SignUp" runat="server" Text="Sign Up" OnClick="btn_SignUp_Click" />
	                </form>
                </div>
            </div>
        </div>        



    </main>
 

    <!-- Link to Bootstrap Javascript library-->
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>

 </body>
</html>