<%@ Page Title="" Language="C#" MasterPageFile="~/Header_Footer_Template.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Medical_System_WebApplication.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="section1" runat="server">

    <form id="form1" runat="server">
        <div class="container" id="CartItem" runat="server">
            <asp:GridView class="card w-100 my-5 p-3" ID="GridView1" runat="server" AutoGenerateColumns="False">
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
                            <asp:TextBox type="number" ID="TextBox1" class="text-center" style="width: 7em" name="quantity" min="1" value="1" runat="server"></asp:TextBox>
                            <%--<input type="number" class="text-center" style="width: 7em" id="quantity" runat="server" name="quantity" min="1" value="1">--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="productTotal" HeaderText="Total (RM)">
                        <ItemStyle Width="10%" HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Button class="btn btn-sm btn-primary w-10" ID="Button1" runat="server" Text="Remove" CommandArgument='<%# Eval("ProductName") %>' CommandName="RemoveCartItem" OnClick="Button1_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle HorizontalAlign="Center" />
            </asp:GridView>        
            <div class="text-center">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Button class="btn btn-lg btn-primary" ID="Button2" runat="server" Text="Check Out" OnClick="Button2_Click" />
            </div>
        </div>
        <br />
    </form>


</asp:Content>


