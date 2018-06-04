<!DOCTYPE html>
<html lang="en">
 <%
    if(session.getAttribute( "shop_name" ) == null || session.getAttribute( "shop_name" )== ""){
        session.setAttribute("message", "Please Login");
%>       
<script>
function myFunction() {
    alert("Please Login!");
}
</script>
<%
         response.sendRedirect(response.encodeRedirectURL("http://www.mademoiselle.com:8084/ServiceProvider/index.jsp"));
    }

%>
<head>
<!-- meta -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Madameoiselle</title>
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/hover/hover.min.css" rel="stylesheet">

  <!-- Blog Stylesheet File -->
  <link href="css/blog.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- Responsive css -->
  <link href="css/responsive.css" rel="stylesheet">

  <!-- Favicon -->
  <link rel="shortcut icon" href="images/favicon.png">
  
  <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<style>
    .madam{color:black;
    font-family:'Great vibes', cursive;
    margin-top:2.5%;
    color:#b8a07e;}
    
    .madam:hover{
        color:black;
    }
    
    ul li a:hover{
        color:#b8a07e;  
    }
    
    .shophome{
        padding:3%;
    }
</style>
</head>
<body>

  <!-- start section navbar -->
  <nav id="main-nav-subpage" class="subpage-nav">
    <div class="row">
      <div class="container">

        <div class="logo" style=" width:30%;">
			<div class="logo-left" style="float:left; width:30%;">
				<img src="images/gown.png">
			</div>
			<div class="logo-right" style="float:right; width:70%;">
				<a href="home.jsp"><h1 class ="madam">Madamoiselle</h1></a>
			</div>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>
		
        <ul class="nav-menu list-unstyled" style="margin-top:0%;">
          <li><a href="home.jsp" class="smoothScroll" ><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
          <li><a href="collections.jsp" class="smoothScroll"><i class="fa fa-female" aria-hidden="true"></i> Collections</a></li>
          <li><a href="planner.jsp" class="smoothScroll"><i class="fa fa-shopping-basket" aria-hidden="true"></i> Planner</a></li>
          <li><a href="reservation.jsp" class="smoothScroll" style="color:#b8a07e;"><i class="fa fa-address-book" aria-hidden="true"></i> Reservation</a></li>
          <li><a href="#" class="smoothScroll"><a href="logout.jsp" ><i class="fa fa-caret-square-o-right" aria-hidden="true"></i> Logout</a></li>
        </ul>

      </div>
    </div>
  </nav>
  <!-- End section navbar -->


  <!-- start section journal -->
  <div id="journal-blog" class="text-left  paddsections" style="margin-top:5%;">

    <div class="container">
      <div class="section-title text-center">
        <h2>Client Reservations</h2>
      </div>
    </div>
      
      <hr>
      
<div class="container-fluid">
  <table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Client Name</th>
      <th scope="col">Contact Number</th>
      <th scope="col">Item to be reserved</th>
      <th scope="col">Category</th>
      <th scope="col">Quantity</th>
      <th scope="col">Rental Fee</th>
      <th scope="col">Date Reserved</th>
      <th scope="col">Date of Return</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
       <%
      
   try 
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://192.168.5.87:3306/rental";
       String username="root1";
       String password="";
       String query="select * from request_reservation where shop_name='"+session.getAttribute( "shop_name" )+"'ORDER by req_id DESC ";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   %>
    <tr>
  <form action="acceptreserve.jsp" method="post">
      <input type="hidden" name="req_id" value="<%=rs.getString("req_id") %>">
      <td><input type="hidden" name="req_firstname" value="<%=rs.getString("req_firstname") %>"><input type="hidden" name="req_lastname" value="<%=rs.getString("req_lastname") %>"><%=rs.getString("req_lastname") %>,<%=rs.getString("req_firstname") %> </td>
      <td><input type="hidden" name="req_contactnumber" value="<%=rs.getString("req_contactnumber") %>"><%=rs.getString("req_contactnumber") %></td>
      <td><input type="hidden" name="req_collectionname" value="<%=rs.getString("req_collectionname") %>"><%=rs.getString("req_collectionname") %></td>
      <td><input type="hidden" name="req_categoryname" value="<%=rs.getString("req_categoryname") %>"><%=rs.getString("req_categoryname") %></td>
      <td><input type="hidden" name="req_quantity" value="<%=rs.getString("req_quantity") %>"><%=rs.getString("req_quantity") %></td>
      <td><input type="hidden" name="req_price" value="<%=rs.getString("req_price") %>"><%=rs.getString("req_price") %></td>
      <td><input type="hidden" name="req_datereserved" value="<%=rs.getString("req_datereserved") %>"><%=rs.getString("req_datereserved") %></td>
      <td><input type="hidden" name="req_datereturned" value="<%=rs.getString("req_datereturned") %>"><%=rs.getString("req_datereturned") %></td>
      <td>
      <button type="submit" class="btn btn-secondary"> <i class="fa fa-check-square-o" aria-hidden="true"></i> Accept</button>
      <a href="denyreserve.jsp?id=<%=rs.getString("req_id")%>&amp;req_collectionname=<%=rs.getString("req_collectionname") %>&amp;req_price=<%=rs.getString("req_price") %>&amp;req_quantity=<%=rs.getString("req_quantity") %>&amp;req_firstname=<%=rs.getString("req_firstname") %>&amp;req_datereserved=<%=rs.getString("req_datereserved") %>"class="btn btn-danger" style="padding-top:10px;" onclick="return confirm('Are you sure you want to delete this client?')"><i class="fa fa-times" aria-hidden="true"></i> Deny</a>
      </td>
  </form>
    </tr>
       <%
    }
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>

  </tbody>
  </table>


</div>

  
  <!-- End section journal -->


  <!-- start section footer -->
  <div id="footer" class="text-center">
    <div class="container">
      <div class="socials-media text-center">

        <ul class="list-unstyled">
          <li><a href="#"><i class="ion-social-facebook"></i></a></li>
          <li><a href="#"><i class="ion-social-twitter"></i></a></li>
          <li><a href="#"><i class="ion-social-instagram"></i></a></li>
          <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
          <li><a href="#"><i class="ion-social-tumblr"></i></a></li>
          <li><a href="#"><i class="ion-social-dribbble"></i></a></li>
        </ul>

      </div>

       <p>&copy; 2018 Madameoiselle.com. All rights reserved.</p>

      
    </div>
  </div>
  <!-- End section footer -->

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/typed/typed.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>

</html>
