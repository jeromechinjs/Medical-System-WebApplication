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
                            <asp:Label class="form-label" ID="lblName" runat="server" Text="Name"></asp:Label>
                            <asp:RequiredFieldValidator ID="requiredName" runat="server" ErrorMessage="Please ensure name is filled up" ControlToValidate="txtName" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>                        
                        </div>
                        <div class="col-md-9">
                            <input class="form-control" id="txtName" runat="server" type="text" />
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3">
                            <asp:Label class="form-label" ID="Label2" runat="server" Text="Phone No."></asp:Label>
                            <asp:RequiredFieldValidator ID="requiredPhone" runat="server" ErrorMessage="Please ensure phone number is filled up" ControlToValidate="txtPhone" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>    
                            <asp:RegularExpressionValidator ID="regularPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Please enter a correct format of phone number" ForeColor="Red" ValidationExpression="^(\+?6?01)[0|1|2|3|4|6|7|8|9]\-*[0-9]{7,8}$">E.g. 012-1233210 or 0121233210</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-9">
                            <input class="form-control" id="txtPhone" placeholder="E.g. 012-1233210" runat="server" type="text" />
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-3">
                            <asp:Label class="form-label" ID="Label3" runat="server" Text="Delivery Address"></asp:Label>
                            <asp:RequiredFieldValidator ID="requiredAddress" runat="server" ErrorMessage="Please ensure address is filled up" ControlToValidate="txtAddress" CssClass="text-danger d-inline" Display="Dynamic">*</asp:RequiredFieldValidator>                        
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox class="form-control" ID="txtAddress" runat="server"></asp:TextBox>
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
                    <asp:GridView class=" card w-100 p-3" ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="true">
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
                                    <asp:TextBox type="number" ID="TextBox1" class="text-center" Style="width: 7em" name="quantity" min="1" value="1" runat="server" ReadOnly="true"></asp:TextBox>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label Style="text-align: center; font-weight: bold" ID="Label1" runat="server" Text="Total Payment"></asp:Label>
                                </FooterTemplate>
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
                <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server" />
                <asp:Button class="btn btn-lg btn-primary" ID="Button1" runat="server" Text="Place Order" CausesValidation="true" OnClick="placeOrder" OnClientClick="if (Page_ClientValidate()) { alert('Order Placed, Thank you for your purchase')}"   />
            </div>
        </div>
        <br />
    </form>
</asp:Content>
