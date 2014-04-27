<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_recr.aspx.cs" Inherits="JobPortal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            margin-right: 8px;
            
        }
        
        .style10
        {
            
            margin-left: 0px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Password1_onclick() {

        }

// ]]>
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="position: absolute;left: 3em;font-size: 2.5em;">
       <h3>Client Registeration</h3>
    </div>
    <div class="rec-notify">
        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
    </div>

<div class="recrsign">
    
    <br />
    <b>
    <br />
    </b>
    <asp:Label ID="Label1" runat="server" Text="EMAIL-ID" CssClass="style4" 
        Font-Bold="True" ></asp:Label>
    <b>&nbsp;&nbsp;&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><asp:TextBox ID="rec_email" runat="server" CssClass="style10" Height="25px" 
        Width="187px"></asp:TextBox>
    <b>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="rec_email" ErrorMessage="Enter Valid Email" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ForeColor="Red"></asp:RegularExpressionValidator>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="PASSWORD" CssClass="style5" 
        Font-Bold="True" ></asp:Label>
    &nbsp;• &nbsp;&nbsp;
    <asp:TextBox ID="rec_pass" runat="server" Height="25px" TextMode="Password" Width="155px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="rec_pass" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">**</asp:RequiredFieldValidator>
    &nbsp;<asp:Label 
        ID="Label6" runat="server" Text="REPEAT PASS" CssClass="style5" 
        ></asp:Label>
    &nbsp;&nbsp;&bull;
    &nbsp;<asp:TextBox ID="TextBox9" runat="server" Height="25px" style="margin-left: 0px" TextMode="Password" Width="155px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox9" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">**</asp:RequiredFieldValidator>
    &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp; 
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="rec_pass" ControlToValidate="TextBox9" ErrorMessage="Password not Match" ForeColor="Red"></asp:CompareValidator>
    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="ORGANIZATION" CssClass="style6" 
        Font-Bold="True" ></asp:Label>
    &nbsp; •&nbsp; <asp:TextBox ID="rec_organ" runat="server" CssClass="style10" 
        Height="25px" Width="175px"></asp:TextBox>
    </b>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="rec_organ" Display="Dynamic" 
        ErrorMessage="Field required" ForeColor="Red"></asp:RequiredFieldValidator>
    <b>
    <br />
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="INDUSTRY TYPE " CssClass="style7" 
        Font-Bold="True" ></asp:Label>
    &nbsp;•&nbsp;
    </b>
    <asp:DropDownList ID="rec_type" runat="server" CssClass="style10" 
        Width="175px" Height="28px">
        <asp:ListItem>-Select an industry-</asp:ListItem>
        <asp:ListItem>accounting/taxation</asp:ListItem>
        <asp:ListItem>banking/financial services/broking</asp:ListItem>
        <asp:ListItem>computer hardware/networking</asp:ListItem>
        <asp:ListItem>animation/gaming</asp:ListItem>
        <asp:ListItem>government/defence</asp:ListItem>
        <asp:ListItem>healthcare/medicine</asp:ListItem>
        <asp:ListItem>insurance</asp:ListItem>
        <asp:ListItem>law/legal firms</asp:ListItem>
    </asp:DropDownList>
    <b>
    <br />
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="ADDRESS" CssClass="style8" 
        Font-Bold="True" ></asp:Label>
    &nbsp;&nbsp;&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </b>&nbsp;<asp:TextBox 
        ID="rec_address" runat="server" CssClass="style2" 
        Width="277px" TextMode="multiline"  
        Height="60px"></asp:TextBox>
    <b>&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Label ID="Label10" runat="server" Text="CONTACT" CssClass="style9" 
        Font-Bold="True" ></asp:Label>
    &nbsp;&nbsp;&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </b>
    <asp:TextBox ID="rec_contact" runat="server" CssClass="style2" 
        Width="175px" Height="25px" 
        MaxLength="10"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="rec_contact" ErrorMessage="Field required" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" 
        Text="I agree on terms and conditions" />
    <br />
    <br />
    <div style="position: absolute; right: 6em; bottom: 1em ;">
        <asp:Button ID="Button1" runat="server" CssClass="logout" onclick="Button1_Click" Text="Submit" />
    </div>
    <br /><br />
</div>
</asp:Content>
