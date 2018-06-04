<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- meta -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport" http-equiv="Content-Type">

  <title>Madameoiselle</title>
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

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
    
    .bcontainer{
        position:fixed;
        z-index: 999;
        opacity:0.7;
    }
    
    .bcontainer:hover{
        opacity:1;
    }
    
    .login{
        margin-left:1%;
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
				<a href="index.jsp"><h1 class ="madam">Mademoiselle.com</h1></a>
			</div>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>
	
            <form action="login.jsp" method="post">
              <div class="row" style="margin-top:0%; margin-left:40%">
                
                <div class="login">
                    <input type="text" name="shop_name" class="form-control" id="name" placeholder="Your username" />
                </div>

                <div class="login" > 
                      <input type="password" class="form-control" name="password" id="password" placeholder="Your password" />
                </div>

                <div class="login" >
                  <input type="submit" class="btn btn-defeault btn-send" value="Log in" style="background-color:#b8a07e;">  
                </div>
                  
                <div class="login">
                    <li class="btn btn-defeault btn-send" style="background-color:#b8a07e; padding-top:13%;"><a href="register.jsp" style="color:white;"> Sign up</a></li>
                </div>
                  
              </div>
            </form>
         
       

      </div>
    </div>
  </nav>
  <!-- End section navbar -->
<div id="header" class="home">

    <div class="container">
      <div class="header-content" style=" width:100%; display:inline-block; margin-top:30%;">
		<h1>Share your <span style="color:#DAC6B5;">passion</span> for <span style="color:#DAC6B5;">fashion</span> <span class="typed"></span></h1>
              
      </div>
    </div> 
</div>
  
  <!-- Home section 1 -->
  <div id="about" class="paddsection">
    <div class="container">
      <div class="row justify-content-between">

        <div class="col-lg-4 ">
          <div class="div-img-bg">
            <div class="about-img">
              <img src="images/index1.png" class="img-responsive" alt="me" style="width:350px;">
            </div>
          </div>
        </div>

        <div class="col-lg-7">
          <div class="about-descr">

            <p class="p-heading">Share your creations</p>
            <p class="separator">Let the world know your creations. Share your talent to the world.</p>

          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- end home section 1 -->

  <!-- home section 2 -->
	<div id="about" class="paddsection">
    <div class="container">
      <div class="row justify-content-between">

	  <div class="col-lg-7">
          <div class="about-descr">

            <p class="p-heading">Accept & Reject reservations </p>
            <p class="separator">User can accept and reject reservation from the client</p>

          </div>

        </div>
	  
        <div class="col-lg-4 ">
          <div class="div-img-bg">
            <div class="about-img">
              <img src="images/accept.png" class="img-responsive" alt="me" style="width:350px;">
            </div>
          </div>
        </div>

        
      </div>
    </div>
  </div>
  <!-- end home section 2 -->
  
  <!-- home section 3 -->
  <div id="about" class="paddsection">
    <div class="container">
      <div class="row justify-content-between">
	  
        <div class="col-lg-4 ">
          <div class="div-img-bg">
            <div class="about-img">
              <img src="images/gown.png" class="img-responsive" alt="me">
            </div>
          </div>
        </div>

		 <div class="col-lg-7">
          <div class="about-descr">

            <p class="p-heading">Have your own planner </p>
            <p class="separator">To easily track reservations made by the clients.</p>
          </div>

        </div>
        
      </div>
    </div>
  </div>
  <!-- end home section 3 -->
  
  <!-- start section steps -->
  <div id="journal" class="text-left paddsection">

    <div class="container">
      <div class="section-title text-center">
        <h2>In just 3 easy steps!</h2>
      </div>
    </div>

    <div class="container">
      <div class="journal-block">
        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="journal-info">

              <a href="blog-single.html"><img src="images/gown.png" class="img-responsive" alt="img"></a>

              <div class="journal-txt">

                <h4><a href="blog-single.html">Step 1</a></h4>
                <p class="separator">UPLOAD YOUR GOWN
                </p>

              </div>

            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="journal-info">

              <a href="blog-single.html"><img src="images/gown.png" class="img-responsive" alt="img"></a>

              <div class="journal-txt">

                <h4><a href="#blog-single.html">Step 2</a></h4>
                <p class="separator">ACCEPT A CLIENT REQUEST
                </p>

              </div>

            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="journal-info">

              <a href="blog-single.html"><img src="images/gown.png" class="img-responsive" alt="img"></a>

              <div class="journal-txt">

                <h4><a href="blog-single.html">Step 3</a></h4>
                <p class="separator">BE HAPPY! YOUR CREATION IS NOW SHARED
                </p>

              </div>

            </div>
          </div>

        </div>
      </div>
    </div>

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

      <div class="credits">
      </div>

    </div>
  </div>
  <!-- End section footer -->

  
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

 

</body>

</html>

  
 
    