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

  <title>Mademoiselle</title>
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
  <link rel="shortcut icon" href="images/Logo.png">
  
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
				<a href="home.jsp"><h1 class ="madam">Mademoiselle</h1></a>
			</div>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>
		
        <ul class="nav-menu list-unstyled" style="margin-top:0%;">
          <li><a href="home.jsp" class="smoothScroll" ><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
          <li><a href="collections.jsp" class="smoothScroll" style="color:#b8a07e;"><i class="fa fa-female" aria-hidden="true"></i> Collections</a></li>
          <li><a href="planner.jsp" class="smoothScroll"><i class="fa fa-shopping-basket" aria-hidden="true"></i> Planner</a></li>
          <li><a href="reservation.jsp" class="smoothScroll"><i class="fa fa-address-book" aria-hidden="true"></i> Reservation</a></li>
          <li><a href="#" class="smoothScroll"><a href="logout.jsp" ><i class="fa fa-caret-square-o-right" aria-hidden="true"></i> Logout</a></li>
        </ul>

      </div>
    </div>
  </nav>
  <!-- End section navbar -->

  <!-- start section journal -->
  <div id="journal-blog" class="text-left  paddsections" style="margin-top:5%;">

   
    
   <%
      
   try
   {
       String id = request.getParameter("id");
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://192.168.5.87:3306/rental";
       String username="root1";
       String password="";
       String query="select * from collection where collection_id="+id;
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       
       
       while(rs.next())
       {
   %>
   
   
   <div class="container">
        <form class="form-group" method="post" action="editimage-process.jsp">
          
       <input type="hidden" name="id" value="<%=rs.getString("collection_id") %>">
        
            
              <br>
        <strong>Available Quantity:</strong><br>
        <input class="form-control" type="number" name="collection_quantity" value="<%=rs.getString("collection_quantity") %>" style="background-color:#F1D6B8;">
        <br>
        <strong>Rental Fee:</strong><br>
        <input class="form-control" type="text" name="collection_price" value="<%=rs.getString("collection_price") %>" style="background-color:#F1D6B8;">
        <br>
         <div class="modal-footer">
         
             
        <input type="submit" class="btn btn-secondary" value="Save">
        <a href="collections.jsp?id= <%=rs.getString("collection_id") %>" class="btn btn-secondary" style="padding-top:1%; background-color:#A18276;"><i class="fa fa-window-close" aria-hidden="true"></i> Cancel </a>
        </div>
        
        
        
        </form>
    </div>
    
     <hr>
          <%
       }
   %>
   </div>
   
   <%
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
                     
  <!-- End section journal -->


  <!-- start section footer -->
  <div id="footer" class="text-center">
    <div class="container">
      

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
