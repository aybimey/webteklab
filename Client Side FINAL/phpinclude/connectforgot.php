<?php

$connection = mysqli_connect('192.168.5.87', 'root1', 'Rvm@i[9)0?~=');

if (!$connection){

die("Database Connection Failed" . mysqli_error($connection));

}

$select_db = mysqli_select_db($connection, 'pixelw3p_demo');

if (!$select_db){

die("Database Selection Failed" . mysqli_error($connection));

}