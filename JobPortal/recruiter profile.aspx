<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="recruiter profile.aspx.cs" Inherits="JobPortal.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView ID="ListView1" runat="server">
    </asp:ListView>
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Button" />
    </asp:Content>
