<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="JobPortal.WebForm3" %>

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
    <form id="form4" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    Welcome to Online Job Portal
                </h1>
            </div>
            
            <div class="menu">

			    <a href="user.aspx">My Page</a>
		    </div>
        </div>
        <div class="main">
            
            <div id="def_left">
                <div class="cat" id="cat_one">
                    <asp:Button ID="Button1" runat="server" class="catbutton" Height="90px" Text="ENGINEERING" 
                        Width="200px" />
                </div>
                <div class="cat" id="cat_two">
                    <asp:Button ID="Button2" runat="server" class="catbutton" Height="90px" Text="MANAGEMENT" 
                        Width="200px" />      
                </div>
                <div class="cat" id="cat_three">
                    <asp:Button ID="Button3" runat="server" class="catbutton" Height="90px" Text="MEDICAL" 
                        Width="200px" />
                </div>
                <div class="cat" id="cat_four">
                    <asp:Button ID="Button4" runat="server" class="catbutton" Height="90px" style="margin-top: 0px" 
                        Text="GOVERNMENT" Width="200px" />
                </div>
           </div>
           <div id="def_right">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="title" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:HyperLinkField DataTextField="title" HeaderText="Select" DataNavigateUrlFields="title" DataNavigateUrlFormatString="apply.aspx?title={0}" />
                        <asp:BoundField DataField="title" HeaderText="title" ReadOnly="True" SortExpression="title" />
                        <asp:BoundField DataField="web" HeaderText="web" SortExpression="web" />
                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                        <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
                        <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobConnectionString %>" SelectCommand="SELECT [title], [web], [category], [area], [vacancy] FROM [jobs]"></asp:SqlDataSource>
           </div>
           <div id="cat_result">
                <p>Here triggered result displays</p>
           </div>
        </div>
    </div>

    <div class="footer">
        <div class="clear">
	    <div id="foot-menu" style="margin-top: 9px">
			<a href="">Contact Us</a> |
			<a href="">Terms</a> |
			<span>&nbsp;&nbsp;&copy;2014 Online Portal</span>
		</div>
        </div>
	</div>
    </form>
</body>
</html>
