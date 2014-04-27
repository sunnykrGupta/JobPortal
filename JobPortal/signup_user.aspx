<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup_user.aspx.cs" Inherits="JobPortal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="signhead">
        <h2>User Registration Form</h2>
    </div>
    <div class="user-notify">
        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
    </div>
    <div class="personal">
        <h3 style="text-decoration: underline;">PERSONAL DETAILS</h3>
        </br>
        <label>EAMIL-ID *:&nbsp;&nbsp;&nbsp;&nbsp;</Label>
        <asp:TextBox ID="user_email" runat="server" Width="174px"></asp:TextBox>
        <label>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NAME *:</Label>
        <asp:TextBox ID="user_name" runat="server" Width="230px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="user_name" ErrorMessage="Field required" ForeColor="Red"></asp:RequiredFieldValidator>
       </br>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="user_email" ErrorMessage="Enter valid Id" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </br>
        
        <label>PASSWORD *:</Label>
        <asp:TextBox ID="user_pass" runat="server" Width="179px" TextMode="Password" 
            MaxLength="10"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label>REPEAT PASS *:</Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="user_pass" ControlToValidate="TextBox4" ErrorMessage="Password not match" ForeColor="Red"></asp:CompareValidator>
        </br></br>

        <label>CONTACT *:</Label>
        <asp:TextBox ID="user_contact" runat="server" style="margin-left: 16px" 
            Width="174px" MaxLength="10"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label>CITY *:</Label>
        <asp:TextBox ID="user_city" runat="server"></asp:TextBox>
       </br>
        <label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="user_contact" ErrorMessage="Field  required" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="user_city" ErrorMessage="Field required" ForeColor="Red"></asp:RequiredFieldValidator>
        </Label>
        <h3 style="text-decoration: underline;">EDUCATIONAL DETAILS </h3>
       </br>
          <label>CATEGORY *:</Label>
         <asp:DropDownList ID="user_cat" runat="server">
            
            <asp:ListItem>ENGINEERING</asp:ListItem>
            <asp:ListItem>MANAGEMENT</asp:ListItem>
            <asp:ListItem>MEDICAL</asp:ListItem>
            <asp:ListItem>GOVERNMENT</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label>SPECIALIZATION *:</Label>
        <asp:DropDownList ID="user_spec" runat="server">
           
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="user_cat" ErrorMessage="Field required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="user_spec" ErrorMessage="Field required" ForeColor="Red"></asp:RequiredFieldValidator>
        <div style="margin-top:20px; width: 300px; ">  
          <label>SKILLS *:</Label>
        </div>
          <asp:TextBox ID="user_skill" Textmode="Multiline" runat="server" Height="61px" 
            Width="252px"></asp:TextBox>
        
        <div style="float:right; position: absolute; bottom: 3em; right: 9em; height: 26px; width: 440px;">

       <label>UPLOAD RESUME/CV *:</Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        
        
        <div style="position: absolute; bottom: 1.3em;right: 3em; ">
        
            <asp:Button ID="Button1" runat="server" Text="Register" CssClass="logout" OnClick="Button1_Click1"/>
    
        </div>   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        <br />
    </div>
    


</asp:Content>
