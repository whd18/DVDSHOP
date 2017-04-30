<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerDashboard.aspx.cs" Inherits="dvdmanagementsystem.customerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        &nbsp;<asp:Label ID="Label1" runat="server" Text="Customer Area" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    
        <br />
    
    </div>
    &nbsp;&nbsp;
        <asp:Button ID="Buttonrecommended" runat="server" BackColor="#00CC99" Text="Recommended" Width="171px" OnClick="Buttonrecommended_Click1" />
&nbsp;<asp:Button ID="Buttonviewdvd" runat="server" BackColor="#66CCFF" OnClick="Buttonviewdvd_Click" Text="View DVD" />
&nbsp;<asp:Button ID="Buttonsearchdvd" runat="server" BackColor="#66CCFF" ForeColor="#000066" OnClick="Buttonsearchdvd_Click" Text="Search" />
&nbsp;<asp:Button ID="Buttonrequestdvd" runat="server" BackColor="#99CCFF" OnClick="Buttonrequestdvd_Click" Text="DVD Request" />
&nbsp;<asp:Button ID="Buttonchangepassword" runat="server" BackColor="#99CCFF" Text="Change Password" OnClick="Buttonchangepassword_Click" />
&nbsp;<asp:Button ID="Buttonsignout" runat="server" BackColor="#6699FF" Text="Sign Out" OnClick="Buttonsignout_Click" />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" CellSpacing="5" ForeColor="#333333" GridLines="None" HorizontalAlign="Justify" Width="940px" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="7" EnableViewState="False">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                        <asp:BoundField DataField="actor" HeaderText="actor" SortExpression="actor" />
                        <asp:BoundField DataField="actress" HeaderText="actress" SortExpression="actress" />
                        <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
                        <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                        <asp:BoundField DataField="category1" HeaderText="category1" SortExpression="category1" />
                        <asp:BoundField DataField="category2" HeaderText="category2" SortExpression="category2" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" HorizontalAlign="Center" Width="50px" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [title], [actor], [actress], [director], [year], [category1] , [category2] FROM [movielist]"></asp:SqlDataSource>
            </asp:View>
            <br />
            <asp:View ID="View2" runat="server">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Wahid Welcome"></asp:Label>
                <br />
                <br />
            </asp:View>
            <br />
            <asp:View ID="View3" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Movie Name : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1moviename" runat="server" Height="21px" ValidationGroup="requestGroup" Width="279px" EnableViewState="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" ControlToValidate="TextBox1moviename" ErrorMessage="Please Put The Movie Name" ForeColor="#FF3300" ValidationGroup="requestGroup">*</asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Actor : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3actor" runat="server" Height="21px" Width="279px" EnableViewState="False"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Actress"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4actress" runat="server" Height="21px" Width="279px" EnableViewState="False"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Director : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5director" runat="server" Height="21px" Width="279px" EnableViewState="False"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Request Comment : "></asp:Label>
                &nbsp;
                <asp:TextBox ID="TextBox2comment" runat="server" Height="52px" TextMode="MultiLine" ValidationGroup="requestGroup" Width="287px" EnableViewState="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2comment" ErrorMessage="Please Put Your Query" ForeColor="#FF3300" ValidationGroup="requestGroup">*</asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Buttonsubmitrequest" runat="server" BackColor="#669999" OnClick="Buttonsubmitrequest_Click" Text="Submit" ValidationGroup="requestGroup" />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="requestGroup" ForeColor="Red" />
                <br />
            </asp:View>
            <br />
            <br />
            <asp:View ID="View4" runat="server">
                <br />
                &nbsp;<asp:Label ID="Label8" runat="server" Text="Current Password : "></asp:Label>
                &nbsp;&nbsp;<asp:TextBox ID="TextBox1currentpass" runat="server" EnableViewState="False" ValidationGroup="ChangePassword" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1currentpass" ErrorMessage="Put the Current Password" ForeColor="Red" ValidationGroup="ChangePassword">*</asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp;<asp:Label ID="Label9" runat="server" Text="New Password : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2newpass" runat="server" EnableViewState="False" ValidationGroup="ChangePassword" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2newpass" ErrorMessage="Password Must be Filled" ForeColor="Red" ValidationGroup="ChangePassword">*</asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp;<asp:Label ID="Label10" runat="server" Text="Confirm Password : "></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox3confirmpass" runat="server" EnableViewState="False" ValidationGroup="ChangePassword" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2newpass" ControlToValidate="TextBox3confirmpass" ErrorMessage="Password Does Not Match" ForeColor="Red" ValidationGroup="ChangePassword">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3confirmpass" ErrorMessage="Please Fill the Password" ForeColor="Red" ValidationGroup="ChangePassword">*</asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp;<asp:Button ID="Button1changepassword" runat="server" BackColor="#009999" Text="Confirm Change" ValidationGroup="ChangePassword" OnClick="Button1changepassword_Click1" />
                <br />
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#CC0000" ValidationGroup="ChangePassword" />
            </asp:View>
            <br />
            <br />
            <asp:View ID="View5" runat="server">
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Text="Search :"></asp:Label>
                &nbsp;<asp:TextBox ID="whatTofind" runat="server" ValidationGroup="whattofind" EnableViewState="False"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="whatTofind" ErrorMessage="Fill It" ValidationGroup="whattofind" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="By :"></asp:Label>
                &nbsp;<asp:DropDownList ID="whatTofindBy" runat="server">
                    <asp:ListItem>title</asp:ListItem>
                    <asp:ListItem>actor</asp:ListItem>
                    <asp:ListItem>actress</asp:ListItem>
                    <asp:ListItem>director</asp:ListItem>
                    <asp:ListItem>year</asp:ListItem>
                    <asp:ListItem>category1</asp:ListItem>
                    <asp:ListItem>category2</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#6699FF" Font-Bold="True" ForeColor="#000066" Height="31px" OnClick="Button1_Click" Text="Go" Width="43px" ValidationGroup="whattofind" />
                <br />
                <br />
                <br />
            </asp:View>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:MultiView>
    </form>
</body>
</html>
