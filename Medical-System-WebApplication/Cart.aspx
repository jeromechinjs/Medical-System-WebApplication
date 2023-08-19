<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Medical_System_WebApplication.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">


    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="productName" HeaderText="Item">
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="productImage" HeaderText="Image">
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="productPrice" HeaderText="Price" />
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <input type="number" id="quantity" name="quantity" min="1" value="1">
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="productTotal" HeaderText="Total" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="CheckOut" />
        <br />
    </form>


</asp:Content>
