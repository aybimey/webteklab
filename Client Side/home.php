<?php
  include_once 'link.php';
  require "phpinclude/checklogin.php";
?>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top" style="font-weight: bold;">Madamemoiselle</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="home.php" style="font-weight: bold;">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="collections.php" style="font-weight: bold;">Collections</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="transaction.php" style="font-weight: bold;">My Transaction</a>
            </li>
             <li class="nav-item">
              <form action ="phpinclude/logout-dbase.php" method="POST">
                <button type="submit" name="submit" style=" -moz-appearance: none; -webkit-appearance: none; -ms-appearance: none; appearance: none; -moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; -webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; -ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; font-weight: 300; height: 2.85rem; line-height: 2.95rem;  display: inline-block; text-align: center; padding: 0 1.5rem; text-decoration: none; text-transform: uppercase; white-space: nowrap; cursor: pointer; border: 0; border-radius: 2px; font-weight: bold;"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbspLogout </button>
              </form>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div class="intro-heading text-uppercase">Madamemoiselle</div>
          <div class="intro-lead-in">"Rent suit & gown<br>with poise"</div>
          <a class="btn btn-primary-outline btn-xl text-uppercase js-scroll-trigger info-btn" href="#about">More info</a>
        </div>
      </div>
    </header>

   <!-- About -->
   <style>
      @import url('https://fonts.googleapis.com/css?family=Courgette');
      @import url('https://fonts.googleapis.com/css?family=Montserrat');
    </style>

    <section style="background-color: #f6e58d;">
    <div id="about" class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
              <h2 class="section-heading" style="font-family: 'Courgette', cursive; font-size: 47px;">Why Rent a Suit & Gown?</h2>
          </div>
        </div>
        <div class="row">
          <div class=""></div><br><br>
            <p class="text-muted" align="center" style="font-size: 22px; font-family: 'Montserrat', sans-serif;">Why buy when you can rent? Madamemoiselle offers high fashion suit and gown rentals. We focus our attention to the budget conscious and give you the opportunity to rent suits and gowns at an affordable price. We want you to find your confidence and fashion with our suits and gowns because our goal is to provide the best customer service while helping you look good, elegant, dashing and beautiful for your event.  </p>
          </div>          
        </div>
    </div>
    </section>


    <!-- Collections -->
    <section class="bg-light" id="collections">
    <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading" style="font-family: 'Courgette', cursive; font-size: 47px;">Collections</h2>
            <h3 class="section-subheading text-muted" style="font-size: 23px;">An overview of the Madamemoiselle collections</h3>
          </div>
        </div>

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="img/gown1.JPG" alt="First slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="img/suit1.JPG" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="img/kids1.JPG" alt="Third slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="img/gown2.JPG" alt="Third slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="img/suit2.JPG" alt="Third slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="img/kids2.JPG" alt="Third slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    </div>
    </section>

     <!-- ****** Categories Area Start ****** -->
    <section class="categories_area clearfix" id="about">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
                        <img src="img/catagory-img/men.jpg" alt="">
                        <div class="catagory-title">
                            
                                <h5 style="font-family: 'Courgette', cursive;">Men</h5>
                          
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".6s">
                        <img src="img/catagory-img/women.jpg" alt="">
                        <div class="catagory-title">
                           
                                <h5 style="font-family: 'Courgette', cursive;">Women</h5>
                           
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".9s">
                        <img src="img/catagory-img/kids.jpeg" alt="">
                        <div class="catagory-title">
                           
                                <h5 style="font-family: 'Courgette', cursive;">Kids</h5>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ****** Categories Area End ****** -->

    <!-- Footer -->
    <footer style="background-color: #f6e58d;">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright" style="font-weight: bold;">Copyright &copy; Madamemoiselle 2018</span>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>


    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular-animate.min.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular-route.min.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular-aria.min.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular-messages.min.js'></script>
    <script src='https://cdn.gitcdn.xyz/cdn/angular/bower-material/v1.0.0-rc3/angular-material.js'></script>
    <script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/t-114/assets-cache.js'></script>

    <script  src="js/index.js"></script>

     <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="js/active.js"></script>
  </body>
</html>
