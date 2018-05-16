<?php
    include_once 'link.php';
    require "phpinclude/checklogin.php";
?>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Madamemoiselle</title>

    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
	<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel="stylesheet" type="text/css" href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="styles/categories_styles.css">
	<link rel="stylesheet" type="text/css" href="styles/categories_responsive.css">

  </head>

<body>

<div class="super_container">

	<!-- Header -->

	<header class="header trans_300">

		<!-- Main Navigation -->
		<div class="main_nav_container">
			<div class="container">
				<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top" style="font-weight: bold;">Madamemoiselle</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="home.php" style="font-weight: bold; color:black;">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="collections.php" style="font-weight: bold; color:black;">Collections</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="transaction.php" style="font-weight: bold; color:black;">My Transaction</a>
            </li>
             <li class="nav-item">
              <form action ="phpinclude/logout-dbase.php" method="POST">
                <button type="submit" name="submit" style="-moz-appearance: none; -webkit-appearance: none; -ms-appearance: none; appearance: none; -moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; -webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; -ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out; font-weight: 300; height: 2.85rem; line-height: 2.95rem;  display: inline-block; text-align: center; padding: 0 1.5rem; text-decoration: none; text-transform: uppercase; white-space: nowrap; cursor: pointer; border: 0; border-radius: 2px; font-weight: bold; color:black;"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbspLogout </button>
              </form>
            </li>
          </ul>
        </div>
      </div>
    </nav>
			</div>
		</div>

	</header>

	<div class="fs_menu_overlay"></div>

	<!-- Hamburger Menu -->

	<div class="hamburger_menu">
		<div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
		<div class="hamburger_menu_content text-right">
		</div>
	</div>

	<div class="container product_section_container">
		<div class="row">
			<div class="col product_section clearfix">

				<!-- Sidebar -->

				<div class="sidebar">
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>Categories</h5>
						</div>
						<ul class="sidebar_categories">
							<li>Gown</li>
							<li>Suit</li>
							<li>Wedding Gown</li>
							<li>Wedding Suit</li>
							<li>Kids Gown</li>
							<li>Kids Suit</li>
						</ul>
					</div>

					<!-- Color -->
					<div class="sidebar_section">
						<div class="sidebar_title">
							
						</div>
					</div>

				</div>

				<!-- Main Content -->

				<div class="main_content">

					<!-- Products -->

					<div class="products_iso">
						<div class="row">
							<div class="col">

								<!-- Product Sorting -->

								<div class="product_sorting_container product_sorting_container_top">
									<ul class="product_sorting">										
									</ul>
								</div>
								<!----search---->
								<hr class="star-light">
          									<div class="form-group">
          									<div class="input-group">
            						<input type="text" name="search_text" id="search_text" placeholder="Search" class="form-control" />
         						 </div>
        						</div>

								<!-- Product Grid -->

								<div class="product-grid">

									<!-- Product 1 -->

									<div class="product-item men">
										<div class="product discount product_filter">
											<div class="product_image">
												<img src="images/wedding1.jpg" alt="">
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_info">
												<h6 class="product_name">Alycia Wedding Gown</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 6,500.00 RENT NOW</a></div>
									</div>
									<br><br>

									<!-- Product 2 -->

									<div class="product-item women">
										<div class="product product_filter">
											<div class="product_image">
												<img src="images/wedding2.jpg" alt="">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">Ascelina Wedding Gown</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 6,500.00 RENT NOW</a></div>
									</div>

									<!-- Product 3 -->

									<div class="product-item women">
										<div class="product product_filter">
											<div class="product_image">
												<img src="images/wedding3.jpg" alt="">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">Alvia Wedding Gown</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 5,000.00 RENT NOW</a></div>
									</div>

									<!-- Product 4 -->

									<div class="product-item accessories">
										<div class="product product_filter">
											<div class="product_image">
												<img src="images/wedding4.jpg" alt="">
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_info">
												<h6 class="product_name">Aemela Wedding Gown</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 5,500.00 RENT NOW</a></div>
									</div>

									<!-- Product 5 -->

									<div class="product-item women men">
										<div class="product product_filter">
											<div class="product_image">
												<img src="images/wedding5.jpg" alt="">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">Estelle Wedding Gown</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 6,500.00 RENT NOW</a></div>
									</div>

									<!-- Product 6 -->

									<div class="product-item accessories">
										<div class="product discount product_filter">
											<div class="product_image">
												<img src="images/wedding6.jpg" alt="">
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_info">
												<h6 class="product_name">Fleur Wedding Gown</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 6,500.00 RENT NOW</a></div>
									</div>

									<!-- Product 7 -->

									<div class="product-item women">
										<div class="product product_filter">
											<div class="product_image">
												<img src="images/wedding7.jpg" alt="">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">Iva Wedding Gown</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">$610.00 RENT NOW</a></div>
									</div>

									<!-- Product 8 -->

									<div class="product-item accessories">
										<div class="product product_filter">
											<div class="product_image">
												<img src="images/wedding8.jpg" alt="">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">Margoux Wedding Gown</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 4,500.00 RENT NOW</a></div>
									</div>

									<!-- Product 9 -->

									<div class="product-item men">
										<div class="product product_filter">
											<div class="product_image">
												<img src="images/suit1.jpg" alt="">
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_info">
												<h6 class="product_name">Antoine Suit</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 3,500.00 RENT NOW</a></div>
									</div>

									<!-- Product 10 -->

									<div class="product-item men">
										<div class="product product_filter">
											<div class="product_image">
												<img src="images/suit2.jpg" alt="">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">Flavie Suit</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 3,000.00 RENT NOW</a></div>
									</div>

									<!-- Product 11 -->

									<div class="product-item women men">
										<div class="product product_filter">
											<div class="product_image">
												<img src="images/suit3.jpg" alt="">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">Morgane Suit</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 2,500.00 RENT NOW</a></div>
									</div>

									<!-- Product 12 -->

									<div class="product-item accessories">
										<div class="product discount product_filter">
											<div class="product_image">
												<img src="images/suit4.jpg" alt="">
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_info">
												<h6 class="product_name">Vadim Suit</h6>
											</div>
										</div>
										<div class="red_button add_to_cart_button"><a href="rent.php">Php 3,000.00 RENT NOW</a></div>
									</div>
								</div>

								<!-- Product Sorting -->

								<div class="product_sorting_container product_sorting_container_bottom clearfix">
									<ul class="product_sorting">
									</ul>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Benefit -->

	<div class="benefit">
		<div class="container">
			<div class="row benefit_row">
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-question-circle" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h5>HOW TO RENT</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>Select your preferred</h6>
							<p>Suit & Gown</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>Check</h6>
							<p>Its availability</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-calendar" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>Reserved it!</h6>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="container">
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer" style="background-color: #f6e58d;">
		<div class="container">
	      <div class="container">
	        <div class="row">
	          <div class="col-md-4">
	            <span class="copyright" style="font-weight: bold;">Copyright &copy; Madamemoiselle 2018</span>
	          </div>
	        </div>
	      </div>
		</div>
	</footer>

</div>
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

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="js/categories_custom.js"></script>
</body>

</html>