<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonField.aspx.cs" Inherits="ButtonField_in_GridView.ButtonField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="rollno" HeaderText="rollno" SortExpression="rollno" />
                    <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                    <asp:BoundField DataField="fathername" HeaderText="fathername" SortExpression="fathername" />
                    <asp:BoundField DataField="mothername" HeaderText="mothername" SortExpression="mothername" />
                    <asp:ButtonField ButtonType="Button" DataTextField="Roll" Text="Roll" CommandName="sroll" />
                    <asp:ButtonField ButtonType="Button" DataTextField="sname" Text="SNAME" CommandName="sname" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [StudentInformation]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
