<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSite.Master" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="Friday.LogOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Logout</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Logout</h2>
    <p>Click the button below to log out.</p>
    
    <form action="logout.php" method="post">
        
        <asp:Button ID="Button" runat="server" OnClick="Button_Click" Text="LogOut" />
        
    </form>
</asp:Content>

