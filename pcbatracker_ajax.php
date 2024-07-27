<?php
session_start();
if (!isset($_POST['controlvar'])) {
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

function fetchRecordsforQuality($link, $feedbatch, $feedpcba, $choice) {
	$feedpcba	= 	json_decode($feedpcba);
	$SNO		=	explode("|", $feedpcba[0])[1];

	$qry	=	"SELECT BID, COD FROM pcbatracker_quality_transaction 
				 WHERE Sno = '$SNO' ORDER BY ID DESC LIMIT 1";
	$result =	mysqli_query($link, $qry);
	$row 	=	mysqli_fetch_row($result);
	$BID	=	$row[0];
	$COD	=	$row[1];
	
	if ($choice == 1) { // return $feedbatch
		$qry	=	"SELECT COUNT(BID) AS total FROM pcbatracker_quality_transaction WHERE BID = '$BID' AND COD = '$COD'";
		$result =	mysqli_query($link, $qry);
		$row 	=	mysqli_fetch_row($result);
		$QTY	=	$row[0];	

		$feedbatch	= explode("|", $feedbatch);
		$feedbatch[5] = $QTY;
		$feedbatch	= implode("|", $feedbatch);	
		return $feedbatch;
	}
	
	if ($choice == 2) { // return $feedpcba
		$qry	=	"SELECT MasterID, Sno, PartNo, RevNo, ProdNo, CardName FROM pcbatracker_quality_transaction 
					 WHERE BID = '$BID' AND COD = '$COD'";
		$result = mysqli_query($link, $qry);
		$row 	= mysqli_fetch_array($result);
		foreach ($result as $row) {
			$ary[] = $row['MasterID'].'|'.$row['Sno'].'|'.$row['PartNo'].'|'.$row['RevNo'].'|'.$row['ProdNo'].'|'.$row['CardName'];
		}
		return (json_encode($ary));
	}
}

include_once 'mailer.php';
// functions
	//$_POST['controlvar'] = 'request7';
	switch ($_POST['controlvar']) {
		
		case "request1":
			/* for admin all stage access */
			$_SESSION['stage'] 	= $_POST['clickedstage'];
			echo json_encode($_SESSION['stage']);
			break;
			
		case "request2":
		// Search by PartNo wise
			$qry 			= "SELECT COUNT(Sno) AS Total FROM pcbatracker_pcba_records WHERE Status = '1' and SUBSTRING_INDEX(Sno,';',1) = '".$_POST['partnosearch']."'";	// Total
			$result 		= mysqli_query($link, $qry);
			$row 			= mysqli_fetch_array($result);
			$ary[] 			= array('Total' => $row['Total']);
			
			$qry 			= "SELECT COUNT(ProdSno) AS Used FROM product_box 
									WHERE SUBSTRING_INDEX(ProdSno,';',1) = '".$_POST['partnosearch']."'";		// Used
			$result 		= mysqli_query($link, $qry);
			$row 			= mysqli_fetch_array($result);
			$ary[] 			= array('Used' => $row['Used']);
			$ary[]			= array('Balance' => $ary[0]['Total'] - $ary[1]['Used']);	// Balance
			
			$qry 			= "SELECT Sno, Stage FROM pcbatracker_pcba_records
							   WHERE  Status = '1' and Sno NOT IN (SELECT ProdSno FROM product_box WHERE SUBSTRING_INDEX(ProdSno,';',1) = '".$_POST['partnosearch']."')
							   AND SUBSTRING_INDEX(Sno,';',1) = '".$_POST['partnosearch']."'";	
							   // Sno and stage
			//echo $qry;
			$result 		= mysqli_query($link, $qry);
			if (mysqli_num_rows($result) > 0) {
				$row 	= mysqli_fetch_array($result);
				foreach ($result as $row) {
					$ary[] = $row;
				}
				echo json_encode ($ary);
			}
			break;
			
		case "request3":
			$qry	=	"SELECT ProdNo FROM pcbatracker_pcba_records WHERE Status = 1";
			$result = mysqli_query($link, $qry);
			$row 	= mysqli_fetch_array($result);
			foreach ($result as $row) {
				$ary[] = $row['ProdNo'];
			}
			echo json_encode ($ary);
			break;
			
		case "request4":
					/* search by sno wise */
			$qry	=	"SELECT Sno, PartNo, RevNo, ProdNo, CardName, CardStatus, Stage, MODt, Status 
							FROM pcbatracker_pcba_records 
							WHERE ProdNo = '".$_POST['snosearch']."' AND Status = 1";
			$result =	mysqli_query($link, $qry);
			$row 	=	mysqli_fetch_row($result);
			$row[5]	=	ucfirst($row[5]);
			$row[6]	=	ucfirst($row[6]);
			$row[7] = 	date('d-m-Y',strtotime($row[7]));
			echo json_encode($row);
			break;
			
		case "request5":
			$tablename	=	'pcbatracker_' . $_SESSION['stage'] . '_transaction';
			$qry 		=	"UPDATE $tablename SET ModifiedBy = '".$_SESSION['empid']."', Status = 1 
							WHERE BID = '".$_POST['bid']."' AND BatchStatus = 'received' AND FromStage = '".$_POST['fromstage']."' AND Status = 0";
			mysqli_query($link, $qry);
			break;
			
		case "request6":
			//Planning Stage - display product name
		$qry =	"SELECT ProductName FROM product_master WHERE PartNo = '" . $_POST['partno'] . "'
			 AND ProductStatus = 1 LIMIT 1;";
			$result 	=	mysqli_query($link, $qry);
			//echo json_encode($row);
			$rowC=mysqli_num_rows($result);
			if ($rowC>0){
				//$row = mysqli_fetch_row($result);
				$recSet = mysqli_fetch_assoc($result);
				echo ($recSet['ProductName']);
			}
			break;
			
		case "request7":
			// store records for planning	
			$snofrom 	=	$_POST['snofrom']; //"8 LOAD CELL;A032AVJ19250001";//
			$snoto 		=	$_POST['snoto']; //"8 LOAD CELL;A032AVJ19250005";//
			$cardname 	=	$_POST['cardname']; //"8 Load Cell"; //
			// check if record already exists
			$prodnofrom	= explode(";", $snofrom);
			$prodnoto	= explode(";", $snoto);
			//'$prodnofrom[2]'; '$prodnoto[2]'
			$qry 		= "SELECT ProdNo FROM pcbatracker_pcba_records WHERE Status = 1 AND ProdNo BETWEEN '".substr($snofrom,-15)."' AND '".substr($snoto,-15). "';";
			// explode $snofrom and $snoto to get only ProdNo and use it in between clause in above $qry
			$result 	=	mysqli_query($link, $qry);
			if (mysqli_num_rows($result) == 0) {
				$qry 		= "INSERT INTO pcbatracker_planning (SnoFrom, SnoTo, CardName, CreatedBy, Status) 
							   VALUES('$snofrom','$snoto','$cardname','".$_SESSION['empid']."',1)";
				mysqli_query($link, $qry);
				$lastid 	= mysqli_insert_id($link);
				// store record in planning
				// cards generation in pcba_records
//				$snostr = explode(",","8 LOAD CELL;A032AVJ19250001,8 LOAD CELL;A032AVJ19250002,8 LOAD CELL;A032AVJ19250003,8 LOAD CELL;A032AVJ19250004,8 LOAD CELL;A032AVJ19250005");
				$snostr		=	json_decode($_POST['snostr']);
				$len 		= 	count($snostr);
				for ($i = 0; $i < $len ; $i++) {
					$pieces		= explode(";", $snostr[$i]);
					//echo substr($snostr[$i],-15)."substring -15 <BR>";
					if ($pieces[1] == substr($snostr[$i],-15)){
						$pieces[1] = "";
						$pieces[2] = substr($snostr[$i],-15);
					}
						
					$qry 		= "INSERT INTO pcbatracker_pcba_records (MasterID, Sno, PartNo, RevNo, ProdNo, CardName, CardStatus, Stage, CreatedBy, Status) 
								   VALUES('$lastid','$snostr[$i]','$pieces[0]','$pieces[1]','$pieces[2]','$cardname','delivered','smt','".$_SESSION['empid']."',1)";
					//echo $qry."<BR>";
					mysqli_query($link, $qry);
				}
				// for sending email
				$to			=	['Ajay.Tyagi@vnl.in', 'yogesh.sharma@vnl.in']; 	// smt user emails
				$cc			=	[$_SESSION['email']];
				$subject	=	'MES SYSTEM : Serial number for '.$cardname.' cards generated';
				$body		=	'S/N From : ' . $snofrom . '<br>';
				$body      .=	'S/N To	  : ' . $snoto . '<br>';
				$body      .=	'Qty	  : ' . $len . '<br>';
				$body      .=	'Note : S/N From and S/N To Inclusive.';
				sendMail($to, $cc, $subject, $body);
				echo json_encode ($snostr);
				// cards generation in pcba_records
			}
			else {
				echo json_encode (false);
			}
			// check if record already exists
			break;
			
			//check sno in db for duplicacy by ajax			
		case "request8":
			$tablename	=	'pcbatracker_' . $_SESSION['stage'] . '_transaction';
			$qry 		=	"SELECT MasterID FROM pcbatracker_pcba_records WHERE trim(ProdNo) = '" . trim($_POST['checksno']) . "' AND Status = 1";
			$result 	=	mysqli_query($link, $qry);
			if (mysqli_num_rows($result) != 1) {
				echo json_encode ('invalid'); // sno not yet planned
			}
			else {
				$row		= 	mysqli_fetch_row($result);
				$masterid	= 	$row[0];
				if ($tablename != 'pcbatracker_smt_transaction') {
					$qry 		=	"SELECT BatchStatus FROM $tablename WHERE ProdNo = '" . $_POST['checksno'] . "' ORDER BY ID DESC LIMIT 1";	// check if Status column condition is required in Where Clause
					$result 	=	mysqli_query($link, $qry);
					$row 		= 	mysqli_fetch_row($result);
					if ($row[0] == 'received') {
						echo json_encode ($masterid);
					}
					else if ($row[0] == 'delivered') {
						echo json_encode ($row[0]);
					}
					else if ($row[0] == 'returned') {
						echo json_encode ($row[0]);
					}
					else {
						echo json_encode ('not received');
					}
				}
				else {
					$qry 		=	"SELECT ProdNo FROM $tablename WHERE ProdNo = '" . $_POST['checksno'] . "' AND Status = 1";  // check if Status column condition is required in Where Clause
					$result 	=	mysqli_query($link, $qry);
					if (mysqli_num_rows($result) > 0) {
						echo json_encode ('smtdelivered');
					}
					else {
						echo json_encode ($masterid);
					}	
				}
			}
			break;	
			
		case "request9":
	if ($_SESSION['stage'] == 'quality') {
				$feedbatch = fetchRecordsforQuality($link, $_POST['feedbatch'], $_POST['feedpcba'], 1);
				$feedpcba = fetchRecordsforQuality($link, $_POST['feedbatch'], $_POST['feedpcba'], 2);
			}
			else {
				$feedbatch	=	$_POST['feedbatch'];
				$feedpcba	=	$_POST['feedpcba'];
			}
			
			$feedbatch	= 	explode("|", $feedbatch);
			
			// insert to master
/*			$tablename	=	'pcbatracker_' . $_SESSION['stage'] . '_master';
			$qry 		=   "INSERT INTO $tablename (BatchStatus, BatchQuantity, CreatedBy) 
						    VALUES ('$feedbatch[0]','$feedbatch[1]','".$_SESSION['empid']."')";
			mysqli_query($link, $qry);
			$lastid 	= mysqli_insert_id($link);
			//echo json_encode($qry);	*/
			
			
			// insert to transaction and update pcba_records
			$feedpcba	= 	json_decode($feedpcba);
			$len 		= 	count($feedpcba);
			$tablename	=	'mes_palletePacking';
			$qry1 		=	"INSERT INTO $tablename (PalletNo,CartonNo,Switch1,Switch2,Switch3,Switch4,Emp_ID,Quantity) VALUES	";
/*			$tablename	=	'pcbatracker_' . $feedbatch[1] . '_transaction';
			$qry2 		=	"INSERT INTO $tablename (MasterID, BID, Sno, PartNo, RevNo, ProdNo, CardName, BatchStatus, FromStage, CreatedBy, Status)	VALUES	";
			$qry3		=	"UPDATE pcbatracker_pcba_records SET CardStatus = '$feedbatch[0]', Stage = '$feedbatch[1]', ModifiedBy = '".$_SESSION['empid']."' WHERE Status = 1 AND ProdNo IN (";   */
			for ($i = 0; $i < $len ; $i++) {
				$pieces		=	explode("|", $feedpcba[$i]);
				$qry1 	   .=	"('$feedbatch[0]','$pieces[1]','$pieces[2]','$pieces[3]','$pieces[4]','$pieces[5]','"
								.$_SESSION['empid']."','$feedbatch[1]'), ";
/*				$qry2 	   .=	"('$pieces[0]','$lastid','$pieces[1]','$pieces[2]','$pieces[3]','$pieces[4]','$pieces[5]','received','".$_SESSION['stage']."','".$_SESSION['empid']."',0), ";
				$qry3 	   .=	"'$pieces[4]', ";		*/
			}
			$qry1		=	substr_replace($qry1,';',-2);
/*			$qry2		=	substr_replace($qry2,';',-2);
			$qry3		=	substr_replace($qry3,');',-2); */
			$qry		=	$qry1;   // . $qry2 . $qry3;
			mysqli_multi_query($link, $qry);
			echo json_encode('Added');
			break;
/*			// for sending email
			$to			=	[$feedbatch[4]];
			$cc			=	[$_SESSION['email']];			
			$partNo 	=	$pieces[2];
			$cardname 	=	$pieces[5];
			$subject	=	'MES SYSTEM : Confirm '.$cardname.' cards ('.$partNo.')';
			$enc 		=	$lastid . $_SESSION['stage'];
			$enc		=	base64_encode(bin2hex($enc));
			$body		=	'You have received ' . $feedbatch[5] . ' cards from ' . $_SESSION['stage'] .'' . '<br>';
			$body	   .=	'Remarks: ' . $feedbatch[6] . '<br>';
			$body      .=	"<a href='http://10.104.203.36/emsPCBATracker/login.php?qrystr=".$enc."' target='_blank'>Click here to confirm</a>";
			//sendMail($to, $cc, $subject, $body);
			break; */

		case "request10":
			$qry	=	"SELECT employee.Name AS label, employee.EmpID AS empid, Email AS email
						FROM employee
						LEFT JOIN pcbatracker_empstage ON employee.EmpID = pcbatracker_empstage.EmpID
						WHERE pcbatracker_empstage.Stage = '".$_POST['tostage']."' AND Status = 1";
			$result = 	mysqli_query($link, $qry);
			$row 	= 	mysqli_fetch_array($result);
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