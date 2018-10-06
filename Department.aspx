<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="Department" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Decor" HeaderText="Decor" SortExpression="Decor" />
                <asp:BoundField DataField="Furniture" HeaderText="Furniture" SortExpression="Furniture" />
                <asp:BoundField DataField="Lighting" HeaderText="Lighting" SortExpression="Lighting" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InDeDB %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
