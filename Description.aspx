<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Description.aspx.cs" Inherits="Flowers_Store.Description" %>

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
                
            </HeaderTemplate>
            <ItemTemplate>
                <div style="height:400px; width:600px; border-style:solid; border-width:1px;">
                    <div style="height:200px; width:300px; border-style:solid; border-width:1px;">
                        <img src="<%# Eval("Img") %>" width="300px" height="200px" />
                        
                    </div>
                    <div style="height:197px; width:300px; border-style:solid; border-width:1px;">
                        Flowers name: <%# Eval("Name") %><br />
                        Description: <%# Eval("Desc") %> <br />
                        Price: <%# Eval("Price") %><br />
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>

            </FooterTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
