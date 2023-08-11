<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Medical_System_WebApplication.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
    <div class="text-bg-dark text-center">
        <h1>Homepage</h1>
        <p>Progress going well</p>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-4">
                <h3>1</h3>
                <p></p>
            </div>
            <div class="col-4">
                <h3>2</h3>
                <p></p>
            </div>
            <div class="col-4">
                <h3>3</h3>
                <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" role="button" data-bs-toggle="dropdown" aria-expanded="false">
    Dropdown button
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Action</a></li>
    <li><a class="dropdown-item" href="#">Another action</a></li>
    <li><a class="dropdown-item" href="#">Something else here</a></li>
  </ul>
</div>
                <p></p>
            </div>
        </div>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="section2" runat="server">
</asp:Content>
