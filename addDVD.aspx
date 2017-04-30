<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addDVD.aspx.cs" Inherits="dvdmanagementsystem.addDVD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="margin-bottom:30px;">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Add a New DVD"></asp:Label>
    
        <br />
    
    </div>

        <div align="center">
            <table style="width: 60%;">
                <tr>
                    <td>Title</td>
                    <td><asp:TextBox ID="titleBox" runat="server" ValidationGroup="addValidate"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="titleBox" ErrorMessage="Fill It" ValidationGroup="addValidate"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Actor</td>
                    <td><asp:TextBox ID="actorBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Actress</td>
                    <td><asp:TextBox ID="actressBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Director</td>
                    <td><asp:TextBox ID="directorBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td><asp:TextBox ID="yearBox" runat="server" ValidationGroup="addValidate"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="yearBox" ErrorMessage="Fill this field" ValidationGroup="addValidate"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Category1</td>
                    <td><asp:DropDownList ID="category1List" runat="server">
                        <asp:ListItem>Action</asp:ListItem>
                        <asp:ListItem>Animation</asp:ListItem>
                        <asp:ListItem>Thriller</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Category2</td>
                    <td><asp:DropDownList ID="category2List" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Comedy</asp:ListItem>
                        <asp:ListItem>Horror</asp:ListItem>
                        <asp:ListItem>Romantic</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>

            </table>
            <asp:Button ID="addDvdButton" runat="server" Text="Add" Height="35px" OnClick="addDvdButton_Click" Width="123px" BackColor="#99CCFF" Font-Bold="True" ForeColor="#000066" ValidationGroup="addValidate" /> </br>
            <asp:Button ID="Button1" runat="server" BackColor="#339933" Font-Bold="True" ForeColor="#CCFFFF" Height="42px" OnClick="Button1_Click" Text="Home" Width="114px" />
            <asp:Button ID="signOutButton" runat="server" Text="Sign Out" BackColor="#DD5044" Font-Bold="True" ForeColor="White" Height="44px" OnClick="signOutButton_Click" Width="124px" />
        </div>
    </form>
</body>
</html>
