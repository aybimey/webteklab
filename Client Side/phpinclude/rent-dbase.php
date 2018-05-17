<?php

if (isset($_POST['submit'])){
	
	include_once 'database.php';
	$register= new database;

	extract($_POST);
	
	//Error handlers
	//Check for empty fields
	if(empty($contact_number) || empty($size) || empty($reservation_date)) {

		$register->url("../rent.php?signup=empty");
		exit();	
	}else{
		$query = "INSERT INTO request_reservation (contact_number, size, reservation_date, client_name) VALUES ('$contact_number', '$size', '$reservation_date', '$_SESSION ['username'])";
			if($register->signup($query)){
			$register->url("../collections.php?=signup=success");
			exit();
			}	
		}

}else{
	$register->url("../rent.php");
	exit();
}
	