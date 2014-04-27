<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="JobPortal.WebForm6" %>

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
    <form id="form3" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    Welcome to Online Job Portal
                </h1>
		    </div>
            <div class="per-menu">
			    <a href="home.aspx">Home</a> ||
                <label>Hello , </label>
                <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
		    </div>
            <asp:Button ID="user_logout" runat="server" CssClass="logout" Text="Log Out" Width="88px" OnClick="Button2_Click" />
        </div>
        <div class="rec-main">
            <div class="rec-left" >
                <div class="rec-dash" style="height: 53px; width: 400px;">
                  <asp:Button ID="Button4" runat="server" Text="Jobs for you" CssClass="jobuser"/>
                    <input id="edituser" type="button" value="Edit Profile" />
                </div>
                
                <div id="hotjobs">
                    <p>When fill method was called, dataadapter will open a connection to database,
                        executes select command, stores the data retrieved by select command in to
                        dataset and immediately closes the connection.</p>
                        <p>As connection to database was closed, any changes to the data in dataset will
                        not be directly sent to the database and will be made only in the dataset. To
                        send changes made to data in dataset to the database, Update() method of
                        the dataadapter is used that has the following syntax. </p>
                </div>
                <div class="editprofile">
                   <div id="editup" 
                        style="width: 655px; height: 52px; font-size: 1.4em;font-weight: bold; padding: 20px 5px 10px 20px;">
                   
                       <label> Name&nbsp;&nbsp;&bull;&nbsp; </label>
                       <asp:TextBox ID="TextBox1" runat="server" Width="238px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <label>City&nbsp;&nbsp;&bull;&nbsp;&nbsp;</label><asp:TextBox ID="TextBox2" 
                           runat="server" Width="195px"></asp:TextBox>
                       <br />
                       <br />
                       <label> Mobile&nbsp;&bull; </label>
                       <asp:TextBox ID="TextBox3" runat="server" MaxLength="10"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Specialization &bull;</label>
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
                       <br />
                       <br />
                       <div style="width: 176px" >
                       <label>
                       New Skills&nbsp;&nbsp;&bull;&nbsp;&nbsp;
                       </label>
                       </div>
                       <asp:TextBox ID="TextBox4" TextMode="Multiline" runat="server" Width="232px" 
                           Height="63px"></asp:TextBox>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><br />
                       <br />
                       Update Resume&nbsp;&nbsp; &bull;
                       </label>
                       <asp:FileUpload ID="FileUpload1" runat="server" />
                   
                   </div>
                   <div class="update">
                       <asp:Button ID="Button1" runat="server" CssClass="update_but" Text="Update Profile" />
                   </div>
                </div>
            </div>

            <div class="userinfo">
                <h3>&nbsp;</h3>
            </div>
         </div>
           
     </div>
     <div class="footer">
        <div class="clear">
	        <div id="foot-menu" style="margin-top: 9px">
			    <a href="">Contact Us</a> |
			    <a href="">Terms</a> |
			    <a href="">&copy;2014 Online Portal</a>
		    </div>
        </div>
	</div>
    </form>
</body>
</html>