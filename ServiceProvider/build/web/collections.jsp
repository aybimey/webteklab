<!DOCTYPE html>
<html lang="en">

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
          <li><a href="collections.jsp" class="smoothScroll" style="color:#b8a07e;"><i class="fa fa-female" aria-hidden="true"></i>Collections</a></li>
          <li><a href="planner.jsp" class="smoothScroll"><i class="fa fa-shopping-basket" aria-hidden="true"></i>Planner</a></li>
          <li><a href="reservation.jsp" class="smoothScroll"><i class="fa fa-address-book" aria-hidden="true"></i>Reservation</a></li>
          <li><a href="#" class="smoothScroll"><a href="logout.jsp" ><i class="fa fa-caret-square-o-right" aria-hidden="true"></i>Logout</a></li>
        </ul>

      </div>
    </div>
  </nav>
  <!-- End section navbar -->

  <!-- start section journal -->
  <div id="journal-blog" class="text-left  paddsections" style="margin-top:5%;">
    <div class="container" style="margin-left: 80%;">
        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal">
          <i class="fa fa-plus" aria-hidden="true"></i> Add Collection
      </button>
    </div>
 </div>
    
    
<!-- The Modal for adding a collection -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add Clothing</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <form class="form-group" method="post" action="addclothing.jsp">
      <div class="modal-body">
          <div class="container">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Upload Image</label>
                        <div class="input-group">
                            <span class="input-group-btn">
                                <span class="btn btn-default btn-file">
                               <input type="file" id="imgInp" value>
                               </span>
                            </span>
                             <input type="text" class="form-control" readonly>
                        </div>
                    <img id='img-upload'/>
                 </div>
            </div>
        </div>
        
        <select class="custom-select" id="inputGroupSelect01" name="category"><br>
          <option selected>Choose category...</option>
                            <option value="Wedding Gown">Wedding Gown</option>
                            <option value="Wedding Suit">Wedding Suit</option>
                            <option value="Prom Dress">Prom Dress</option> 
                            <option value="Prom Suit">Prom Suit</option>
                            <option value="Retro">Retro</option>
        </select> <br><br>
        
        <input type="text"  name="collection_name" class="form-control" id="exampleFormControlInput1" aria-label="Small" aria-describedby="inputGroup-sizing-sm" value="Name of your creation"> 
        <input type="text" class="form-control" name="collection_quantity" id="exampleFormControlInput1" aria-label="Small" aria-describedby="inputGroup-sizing-sm" value="Available number of your creation">                
        <input type="text" class="form-control" name="collection_price" id="exampleFormControlInput1" aria-label="Small" aria-describedby="inputGroup-sizing-sm" value="How much is your design">
        <textarea class="form-control" name="collection_info" id="exampleFormControlInput1" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Describe your design"></textarea>  
      </div>
      
      <div class="modal-footer">
        <button type="submit" class="btn btn-secondary"><i class="fa fa-plus" aria-hidden="true"></i> Add</button>
      </div>
    </form>

    </div>
  </div>
</div>
  

<div class="container">
  <div class="row">
   
      <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/rental";
       String username="root";
       String password="";
       String query="select * from shop_collection";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   %>
    <div class="col-xs-3">
      <div class="jumbotron">
    <bold>Apparel Name:</bold> <%=rs.getString("cloth_name") %><br>
    <bold>Apparel Category:</bold> <%=rs.getString("cloth_category") %><br>
    <bold>Apparel Info:</bold> <%=rs.getString("cloth_info") %><br>
    <bold>Apparel Quantity:</bold> <%=rs.getString("cloth_quantity") %><br>
    <bold>Apparel Price:</bold> P<%=rs.getString("cloth_price") %><br><br>
      <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal2"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit
      </button>
    
<!-- The Modal -->
<div class="modal fade" id="myModal2">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Edit Apparel</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form class="form-group" method="post" action="updateapparel.jsp">
        <input type="hidden" name="id" value="<%=rs.getString("cloth_id") %>">
        Apparel Name:<br>
        <input class="form-control" type="text" name="name" value="<%=rs.getString("cloth_name") %>">
        <br>
        Apparel Category:<br>
        <input class="form-control" type="text" name="category" value="<%=rs.getString("cloth_category") %>">
        <br>
        Apparel Info:<br>
        <input class="form-control" type="text" name="info" value="<%=rs.getString("cloth_info") %>">
        <br>
        Quantity:<br>
        <input class="form-control" type="number" name="quantity" value="<%=rs.getString("cloth_quantity") %>">
        <br>
        Price:<br>
        <input class="form-control" type="number" name="price" value="<%=rs.getString("cloth_price") %>">
        <br>
        <div class="modal-footer">
        <button class="btn btn-secondary" type="submit"><i class="fa fa-check" aria-hidden="true"></i> Submit</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-window-close" aria-hidden="true"></i> Close</button>
        </div>
        </form>

      </div>

    </div>
  </div>
</div>


      <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal3"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete
      </button>
<div class="modal fade" id="myModal3">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Delete</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        Are you sure you ant to delete <%=rs.getString("cloth_name") %> ?
        <div class="modal-footer">
        <button class="btn btn-secondary" type="submit"><i class="fa fa-check" aria-hidden="true"></i> Yes</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-window-close" aria-hidden="true"></i> Cancel</button>
        </div>
        </form>

      </div>

    </div>
  </div>
</div>



   
    
    </div>
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
</div>


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

      <p>&copy; Copyrights Folio. All rights reserved.</p>


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
