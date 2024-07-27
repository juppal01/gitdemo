<?php
if (session_status() === PHP_SESSION_NONE) 
	session_start();
//if(isset($_POST["submit"]))	{
	$url			= 'localhost';
	$username		= 'root';
	$password		= '';

			
	$conn	= mysqli_connect($url,$username,$password,"MES");
	if(!$conn){
		die('Could not Connect My Sql:' .mysqli_error());
	}
	
//	$switchNo 		= $_POST['PTSno'];
		$sno = $_POST['PTSno'];
		$macid = "";
	if (strpos($sno, ';') != false){
		$splitArray = explode(";", $sno);
		$sno = trim($splitArray[2]);
		$macid = trim($splitArray[4]);
	}
	$switchNo		= strtoupper($sno);
	$timestamp 		= time();
	$guid 			= $switchNo."-12-".$timestamp;
	$swVersion	 	= $_POST['swVersion'];
	$reslt		 	= $_POST['result'];
	$errortype		= $_POST["error-box"];
	$PT1reportrslt	= base64_encode($_POST["PT1reportrslt"]);
	$PT2reportrslt	= base64_encode($_POST["PT2reportrslt"]);
	//$FTreportrslt	= $conn->real_escape_string($_POST["FTreportrslt"]);	
	$testfile2		= $_POST["testfile2"]; //FTReport
	$testfile1		= $_POST["testfile1"]; //HPReport
	
	

	$qry = "Select SERIAL_NUMBER from mes_pt_testing where SERIAL_NUMBER = '$switchNo'";
	$result	= mysqli_query($conn,$qry);
	if (mysqli_num_rows($result) > 0){
	   $qry = "update mes_pt_testing set reportPath1 = '$testfile1', reportPath2 = '$testfile2',rptrslt1 = '$PT1reportrslt',  
									  rptrslt2 = '$PT2reportrslt', SWVersion = '$swVersion', Flag='0', ERROR_FLAG = '$reslt', corAction='$errortype', GUID_Out='$guid',MacID='$macid' where SERIAL_NUMBER = '$switchNo'";
	} else {
		$qry = "Insert into mes_pt_testing (Serial_Number,GUID,Emp_ID,reportPath1,rptrslt1,reportPath2,rptrslt2,SWVersion, Flag,ERROR_FLAG,corAction,MacID) Values ('$switchNo','$guid','".$_SESSION['empid']."','$testfile1','$PT1reportrslt','$testfile2','$PT2reportrslt', '$swVersion','0','$reslt', '$errortype','$macid');";
	}	
	
	mysqli_query($conn, $qry);
	$qry = "Insert into mes_pt_testing_backup (Serial_Number,GUID,Emp_ID,reportPath1,rptrslt1,reportPath2,rptrslt2,SWVersion, Flag,ERROR_FLAG,corAction,MacID) Values ('$switchNo','$guid','".$_SESSION['empid']."','$testfile1','$PT1reportrslt','$testfile2','$PT2reportrslt', '$swVersion','0','$reslt', '$errortype','$macid');";
	mysqli_query($conn, $qry);
	//echo $qry; 
	header('Location: CardINnOut_tabview.php');			
	exit(0);
 ?>
