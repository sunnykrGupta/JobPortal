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
			    <a href="Default.aspx">Home</a> ||
                <asp:Label ID="Label1" runat="server" Text=" Hello "></asp:Label>
		    </div>
            <asp:Button ID="Button1" runat="server" Text="Log Out" Width="88px" />
        </div>

        <div class="rec-main">
           
            <div class="rec-left" >
                <div class="rec-dash" style="height: 53px; width: 400px;">
                   
                    <asp:Button ID="Button2" runat="server"
                        Text="Your Job's" onclick="Button2_Click1"  
                        Font-Bold="True"  CssClass="yourjob"/>

                    <input id="create_but" type="button" value="Create new Job" />
                </div>
                <div id="recjob">
                    <p>When fill method was called, dataadapter will open a connection to database,
                        executes select command, stores the data retrieved by select command in to
                        dataset and immediately closes the connection.</p>
                        <p>As connection to database was closed, any changes to the data in dataset will
                        not be directly sent to the database and will be made only in the dataset. To
                        send changes made to data in dataset to the database, Update() method of
                        the dataadapter is used that has the following syntax. </p>
                </div>
                <div class="createjob">
                    
                    <label>Job Title</label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="509px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <br />
                    <br />
                     <label>Job Category</label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Engineering</asp:ListItem>
                        <asp:ListItem>Medical</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Government</asp:ListItem>
                    </asp:DropDownList>
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <label>Area of Specialization</label>
                    <asp:DropDownList ID="DropDownList2" runat="server">
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
                    <asp:TextBox ID="TextBox2" runat="server" Width="44px"></asp:TextBox>
                    <br />
                    <br />
                    
                    <br />
                    <div id="desc"> 
                        <label>Job Description</label>
                    </div>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="multiline" Height="85px" Width="579px"></asp:TextBox>

                    <div id="joburl">
                        <label>Website</label>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <br />

                    <div id="needs">
                        <label>Who can Apply</label>
                    </div>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="multiline" Height="85px" Width="579px"></asp:TextBox>
                    
                
                    <div id="finish_job">
                        <asp:Button ID="Button3" runat="server" CssClass="finish" Text="Finish" Height="32px" 
                        Width="83px" />
                    </div>
                </div>
            </div>

            <div class="rec-right">
                <p>When fill method was called, dataadapter will open a connection to database,
                executes select command, stores the data retrieved by select command in to
                dataset and immediately closes the connection.</p>
                <p>As connection to database was closed, any changes to the data in dataset will
                not be directly sent to the database and will be made only in the dataset. To
                send changes made to data in dataset to the database, Update() method of
                the dataadapter is used that has the following syntax. </p>
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
