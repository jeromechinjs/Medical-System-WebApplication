<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Medical_System_WebApplication.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
    <div class="p-0 video-section position-relative">
        <video autoplay muted loop class="w-100 h-100">
            <source src="src/homepage-video.mp4" type="video/mp4"/>
        </video>

        <div class="overlay"></div>

        <div class="container overlay-content">
            <div class="row flex-column">
                <div class="col">
                    <div class="fs-1">Need Help? <br> We're here to assist.</div>
                </div>
                <div class="col mt-4">
                    <div class="dropdown">
                         <button class="btn btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                             I am looking for
                         </button>

		                <ul class="dropdown-menu form-select w-auto" >
                            <li><a class="dropdown-item" href="Appointment.aspx">Make Appointment</a></li>
                            <li><a class="dropdown-item" href="Products.aspx">Buy Products</a></li>
                            <li><a class="dropdown-item" href="ContactUs.aspx">Location</a></li>
                            <li><a class="dropdown-item" href="PatientSignUp.aspx">Sign Up</a></li>
                            <li><a class="dropdown-item" href="Appointment.aspx">A Doctor</a></li>
		                </ul>   
                    </div>
                </div>
            </div>
        </div>        
      </div>

      <div class="our-mission container-fluid">
        <div class="our-mission-text row p-3 py-5 p-lg-5">
            <div class="col-0 col-sm-1 col-md-5 col-lg-7"><!-- spacing blank area --></div>
            <div class="col-12 col-sm-11 col-md-7 col-lg-5 p-md-5">
                <p class="title fw-bold">Our Mission, Transforms Communities</p>
                <blockquote class="fs-2">“Prioritising patient care always. At your service, every day.”</blockquote>
                <p>
                    Established in November 1999, Sunway Medical Centre is an Australian Council 
                    on Healthcare Standards (ACHS) and Malaysian Society for Quality in Health (MSQH) 
                    accredited private hospital. Located in the smart sustainable Sunway City, 
                    Sunway Medical Centre is surrounded by an ecosystem that will inspire a healthy, 
                    safe and interconnected society for generations to come. This includes the Sunway 
                    Resort Hotel & Spa, Sunway Pyramid mall, Sunway Lagoon theme park, Sunway 
                    University and Monash University, which are all within walking distance from the 
                    hospital. <br /><br />
                    
                    As one of the leading private quaternary medical care centres in the country, 
                    Sunway Medical Centre is poised to set new standards of service for its growing 
                    clientele with a total of 724 licensed beds, 230 consultation suites, 18 operating
                    theatres and a multi-storey car park with 1,470 parking bays
                </p>
                <a href="#" type="button" class="btn btn-warning mt-2">Read More</a>
            </div>
        </div>
       </div>        

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server">
</asp:Content>
