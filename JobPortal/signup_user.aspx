<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_user.aspx.cs" Inherits="JobPortal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class"userbody" style="height: 63px">
    

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" 
        runat="server" Height="26px" Width="130px"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
        Text="Button" Width="151px" />

</div>
</asp:Content>
