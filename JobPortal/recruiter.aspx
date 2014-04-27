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
			    
                <label>Hello , </label>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
		    </div>
            <asp:Button ID="rec_logout" runat="server" CssClass="logout" Text="Log Out" Width="88px" OnClick="rec_logout_Click" />
        </div>

        <div class="rec-main">
           
            <div class="rec-left" >
                <div class="rec-dash" style="height: 53px; width: 400px;">
                   
                    <asp:Button ID="Button2" runat="server"
                        Text="Your Job's"  ClientIDMode="Static"
                        Font-Bold="True"  CssClass="yourjob"/>

                    <input id="create_but" type="button" value="Create new Job" />
                </div>
                <div id="recjob">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="title" DataSourceID="SqlDataSource1" Font-Size="Medium" ForeColor="Black" CellSpacing="2" Font-Bold="False">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="title" HeaderText="title" ReadOnly="True" SortExpression="title" />
                            <asp:BoundField DataField="web" HeaderText="web" SortExpression="web" />
                            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                            <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
                            <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
                            <asp:BoundField DataField="jobdesc" HeaderText="jobdesc" SortExpression="jobdesc" />
                            <asp:BoundField DataField="whoapply" HeaderText="whoapply" SortExpression="whoapply" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerSettings Position="Top" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobConnectionString %>" SelectCommand="SELECT [title], [web], [category], [area], [vacancy], [jobdesc], [whoapply] FROM [jobs] WHERE ([rec_mail] = @rec_mail)">
                        <SelectParameters>
                            <asp:SessionParameter Name="rec_mail" SessionField="New" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                </div>
                <div class="createjob">
                    
                    <label>Job Title</label>
                    <asp:TextBox ID="jobtitle" runat="server" Width="509px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <br />
                    <br />
                     <label>Job Category</label>
                    <asp:DropDownList ID="jobcat" runat="server">
                        <asp:ListItem>Engineering</asp:ListItem>
                        <asp:ListItem>Medical</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Government</asp:ListItem>
                    </asp:DropDownList>
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <label>Area of Specialization</label>
                    <asp:DropDownList ID="jobarea" runat="server">
                        <asp:ListItem>Anyone</asp:ListItem>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>Vacancies</label>
                    <asp:TextBox ID="vacancy" runat="server" Width="44px" TextMode="Number"></asp:TextBox>
                    <br />
                    <br />
                    
                    <br />
                    <div id="desc"> 
                        <label>Job Description</label>
                        
                    </div>
                    <asp:TextBox ID="jobdesc" runat="server" TextMode="multiline" Height="85px" Width="579px"></asp:TextBox>

                    <div id="joburl">
                        <label>Website</label>
                        <asp:TextBox ID="website" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <br />

                    <div id="needs">
                        <label>Who can Apply</label>
                        
                    </div>
                    <asp:TextBox ID="whoapply" runat="server" TextMode="multiline" Height="85px" Width="579px"></asp:TextBox>
                    
                
                    <div id="finish_job">
                        <asp:Button ID="Button3" runat="server" CssClass="finish" Text="Finish" Height="32px" 
                        Width="83px" OnClick="Button3_Click" />
                    </div>
                </div>
            </div>

            <div class="rec-right">
                <p>Success, world-class health, internal fulfillment and sustained happiness
                don't just happen. These elements of your best life are created.</p>
                <p>All too often we look at a human being playing their best game on the
                playing field of life and assume they got lucky or were born into their
                lofty condition.</p>
                <p>What we don't see is all the devotion and discipline that went into
                crafting the extraordinary results we see.</p>
            </div>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#00CC00"></asp:Label>
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
