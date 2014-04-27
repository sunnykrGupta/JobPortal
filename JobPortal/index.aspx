<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JobPortal.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <!-- css  links -->
	    
        <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
	<!-- Scripts links-->
    <script type="text/javascript" src="Scripts/jquery-1.4.1.js"></script>
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-1.4.1-vsdoc.js"></script>
    <script type="text/javascript" src="Scripts/main.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    Welcome to Online Job Portal
                </h1>
            </div>
            
            <div class="menu">
			    <a href="signup_recr.aspx">New recruiter</a> |
			    <a href="signup_user.aspx">New user</a>
		    </div>
        </div>

        <div class="rec-main">
           <div class="login">
                   
              
                   
              <label>Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>&nbsp;

               <asp:TextBox ID="login_mail" runat="server" Width="136px" Height="23px" AutoPostBack="True" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="login_mail" ErrorMessage="*" ForeColor="#00CC66"></asp:RequiredFieldValidator>
               <br />
               <br />
               <label>Password :&nbsp; </label>
               <asp:TextBox ID="login_pass" runat="server" Width="136px" Height="23px" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="login_pass" ErrorMessage="*" ForeColor="#00CC00"></asp:RequiredFieldValidator>
                  <br />
               <br />
              <label>Category :</label>&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:DropDownList ID="login_cat" runat="server" Height="22px" Width="100px">
                   <asp:ListItem>User</asp:ListItem>
                   <asp:ListItem>Recruiter</asp:ListItem>
               </asp:DropDownList>
                   
               <asp:Button ID="login_index" CssClass="logbut" runat="server" Text="Log in" Width="76px" OnClick="login_index_Click"  />
           </div>
            <div class="loginstatus">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
        </div>   
         
     </div>

     <div class="footer">
        <div class="clear">
	        <div id="foot-menu" style="margin-top: 9px">
			    <a href="">Contact Us |
			    <a href="">Terms</a> |
			    <a href="">&copy;2014 Online Portal</a>
		    </div>
        </div>
	</div>
    
    </form>
</body>
</html>
