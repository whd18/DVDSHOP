<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="managerDashboard.aspx.cs" Inherits="dvdmanagementsystem.managerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="margin-bottom:30px;">
    
        <asp:Label ID="Label1" runat="server" Text="Manager Dashboard" Font-Bold="True" Font-Size="Larger"></asp:Label>
    
    </div>

        <div align="center" style="margin-bottom:35px;">
            <asp:Button ID="addDvdButton" runat="server" Text="Add DVD" OnClick="addDvdButton_Click" Height="44px" Width="126px" style="margin-left: 0px" BackColor="#0000CC" Font-Bold="True" ForeColor="#CCFFFF" />
            <asp:Button ID="showDvdButton" runat="server" Text="Show DVD" OnClick="showDvdButton_Click" Height="44px" Width="126px" BackColor="#3333FF" ForeColor="White" />
            <asp:Button ID="showCustomerButton" runat="server" Text="Show Customer" OnClick="showCustomerButton_Click" Height="44px" Width="193px" BackColor="#3333FF" ForeColor="White" />
            <asp:Button ID="Button1customerRequest" runat="server" Height="44px" OnClick="Button1customerRequest_Click" style="margin-top: 0px" Text="Customer Request" Width="261px" BackColor="#000099" Font-Bold="True" Font-Italic="False" ForeColor="Red" />
        </div>

        <div align="center">
            <asp:Label ID="Label2" runat="server" Text="Change your current password" Font-Italic="True" Font-Size="Larger" ForeColor="#003300"></asp:Label></br>
        </div>

        <div align="center">
            <table style="width: 55%; height: 138px;">
                <tr>
                    <td>Current Password</td>
                    <td><asp:TextBox ID="currentPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td>New Password</td>
                    <td><asp:TextBox ID="newPassword" runat="server" TextMode="Password" ValidationGroup="passchange"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="newPassword" ControlToValidate="confirmNewpassword" ErrorMessage="Password didn't match" ValidationGroup="passchange"></asp:CompareValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td>Confirm New Password</td>
                    <td><asp:TextBox ID="confirmNewpassword" runat="server" TextMode="Password" ValidationGroup="passchange"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="confirmNewpassword" ErrorMessage="Fill this Field" ValidationGroup="passchange"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
            </table>
            <asp:Button ID="changePasswordButton" runat="server" Text="Change" Height="35px" OnClick="changePasswordButton_Click" Width="94px" ValidationGroup="passchange" BackColor="#339933" ForeColor="White" /></br>
            <asp:Button ID="signOutButton" runat="server" Text="Sign Out" BackColor="#DD5044" Font-Bold="True" ForeColor="White" Height="48px" OnClick="signOutButton_Click" Width="131px" />
        </div>

    </form>
</body>
</html>
