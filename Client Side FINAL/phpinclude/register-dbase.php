<?php

if (isset($_POST['submit'])){
	
	include_once 'database.php';
	$register= new database;

	extract($_POST);
	
	//Error handlers
	//Check for empty fields
	if(empty($first_name) || empty($last_name) || empty($username) || empty($city) || empty($province) || empty($gender) || empty($age) || empty($contactnumber) ||empty($email) || empty($password) || empty($confirmpassword)){

		$register->url("../register.php?signup=empty");
		exit();

		}else{
			//Check if username is already taken. Not yet correct
			$query = "SELECT * FROM client WHERE username='$username'";
			$result = mysqli_query($register->conn, $query);
			$resultcheck = mysqli_num_rows($result);
			
			if ($resultcheck > 0){
				$register->url("../register.php?signup=usertaken");
				exit();
			}else{
				//Hash password
				$hashedPwd = password_hash($password, PASSWORD_DEFAULT);
				//Insert user into the database
				$query = "INSERT INTO client (first_name, last_name, username, city, province, gender, age, contactnumber, email, password, status) VALUES ('$first_name', '$last_name', '$username', '$city', '$province', '$gender', '$age', '$contactnumber', '$email', '$hashedPwd', 'pending')";
				
				if($register->signup($query)){
				$register->url("../modal.php?=signup=success");
				exit();
				}
			}
		}	
}else{
	$register->url("../register.php");
	exit();
}