<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="dvdmanagementsystem.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
    
            <asp:Label ID="Label1" runat="server" Text="Sign Up Form" Font-Size="Larger" Font-Bold="True" Font-Strikeout="False" Font-Underline="True" ></asp:Label>
    
        </div>

        <div align="center">
            <table style="width: 50%;">
                <tr>
                    <td>Name</td>
                    <td><asp:TextBox ID="nameBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameBox" ErrorMessage="Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:DropDownList ID="genderList" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Favourite Genre</td>
                    <td>
                        <asp:DropDownList ID="favouriteGenreList" runat="server">
                        <asp:ListItem Selected="True">Action</asp:ListItem>
                        <asp:ListItem>Animation</asp:ListItem>
                        <asp:ListItem>Comedy</asp:ListItem>
                        <asp:ListItem>Horror</asp:ListItem>
                        <asp:ListItem>Romantic</asp:ListItem>
                        <asp:ListItem>Thriller</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>User Name</td>
                    <td><asp:TextBox ID="userName" runat="server" placeholder="Must be unique"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nameBox" ErrorMessage="Username is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td><asp:TextBox ID="passwordBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="nameBox" ErrorMessage="Password can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Confirm Password</td>
                    <td><asp:TextBox ID="confirmpasswordBox" runat="server" TextMode="Password" placeholder="Re-write your password again"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordBox" ControlToValidate="confirmpasswordBox" ErrorMessage="Password Didn't Match" ForeColor="#FF3300"></asp:CompareValidator>
                    </td>
                </tr>
             
            </table>
                <asp:Button ID="showSignupInformation" runat="server" Text="Show Info" OnClick="showSignupInformation_Click" Height="53px" Width="153px" />
        </div>
    </form>
</body>
</html>
