`<?php

session_start();

if (isset($_POST['submit'])){
include 'database.php';
$register= new database;
extract($_POST);


//Error handlers

if (empty($username) || empty($password)){
		$register->url("../login.php?login=empty");
		exit();
	}else{	
		$query = "SELECT * FROM serviceprovider WHERE username = '$username'";
		$result = mysqli_query($register->conn, $query);
		$resultcheck = mysqli_num_rows($result);
		if ($resultcheck < 1){
			$register->url("../login.php?login=usernotidentified");
			exit();
		}else{
			if ($row = mysqli_fetch_assoc($result)){
				if($password == false){
					$register->url("../login.php?login=errorz");
					exit();
				}elseif ($password == true){
					//Login the user here
					$_SESSION['username'] = $row['username'];
					$_SESSION['firstname'] = $row['firstname'];
					$_SESSION['lastname'] = $row['lastname'];
					$register->url("../home.php");
					exit();
				}
			}	
		}
	}
}else{
	$register->url("../login.php?login=error");
}

