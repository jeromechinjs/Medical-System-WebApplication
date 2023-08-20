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
<%--		                <div class="my-3">
			                <asp:Label for="txtPatientID_Content" ID="PatientID_Label" runat="server" Text="Patient ID"></asp:Label>
			                <asp:TextBox ID="txtPatientID_Content" class="form-control" runat="server" ReadOnly="True" ></asp:TextBox>
		                </div>--%>
                        <div class="row">
                            <div class="col">
			                    <asp:Label for="patientFirstName" class="form-label" ID="patientFirstName_label" runat="server" Text="First Name"></asp:Label>
                                <asp:TextBox ID="patientFirstName" class="form-control" runat="server" ></asp:TextBox>
                            </div>
                             <div class="col">
			                    <asp:Label for="patientLastName" class="form-label" ID="patientLastName_label" runat="server" Text="Last Name"></asp:Label>
                                <asp:TextBox ID="patientLastName" class="form-control" runat="server" ></asp:TextBox>
                            </div>
                        </div>

		                <div class="my-3">
			                <asp:Label for="txt_Email" class="form-label" ID="Email_Label" runat="server" Text="Email Address"></asp:Label>
			                <asp:TextBox ID="txt_Email" class="form-control" placeholder="name@example.com" runat="server" ></asp:TextBox>
		                </div>

                        <div class="my-3">
			                <asp:Label for="password" class="form-label" ID="password_Label" runat="server" Text="Password"></asp:Label>
			                <asp:TextBox ID="password" class="form-control" runat="server" ></asp:TextBox>
		                </div>

                        <div class="my-3">
			                <asp:Label for="address" class="form-label" ID="address_Label" runat="server" Text="Address"></asp:Label>
			                <asp:TextBox ID="address" class="form-control" runat="server" ></asp:TextBox>
		                </div>

                        <div class="row my-3">
                            <div class="col">
			                    <asp:Label for="city" class="form-label" ID="city_Label" runat="server" Text="City"></asp:Label>
                                <asp:TextBox ID="city" class="form-control" runat="server" ></asp:TextBox>
                            </div>
                             <div class="col">
			                    <asp:Label for="state" class="form-label" ID="state_Label" runat="server" Text="State"></asp:Label>
                                <asp:TextBox ID="state" class="form-control" runat="server" ></asp:TextBox>
                            </div>
                            <div class="col">
			                    <asp:Label for="zipcode" class="form-label" ID="zipcode_Label" runat="server" Text="Zipcode"></asp:Label>
                                <asp:TextBox ID="zipcode" class="form-control" runat="server" ></asp:TextBox>
                            </div>

                        </div>

		                <div class="my-3">
			                <asp:Label for="txt_Phone" ID="phoneNum_Label" runat="server" Text="Phone Number"></asp:Label>
			                <asp:TextBox ID="txt_Phone" class="form-control" runat="server" ></asp:TextBox>
		                </div>

		                <div class="my-3">
			                <asp:Label for="dropDown_Gender" ID="Gender_Label" runat="server" Text="Gender"></asp:Label>
			                <asp:DropDownList class="form-select" ID="dropDown_Gender" runat="server" >
				                <asp:ListItem>Male</asp:ListItem>
				                <asp:ListItem>Female</asp:ListItem>
			                </asp:DropDownList>
		                </div>

		                <div class="my-3">
			                <asp:Label for="txt_Birth_Calander" ID="Birth_Label" runat="server" Text="Date Of Birth"></asp:Label>
			                <asp:TextBox ID="txt_Birth_Calander" class="form-control" runat="server" type="date" ></asp:TextBox>
		                </div>

                        <asp:Button class="btn btn-primary my-3" ID="btn_SignUp" runat="server" Text="Sign Up" OnClientClick="javascript:alert('Sign Up Successfully')" OnClick="btn_SignUp_Click" />
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