
<html>
<head>
	<title>Rental</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<header>
	<nav>
		<div class="main-wrapper">
			<div class ="main-title">
			</div>
			<div class="main-nav">
				<?php
						if (isset($_SESSION['username'])){
							echo '<form action = "includes/logout-dbase.php" method="POST">
									<button type ="submit" name ="submit"> Logout </button>
									</form>';
						}else{
							echo '	<div class ="navdiv"><a href ="Homepage">Homepage</a></div>
									<div class ="navdiv"><a href ="About">About</a></div>
									<div class ="navdiv"><a href ="Collections">Collections</a></div>
									<div class ="navdiv"><a href ="Messages">Messages</a></div>
									<div class ="navdiv"><a href="login.php">Sign in</a></div>';
						}
				?>
			</div>
		</div>
	</nav>
</body>
</header>

