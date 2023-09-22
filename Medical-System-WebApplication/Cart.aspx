﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Medical_System_WebApplication.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">

    <form id="form1" runat="server">
        <div class="container" id="CartItem" runat="server">
            <asp:GridView class="card w-100 my-5 p-3" ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="true">
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
                            <asp:TextBox type="number" ID="TextBox1" class="text-center" Style="width: 7em" name="quantity" min="1" value="1" runat="server" OnTextChanged="txt_OnTextChanged" AutoPostBack="true"></asp:TextBox>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label style="font-weight:bold" ID="Label1" runat="server" Text="Total Payment"></asp:Label>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="productTotal" HeaderText="Total (RM)">
                        <ItemStyle Width="10%" HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Button class="btn btn-sm btn-primary w-10" ID="Button1" runat="server" Text="Remove" CommandArgument='<%# Eval("ProductName") %>' CommandName="RemoveCartItem" OnClick="removeItem" />
                        </ItemTemplate>
                    </asp:TemplateField>                    
                </Columns>
                <HeaderStyle HorizontalAlign="Center" />
            </asp:GridView>
            <div class="text-center">
                <asp:Button class="btn btn-lg btn-primary" ID="Button2" runat="server" Text="Check Out" OnClick="Button2_Click" />
            </div>
        </div>
        <br />
    </form>


</asp:Content>


