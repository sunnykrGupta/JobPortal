<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="JobPortal._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <div class="def-left">
        <div class="cat cat-one">
            <asp:Button ID="Button1" runat="server" Height="90px" Text="ENGINEERING" 
                Width="200px" onclick="Button1_Click" />
        </div>
        <div class="cat cat-two">
            <asp:Button ID="Button2" runat="server" Height="90px" Text="MANAGEMENT" 
                Width="200px" onclick="Button2_Click" />      
        </div>
        <div class="cat cat-three">
            <asp:Button ID="Button3" runat="server" Height="90px" Text="MEDICAL" 
                Width="200px" onclick="Button3_Click" />
        </div>
        <div class="cat cat-four">
            <asp:Button ID="Button4" runat="server" Height="90px" style="margin-top: 0px" 
                Text="GOVERNMENT" Width="200px" onclick="Button4_Click" />
        </div>
   </div>
   <div class="def-right">
        <p>When fill method was called, dataadapter will open a connection to database,
        executes select command, stores the data retrieved by select command in to
        dataset and immediately closes the connection.</p>
        <p>As connection to database was closed, any changes to the data in dataset will
        not be directly sent to the database and will be made only in the dataset. To
        send changes made to data in dataset to the database, Update() method of
        the dataadapter is used that has the following syntax. </p>
        <p>When Update method was called, dataadapter will again open the connection
        to database, executes insert, update and delete commands to send changes in
        dataset to database and immediately closes the connection. As connection is
        opened only when it is required and will be automatically closed when it was
        not required, this architecture is called disconnected architecture.
        A dataset can contain data in multiple tables.</p>
   </div>
   <div class="cat-result">
        <p>Here triggered result displays</p>
   </div>
</asp:Content>
