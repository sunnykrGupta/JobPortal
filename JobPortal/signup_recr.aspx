<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_recr.aspx.cs" Inherits="JobPortal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            margin-right: 8px;
            font-weight: bold;
        }
        .style3
        {
            font-size: x-large;
        }
        .style4
        {
            font-weight: 700;
            font-size: medium;
        }
        .style5
        {
            font-size: large;
        }
        .style6
        {
            font-size: large;
        }
        .style7
        {
            font-size: large;
        }
        .style8
        {
            font-size: large;
        }
        .style9
        {
            font-size: large;
        }
        .style10
        {
            font-weight: bold;
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
    <asp:Label ID="Label11" runat="server" CssClass="style3" ForeColor="#999999" 
        Text="New Client Registeration"></asp:Label>
    <br />
    <b>
    <br />
    </b>
    <asp:Label ID="Label1" runat="server" Text="*Email Id" CssClass="style4" 
        Font-Bold="True" ForeColor="#00CC00"></asp:Label>
    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </b>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="style10" Height="22px" 
        Width="175px"></asp:TextBox>
    <b>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="enter a valid id" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ForeColor="Red"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">this field is required</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="*Password" CssClass="style5" 
        Font-Bold="True" ForeColor="#00CC00"></asp:Label>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </b>
    <input id="Password1" type="password" class="style10" 
        onclick="return Password1_onclick()" align="top" maxlength="128" /><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="*Company name" CssClass="style6" 
        Font-Bold="True" ForeColor="#00CC00"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><asp:TextBox ID="TextBox2" runat="server" CssClass="style10" 
        Height="22px" Width="175px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" Display="Dynamic" 
        ErrorMessage="RequiredFieldValidator" ForeColor="Red">this field is required</asp:RequiredFieldValidator>
    <b>
    <br />
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="*Industry type " CssClass="style7" 
        Font-Bold="True" ForeColor="#00CC00"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </b>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style10" 
        Width="175px" Height="22px">
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
    <asp:Label ID="Label5" runat="server" Text="Address" CssClass="style8" 
        Font-Bold="True" ForeColor="#00CC00"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</b>
    <asp:TextBox 
        ID="TextBox3" runat="server" CssClass="style2" 
        ontextchanged="TextBox3_TextChanged" Width="277px" TextMode="multiline"  Height="22px"></asp:TextBox>
    <b>&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Label ID="Label10" runat="server" Text="*contact no." CssClass="style9" 
        Font-Bold="True" ForeColor="#00CC00"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </b>
    <asp:TextBox ID="TextBox7" runat="server" CssClass="style2" 
        ontextchanged="TextBox3_TextChanged" Width="175px" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">this field is required</asp:RequiredFieldValidator>
    <b>
    <br />
    <br />
    </b>
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" 
        Text="I agree on terms and conditions" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
    <br />
    <br />
    <br />
    
</asp:Content>
