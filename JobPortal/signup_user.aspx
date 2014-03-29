<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_user.aspx.cs" Inherits="JobPortal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Text1_onclick() {

        }

// ]]>
    </script>
    <style type="text/css">
        #Password1
        {
            width: 189px;
            height: 28px;
            margin-left: 755px;
            margin-top: 91px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<<<<<<< HEAD
<div class"userbody" style="height: 573px; width: 1252px; margin-right: 0px;">
    

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label17" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#666666" 
        
        
        style="Z-INDEX: 138; LEFT: 403px; POSITION: absolute; TOP: 1px; height: 36px; width: 419px; margin-top: 0px;">                Employee Registration Form</asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Black" 
        Font-Size="Medium" Font-Underline="True" ForeColor="Gray" 
        
        
        
        
        
        style="Z-INDEX: 106; LEFT: 14px; POSITION: absolute; TOP: 33px; width: 215px; right: 1047px; height: 23px;">PERSONAL DETAILS</asp:Label>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#00CC00" 
        
        
        
        style="Z-INDEX: 107; LEFT: 559px; POSITION: absolute; TOP: 74px; height: 18px; width: 102px;" 
        Font-Size="Medium">EAMIL-ID *:</asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" BorderColor="White" 
        
        
        
        
        style="Z-INDEX: 110; LEFT: 765px; POSITION: absolute; TOP: 67px; width: 186px; height: 27px;" 
        ForeColor="Black" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="this field is required" 
        Font-Bold="True" Font-Italic="False" ForeColor="Red" 
        style="Z-INDEX: 111; LEFT: 968px; POSITION: absolute; TOP: 72px"></asp:RequiredFieldValidator>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#00CC00" 
        
        
        style="Z-INDEX: 101; LEFT: 551px; POSITION: absolute; TOP: 190px; right: 539px; height: 18px; width: 186px;" 
        Font-Size="Medium">CONFIRM PASSWORD*:</asp:Label>
    <br />
    <input id="Password1" type="password" /><br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<br />
    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Medium" ForeColor="#00CC00" Text="CATEGORY *:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" 
        style="margin-left: 110px" Width="192px">
        <asp:ListItem>SELECT</asp:ListItem>
        <asp:ListItem>ENGINEERING</asp:ListItem>
        <asp:ListItem>MANAGEMENT</asp:ListItem>
        <asp:ListItem>MEDICAL</asp:ListItem>
        <asp:ListItem>GOVERNMENT</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Medium" ForeColor="#00CC00" Text="SPECALISATION *:"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        style="Z-INDEX: 127; LEFT: 774px; POSITION: absolute; TOP: 268px; height: 29px; width: 176px;">
    </asp:DropDownList>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
        ControlToValidate="DropDownList1" ErrorMessage="this field is required" 
        ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="DropDownList2" Display="Dynamic" 
        ErrorMessage="this field is required" ForeColor="Red"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="#00CC00" 
        style="Z-INDEX: 103; LEFT: 12px; POSITION: absolute; TOP: 76px" 
        Width="81px">NAME *:</asp:Label>
    <input size="20" 
        style="Z-INDEX: 112; LEFT: 767px; WIDTH: 184px; POSITION: absolute; TOP: 127px; HEIGHT: 27px" 
        tabindex="0" type="password" maxlength="10" /><br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="#00CC00" 
        
        
        
        style="Z-INDEX: 108; LEFT: 554px; POSITION: absolute; TOP: 132px; height: 23px;">PASSWORD *:</asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" BorderColor="White" ForeColor="Black" 
        
        
        
        style="Z-INDEX: 104; LEFT: 223px; POSITION: absolute; TOP: 74px; width: 187px; height: 29px;"></asp:TextBox>
    <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 765px" />
    <br />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="this field is required" 
        ForeColor="Red" 
        
        
        
        
        style="Z-INDEX: 105; LEFT: 13px; POSITION: absolute; TOP: 95px; height: 18px; margin-top: 0px;"></asp:RequiredFieldValidator>
    <asp:Button ID="Button4" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" Height="30px" 
        style="margin-left: 423px; margin-top: 9px" Text="SUBMIT" Width="113px" />
    <br />
    <asp:TextBox ID="TextBox9" runat="server" BorderColor="#CCCCCC" 
        ForeColor="Black" MaxLength="10" 
        
        
        style="Z-INDEX: 121; LEFT: 224px; POSITION: absolute; TOP: 127px; height: 30px; width: 188px; bottom: 343px;"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" BorderColor="White" ForeColor="Black" 
        
        
        
        style="Z-INDEX: 113; LEFT: 224px; POSITION: absolute; TOP: 182px; height: 30px; width: 188px;"></asp:TextBox>
    <br />
    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#00CC00" 
        
        style="Z-INDEX: 120; LEFT: 13px; POSITION: absolute; TOP: 127px; width: 108px; height: 12px;" 
        Font-Size="Medium">MOBILE* :</asp:Label>
    <br />
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="#00CC00" 
        
        
        
        
        style="Z-INDEX: 109; LEFT: 10px; POSITION: absolute; TOP: 160px; width: 120px; margin-top: 23px; bottom: 298px;">CURRENT CITY</asp:Label>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="this field is required" 
        
        style="Z-INDEX: 114; LEFT: 13px; POSITION: absolute; TOP: 206px; right: 1119px; height: 14px; width: 144px;" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ControlToValidate="TextBox9" ErrorMessage="this field is required" 
        style="Z-INDEX: 122; LEFT: 11px; POSITION: absolute; TOP: 149px" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Crimson" 
        
        
        
        
        style="Z-INDEX: 136; LEFT: 550px; POSITION: absolute; TOP: 353px; width: 171px; margin-bottom: 0px;">Upload your Resume..........</asp:Label>
    <br />
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial Black" 
        ForeColor="#666666" 
        
        style="Z-INDEX: 123; LEFT: 6px; POSITION: absolute; TOP: 233px; right: 1000px; width: 270px;" 
        Font-Size="Medium" Font-Underline="True">EDUCATIONAL DETAILS</asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#00CC00" 
        
        
        
        
        
        
        
        style="Z-INDEX: 124; LEFT: 14px; POSITION: absolute; TOP: 320px; right: 1069px; width: 193px; height: 18px;" 
        Font-Size="Medium">What Are Your Key Skils?*:</asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="Green" 
        style="Z-INDEX: 119; LEFT: 0px; POSITION: absolute; TOP: 496px">What Are Your Key Skills?</asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" MaxLength="250" 
        
        
        
        
        style="Z-INDEX: 132; LEFT: 228px; POSITION: absolute; TOP: 324px; height: 27px; width: 189px; margin-top: 0px;" 
        BorderColor="White" ForeColor="Black"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="this field is required" 
        ForeColor="Red" 
        
        
        
        
        
        style="Z-INDEX: 126; LEFT: 13px; POSITION: absolute; TOP: 344px; height: 19px; width: 133px; margin-bottom: 7px;"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True" 
        ForeColor="Red" 
        style="Z-INDEX: 117; LEFT: 328px; POSITION: absolute; TOP: 544px" 
        Text="RIGSTER" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="Red" 
        style="Z-INDEX: 117; LEFT: 328px; POSITION: absolute; TOP: 544px" 
        Text="RIGSTER" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </div>
=======

>>>>>>> upstream/master
</asp:Content>
