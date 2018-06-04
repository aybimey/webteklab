<?php
session_start();
if (isset($_POST['submit'])){
	
	include_once 'database.php';
	$register= new database;
	extract($_POST);
	
	$item = $_GET['item'];
	$category = $_GET['category'];
	$price = $_GET['price'];
	$shop = $_GET['shop'];
	
	
	
		$query = "INSERT INTO request_reservation (req_lastname, req_firstname, req_contactnumber, req_collectionname, req_categoryname, req_quantity, req_price, req_datereserved, shop_name) 
		VALUES ('".$_SESSION['last_name']."', '".$_SESSION['first_name']."', '".$_SESSION['email']."', '$item', '$category', '$req_quantity', '$price', '$req_datereserved', '$shop')";
		if($register->login($query)){
				$register->url("../collection.php");
				exit();
				}
			}
	
		else{
	$register->url("../collection.php");
	exit();
}




