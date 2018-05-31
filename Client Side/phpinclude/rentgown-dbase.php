<?php
require "checklogin.php";

if (isset($_POST['submit'])){
	
	include_once 'database.php';
	$register= new database;

	extract($_POST);
	//Error handlers
	//Check for empty fieldset

	if(empty($req_datereserved) || empty($req_quantity) || empty($req_size)) {

		$register->url("../rent.php?signup=empty");
		exit();	
	}else{
		$size = $_POST['req_size'];
		$res = $_POST['req_datereserved'];
		$qua = $_POST['req_quantity'];
		$name = $_SESSION ['username'];
		$item = $_GET['item'];
		$price = $_GET['price'];
		$cat = $_GET['cat'];
		$last = $_SESSION['last_name'];
		$first = $_SESSION['first_name'];
		$id = $_SESSION['user_id'];
		$contact = $_SESSION['contactNumber'];

		$query = "INSERT INTO request_reservation (req_lastname, req_firstname, req_contactnumber, req_collectionname,
		 req_categoryname, req_quantity, req_price, req_datereserved) VALUES ('$last', '$first', '$contact', '$item', '$cat', '$qua', '$price', '$res')";
		if($register->signup($query)){
			$register->url("../collections.php?signup=success");
			exit();
		}	
		}

}else{
	$register->url("../rent.php");
	exit();
}
	