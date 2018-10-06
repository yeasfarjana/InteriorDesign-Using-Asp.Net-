<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Content.master" AutoEventWireup="true" CodeFile="InputService.aspx.cs" Inherits="ManageSite_InputService" %>

<%@ Register Src="~/UserControls/MyControl.ascx" TagPrefix="uc1" TagName="MyControl" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 100px; height:200px; margin-top:100px; margin-left:100px"></div>
    <uc1:MyControl runat="server" ID="MyControl" />
</asp:Content>

