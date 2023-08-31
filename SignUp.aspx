<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSite.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Friday.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script src="SignupValidation.js" type="text/javascript"></script>

    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 562px;
        }
        .auto-style6 {
            width: 562px;
            height: 39px;
        }
        .auto-style7 {
            height: 39px;
        }
        .auto-style8 {
            width: 562px;
            height: 35px;
        }
        .auto-style9 {
            height: 35px;
        }
        .auto-style10 {
            width: 562px;
            height: 37px;
        }
        .auto-style11 {
            height: 37px;
        }
        .auto-style12 {
            width: 562px;
            height: 38px;
        }
        .auto-style13 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><h1 class="text-center">SignUp Page</h1></div>
    <div class="signup-container">

        <table class="auto-style4">
            <tr>
                <td class="auto-style6">FirstName</td>
                <td class="auto-style7">
                    <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="FirstnameField" runat="server" ControlToValidate="FirstName" ErrorMessage="Firstname is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="FirstNameExpress" runat="server" ControlToValidate="FirstName" ErrorMessage="Firstname must be Alphabetic" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">LastName&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LastnameField" runat="server" ControlToValidate="LastName" ErrorMessage="Lastname is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="LastNameExpress" runat="server" ControlToValidate="LastName" ErrorMessage="LastName must be Alphabetic" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">UserName</td>
                <td class="auto-style11">
                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UsernameField" runat="server" ControlToValidate="UserName" ErrorMessage="Username is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="UserNameExpress" runat="server" ControlToValidate="UserName" Display="Dynamic" ErrorMessage="Symbols are not allowed at first" ForeColor="Red" ValidationExpression="^[a-zA-Z][\w\s]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Email</td>
                <td class="auto-style13">
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailField" runat="server" ControlToValidate="Email" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="EmailExpress" runat="server" ControlToValidate="Email" ErrorMessage="Email is not a valid fomat." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Password</td>
                <td class="auto-style11">
                    <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PwdField" runat="server" ControlToValidate="Password" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="PwdExpress" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="Password must be 8 digits,must contain 1 upper case letter,1 lower case letter and 1 numberic atleast" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Confirm Password</td>
                <td class="auto-style13">
                    <asp:TextBox ID="ConfirmPwd" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="CPwdField" runat="server" ControlToValidate="ConfirmPwd" ErrorMessage="Confirm Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CmpPwd" runat="server" ControlToValidate="ConfirmPwd" ControlToCompare="Password" Operator="Equal" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="SignUpBtn" runat="server" Text="SignUp" OnClick="SignUpBtn_Click" CssClass="login-button" OnClientClick="return validateForm();" />

                </td>
            </tr>
        </table>

    </div>
    <div>
        <asp:Label ID="SignUpErrorLabel" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
