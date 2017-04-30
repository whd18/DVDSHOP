<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signupConfirmation.aspx.cs" Inherits="dvdmanagementsystem.signupConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:Label ID="Label1" runat="server" Text="Please Confirm your Provide informaion" Font-Bold="True" Font-Size="Larger"></asp:Label>
    
    </div>

    <div align="center">
        <table style="width: 50%;">
            <tr>
                <td>Name</td>
                <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            </tr>

            <tr>
                <td>Gender</td>
                <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
            </tr>

            <tr>
                <td>Favourite Genre</td>
                <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            </tr>

            <tr>
                <td>User Name</td>
                <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
            </tr>

            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label></td>
            </tr>
            
        </table>

            <asp:Button ID="changeButton" runat="server" Text="Change" OnClick="changeButton_Click" Height="45px" Width="124px" />
            <asp:Button ID="confirmButton" runat="server" Text="Confirm" OnClick="confirmButton_Click" ForeColor="#009933" Height="43px" Width="121px" />
    </div>

        

    </form>
</body>
</html>
