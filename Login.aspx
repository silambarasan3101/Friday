<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSite.Master"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Friday.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="~/TopPanelStyle.css" />
    <script src="LoginValidation.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 351px;
            height: 41px;
        }
        .auto-style6 {
            width: 351px;
            height: 42px;
        }
        .auto-style7 {
            height: 42px;
        }
        .auto-style8 {
            width: 351px;
            height: 43px;
        }
        .auto-style9 {
            height: 43px;
        }
        .auto-style10 {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><h1 class="text-center">LogIn Page</h1></div>
    <div class="login-container">
        <table class="auto-style4">
            <tr>
                <td class="auto-style6">UserName</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TxtUserName" runat="server" ClientIDMode="Static"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UsernameField" runat="server" ControlToValidate="TxtUserName" ErrorMessage="UserName is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="NameExpress" runat="server" ControlToValidate="TxtUserName" ErrorMessage="All must be Numeric" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Password</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtPwd" runat="server" ClientIDMode="Static"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordField" runat="server" ControlToValidate="TxtPwd" ErrorMessage="Password is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="PwdExpress" runat="server" ControlToValidate="TxtPwd" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$">Password must be 8 digits,must contain 1 upper case letter,1 lower case letter and 1 numberic atleast</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style10">
                    <asp:Button ID="LoginBtn" runat="server" OnClick="LoginBtn_Click" Text="Login" CssClass="login-button" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:Label ID="ErrorMessageLabel" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
