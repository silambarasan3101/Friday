<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSite.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Friday.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" type="text/css" href="~/TopPanelStyle.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><h1 class="text-center">Welcome to Cricket</h1></div>
    <div><h4 class="text-center">Already a User. Click Login</h4></div>
    <div class="text-center">
        <asp:Button ID="LoginBtn" runat="server" Text="Login" cssClass="login-button" OnClick="LoginBtn_Click"/>
    </div>
    <div><h4 class="text-center">New User. Click SignUp</h4></div>
    <div class="text-center">
        <asp:Button ID="SignUpBtn" runat="server" Text="SignUp" cssClass="login-button" OnClick="SignUpBtn_Click"/>
    </div>
</asp:Content>
