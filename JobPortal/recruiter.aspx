<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recruiter.aspx.cs" Inherits="JobPortal.WebForm5" %>

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
    <style type="text/css">
        .rec-right
        {
            width: 250px;
            height: 334px;
        }
    </style>
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
            <div class="per-menu">
			    <a href="Default.aspx">Home</a> ||

                <asp:Label ID="Label1" runat="server" Text=" Hello "></asp:Label>
                
		    </div>
            <asp:Button ID="Button1" runat="server" Text="Log Out" Width="88px" />
        </div>
        <div class="per-main">
                    
            
            <div class="rec-left" style="height: 335px; width: 812px; float:left;" >
                
                <div style="height: 53px; width: 807px;">

                    <asp:Button ID="Button2" runat="server" Text="Your Jobs" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Create Job" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </div>
                
            </div>

            &nbsp;<div class="rec-right">

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
