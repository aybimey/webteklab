<?php
	 session_start();
	 include 'includes/database.php';
	 $rent = $_GET['id'];
	 $rent = new database;
	 $rent->rent();
	 $rent->collection();
   $rent->size();
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
  <link rel="shortcut icon" href="images/Logo.png">
  
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
			<li><a href="home.php">Home</a></li>
			<li><a href="collection.php" style="color:#b8a07e;">Collections</a></li>
			<li><a href="transaction.php">Transactions</a></li>
			<li><a href="#" class="smoothScroll"><form action = "includes/logout-dbase.php" method="POST">
				<i class="fa fa-caret-square-o-right" aria-hidden="true"></i> <button type ="submit" name ="submit" style="background-color:white; border:none; color:#909497; cursor:pointer;"><strong> Logout</strong> </button></form></a></li>
		</ul>
      </div>
    </div>
  </nav>
 
  <!-- End section navbar -->

  
  
  <div id="about" class="paddsection">
    <div class="container">
	<?php 
		foreach($rent->rent as $rent)
						{ ?>
      <div class="row justify-content-between">

        <div class="col-lg-4 ">
          <div class="div-img-bg">
            <div class="about-img">
              <img src = 'images/<?php echo $rent['filename']; ?>'/>
            </div>
          </div>
        </div>

        <div class="col-lg-7">
          <div class="about-descr">

            <p class="p-heading"><?php echo $rent['collection_name'];?></p>
            <p class="separator"><?php echo $rent['collection_info'];?></p>
			Rental Fee:<p class="separator"><?php echo $rent['collection_price'];?></p>
			By: <strong><p class="separator"><?php echo $rent['shop_name'];?></p></strong>

          </div>
		  <br>
		  <h5>Rent Now</h5>
		   
		  
		  
		  
		   

			<form action="includes/rental.php?item=<?php echo $rent['collection_name']?>&amp;category=<?php echo $rent['category_name']?>&amp;price=<?php echo $rent['collection_price']?>&amp;shop=<?php echo $rent['shop_name']?>" method="post">
			<label style="font-size: 18px;">When will you reserve this?</label>
                <input type="date" name="req_datereserved" value="<?php echo date('Y-m-d'); ?>">
                <br>
			<label style="font-size: 18px;">Quantity Available: </label>
                        <input type="number" id="arrive" class="floatLabel" name="req_quantity" placeholder="<?php echo $rent['collection_quantity'];?>">
			<br>
	
			         <div class="col-lg-12">
                  <center><input type="submit" name="submit" class="btn btn-defeault btn-send" value="Submit"></center>
                </div>
			</form>
		  
		<?php } ?>
		 


        </div>
		
      </div>
	    
    </div>
  </div>
  
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

      <p>&copy; 2018 Mademeoiselle.com. All rights reserved.</p>

      <div class="credits">
      </div>

    </div>
  </div>
  <!-- End section footer -->

  
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

 

</body>

</html>

  
 
    