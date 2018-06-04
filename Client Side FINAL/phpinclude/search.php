<?php

session_start();


if(isset($_POST['search'])){
include_once('database.php');
$register= new database;
extract($_POST);
  //error handlers

  $q = $_POST['q'];

  if(empty($q)){
    $register->url("../collections.php?search=empty");
    exit();
  }else{
    $query = "SELECT * FROM collection WHERE category_name = ? ";
    $result = mysqli_query($register->conn, $query);
    $resultcheck = mysqli_num_rows($result);
    if($resultcheck < 1){
      $register->url("../collections.php?search=notidentified");
      exit();
    }else{

      if($row = mysqli_fetch_array($result)) {
      echo "<tr>";
      echo "<td> .$row[collection_name]. </td>";
       echo "<td> .$row[category_name]. </td>";
        echo "<td> .$row[colection_price]. </td>";
      echo "</tr>";


    }
  }
}
}
