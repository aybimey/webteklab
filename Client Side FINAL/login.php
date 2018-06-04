<?php
    include_once 'link.php';
    session_start();
?>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Madamemoiselle</title>
    <link rel="icon" href="img/Logo.png">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <link href='https://fonts.googleapis.com/css?family=Sacramento' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/agency.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!-- Registration -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic">
    <link rel='stylesheet prefetch' href='https://cdn.gitcdn.xyz/cdn/angular/bower-material/v1.0.0-rc3/angular-material.css'>
    <link rel='stylesheet prefetch' href='http://localhost:8080/docs.css'>
    <link rel="stylesheet" href="css/style2.css">

    <!-- Responsive CSS -->
    <link href="css/responsive.css" rel="stylesheet">

    <!-- Core Stylesheet -->
    <link href="css/style3.css" rel="stylesheet">

  </head>

  <body id="page-top">

<head>
	<title>Login Madamemoiselle</title>
	<link rel="icon" href="img/Logo.png">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor2/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor2/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor2/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor2/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor2/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor2/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/loginbg.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>

				<?php
					if (isset($_SESSION['username'])){
						include 'home.php';
					}else{
						echo '<form class="login100-form validate-form" action="phpinclude/login-dbase.php" method="POST">
							<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
								<span class="label-input100">Username</span>

								<input class="input100" type="text" name="username" placeholder="Enter username">
								<span class="focus-input100"></span>
							</div>

							<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
								<span class="label-input100">Password</span>

								<input class="input100" type="password" name="password" placeholder="Enter password">
								<span class="focus-input100"></span>
							</div>

							<div class="flex-sb-m w-full p-b-30">
								<div>
									<a href="register.php" class="txt1">
										Do not have an account? Register now!
									</a>
								</div>
							</div>

							<div class="flex-sb-m w-full p-b-30">
								<div>
									<a href="forgot.php" class="txt1">
										Forgot Password?
									</a>
								</div>
							</div>

							<div class="container-login100-form-btn">
								<button class="login100-form-btn" type="submit" name="submit">
									Login
								</button>
							</div>
						</form>';
					}
				?>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="vendor2/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/bootstrap/js/popper.js"></script>
	<script src="vendor2/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/daterangepicker/moment.min.js"></script>
	<script src="vendor2/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

<?php
    include_once 'footer.php';
?>
