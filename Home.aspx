<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSite.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Friday.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Cricket</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }
        h1, h2 {
            color: #333;
        }
        p {
            color: #666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div class="container">
        <h1>REGISTER NOW FOR NATIONAL CRICKET</h1>
        <p> Dress code for trials is white as per standard of test cricket</p>
        <p> Player must show his D.O.B Proof In Trials</p>
        <p> Players' selection will totally depend on Performance in trials</p>
        <p> One player can register only for single state team</p>
    </div>
</body>
</asp:Content>
