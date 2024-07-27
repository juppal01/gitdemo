<?php
session_start();
if (!isset($_GET['controlvar'])) {
	if (!isset($_SESSION['username'])) {
		header('Location: login.php');
		exit();
	}
	else {
		header('Location: index.php');
		exit();
	}
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
	
	switch ($_GET['controlvar']) {
		
		case "request1":
			$qry	=	"SELECT employee.Name AS label, employee.EmpID AS empid, employee.Email AS email,
						emp1.Name AS mgrname, employee.ReportingManager AS mgrid, emp2.Name AS headname,
						employee.ReportingHead AS headid, employee.Department AS department
						FROM employee
						LEFT JOIN employee AS emp1 ON employee.ReportingManager	= emp1.EmpID
						LEFT JOIN employee AS emp2 ON employee.ReportingHead	= emp2.EmpID
						WHERE employee.Status = 1";
			$result = mysqli_query($link, $qry);
			$row 	= mysqli_fetch_array($result);
			foreach ($result as $row) {
				$ary[] = $row;
			}
			echo json_encode ($ary);
			break;
			
		case "request2":
			$qry 			= "SELECT DISTINCT Department FROM employee ORDER BY Department ASC";
			$result 		= mysqli_query($link, $qry);
			$row 			= mysqli_fetch_array($result);
			foreach ($result as $row) {
				$ary[] = $row['Department'];
			}
			echo json_encode ($ary);
			break;
			
		case "request3":
			$qry	=	"SELECT Name AS label, EmpID AS empid FROM employee 
						WHERE EmpID IN (SELECT DISTINCT ReportingManager FROM employee) AND Status = 1";
			$result = mysqli_query($link, $qry);
			$row 	= mysqli_fetch_array($result);
			foreach ($result as $row) {
				$ary[] = $row;
			}
			echo json_encode ($ary);
			break;	
			
		case "request4":
			$qry	=	"SELECT Name AS label, EmpID AS empid FROM employee 
						WHERE EmpID IN (SELECT DISTINCT ReportingHead FROM employee) AND Status = 1";
			$result = mysqli_query($link, $qry);
			$row 	= mysqli_fetch_array($result);
			foreach ($result as $row) {
				$ary[] = $row;
			}
			echo json_encode ($ary);
			break;
		
		default:
			echo "input not valid";
			exit();
			
	}
?>