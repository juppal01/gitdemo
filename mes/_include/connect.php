<?php
$server="localhost";
$username="root";
$password="";
$database="MES";

$link = mysqli_connect($server, $username, $password, $database);
if (!$link) {
	die("Connection failed: " . mysqli_connect_error());
}
?>