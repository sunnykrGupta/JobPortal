<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_user.aspx.cs" Inherits="JobPortal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="signhead">
        <h2>User Registration Form</h2>
    
    </div>
    <div class="personal">
        <h3 style="text-decoration: underline;">PERSONAL DETAILS</h3>
        </br>
        <label>EAMIL-ID *:&nbsp;&nbsp;&nbsp;&nbsp;</Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="174px"></asp:TextBox>
        <label>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NAME *:</Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
       </br></br>
        
        <label>PASSWORD *:</Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="179px" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label>REPEAT PASS *:</Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
        </br></br>

        <label>CONTACT *:</Label>
        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 16px" 
            Width="174px"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label>CITY *:</Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
       </br>
        &nbsp;<h3 style="text-decoration: underline;">EDUCATIONAL DETAILS </h3>
       </br>
          <label>CATEGORY *:</Label>
         <asp:DropDownList ID="DropDownList2" runat="server">
            
            <asp:ListItem>ENGINEERING</asp:ListItem>
            <asp:ListItem>MANAGEMENT</asp:ListItem>
            <asp:ListItem>MEDICAL</asp:ListItem>
            <asp:ListItem>GOVERNMENT</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label>SPECIALIZATION *:</Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
           
                        <asp:ListItem>Civil Engineer</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Electrical Engineer</asp:ListItem>
                        <asp:ListItem>Mechanical Engineer</asp:ListItem>
                        <asp:ListItem>Health</asp:ListItem>
                         <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>Marketing</asp:ListItem>
                        <asp:ListItem>Real estate</asp:ListItem>
                        <asp:ListItem>Risk management</asp:ListItem>
                         <asp:ListItem>Accountant</asp:ListItem>
                         <asp:ListItem>Professor</asp:ListItem>
                        <asp:ListItem>Data Entry</asp:ListItem>
                        <asp:ListItem>Teacher</asp:ListItem>
                        <asp:ListItem>Librarian</asp:ListItem>
        </asp:DropDownList>
        </br>
        <div style="margin-top:20px; width: 300px; ">  
          <label>SKILLS *:</Label>
        </div>
          <asp:TextBox ID="TextBox7" Textmode="Multiline" runat="server" Height="61px" 
            Width="252px"></asp:TextBox>
        
        <div style="float:right; position: absolute; bottom: 3em; right: 9em; ">

       <label>UPLOAD RESUME/CV *:</Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        
        
        <div style="position: absolute; bottom: 1.3em;right: 3em; ">
        
            <asp:Button ID="Button1" runat="server" Text="Register" CssClass="logout"/>
    
        </div>   
        </br>
    </div>
    


</asp:Content>
