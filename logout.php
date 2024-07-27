<?php
	session_start();
	session_unset();
	session_destroy();
	echo "Logout Successfull";
	header('Location: login.php');
	exit();
?>