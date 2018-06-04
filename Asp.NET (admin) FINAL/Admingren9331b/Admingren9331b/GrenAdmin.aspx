<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrenAdmin.aspx.cs" Inherits="GrenAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
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
  <p>Administration Area.</p>
</div>

<div class="topnav">
  <a href="GrenAdmin.aspx">Home</a>
  <a href="GrenAdRequests.aspx">Registration Request<span class="w3-badge w3-red">!</span></a>

  <a href="GrenAdSpCl.aspx">User Management</a>
  <a href="GrenAdUTrack.aspx">User Transaction</a>
  <a href="Logout.aspx" style="float:right">Logout</a>
</div>

    <form id="form1" runat="server">
        <div>
            
            
            <div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2>My Profile</h2>

            </div>
  </div>

            <asp:GridView ID="GridViewAd" runat="server"></asp:GridView>


                <div class="rightcolumn">
    <div class="card">
      <h2>Welcome Admin</h2>
        <td>
                <asp:Label ID="LabelA" runat="server" Text="Label"></asp:Label>
            </td>
        <img border="0" alt="imahe" src="images/umauma.jpg" width="200" height="100" class="ima">
        <a href="GrenAdEditProfile.aspx"><i class="fa fa-edit" style="font-size:25px"> Edit My Profile</i></a>
    </div>
  </div>
                    <div class="footer">
  <h2>Copyright &copy; Soriano, Uy | WebTech 9331B</h2>
</div>
        </div>
    </form>
</body>
</html>
