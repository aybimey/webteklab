<html>
<head>
	<title>Rental</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, inital-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie-edge">
	<link rel="stylesheet" a href="css/bootstrap.css">
	<link rel="stylesheet" a href="css/fonts.css">
	<script src="js/bootstrapjquery.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/proper.js"></script>
</head>

<div class="slider">
		<div class="load">
		</div>
		<div class="content">
			<div class="principal">
					<?php
						if (isset($_SESSION['spID'])){
							include 'home.php';
						}else{
							echo '<div class="container">
								<center><img src="css/gown.png"/></center>	
								<form action = "include/login-dbase.php" method="POST">
								<div class="form_input">
										<input type="text" name="username" placeholder="Enter Username"/>
								</div>
									<div class="form_input">
										<input type="password" name="password" placeholder="Enter Password"/>
									</div>
									<button type="submit" name="submit"> Login </button>
								</form>
								<a href ="signup.php">Do not have an account? Register now!</a>	
							</div>';
					} ?>	
			</div>
		</div>
</div>

</html>

