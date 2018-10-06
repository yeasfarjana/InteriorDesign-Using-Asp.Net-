<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Content.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="Service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <div style="width: 100px; height:200px; margin-top:100px; margin-left:100px"></div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SvcID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="SvcID" HeaderText="SvcID" InsertVisible="False" ReadOnly="True" SortExpression="SvcID" />
            <asp:BoundField DataField="SvcName" HeaderText="SvcName" SortExpression="SvcName" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Package" HeaderText="Package" SortExpression="Package" />
            <asp:BoundField DataField="SquareBlock" HeaderText="SquareBlock" SortExpression="SquareBlock" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="Vat" HeaderText="Vat" SortExpression="Vat" />
            <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InDeDB %>" DeleteCommand="DELETE FROM [Services] WHERE [SvcID] = @SvcID" InsertCommand="INSERT INTO [Services] ([SvcName], [Type], [Package], [SquareBlock], [UnitPrice], [Vat], [Total]) VALUES (@SvcName, @Type, @Package, @SquareBlock, @UnitPrice, @Vat, @Total)" SelectCommand="SELECT * FROM [Services]" UpdateCommand="UPDATE [Services] SET [SvcName] = @SvcName, [Type] = @Type, [Package] = @Package, [SquareBlock] = @SquareBlock, [UnitPrice] = @UnitPrice, [Vat] = @Vat, [Total] = @Total WHERE [SvcID] = @SvcID">
        <DeleteParameters>
            <asp:Parameter Name="SvcID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SvcName" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Package" Type="String" />
            <asp:Parameter Name="SquareBlock" Type="Decimal" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="Vat" Type="Decimal" />
            <asp:Parameter Name="Total" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SvcName" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Package" Type="String" />
            <asp:Parameter Name="SquareBlock" Type="Decimal" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="Vat" Type="Decimal" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="SvcID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

