<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Flowers_Store.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table>
                    <tr>
                        <td>
                            <h1>Products</h1>
                        </td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                            <a href="Description.aspx?id=<%# Eval("Id") %>"> <img src="<%# Eval("Img") %>" width="100" height="100" /></a>
                    </td>
                </tr>
                <tr>
                    <td>
                            <%# Eval("Name") %>
                    </td>
                </tr>
                <tr>
                    <td>
                            <%# Eval("Price") %>
                    </td>
                </tr>
                <tr>
                    <td>
                         ________________________________________   
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>

            </FooterTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
