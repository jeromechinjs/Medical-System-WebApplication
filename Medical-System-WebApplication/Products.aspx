<%@ Page Title="Products" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Medical_System_WebApplication.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
    <style>/*
        * {
            border: 1px solid red;
        }*/
    </style>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-3 p-3 m-0">
                    <p>Search by</p>
                    <asp:DropDownList class="dropdown-center form-select" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID" AutoPostBack="True" AppendDataBoundItems="True">
                        <asp:ListItem Value="-1">Show All</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductCategory]"></asp:SqlDataSource>
                </div>

                <div class="col-md-9 p-3 m-0">
                    <asp:DataList class="w-100" ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <div class="card mb-3">
                                <div class="row g-0">
                                    <div class="col-md-4 d-flex justify-content-center align-items-center ">
                                        <asp:Image class="img-fluid rounded-start" ID="Image2" runat="server" ImageUrl='<%# Eval("ProductImage") %>' />
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <asp:Label class="card-title fw-bold" ID="Label5" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                            <br />
                                            <asp:Label class="card-text" ID="Label6" runat="server" Text='<%# Eval("ProductDesc") %>'></asp:Label>
                                            <br />
                                            <span>MYR </span>
                                            <asp:Label class="card-text" ID="Label7" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                                            &nbsp;
                                            <span>Quantity: </span>
                                            <asp:Label class="card-text" ID="Label8" runat="server" Text='<%# Eval("ProductQuantity") %>'></asp:Label>
                                            <br />
                                            <div class="d-flex flex-row-reverse mt-3">
                                                <asp:Button class="btn btn-sm btn-primary" ID="Button2" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("ProductID") %>' CommandName="AddToCart" OnClick="Button1_Click" OnClientClick="javascript:alert('Item added to Cart')"/>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>


            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] inner join ProductCategory on Product.CategoryID=ProductCategory.CategoryID and ProductCategory.CategoryID=@CategoryID">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="CategoryID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="section2" runat="server">
</asp:Content>
