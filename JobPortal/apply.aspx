<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="apply.aspx.cs" Inherits="JobPortal.WebForm4" %>

<!DOCTYPE html>

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
            <div class="per-menu">
			    
                <a href="home.aspx">Home</a>
		    </div>
        </div>

        <div class="rec-main">
            <div class="status_apply">
                <asp:Label ID="Label1" runat="server" Text="" Font-Size="Large" ForeColor="#009933"></asp:Label>
            </div>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="title" DataSourceID="SqlDataSource1" GridLines="Both" style="margin-right: 305px" Font-Size="X-Large" Width="1004px">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <ItemStyle BackColor="White" ForeColor="#003399" />
                <ItemTemplate>
                    <h2>
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' /> 
                    </h2>
                    <br />
                    WebSite:
                    <asp:Label ID="webLabel" runat="server" Text='<%# Eval("web") %>' />
                    <br />
                    Area of Specialization:
                    <asp:Label ID="areaLabel" runat="server" Text='<%# Eval("area") %>' />
                    <br />
                    Category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    Vacancy:
                    <asp:Label ID="vacancyLabel" runat="server" Text='<%# Eval("vacancy") %>' />
                    <br /><br />
                    Job Description:
                    
                        <asp:Label ID="jobdescLabel" runat="server" Text='<%# Eval("jobdesc") %>' />
                   
                    <br />
                    Who can Apply:
                        <asp:Label ID="whoapplyLabel" runat="server" Text='<%# Eval("whoapply") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />

            </asp:DataList>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobConnectionString %>"
                 SelectCommand="SELECT [title], [web], [area], [category], [vacancy], [jobdesc], [whoapply] FROM [jobs] where title=@tit">
            <SelectParameters>
                <asp:QueryStringParameter Name="tit" QueryStringField="title" />
            </SelectParameters>
            </asp:SqlDataSource>
           <div class="apply">
                <asp:Button ID="applyjob" runat="server" Text="Apply" cssClass="logout" OnClick="applyjob_Click"  />
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
