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
                    <p>When fill method was called, dataadapter will open a connection to database,
                    executes select command, stores the data retrieved by select command in to
                    dataset and immediately closes the connection.</p>
                    <p>As connection to database was closed, any other changes to the data in dataset will
                    not be directly sent to the database and will be made only in the dataset. To
                    send changes made to data in dataset to the database, Update() method of
                    the dataadapter is used that has the following syntax. </p>
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
