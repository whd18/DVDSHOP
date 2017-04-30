<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecommendedForCustomer.aspx.cs" Inherits="dvdmanagementsystem.RecommendedForCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 285px">
    <form id="form1" runat="server">
    <div style="height: 250px" >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Recommended" Font-Size="30pt"></asp:Label>
        &nbsp;<asp:Label ID="Label2" runat="server"  Text="Label" Font-Bold="True" Font-Size="30pt" ForeColor="#FF3300"></asp:Label>
        &nbsp;<asp:Label ID="Label3" runat="server" Text="Movies For" Font-Size="30pt"></asp:Label>
        &nbsp;<asp:Label ID="Label4" runat="server" Text="Label" BackColor="White" Font-Bold="True" Font-Size="30pt" ForeColor="#3366FF"></asp:Label>

        <br />

        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" Font-Bold="True" Font-Italic="True" ForeColor="#000066" Height="38px" OnClick="Button1_Click" Text="Back" Width="91px" />
    
    </div>
    </form>
</body>
</html>
