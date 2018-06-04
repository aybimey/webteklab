<?php

session_start();
include_once 'database.php';
$search = $_GET['search'];
register = new database;

$query = "SELECT * FROM collection where shop_name = '".$search."' ";
		if($register->login($query)){
				$register->url("../search.php");
				exit();
				}
			}
	
		else{
	$register->url("../collection.php");
	exit();



