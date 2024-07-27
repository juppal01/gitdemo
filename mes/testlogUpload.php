<?php
//if(isset($_POST["submit"]))	{
	$url			= 'localhost';
	$username		= 'root';
	$password		= '';

			
	$conn	= mysqli_connect($url,$username,$password,"MES");
	if(!$conn){
		die('Could not Connect My Sql:' .mysqli_error());
	}
	$sno=$_POST['SwitchSno'];
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
	$HPreportrslt	= base64_encode($_POST["HPreportrslt"]);
	$FTreportrslt	= base64_encode($_POST["FTreportrslt"]);
	$testfile2		= $_POST["testfile2"]; //FTReport
	$testfile		= $_POST["testfile"]; //HPReport
	
	

	$qry = "Select SERIAL_NUMBER from mes_testing where SERIAL_NUMBER = '$switchNo'";
	$result	= mysqli_query($conn,$qry);
	if (mysqli_num_rows($result) > 0)
	   $qry = "update mes_testing set HPreportPath = '$testfile', FTreportPath = '$testfile2',HPrptrslt = '$HPreportrslt',  
									  FTrptrslt = '$FTreportrslt', SWVersion = '$swVersion', ERROR_FLAG = '$reslt', corAction='$errortype', GUID_Out='$guid' where SERIAL_NUMBER = '$switchNo'";
	mysqli_query($conn, $qry);
//	echo $qry; //Flag='0',
	$qry = "insert into mes_testing_backup (Serial_Number,GUID,emp_id,HPreportPath,FTreportPath,HPrptrslt,FTrptrslt, SWVersion,ERROR_FLAG,corAction,macid) values ('$switchNo','$guid','".$_SESSION['empid']."','$testfile', '$testfile2', '$HPreportrslt', '$FTreportrslt', '$swVersion', '$reslt','$errortype','$macid');";
	mysqli_query($conn, $qry);
	
	header('Location: CardINnOut_tabview.php');
	//header('Location: index.php');			
	exit(0);
 ?>
