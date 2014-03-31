<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="JobPortal.WebForm3" %>

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
			    <a href="Default.aspx">Home</a>| |

			    <a href="signup_recr.aspx">New recruiter</a> |
			    <a href="signup_user.aspx">New user</a>
		    </div>
        </div>

        <div class="rec-main">
           <div class="login">
                   
               <asp:Login ID="Login1" runat="server">
               </asp:Login>
                   
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
