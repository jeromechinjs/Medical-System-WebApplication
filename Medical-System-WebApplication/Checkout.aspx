<%@ Page Title="" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Medical_System_WebApplication.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">
    <style>
        /** {
            border: 1px solid red;
        }*/
    </style>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card p-4 my-5">
                <div class="card-body">
                    <div class="row">
                        <asp:Label class="form-label h2" ID="Label6" runat="server" Text="Payment Details"></asp:Label>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3">
                            <asp:Label class="form-label" ID="Label1" runat="server" Text="Name"></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <input class="form-control" id="Text1" type="text" />
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3">
                            <asp:Label class="form-label" ID="Label2" runat="server" Text="Phone No."></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <input class="form-control" id="Text2" type="text" />
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3">
                            <asp:Label class="form-label" ID="Label3" runat="server" Text="Delivery Address"></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3">
                            <asp:Label class="form-label" ID="Label4" runat="server" Text="Delivery instruction:"></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Label class="form-label h2" ID="Label5" runat="server" Text="Items"></asp:Label>
                    </div>
                    <asp:GridView class=" card w-100 p-3" ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:ImageField DataImageUrlField="productImage" HeaderText="Image">
                                <ItemStyle Width="30%" HorizontalAlign="Center"></ItemStyle>
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:ImageField>
                            <asp:BoundField DataField="productName" HeaderText="Item">
                                <ItemStyle CssClass="card-title" Width="30%" HorizontalAlign="Center"></ItemStyle>
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="productPrice" HeaderText="Price (RM)">
                                <ItemStyle Width="10%" HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Quantity">
                                <ItemStyle Width="10%" HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <input type="number" class="text-center" style="width: 7em; border: none" id="quantity" name="quantity" min="1" value="1" readonly>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="productTotal" HeaderText="Total (RM)">
                                <ItemStyle Width="10%" HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:GridView>
                </div>
            </div>
            <div class="text-center">
                <asp:Button class="btn btn-lg btn-primary" ID="Button1" runat="server" Text="Place Order" OnClick="Button1_Click" OnClientClick="javascript:alert('Order Placed, Thank you for your purchase')"/>
            </div>
        </div>
        <br />
    </form>
</asp:Content>
