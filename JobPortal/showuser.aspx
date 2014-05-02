<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showuser.aspx.cs" Inherits="JobPortal.showuser" %>

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
<body style="background-color: rgb(243, 255, 242);">
    <form id="form1" runat="server">
    <div class="page" >
        <div class="header">
            <div class="title">
                <h1>
                    Welcome to Online Job Portal
                </h1>
            </div>
            <div class="per-menu">
			    
                <a href="recruiter.aspx">Recruit Mode</a>
		    </div>
        </div>

        <div class="rec-main" style="background-color: rgb(243, 255, 242);">
            <div class="viewprofile">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobConnectionString %>" SelectCommand="SELECT [email], [name], [contact], [city], [special], [skill], [resume] FROM [userinfo] WHERE ([email] = @email)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="email" QueryStringField="usermail" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="email" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span >
                       <span> Email: </span>
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    <br />
                    <span>Name: </span>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    <span>Contact:</span>
                    <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                    <br />
                    <span>City:</span>
                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    <br />
                    <span>Special:</span>
                    <asp:Label ID="specialLabel" runat="server" Text='<%# Eval("special") %>' />
                    <br />
                    <span>Skill:</span>
                    <asp:Label ID="skillLabel" runat="server" Text='<%# Eval("skill") %>' />
                    <br />
                    <span>Resume:</span>
                    <asp:Label ID="resumeLabel" runat="server" Text='<%# Eval("resume") %>' />

                    
                    <br />
                <br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="color: #FFFFFF;">
                        <span>Email:</span>
                    <asp:Label ID="emailLabel1" runat="server" Text='<%# Eval("email") %>' />
                    <br />
                    <span>Name:</span>
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    <span>Contact:</span>
                    <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                    <br />
                    <span>City:</span>
                    <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    <br />
                    <span>Special:</span>
                    <asp:TextBox ID="specialTextBox" runat="server" Text='<%# Bind("special") %>' />
                    <br />
                    <span>Skill:</span>
                    <asp:TextBox ID="skillTextBox" runat="server" Text='<%# Bind("skill") %>' />
                    <br />
                    <span>Resume:</span>
                    <asp:TextBox ID="resumeTextBox" runat="server" Text='<%# Bind("resume") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /><br /></span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">Email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />Name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />Contact:
                    <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                    <br />City:
                    <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    <br />Special:
                    <asp:TextBox ID="specialTextBox" runat="server" Text='<%# Bind("special") %>' />
                    <br />Skill:
                    <asp:TextBox ID="skillTextBox" runat="server" Text='<%# Bind("skill") %>' />
                    <br />Resume:
                    <asp:TextBox ID="resumeTextBox" runat="server" Text='<%# Bind("resume") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="color: #000000;">
                        Email:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    <br />
                    Name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    Contact:
                    <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                    <br />
                    City:
                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    <br />
                    Special:
                    <asp:Label ID="specialLabel" runat="server" Text='<%# Eval("special") %>' />
                    <br />
                    Skill:
                    <asp:Label ID="skillLabel" runat="server" Text='<%# Eval("skill") %>' />
                    <br />
                    Resume:
                    <asp:LinkButton ID="lnkDownload" runat="server" Text='<%# Eval("resume") %>'>Download</asp:LinkButton>
                <br /></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="font-weight: bold;color: #FFFFFF;">
                        Email:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    <br />
                    Name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    Contact:
                    <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                    <br />
                    City:
                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    <br />
                    Special:
                    <asp:Label ID="specialLabel" runat="server" Text='<%# Eval("special") %>' />
                    <br />
                    Skill:
                    <asp:Label ID="skillLabel" runat="server" Text='<%# Eval("skill") %>' />
                    <br />
                    Resume:
                    <asp:Label ID="resumeLabel" runat="server" Text='<%# Eval("resume") %>' />
                    <br />
                    <br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
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
