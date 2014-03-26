<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="JobPortal._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="cat cat-one">
        <asp:Button ID="Button1" runat="server" Height="90px" Text="ENGINEERING" 
            Width="200px" onclick="Button1_Click" />
    </div>
    <div class="cat cat-two">
        <asp:Button ID="Button2" runat="server" Height="90px" Text="MANAGEMENT" 
            Width="200px" onclick="Button2_Click" />      
    </div>
    <div class="cat cat-three">
        <asp:Button ID="Button3" runat="server" Height="90px" Text="MEDICAL" 
            Width="200px" onclick="Button3_Click" />
    </div>
    <div class="cat cat-four">
        <asp:Button ID="Button4" runat="server" Height="90px" style="margin-top: 0px" 
            Text="GOVERNMENT" Width="200px" onclick="Button4_Click" />
    </div>
    
</asp:Content>
