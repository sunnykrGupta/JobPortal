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
                <div class="rec-dash" style="height: 53px; width: 570px;">
                  <asp:Button ID="Button4" runat="server" Text="Jobs for you" CssClass="jobuser"/>
                    <input id="edituser" type="button" value="Edit Profile" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="Load Data" Font-Bold="True" Font-Size="Large" Height="35px" OnClick="Button5_Click" Width="127px" />
                </div>
                <div class="updatestatus">
                     <asp:Label ID="Label2" runat="server"></asp:Label>
                </div>
                
                <div id="hotjobs">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="396px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:HyperLinkField DataTextField="title" HeaderText="Select" DataNavigateUrlFields="title" DataNavigateUrlFormatString="apply.aspx?title={0}" />
                            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                            <asp:BoundField DataField="web" HeaderText="web" SortExpression="web" />
                            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                            <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
                            <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JobConnectionString %>" SelectCommand="SELECT [title], [web], [category], [area], [vacancy] FROM [jobs] WHERE ([area] = @area)">
                        <SelectParameters>
                            <asp:SessionParameter Name="area" SessionField="Spec" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="editprofile">
                   <div id="editup" 
                        style="width: 655px; height: 52px; font-size: 1.4em;font-weight: bold; padding: 20px 5px 10px 20px;">
                   
                       <label> Name&nbsp;&nbsp;&bull;&nbsp; </label>
                       <asp:TextBox ID="edituname" runat="server" Width="238px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <label>City&nbsp;&nbsp;&bull;&nbsp;&nbsp;</label><asp:TextBox ID="editucity" 
                           runat="server" Width="195px"></asp:TextBox>
                       <br />
                       <br />
                       <label> Mobile&nbsp;&bull; </label>
                       <asp:TextBox ID="editumob" runat="server" MaxLength="10" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Specialization &bull;</label>
                       <asp:DropDownList ID="edituspec" runat="server">
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
                       <asp:TextBox ID="edituskill" TextMode="Multiline" runat="server" Width="232px" 
                           Height="63px" MaxLength="500"></asp:TextBox>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><br />
                       <br />
                       Update Resume&nbsp;&nbsp; &bull;
                       </label>
                       <asp:FileUpload ID="FileUpload1" runat="server" />
                   
                   </div>
                   <div class="update">
                       <asp:Button ID="edituserprof" runat="server" CssClass="update_but" Text="Update Profile" OnClick="edituserprof_Click" />
                   </div>
                </div>
            </div>

            <div class="userinfo">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="email" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <li style="background-color: #FAFAD2;color: #284775; font-size:1.2em;">
                            <strong>Email: </strong>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                            <br />
                            <strong>Name: </strong>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                            <br />
                            <strong>Contact: </strong>
                            <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                            <br />
                            <strong>City: </strong>
                            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                            <br />
                            <strong>Category: </strong>
                            <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                            <br />
                            <strong>Special: </strong>
                            <asp:Label ID="specialLabel" runat="server" Text='<%# Eval("special") %>' />
                            <br />
                            <strong>Skill: </strong>
                            <asp:Label ID="skillLabel" runat="server" Text='<%# Eval("skill") %>' />
                            <br />
                        </li>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <li style="background-color: #FFCC66;color: #000080;font-size:1.2em;">Email:
                            <asp:Label ID="emailLabel1" runat="server" Text='<%# Eval("email") %>' />
                            <br />
                            <strong>Name: </strong>
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            <strong>Contact: </strong>
                            <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                            <br />
                            <strong>City: </strong>
                            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            <strong>Category: </strong>
                            <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                            <br />
                            <strong>Special: </strong>
                            <asp:TextBox ID="specialTextBox" runat="server" Text='<%# Bind("special") %>' />
                            <br />
                            <strong>Skill: </strong>
                            <asp:TextBox ID="skillTextBox" runat="server" Text='<%# Bind("skill") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </li>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        No data was returned.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="">Email:
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                            <br />Name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />Contact:
                            <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                            <br />City:
                            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />Category:
                            <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                            <br />Special:
                            <asp:TextBox ID="specialTextBox" runat="server" Text='<%# Bind("special") %>' />
                            <br />Skill:
                            <asp:TextBox ID="skillTextBox" runat="server" Text='<%# Bind("skill") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </li>
                    </InsertItemTemplate>
                    <ItemSeparatorTemplate>
<br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li style="background-color: #FFFBD6;color: #333333;font-size:1.2em;">Email:
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
                            Category:
                            <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                            <br />
                            Special:
                            <asp:Label ID="specialLabel" runat="server" Text='<%# Eval("special") %>' />
                            <br />
                            Skill:
                            <asp:Label ID="skillLabel" runat="server" Text='<%# Eval("skill") %>' />
                            <br />
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li style="background-color: #FFCC66;font-weight: bold;color: #000080;font-size:1.4em;">
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
                            Category:
                            <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                            <br />
                            Special:
                            <asp:Label ID="specialLabel" runat="server" Text='<%# Eval("special") %>' />
                            <br />
                            Skill:
                            <asp:Label ID="skillLabel" runat="server" Text='<%# Eval("skill") %>' />
                            <br />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
                <h3>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobConnectionString %>" SelectCommand="SELECT [email], [name], [contact], [city], [category], [special], [skill] FROM [userinfo] WHERE ([email] = @email)">
                        <SelectParameters>
                            <asp:SessionParameter Name="email" SessionField="New" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </h3>
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