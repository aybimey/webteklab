<?php
	session_start();
	include 'includes/database.php';
	$cancel = new database;
	$id= $_GET['id'];
	$cancel->cancelrequest();