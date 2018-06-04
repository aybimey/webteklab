<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrenSpCl.aspx.cs" Inherits="GrenSpCl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Management</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <link rel="stylesheet" type="text/css" href="css/Adminss.css">
</head>
<body>

    
    <div class="header">
  <h1>M A D E M O I S E L L E</h1>
  <p>User Management</p>
</div>

<div class="topnav">
  <a href="GrenSuperAd.aspx">Home</a>
  <a href="GrenRequests.aspx">Registration Request<span class="w3-badge w3-red">!</span></a>

  <a href="GrenSpCl.aspx">User Management</a>
  <a href="GrenUTrack.aspx">User Transaction</a>
  <a href="Logout.aspx" style="float:right">Logout</a>
</div>


    <form id="form1" runat="server">
       <div id= "search"><asp:TextBox ID="TextBoxStatus" runat="server" Width="277px"></asp:TextBox></div>

        <div class="yo">
            			<asp:Button ID="sortASC" runat="server" OnClick="sortASC_Click" Text="Male" BorderColor="#003366" Height="34px" Width="88px" BackColor="#FFCC99" BorderStyle="Solid" />
			<asp:Button ID="sortDSC" runat="server" OnClick="sortDSC_Click" Text="Female" BorderColor="#000066" Height="34px" Width="96px" BackColor="#FFCC99" BorderStyle="Solid" />
        </div>
            <div class="SPedit">
                <h1>Client Record</h1>
                <asp:GridView ID="GridViewCli" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="12" GridLines="Horizontal" CellSpacing="2"   >
                    <AlternatingRowStyle BackColor="#F7F7F7" />
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
                    <br />
             <asp:Button ID="ButtonCli" runat="server" Text="Display Client Record" OnClick="ButtonCli_Click" Height="39px" Width="262px" />

               <asp:Button ID="AcceptCli" runat="server" Text="Activate" OnClick="Accept_Click" Height="34px" />
         
              <asp:Button ID="DenyCli" runat="server" Text="Deactivate" OnClick="Deny_Click" Height="34px" />
                </div>
            </div>
                   
             

        <div class="SPedit">
            <h1>Service Provider Record</h1>
            <asp:GridView ID="GridViews" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="Solid" BorderWidth="1px" CellPadding="12" GridLines="Horizontal" CellSpacing="2">
                <AlternatingRowStyle BackColor="#F7F7F7" />
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
            <br />
           <asp:Button ID="Button1" runat="server" Text="Display SP Record" OnClick="Button1_Click" Height="39px" Width="262px" />
       </div>
	   
	   
	   <div class="SPedit">
            <h1>Admin Record</h1>
            <asp:GridView ID="GridViews2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="Solid" BorderWidth="1px" CellPadding="12" GridLines="Horizontal" CellSpacing="2">
                <AlternatingRowStyle BackColor="#F7F7F7" />
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
            <br />
           <asp:Button ID="Button2" runat="server" Text="Display SP Record" OnClick="Button2_Click" Height="39px" Width="262px" />
       </div>
	   
	   
    </form>
</body>
</html>
