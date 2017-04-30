<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showCustomer.aspx.cs" Inherits="dvdmanagementsystem.showCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="All Customer List"></asp:Label>
    
    </div>

        <div align="center" style="margin-top:25px;margin-bottom:25px;">

        <asp:Label ID="Label2" runat="server" Text="Search   :"></asp:Label>
        <asp:TextBox ID="searchThisName" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Find" Height="40px" Width="106px" OnClick="Button1_Click" />
        </div>


        <div align="center">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

            <asp:Button ID="signOutButton" runat="server" Text="Sign Out" BackColor="#DD5044" Font-Bold="True" ForeColor="White" Height="59px" OnClick="signOutButton_Click" Width="124px" />
        </div>


    </form>
</body>
</html>
