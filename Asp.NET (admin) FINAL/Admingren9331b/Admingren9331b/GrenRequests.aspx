<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrenRequests.aspx.cs" Inherits="GrenRequests" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reg Requests</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <link rel="stylesheet" type="text/css" href="css/Adminss.css">
    <style>
        .Buttnss, .Buttns{
    margin-bottom: 80px;
    margin-top:30px;
    margin-right:750px;
   
}
#search {
    margin-top:5%;
    margin-left:40%;

}
.pabop {

    position:center;

}
#GridViewClient{
    margin-left:150px;
    margin-right:30px;
    width:85%;
    position:center;

}

table{
    width:85%;
    margin-left:150px;
    margin-right:150px;
}
    </style>

</head>
<body>

    <div class="header">
  <h1>M A D E M O I S E L L E</h1>
  <p>Welcome to the Admnistrations Area</p>
</div>

    <div class="topnav">
  <a href="GrenSuperAd.aspx">Home</a>
  <a href="GrenRequests.aspx">Registration Request<span class="w3-badge w3-red">!</span></a>

  <a href="GrenSpCl.aspx">User Management</a>
  <a href="GrenUTrack.aspx">User Transaction</a>
  <a href="Logout.aspx" style="float:right">Logout</a>
</div>

    <form id="form1" runat="server">
        <div class="requests">

            <h4>Registration Requests for New Admin</h4>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="8" GridLines="Horizontal" Width="300px" Height="10px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="User Name" />
                    <asp:BoundField DataField="pass" HeaderText="Password" />
                    <asp:BoundField DataField="firstname" HeaderText="First Name" />
                    <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="contactnum" HeaderText="Contact Number" />
                    <asp:TemplateField HeaderText="Operation">
                        <ItemTemplate>
                            <asp:Button ID="Buttona" runat="server" CommandName="approve" Text="Approve" BackColor="#339933" ForeColor="White" />
                            <asp:Button ID="Buttond" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="deny" Text="Deny" BackColor="Maroon" ForeColor="White" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle Width="300px" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>

        </div>

  <div id= "search"><asp:TextBox ID="TextBoxStatus" runat="server" Width="277px"></asp:TextBox></div>
    
        <div class="onee">
            
        
        <table>
            <h1>Client Requests</h1>      
                    
                        <asp:GridView ID="GridViewClient" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
                   
               


    <div class="Buttns">
         
           <asp:Button ID="DisplayUserID" runat="server" Text="Display Client Registration" OnClick="DisplayUserID_Click" Height="34px" />
           
  
             <asp:Button ID="AcceptCli" runat="server" Text="Accept" OnClick="Accept_Click" Height="34px" />
         
              <asp:Button ID="DenyCli" runat="server" Text="Deny" OnClick="Deny_Click" Height="34px" />
    </div>

                            </div>
        </table>

    
        <table>
            <h1>Service Provider Requests</h1>           
            <div class="bakak">     
                    <asp:GridView ID="GridViewSp" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView></div>
        <div class="Buttnss">
                
                    <asp:Button ID="DisplayerUserSP" runat="server" Text="Display SP Registration" OnClick="DisplayerUserSP_Click" Height="40px" />
              
                    <asp:Button ID="AcceptSp" runat="server" Text="Accept" OnClick="AcceptSp_Click" Height="40px" />
           
                    <asp:Button ID="DenySP" runat="server" Text="Deny" OnClick="DenySP_Click" Height="40px" />
                

        </div>
        </table>


         </div>
            </div>
    </form>
</body>
</html>
