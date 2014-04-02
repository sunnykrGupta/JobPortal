<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_recr.aspx.cs" Inherits="JobPortal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            margin-right: 8px;
            
        }
        
        .style10
        {
            
            height: 25px;
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

<div class="recrsign">
    
    <br />
    <b>
    <br />
    </b>
    <asp:Label ID="Label1" runat="server" Text="Email Id" CssClass="style4" 
        Font-Bold="True" ></asp:Label>
    <b>&nbsp;&nbsp;&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="style10" Height="25px" 
        Width="175px"></asp:TextBox>
    <b>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Enter Valid Email" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ForeColor="Red"></asp:RegularExpressionValidator>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password" CssClass="style5" 
        Font-Bold="True" ></asp:Label>
    &nbsp;&nbsp;&bull; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Password1" type="password" class="style10" 
        onclick="return Password1_onclick()" align="top" maxlength="128" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label 
        ID="Label6" runat="server" Text="Repeat Password" CssClass="style5" 
        ></asp:Label>
    &nbsp;&nbsp;&bull;
    <input id="Password2" type="password" class="style10" 
        onclick="return Password1_onclick()" align="top" maxlength="128" />&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp; 
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">Choose Password</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">Repeat Password</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Organization" CssClass="style6" 
        Font-Bold="True" ></asp:Label>
    &nbsp;&nbsp;&bull;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" CssClass="style10" 
        Height="25px" Width="175px"></asp:TextBox>
    </b>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" Display="Dynamic" 
        ErrorMessage="RequiredFieldValidator" ForeColor="Red">Mention  Organization</asp:RequiredFieldValidator>
    <b>
    <br />
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Industry type " CssClass="style7" 
        Font-Bold="True" ></asp:Label>
    &nbsp;&nbsp;&bull;&nbsp;
    </b>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style10" 
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
    <asp:Label ID="Label5" runat="server" Text="Address" CssClass="style8" 
        Font-Bold="True" ></asp:Label>
    &nbsp;&nbsp;&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</b>
    <asp:TextBox 
        ID="TextBox3" runat="server" CssClass="style2" 
        ontextchanged="TextBox3_TextChanged" Width="277px" TextMode="multiline"  
        Height="60px"></asp:TextBox>
    <b>&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Label ID="Label10" runat="server" Text="Contact no." CssClass="style9" 
        Font-Bold="True" ></asp:Label>
    &nbsp;&nbsp;&bull;&nbsp;&nbsp;&nbsp;&nbsp;
    </b>
    <asp:TextBox ID="TextBox7" runat="server" CssClass="style2" 
        ontextchanged="TextBox3_TextChanged" Width="175px" Height="25px" 
        MaxLength="10"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red">Give Contact No.</asp:RequiredFieldValidator>
    <b>
    <br />
    <br />
    </b>
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" 
        Text="I agree on terms and conditions" />
    <br />
    <br />
    <div style="position: absolute; right: 6em; bottom: 1em ;">
        <asp:Button ID="Button1" runat="server" CssClass="logout" onclick="Button1_Click" Text="Submit" />
    </div>
    </br></br>
</div>
</asp:Content>
