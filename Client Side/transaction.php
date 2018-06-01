<?php
session_start();
include 'includes/database.php';
$username=$_SESSION['username'];
$email = $_SESSION['email'];
$profile = new database;
$profile->user_profile($username);
$profile->ctransaction();
?>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- meta -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport" http-equiv="Content-Type">

  <title>Mademoiselle</title>
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
  <link rel="icon" href="images/Logo.png">
  
  <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 

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
	
	.logo-bottom ul{
		text-decoration:none;
		list-style-type:none;
	}
	
	.logo-bottom ul li a{
		font-size:130%;
	}
	
	.logo-bottom ul li a:hover{
		color:#b8a07e;
		
	}
    
</style>
</head>
<body>

  <!-- start section navbar -->
  <!-- start section navbar -->

  <!-- End section navbar -->
  
  <!-- End section navbar -->
<div id="header" class="home" style="height:20%;">

    <div class="container" style="height:20%;">
      <div class="header-content" style=" width:100%; display:inline-block; margin-top:30%; height:20%;">    
      </div>
    </div> 
</div>
  
  <!-- Home section 1 -->
  
  
  <!--Home Section 2 -->
  <br>
  <br>
  <center><h2>Accepted Reservation</h2></center>
	<br>
  <div class="container-fluid">
  <table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Reserved Item</th>
      <th scope="col">Quantity</th>
      <th scope="col">Date Reserved</th>
      <th scope="col">Shop Name</th>
      <th scope="col">Contact</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  
  <?php 
				foreach($profile->ctransaction as $tran)
					{ ?>
  <tr>
    <td><?php echo $tran['reservation_collectionname'];?></td>
	  <td><?php echo $tran['reservation_quantity'];?></td>
	  <td><?php echo $tran['reservation_datereserved'];?></td>
	  <td><?php echo $tran['shop_name'];?></td>
    <td><?php echo $tran['reservation_contact'];?></td>
    <td><?php echo $tran[''];?></td>
  </tr>
	<?php	}
						?>
	</tbody>
  </table>
  <!-- end home section 1 -->

  
  
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

      <p>&copy; 2018 Mademoiselle.com. All rights reserved.</p>

      <div class="credits">
      </div>

    </div>
  </div>
  <!-- End section footer -->

  
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

 

</body>

</html>

  
 
    