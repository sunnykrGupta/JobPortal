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
                <div class="cat" id="cat_two">
                    <h2>All Jobs Display</h2>
                </div>
                
           </div>
           <div id="def_right">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="title" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="8" Width="725px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:HyperLinkField DataTextField="title" HeaderText="Select" DataNavigateUrlFields="title" DataNavigateUrlFormatString="apply.aspx?title={0}" />
                        <asp:BoundField DataField="title" HeaderText="Title" ReadOnly="True" SortExpression="title" />
                        <asp:BoundField DataField="web" HeaderText="Web" SortExpression="web" />
                        <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                        <asp:BoundField DataField="area" HeaderText="Area" SortExpression="area" />
                        <asp:BoundField DataField="vacancy" HeaderText="Vacancy" SortExpression="vacancy" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
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
