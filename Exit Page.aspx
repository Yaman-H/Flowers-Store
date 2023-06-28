<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exit Page.aspx.cs" Inherits="Flowers_Store.Exit_Page" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exit Page</title>
    <link rel="stylesheet" href="style4.css">
</head>
<body>
    <div class="container">
       <form action="" runat="server">

        <div class="row">
            <div class="col">
                <h3 class="title">billing address</h3>

                <div class="inputBox">
                    <span>full name :</span>
                    <asp:TextBox ID="fullName" runat="server" Placeholder="Ahmed Ali"></asp:TextBox>
                </div>
                <div class="inputBox">
                    <span>Email :</span>
                    <asp:TextBox ID="email" runat="server" TextMode="Email" Placeholder="example@example.com"></asp:TextBox>
                    
                </div>
                <div class="inputBox">
                    <span>address :</span>
                    <asp:TextBox ID="address" runat="server" Placeholder="room - street - locality"></asp:TextBox>
                </div>
                <div class="inputBox">
                    <span>city :</span>
                    <asp:TextBox ID="city" runat="server" Placeholder="Riyadh"></asp:TextBox>
                </div>
                <div class="flex">
                    <div class="inputBox">
                        <span>state :</span>
                        <asp:TextBox ID="state" runat="server" Placeholder="Saudi Arabia"></asp:TextBox>
                    </div>
                    <div class="inputBox">
                        <span>zip code :</span>
                        <asp:TextBox ID="zipCode" runat="server" TextMode="number" Placeholder="123 456"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="col">
                <h3 class="title">payment</h3>

                <div class="inputBox">
                    <span>cards accepted :</span>
                    <img src="picture/Payment methods_1.png" alt="">
                </div>

                <div class="inputBox">
                    <span>name on card :</span>
                    <asp:TextBox ID="nameOnCard" runat="server" Placeholder="Ahmed Ali Mohammed"></asp:TextBox>
                </div>
                
                <div class="inputBox">
                    <span>credit card number :</span>
                    <asp:TextBox ID="creditCardNumber" runat="server" TextMode="number" Placeholder="1111-2222-3333-4444"></asp:TextBox>
                </div>
                <div class="inputBox">
                    <span>exp month :</span>
                    <asp:TextBox ID="expMonth" runat="server" TextMode="Month" Placeholder="january"></asp:TextBox>
                </div>
                <div class="flex">
                    <div class="inputBox">
                        <span>exp year :</span>
                        <asp:TextBox ID="expYear" runat="server" TextMode="number" Placeholder="2023"></asp:TextBox>
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <asp:TextBox ID="cvv" TextMode="Number" runat="server" Placeholder="123"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
           <asp:Button ID="checkout" runat="server" CssClass="submit-btn" Text="proceed to checkout" OnClick="checkout_Click" />
       </form>
    </div>
    
</body>
</html>
