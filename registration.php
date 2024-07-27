<?php
session_start();
if (!isset($_POST['username'])) {
	header('Location: login.php');
	exit();
}
$link = mysqli_connect("localhost", "root", "", "MES");
if (!$link) {
	die("Connection failed: " . mysqli_connect_error());
}
	
// functions
function test_input($data) {
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}
function test_output($data) {
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars_decode($data);
	return $data;
}
// functions
	
if (isset($_POST['loginN'])) {
	$loginpage	=	'login.php';
	$indexpage	=	'DashBoard.php';
	if (strlen($_POST['qrystr']) > 0) {
		$loginpage	=	'login.php'.$_POST['qrystr'].'';
		$indexpage	=	'index.php'.$_POST['qrystr'].'';
	}
	$_POST['username'] 	= test_input($_POST['username']);
	$_POST['pass'] 		= test_input($_POST['pass']);
	$qry    = "SELECT registration.EmpID AS EmpID, registration.Name AS Name, Department, 
			   Email, Username, ReportingManager, ReportingHead, pcbatracker_empstage.Stage AS Stage
			   FROM registration LEFT JOIN pcbatracker_empstage ON registration.EmpID = pcbatracker_empstage.EmpID
			   WHERE Username = '". $_POST['username'] ."' AND Password = '". $_POST['pass'] ."' AND Status = 1 LIMIT 1";
	//echo($qry);
	$result = mysqli_query($link, $qry);
	if (mysqli_num_rows($result) == 1) {
		$row = mysqli_fetch_array($result);
		$_SESSION['empid']				= $row['EmpID'];
		$_SESSION['ename']				= $row['Name'];
		$_SESSION['department']			= $row['Department'];		
		$_SESSION['email']				= $row['Email'];
		$_SESSION['username']			= $row['Username'];
		$_SESSION['reportingmanager']	= $row['ReportingManager'];
		$_SESSION['reportinghead']		= $row['ReportingHead'];
		$_SESSION['stage']				= $row['Stage'];
		//echo '<pre>' . print_r($_SESSION, TRUE) . '</pre>';
		header('Location: '.$indexpage.'');
		exit();
	}
	else {
		$_SESSION['message'] = "Invalid Username* or Password*";
		header('Location: '.$loginpage.'');
		exit();
	}
}
else if (isset($_POST['changepass'])) {
	$_POST['username'] 	= test_input($_POST['username']);
	$_POST['pass'] 		= test_input($_POST['pass']);
	$_POST['newpass'] 	= test_input($_POST['newpass']);
	$qry 				= "SELECT Username FROM registration WHERE Username = '". $_POST['username'] ."' AND Password = '". $_POST['pass'] ."' AND Status = 1";
	$result 			= mysqli_query($link, $qry);
	if (mysqli_num_rows($result) == 1) {
		$qry 			= "UPDATE registration SET Password = '". $_POST['newpass'] ."' WHERE Username = '". $_POST['username'] ."' AND Password = '". $_POST['pass'] ."'";
		$result 		= mysqli_query($link, $qry);
		$_SESSION['message'] = "Password changed successfully !";
		header('Location: login.php');
		exit();
	}
	else {
		$_SESSION['message'] = "Invalid Username* or Password*";
		header('Location: login.php');
		exit();
	}
}
else if (isset($_POST['submit'])) {
	$_POST['empid'] 	= test_input($_POST['empid']);
	$qry 				= "SELECT EmpID FROM registration WHERE EmpID = '". $_POST['empid'] ."' LIMIT 1";
	$result 			= mysqli_query($link, $qry);
	if (mysqli_num_rows($result) == 1) {
		$_SESSION['message'] = "User already exists";
		header('Location: login.php');
		exit();
	}
	else {
		$empid = $ename = $designation = $department = $mobno = $email = $username = "";
		$password = $reportingmanager = $reportinghead = $extensionno = $workfloor = $location = "";
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
			$empid 				= test_input($_POST['empid']);
			$ename		 		= test_input($_POST['ename']);
			$designation 		= test_input($_POST['designation']);
			$department 		= test_input($_POST['department']);
			$mobno 				= test_input($_POST['mobno']);
			$email 				= test_input($_POST['email']);
			$username 			= test_input($_POST['username']);
			$password 			= test_input($_POST['pass']);
			$reportingmanager 	= test_input($_POST['reportingmanager']);
			$reportinghead 		= test_input($_POST['reportinghead']);
			$extensionno 		= test_input($_POST['extensionno']);
			$workfloor 			= test_input($_POST['workfloor']);
			$location 			= test_input($_POST['locate']);
		}
		$qry	=	"INSERT INTO registration
					(EmpID, Name, Designation, Department, MobNo, Email, Username, Password, ReportingManager, ReportingHead, ExtensionNo, WorkFloor, Location)
					VALUES
					('$empid','$ename','$designation','$department','$mobno','$email','$username','$password','$reportingmanager','$reportinghead','$extensionno','$workfloor','$location')";
		mysqli_query($link, $qry);
		$_SESSION['message'] = "Registration successful !";
		header('Location: DashBoard.php');
		exit();
	}
}
else die();	
?>