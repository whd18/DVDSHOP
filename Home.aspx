<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="dvdmanagementsystem.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DVD Manager</title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="margin-bottom:30px;">
            <asp:Label ID="Label1" runat="server" Text="Welcome to DVD Management System&lt;/br&gt;If you have account then"></asp:Label></br>
        </div>
    <div align="center">
        
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Log In" BackColor="#3399FF" BorderColor="White" Font-Bold="True" Height="55px" OnClick="Button1_Click" Width="131px" /></br>
        <asp:Label ID="Label2" runat="server" Text="OR" ForeColor="#663300"></asp:Label></br>
        <asp:Button ID="Button2" runat="server" Text="Sign Up" Font-Bold="True" Height="53px" Width="114px" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
