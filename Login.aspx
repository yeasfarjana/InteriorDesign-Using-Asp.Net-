<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Content.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 100px; height:200px; margin-top:100px; margin-left:100px"></div>
<h1>Log Into This Site</h1>
    <asp:Login ID="Login1" runat="server" CreateUserText="Sign Up for New Account" CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/Default.aspx"></asp:Login>

</asp:Content>

