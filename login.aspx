<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="dvdmanagementsystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="margin-bottom:20px;">
    
        <asp:Label ID="Label1" runat="server" Text="Login Page." Font-Bold="True" Font-Size="Larger"></asp:Label>
    
    </div>

        <div align="center" style="margin-bottom:20px;>
            <table style="width: 50%;">
                <tr>
                    <td>Username</td>
                    <td><asp:TextBox ID="givenUsername" runat="server" Height="28px"></asp:TextBox></td>
                </tr> </br>
                <tr>
                    <td>Password</td>
                    <td><asp:TextBox ID="givenPassword" runat="server" TextMode="Password" Height="28px"></asp:TextBox></td>
                </tr>
                
        </div>

        <div align="center">
            <asp:Button ID="logButton" runat="server" Text="Login" Height="47px" OnClick="logButton_Click" Width="135px" BackColor="#006666" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" Font-Size="Large" ForeColor="White" />
        </div>
    </form>
</body>
</html>
