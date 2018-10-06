<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyControl.ascx.cs" Inherits="UserControls_MyControl" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 209px;
    }
    .auto-style3 {
        width: 336px;
    }
    .auto-style4 {
        margin-bottom: 11px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblType" runat="server" Text="Type"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlType" runat="server">
                <asp:ListItem>Interior Design</asp:ListItem>
                <asp:ListItem>Exterior Design</asp:ListItem>
                <asp:ListItem>Architectural</asp:ListItem>
                <asp:ListItem>Graphic Design</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblPackage" runat="server" Text="Package"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlPackage" runat="server" AutoPostBack="True">
                <asp:ListItem>150000(1250Sqft)</asp:ListItem>
                <asp:ListItem>2500000(1500Sqft)</asp:ListItem>
                <asp:ListItem>1000000(2500Sqft)</asp:ListItem>
                <asp:ListItem>2500000(4000Sqft)</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblSqrBlk" runat="server" Text="SquareBlock"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlSqrBlk" runat="server">
                <asp:ListItem Value="1">1 Sqft</asp:ListItem>
                <asp:ListItem Value="1.5 ">1.5 Sqft</asp:ListItem>
                <asp:ListItem Value="2">2 Sqft</asp:ListItem>
                <asp:ListItem Value="2.5">2.5 Sqft</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblUnitPrice" runat="server" Text="Unit Price"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlUnitPrice" runat="server">
                <asp:ListItem>4000</asp:ListItem>
                <asp:ListItem>4500</asp:ListItem>
                <asp:ListItem>5000</asp:ListItem>
                <asp:ListItem>5500</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblVat" runat="server" Text="Vat"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtVat" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="btnSave" runat="server" CssClass="auto-style4" OnClick="btnSave_Click" Text="SAVE" style="height: 26px" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

