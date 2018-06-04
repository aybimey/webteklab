<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrenSuperAd.aspx.cs" Inherits="GrenSuperAd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Homepage</title>
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
  <p>Welcome to the administration area.</p>
</div>

<div class="topnav">
  <a href="GrenSuperAd.aspx">Home</a>
  <a href="GrenRequests.aspx">Registration Request<span class="w3-badge w3-red">!</span></a>

  <a href="GrenSpCl.aspx">User Management</a>
  <a href="GrenUTrack.aspx">User Transaction</a>
  <a href="Logout.aspx" style="float:right">Logout</a>
</div>

    <form id="form1" runat="server">
        
        <div>

<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2>My Profile</h2>
      
        <asp:GridView ID="GridViewSuper" runat="server"></asp:GridView>

   
    </div>
  </div>
  <div class="rightcolumn">
    <div class="card">
      <h2>Welcome Admin</h2>
        <asp:Label ID="Label" runat="server" Text="Label"></asp:Label>
        <img border="0" alt="imahe" src="images/umauma.jpg" width="200" height="100" class="ima">
        <a href="GrenEditProfile.aspx"><i class="fa fa-edit" style="font-size:25px"> Edit My Profile</i></a>
       <a href="GrenAddAdmin.aspx"><i class="fa fa-plus" style="font-size:25px"> Add Admin</i></a>
    </div>
  </div>
</div>

<div class="footer">
  <h2>Copyright &copy; Soriano, Uy | WebTech 9331B</h2>
</div>
        </div>
    </form>
</body>
</html>
