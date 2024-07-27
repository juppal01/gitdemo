<?php
session_start();
function replNull($val1, $val2){
	echo $val1;
		if ($val1 == null || $val1==""){ 
			$val1 = $val2;
		}	
		return $va11;
}	

// function to search a latest file sorted in desc order 
function searchFileByDate($folder, $filename) 
{
	$files = [];
	// Recursive function to search for the file
	$iterator = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($folder));
	foreach ($iterator as $file) {
		//echo $file."<BR> \n";
		if ($file->isFile()) {
			$reslt = explode("_",basename($file));
			if ($reslt[0]==$filename){			
				$files[] = [
					'path' => $file->getPathname(),
					'modified' => $file->getMTime(),
				];
			}	
		}
	}
	// Sort the results by modification date in descending order
	usort($files, function ($a, $b) {
		return $b['modified'] - $a['modified'];
	});
	$filePath="";
	foreach ($files as $result) {
		//echo "<BR> \n File: {$result['path']}, Modified Date: " . date('Y-m-d H:i:s', $result['modified']) . "<BR>\n";
		$filePath 	= str_replace ('\\', '/', $result['path']);
		//$reslt 		= explode("_",basename($filePath));
		//echo "<img src='images/$reslt[1].png' width='20px'> <BR> \n";
		//echo ("<BR><a href='http://localhost/mes_system/$filePath'> <img src='images/$reslt[1]_file.png' width='30px' title= '".basename($filePath)."'></a>");
		break;
	}
	//echo $filePath;
	return $filePath;
}

// function to search a word and returning a required remaining word from a text file
function searchAndPrintLine($filePath, $searchWord){
	// Check if the file exists
	if (!file_exists($filePath)) {
		die($filePath);
		return "";
	}
	// Read the file content
	$lines = file($filePath, FILE_IGNORE_NEW_LINES);
	// Search for the word in each line
	$found = false;
	foreach ($lines as $line) {
		if (strpos($line, $searchWord) !== false) {
			$found 	= true;
			$strt 	= strlen($searchWord)+2;
			$noc 	= strlen($line)-$strt-2;
			$ver	= substr($line,$strt,$noc);
			return($ver);
			break;
		}
	}
	if (!$found) {
		return " ";
	}
}

date_default_timezone_set('Asia/Kolkata');
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
//include_once 'mailer.php';
// functions
	//$_POST['controlvar'] = 'InsertSMTin';
	$sno = "";
	$macid = "";
	$PartName='';
	
	if (isset($_POST['sno']))
		$sno = $_POST['sno'];
	elseif (isset($_POST['sw_sno']))
		$sno = $_POST['sw_sno'];
		
		if (strpos($sno, ';') != false){
			$splitArray = explode(";", $sno);
			$sno = trim($splitArray[2]);
			$macid = trim($splitArray[4]);
		}
	
	switch ($_POST['controlvar']) {
		
		case "validateCard":
			$qry ="SELECT sno,PartName,status FROM mes_sno_master WHERE trim(Sno) = '" . trim($sno) ."';";
			$result 	=	mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				echo json_encode ('invalid'); // sno not yet planned
			}else{
				$recSet = mysqli_fetch_assoc($result);
				if ($recSet['PartName'] !='Switch' and $recSet['status'] !='a'){
					$PartName=$recSet['PartName'];
					echo json_encode('invalid');
					break;
				}	
				$PartName=$recSet['PartName'];
				switch ($_SESSION['stage']){
					case in_array($_SESSION['stage'], ['smd-in','spi-b', 'pcb-b','pcb-bo','spi','pcb','pcb-o','x-ray']):
						if ($recSet['PartName']=='Switch' and $recSet['status'] !='u'){
							echo json_encode('invalid');
							break;
						}
					     $tablename = 'mes_'.$_SESSION['stage'];
						 break;
					case 'stu-b':
						if ($recSet['PartName']=='Switch' and $recSet['status'] !='u'){
							echo json_encode('invalid');
							break;
						}
					    $tablename = 'mes_pcb-bo';
						break;
					case 'stu':
						if ($recSet['PartName']=='Switch' and $recSet['status'] !='u'){
							echo json_encode('invalid');
							break;
						}
					    $tablename = 'mes_pcb-o';
						break;
					case 'quality':
						if ($recSet['PartName']=='Switch' and $recSet['status'] !='u'){
							echo json_encode('invalid');
							break;
						}
					    $tablename = 'mes_smt';
						break;
					case "repair":
						if ($recSet['PartName'] =='Switch' and $recSet['status'] !='u'){
							echo json_encode('invalid');
							break;
						}	
						$tablename = 'mes_faultyCards_vw';
						break;
					case "dip-in":
					     $tablename = 'mes_stu';
						 break;
					case "assembly":
						$qry="Select SNo, status from mes_sno_master where SNo = '".trim($sno)."' and status = 'a'";
						$result 	=	mysqli_query($link, $qry);
						if (mysqli_num_rows($result) <= 0) {
							echo json_encode ('invalid');
							break 2;
						}	
					     $tablename = 'mes_pt_testing';
						 break;
					case "testing":
					     $tablename = 'mes_quality';
						 break;						 
				}
				if 	($_SESSION['stage']=="assembly"){
						$qry="Select SNo, status from mes_sno_master where SNo = '".trim($sno)."' and status = 'a'";
						//echo $qry;
						$result 	=	mysqli_query($link, $qry);
						if (mysqli_num_rows($result) <= 0) {
							echo json_encode ('invalid');
						} else {
							echo json_encode ('valid');
						}
					break;
				}	
				$qry="SELECT Serial_number FROM `mes_".$_SESSION['stage']."` WHERE trim(Serial_number)='".trim($sno)."';";
				$result	= mysqli_query($link, $qry);
				//echo $qry;
				if (mysqli_num_rows($result)>0 and (!in_array($_SESSION['stage'],['repair','quality','stu-b','stu'],true))){
					echo json_encode ('exist'); 
					break;			//,'spi-b', 'pcb-b','pcb-bo','spi','pcb','pcb-o','x-ray'
				}elseif (in_array($_SESSION['stage'], ['smd-in']) && $PartName != 'Switch'){
					 echo json_encode('new');
					 break;
				}
				if ($_SESSION['stage'] == 'repair'){
						$qry = "Select Serial_number, remarks,corAction,stage from mes_faultycards_vw where Serial_number = '".  trim($sno) . "';";
					//echo ($qry);	
					$result	= mysqli_query($link, $qry);
					if (mysqli_num_rows($result) > 0) {
						$recSet = mysqli_fetch_assoc($result);
						$rem = "REM|".$recSet["corAction"];
						$_SESSION['smtStage'] = $recSet['stage'];
						echo json_encode($rem);
					}else{
						echo json_encode('invalid');
					}
				}
				//,'spi-b', 'pcb-b','pcb-bo','stu-b', 'stu','spi','pcb','pcb-o','x-ray','dip-in','pcb-d','mtu-3','pt'
				if (in_array($_SESSION['stage'], ['smd-in']) && $_SESSION['stage']!= 'repair'){
					if ($PartName=='Switch' && in_array($_SESSION['stage'],['quality','stu-b','stu']))
						$tablename='mes_repair';
					
					$qry="SELECT Serial_number,ERROR_FLAG FROM `".$tablename."` WHERE trim(Serial_number)='".trim($sno)."';";  		// and ERROR_FLAG = '1'
					//echo ($qry);
					$result = mysqli_query($link, $qry);
					if (mysqli_num_rows($result) > 0) {
						$recSet = mysqli_fetch_assoc($result);
						 if ($recSet["ERROR_FLAG"] == '1')
							 echo json_encode ('rework'); 
						 if	($recSet["ERROR_FLAG"] == '0')
							 echo json_encode ('valid');
						 if	($recSet["ERROR_FLAG"] == '')
							 echo json_encode ('aoi');
					}else{
						echo json_encode('invalid');
					}	
				} else {
						echo json_encode('valid');
				}
			}
			break;
			
		case "InsertSMTin":
			switch ($_SESSION['stage']){
				case in_array($_SESSION['stage'], ['smd-in','spi-b', 'pcb-b','pcb-bo','spi','pcb','pcb-o','x-ray','smt']):
					$stationNo='01';
					break;
					
				case 'repair':
					$stationNo='03';
					break;
					
				case in_array($_SESSION['stage'], ['quality','stu','stu-b']):
					$stationNo='05';
					break;
					
				case in_array($_SESSION['stage'],['dip-in','pcb-d','mtu-3','pt']):
					$stationNo='07';
					break;
				
				case 'assembly':
					$stationNo='09';
					break;
					
				case 'testing':
					$stationNo='11';
					break;
					
				case 'container packing':
					$stationNo='13';
					break;
						
					
				case 'pallet packing':
					$stationNo='15';
					break;		
			}
			$timestamp = time();
			$currentDate = gmdate('Y-m-d', $timestamp);
			$guid = $sno."-".$stationNo."-".$timestamp;
			$tablename	=	'mes_'. $_SESSION['stage'];  // . '_transaction';
			$arraytable = explode(",",'smd-in,spi-b,pcb-b,pcb-bo,stu-b,spi,pcb,pcb-o,stu,dip-in,mtu-3,pt,assembly');
			//$stgArray = array('smt','repair','quality','testing');
			$stgArray = array('dip-in','pcb-d','mtu-3','pt','assembly');
			$qry 	=	"SELECT Sno FROM mes_sno_master WHERE trim(Sno) = '" . trim($sno) ."';";
			$result =	mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				echo json_encode('invalid'); // sno not provided by customer
			} else {
  				$qry="SELECT Serial_number FROM `".$tablename."` WHERE trim(Serial_number) = '" . trim($sno) ."';";
				$result = mysqli_query($link, $qry);
				if (mysqli_num_rows($result)>0 and (!in_array($_SESSION['stage'],['testing','repair','stu-b','stu','quality'],true))) {
					echo json_encode ('exist'); // SNo already entered
				}else if (in_array($_SESSION['stage'],$stgArray)){
					//$_SESSION['stage']!= 'smt' && $_SESSION['stage']!= 'repair' && $_SESSION['stage']!= 'quality'
					switch ($_SESSION['stage']){
						case 'stu':
							 $tablename2 = 'mes_pcb-o';
							 break;
						case 'stu-b':
							 $tablename2 = 'mes_pcb-bo';
							 break;
						case 'quality':
							 $tablename2 = 'mes_smt';
							 break;
						case "dip-in":
							 $tablename2 = 'mes_stu';
							 break;
						case "pcb-d":
							 $tablename2 = 'mes_dip-in';
							 break;
						case "pt":
							 $tablename2 = 'mes_mtu-3';
							 break;
						case "mtu-3":
							 $tablename2 = 	'mes_dip-in';		//'mes_pcb-d';
							 break;
						case "assembly":
							 $tablename2 = 'mes_pt_testing';
							 break;					 
					}
					$qry="SELECT Serial_number,ERROR_FLAG FROM `".$tablename2."` WHERE trim(Serial_number)='".trim($sno)."';";
					$result 	=	mysqli_query($link, $qry);
					//echo $qry;
					if (mysqli_num_rows($result) > 0) {
						$recSet = mysqli_fetch_assoc($result);
						if ($recSet['ERROR_FLAG']=='1'){
							echo json_encode('rework');
						} else {	
							$qry = "INSERT INTO `".$tablename."` (Serial_number, MacID, remarks,emp_id,GUID) VALUES ('".trim($sno) ."','$macid','".trim($_POST['remak'])."','".$_SESSION['empid']."','".$guid."');"; 
							mysqli_query($link, $qry);
							//echo $qry;
							$qry=" Insert into mes_cardout_backup(Serial_number,remarks,stage,position,emp_id,GUID) values ('".trim($sno) .  "','" . trim($_POST['remak'])."','" . trim($_SESSION['stage']) . "','in','".$_SESSION['empid']."','".$guid."');"; 
							mysqli_query($link, $qry);	
							echo json_encode('added');
						}
					}else {
						echo json_encode('invalid');
					}	
				}else{
					$qry="SELECT Serial_number FROM `".$tablename."` WHERE trim(Serial_number) = '".trim($sno)."';";
					//echo $qry;
					$result 	=	mysqli_query($link, $qry);
					if (mysqli_num_rows($result) > 0) {
						$qry = "update `$tablename` set Serial_number = '".trim($sno) ."',remarks= '"
								 . trim($_POST['remak'])."', emp_id_mod = '".$_SESSION['empid']."', COD = Now(), 	GUID='$guid'" 
								 . " where Serial_number = '" . trim($sno) ."';";
					} else {	
						for ($i=1;$i<=8;$i++){
							if ("mes_".$arraytable[$i] == trim($tablename)){
								if ($tablename == 'mes_assembly')
									$arraytable[$i-1] = 'mes_pt_testing';
								$qry = "Select Serial_number from `mes_".$arraytable[$i-1]."` where Serial_number = '".trim($sno)."';";
								//echo $qry;
								$result = mysqli_query($link, $qry);
								if (mysqli_num_rows($result) > 0) {
									$qry = "INSERT INTO `".$tablename."` (Serial_number, MacID,remarks,emp_id,GUID) VALUES ('".trim($sno) ."','".trim($macid)."','".trim($_POST['remak'])."','".$_SESSION['empid']."','$guid');";
									//echo $qry;
								}else {
										echo json_encode('invalid_4');
										break 2;
								}
							}else{
								if (isset($_SESSION['smtStage'])){
									if (trim($_SESSION['smtStage']) == 'mes_pcb-o'){
										$tablename = 'mes_repair_pcb-o';
										$_SESSION['smtStage'] = "";
									}	
								}					
								$qry = "INSERT INTO `".$tablename."` (Serial_number, MacID,remarks,emp_id,GUID) 
											VALUES ('".trim($sno) ."','".trim($macid)."','".trim($_POST['remak'])."','".$_SESSION['empid']."','$guid');";
							}				
						}	
					}				
					//echo $qry;
					mysqli_query($link, $qry);
					$qry= "Insert into mes_cardout_backup(Serial_number,remarks,stage,position,emp_id,GUID) values ('".trim($sno) .  "','" . trim($_POST['remak'])."','" . trim($_SESSION['stage']) . "','in','".$_SESSION['empid']."','$guid');";
					mysqli_query($link, $qry);
					echo json_encode('added');
				}			
				}
			break;	

		case "InsertCardOut":
			$stag = ''; $PartName='';
			switch ($_SESSION['stage']){
				case 'aoi-b':
				case 'aoi':
					$stationNo='02';
					break;
					
				case 'repair':
					$stationNo='04';
					$qry="SELECT Serial_number,Flag,stage FROM mes_faultyCards_vw WHERE trim(Serial_number) = '" . trim($sno) ."';";
					$result = mysqli_query($link, $qry);
					if (mysqli_num_rows($result) > 0) {
						$recSet = mysqli_fetch_assoc($result);
						$stag = $recSet['stage'];
					}	
					break;
					
				case in_array($_SESSION['stage'], ['quality','stu','stu-b']):
					$stationNo='06';
					$qry="SELECT PartName FROM mes_sno_master WHERE trim(SNo) = '" . trim($sno) ."';";
					$result = mysqli_query($link, $qry);
					if (mysqli_num_rows($result) > 0) {
						$recSet = mysqli_fetch_assoc($result);
						$PartName=$recSet['PartName'];
					}	
					break;
					
				case 'dip-in':
				case 'pt':
					$stationNo='08';
					$qry="SELECT PartName FROM mes_sno_master WHERE trim(SNo) = '" . trim($sno) ."';";
					$result = mysqli_query($link, $qry);
					if (mysqli_num_rows($result) > 0) {
						$recSet = mysqli_fetch_assoc($result);
						$PartName=$recSet['PartName'];
					}					
					break;
				
				case 'assembly':
					$stationNo='10';
					break;
					
				case 'testing':
					$stationNo='12';
					break;
					
				case 'container packing':
					$stationNo='14';
					break;
						
					
				case 'pallet packing':
					$stationNo='16';
					break;		
			}
			$timestamp = time();
//			$currentDate = gmdate('Y-m-d', $timestamp);
			$guid = $sno."-".$stationNo."-".$timestamp;
		//mac id is mandatory incase of mainboard but not for miniboard
			if ($_SESSION['stage'] == 'pt' and $PartName=='Main Board' and $macid == ""){
					echo json_encode("invalid");
				    break;	
			}
			if ($_SESSION['stage'] == 'aoi'){
				//$tablename	=	'mes_smt';  //}else if ($_SESSION['stage'] == 'repair'){ $tablename = 'mes_faultyCards_vw'; 
				$tablename	=	'mes_pcb-o';
			}elseif ($_SESSION['stage'] == 'aoi-b'){
				$tablename	=	'mes_pcb-bo';	
			} elseif ($_SESSION['stage']== 'pt'){
				$tablename = 'mes_mtu-3';
			}else{	
				$tablename	=	'mes_'. $_SESSION['stage'];   
			}
			if ($stag == 'mes_pcb-o')
				$tablename = 'mes_repair_pcb-o';
			
			$qry="SELECT Serial_number,Flag FROM `". $tablename ."` WHERE trim(Serial_number) = '" . trim($sno) ."';";
			//echo $qry;
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				echo json_encode ('invalid'); // SNo not got in from card in post
			}else{
				$erro=$_POST['erro'];
				if ($_SESSION['stage']== 'pt'){
					$qry = "Select Serial_number from `mes_pt` where Serial_number='$sno'";
					//echo $qry;
					$result = mysqli_query($link, $qry);
					if (mysqli_num_rows($result)>0){
						$qry = "update `mes_pt` set ERROR_FLAG = '".$erro."', outRemarks = '". $_POST['remak'] . "',Flag = '0', macID = '".trim($macid)."', corAction = '" . $_POST['corAct']  . "', emp_id_mod = '".$_SESSION['empid']."', GUID_Out='$guid' where Serial_number = '" . trim($sno) . "' and Flag='1';";
					}else{
						$qry = "insert into `mes_pt`(Serial_number,guid,error_flag,flag,macid,emp_id,remarks,stationname_in) VALUES ('$sno','$guid','$erro','0','$macid','".$_SESSION['empid']."','".$_POST['remak']."','$stationNo');";
					}
					//echo $qry;
					$result = mysqli_query($link, $qry);
					echo json_encode('added');
				}else{	
					$recSet = mysqli_fetch_assoc($result);
					if ($recSet["Flag"] == '1'){
						$qry = "update `".$tablename."` set ERROR_FLAG = '".$erro."', outRemarks = '"
									   . $_POST['remak'] . "',Flag = '0', macID = '".trim($macid)
									   . "', corAction = '" . $_POST['corAct']  . "', emp_id_mod = '".$_SESSION['empid']."', GUID_Out='$guid' where Serial_number = '" . trim($sno) . "' and Flag='1';";
					    $recSet = mysqli_fetch_assoc($result);
						//echo $qry;
						mysqli_query($link, $qry);
						$qry = "Insert into mes_cardout_backup(Serial_number,macID,ERROR_FLAG,corAction,
								remarks,stage,position,emp_id,GUID)
									values ('".trim($sno) . "','". trim($macid). "','".$erro."','"
										. $_POST['corAct']. "','" . $_POST['remak']."','" . trim($_SESSION['stage']) 
										. "','out','".$_SESSION['empid']."','$guid')"; 
						
						mysqli_query($link, $qry);
						echo json_encode('added');
					
						switch ($_SESSION['stage']){
							case "quality":
								if (trim($_POST['erro']) == '1'){
									$qry="update mes_repair set flag = '1' where Serial_number = '" .  trim($sno)."';";
									$result = mysqli_query($link, $qry);
								} else {
									 if ($PartName =='Switch'){
										 $qry = "update mes_testing set flag='1' where SERIAL_NUMBER = '".$sno."';";
										 //echo json_encode($qry);
										 mysqli_query($link,$qry);
									 }		
								}	
								break;
							case "repair":
									if ($stag == 'testing'){
										$qry="update mes_quality set flag = '1' where Serial_number = '".trim($sno)."';";
									}elseif ($stag == 'mes_pcb-o'){
										$qry="update `mes_pcb-o` set flag = '1' where Serial_number = '" .  trim($sno)."';";
									}elseif ($stag == 'mes_pcb-bo'){	
										$qry="update `mes_pcb-bo` set flag = '1' where Serial_number = '" .  trim($sno)."';";
									}
									$result = mysqli_query($link, $qry);
								break;
							case "aoi":
								if (trim($_POST['erro']) == '0'){
									$qry="update mes_quality set flag = '1' where Serial_number = '" .  trim($sno)."';";
									$result = mysqli_query($link, $qry);
								} else {
									$qry="update mes_repair set flag = '1' where Serial_number = '" .  trim($sno)."';";
									$result = mysqli_query($link, $qry);
								}
								break;
						}	
					} else {
						echo  json_encode('exist');  //exist
					}
				}	
			//--------------------------------	
			}
			break;	

		case "finderror":
				if (! empty($_POST["errorbox"])) {
					$search = "{$_POST['errorbox']}%";
					$qry = "SELECT * FROM mes_testingerrorlist WHERE TestingError LIKE '$search%' ORDER BY TestingError LIMIT 0,8";
					//$sql->bind_param("s", $search);
					//$sql->execute();
					$result = mysqli_query($link, $qry);
					$recSet = mysqli_fetch_assoc($result);
					if (! empty($recSet)) {				?>
						<ul id="error-list">
<?php					while ($recSet = mysqli_fetch_assoc($result)) { ?>
							<li onClick="selectError('<?php echo $recSet["TestingError"]; ?>');">
<?php 							echo $recSet["TestingError"]; ?>
							</li>
<?php					} // end for				?>
				</ul>
<?php				} // end if not empty
				}		
				break;

		case "validateponumber":
			$qry = "Select * from mes_planning where ponumber = '". trim($sno) ."';";
			//echo json_encode($qry);
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				$array['flag']='valid';
				echo json_encode ($array); // SNo not got in from card in post
			} else {
				$array['flag']='valid';
				$recSet = mysqli_fetch_assoc($result);
				$array['custname']=$recSet['CustomerName'];
				$array['prodname']=$recSet['ProductName'];
				$array['quantity']=$recSet['Quantity'];			
				echo json_encode ($array);
			}	
			break;
			
		case "validateCartoon":
			$qry="SELECT SNo FROM mes_sno_master 
					WHERE 	trim(SNo) = '" . trim($sno) ."' 
						and PartName = 'Carton' and Status='a';";
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				echo json_encode ('invalid'); // SNo not in or active  in S.No. Master File
			} else {
				echo json_encode ('valid');
			}	
			break;
			
		case "vldtSwitchPack":
			$sno=trim($sno);	
			$qry = "Select a.Serial_number, b.MacID, b.barcode from mes_testing a join mes_sno_master b on a.SERIAL_NUMBER = b.SNo where a.error_flag = '0' and b.status <> 'P' and b.ponumber in  ('SI2AC7212002X','SI2AC7230006X','ZZZ0002222') and a.serial_number ='$sno';";  
			//a.Flag='0' and 
			//echo $qry;		
			$result = mysqli_query($link, $qry);
			//echo json_encode($qry);
			if (mysqli_num_rows($result) <= 0) {
				$array['flag']='invalid';
				echo json_encode ($array); // SNo not got in from card in post
			} else {
				$array['flag']='valid';
				$recSet = mysqli_fetch_assoc($result);
				$array['mainBoard']=$recSet['Serial_number'];
				$array['macID']=$recSet['MacID'];
			//	$array['miniBoard']=$recSet['MiniBoard'];
			//	$array['smpsNo']=$recSet['smp'];
				echo json_encode ($array);
			}	
			break;
		case "Insertbox":
			$timestamp = time();
			$guid = $sno."-18-".$timestamp;
			$sno=trim($sno);
			$qry = "Select a.Serial_number, b.MacID, b.barcode from mes_testing a join mes_sno_master b on a.SERIAL_NUMBER = b.SNo join mes_testing c on a.serial_number = c.serial_number where c.error_flag = '0' and b.status <> 'P' and b.ponumber in  ('SI2AC7212002X','SI2AC7230006X','ZZZ0002222') and a.serial_number ='$sno';";  //Flag='0' and 
			$result = mysqli_query($link, $qry);
			//echo ($qry);
			if (mysqli_num_rows($result) <= 0) {
				echo json_encode('invalid');
				break;
			}	
			$switch = $sno;  $mainbrd = $_POST['mainbrd']; $macid = $_POST['macid'];
			$empid	 = $_SESSION['empid'];	$weight = $_POST['weight'];
			$qry="SELECT SERIAL_NUMBER FROM  mes_boxPack WHERE SERIAL_NUMBER = '$switch'";
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) > 0) {
				echo json_encode ('exist'); // already exist
			}else{
				$qry = "insert into mes_boxpack(SERIAL_NUMBER,MainBoard,MacID,weight,Emp_ID,guid) 
						  values ('$switch','$mainbrd','$macid','$weight','$empid','$guid');";	
				mysqli_query($link, $qry);
				$qry = "update mes_sno_master set status = 'B' where sno = '$switch';";
				mysqli_query($link, $qry);
				echo json_encode('added');
			} 
			break;
			
		case "packCarton":
			$switch1 = $_POST['switch1'];  $switch2 = $_POST['switch2']; $switch3 = $_POST['switch3'];
			$switch4 = $_POST['switch4'];  $carton  = $_POST['carton'];  $empid	 = $_SESSION['empid'];
			$weight = $_POST['weight'];
			$qry="SELECT CartoonNo FROM  mes_contPacking WHERE switchno in ('$switch1','$switch2','$switch3','$switch4')";
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) > 0) {
				echo json_encode ('invalid'); // SNo not got in from card in post
			}else{
				$qry = "insert into mes_contPacking(CartoonNo,Switchno,weight,Emp_ID) 
						  values ('$carton','$switch1','$weight','$empid'),('$carton','$switch2','$weight','$empid'),
							('$carton','$switch3','$weight','$empid'),('$carton','$switch4','$weight','$empid');";	
				mysqli_query($link, $qry);
				$qry = "update mes_sno_master set status = 'P' where sno in ('$carton','$switch1','$switch2','$switch3','$switch4');";
				mysqli_query($link, $qry);
				echo json_encode('added');
			} 
			break;

		case "packCartonSubmit":
			$feedbatch	=	$_POST['feedbatch'];
			$feedpcba	=	$_POST['feedpcba'];			
			$feedbatch	= 	explode("|", $feedbatch);		
			// insert to transaction and update pcba_records
			$feedpcba	= 	json_decode($feedpcba);
			$len 		= 	count($feedpcba);
			$tablename	=	'mes_contPacking';
			$qry1 		=	"INSERT INTO $tablename (CartoonNo,SwitchNo,Emp_ID,GUID) VALUES ";
			for ($i = 0; $i < $feedbatch[1] ; $i++) {		//$len
				$pieces		=	explode("|", $feedpcba[$i]);
				$timestamp = time();
				$guid = $feedbatch[0]."-20-".$i.$timestamp;
				$qry1 	   .=	"('$feedbatch[0]','$pieces[1]','".$_SESSION['empid']."','$guid'), ";
			}
			$qry =	substr_replace($qry1,';',-2);
			mysqli_multi_query($link, $qry);
			echo json_encode("added");
			break;

		case "packPallet":
			$feedbatch	=	$_POST['feedbatch'];
			$feedpcba	=	$_POST['feedpcba'];			
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
			$qry1 		=	"INSERT INTO $tablename (ShipNo,PalletNo,CartonNo,Switch1,Switch2,Switch3,Switch4, Emp_ID, Quantity) VALUES	";
/*			$tablename	=	'pcbatracker_' . $feedbatch[1] . '_transaction';
			$qry2 		=	"INSERT INTO $tablename (MasterID, BID, Sno, PartNo, RevNo, ProdNo, CardName, BatchStatus, FromStage, CreatedBy, Status)	VALUES	";
			$qry3		=	"UPDATE pcbatracker_pcba_records SET CardStatus = '$feedbatch[0]', Stage = '$feedbatch[1]', ModifiedBy = '".$_SESSION['empid']."' WHERE Status = 1 AND ProdNo IN (";   */
			for ($i = 0; $i < $len ; $i++) {
				$pieces		=	explode("|", $feedpcba[$i]);
				$qry1 	   .=	"('$feedbatch[2]','$feedbatch[0]','$pieces[1]','$pieces[2]','$pieces[3]','$pieces[4]','$pieces[5]','".$_SESSION['empid']."','$feedbatch[1]'), ";
/*				$qry2 	   .=	"('$pieces[0]','$lastid','$pieces[1]','$pieces[2]','$pieces[3]','$pieces[4]','$pieces[5]','received','".$_SESSION['stage']."','".$_SESSION['empid']."',0), ";
				$qry3 	   .=	"'$pieces[4]', ";		*/
			}
			$qry1		=	substr_replace($qry1,';',-2);
/*			$qry2		=	substr_replace($qry2,';',-2);
			$qry3		=	substr_replace($qry3,');',-2); */
			$qry		=	$qry1;   // . $qry2 . $qry3;
			mysqli_multi_query($link, $qry);
			echo json_encode("added");
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

		case "vldtCartonPack":
			$sno=trim($sno);
			$qry = "Select MainBoard, MacID, MODt from mes_boxpack where SERIAL_NUMBER = '$sno'";
			$result = mysqli_query($link, $qry);
			//echo json_encode($qry);
			if (mysqli_num_rows($result) <= 0) {
				$array['flag']='invalid';
				echo json_encode ($array); // SNo not got in from card in post
			} else {
				$recSet = mysqli_fetch_assoc($result);
				$array['flag']='valid';
				$array['switch1']=$recSet['MacID'];
				$array['switch2']=$recSet['MODt'];
				echo json_encode ($array);
			}	
			break;

			case "vldtCartonPallet":
			$sno=trim($_POST['sno']);
			$qry = "SELECT SwitchNo from mes_contPacking where CartoonNo ='$sno'";
			$result = mysqli_query($link, $qry);
			//echo json_encode($qry);
			if (mysqli_num_rows($result) <= 0) {
				$array['flag']='invalid';
				echo json_encode ($array); // SNo not got in from card in post
			} else {
				$array['flag']='valid';
				$i=1;
				While ($recSet = mysqli_fetch_assoc($result)){
					$array['switch'.$i]=$recSet['SwitchNo'];
					$i++;
				}	
				echo json_encode ($array);
			}	
			break;
			
		case "vldtPT":
			$qry="SELECT SERIAL_NUMBER FROM mes_pt WHERE trim(SERIAL_NUMBER) = '" . trim($sno) ."' and Flag='1';";
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				$array['flag']= 'invalid';
				echo json_encode ($array); // SNo not got in from card in post
			} else {
				$array['flag']= 'valid';
				echo json_encode ($array);
			}		
			break;
			
		case "vldtSwitch":
			$qry="SELECT SERIAL_NUMBER FROM mes_testing WHERE trim(SERIAL_NUMBER) = '" . trim($sno) ."' and Flag='1';";
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				$array['flag']= 'invalid';
				echo json_encode ($array); // SNo not got in from card in post
			} else {
				$array['flag']= 'valid';
				echo json_encode ($array);
			}		
			break;
			
		case "validateProduct":
			if ($_SESSION['stage']=='testing'){
				$qry="SELECT SERIAL_NUMBER FROM mes_assembly WHERE trim(SERIAL_NUMBER) = '" . trim($sno) ."' and Flag='0';";
				$result = mysqli_query($link, $qry);
				if (mysqli_num_rows($result) <= 0) {
					//$array['flag']= 'invalid';
					echo json_encode ('invalid'); // SNo not got in from card in post
				} else {
					//$array['flag']= 'valid';
					echo json_encode ('valid');
				}	
				break;
			}	
			$qry="SELECT SNo FROM mes_sno_master WHERE trim(SNo) = '" . trim($sno) ."' and status='".$_POST['stats']."';";
			//echo $qry;
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				$array['flag']= 'invalid';
				echo json_encode ($array); // SNo not got in from card in post
			} else {
				$array['flag']= 'valid';
				echo json_encode ($array);
			}	
			break;
			
		case "outCard":
			$qry="SELECT PartName FROM mes_sno_master WHERE trim(sno) = '" . trim($sno) ."';";
			$result 	=	mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				echo json_encode ('invalid'); // sno not yet planned
			}else{
				$recSet = mysqli_fetch_assoc($result);
				$PartName=$recSet['PartName'];
				echo json_encode($PartName);
			}	
			break;

		case "validateMAC":	
			$qry="SELECT PartName FROM mes_sno_master WHERE trim(sno) = '" . trim($_POST['crdNo']) ."';";
			$result 	=	mysqli_query($link, $qry);
			if (mysqli_num_rows($result)>0) {
				$recSet = mysqli_fetch_assoc($result);
				$PartName=$recSet['PartName'];
			}
			
			$qry="SELECT macID FROM mes_mi WHERE trim(macID) = '" . trim($sno) ."';";
			$result = mysqli_query($link, $qry);
			//echo json_encode ($qry);
			if (mysqli_num_rows($result) >0 and $PartName != 'Mini Board') {
				echo json_encode ('invalid'); // SNo not got in from card in post
			} else {
				echo json_encode ('valid');
			}			
			break;
			
			
		case "validateMainBSno":
			$qry="SELECT SNo,macID FROM active_MI_MainBoard_vw WHERE trim(SNo) = '" . trim($sno) ."' ;";
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				echo json_encode ('invalid'); // SNo not got in from card in post
			} else {
				$recSet = mysqli_fetch_assoc($result);
				echo json_encode ("MAC|".$recSet['macID']);
			}	
			break;			
		
		case "validateMiniBSno":
			$qry="SELECT SNo FROM active_MI_MiniBoard_vw WHERE trim(SNo) = '" . trim($sno) ."' ;";
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				echo json_encode ('invalid'); // SNo not got in from card in post
			} else {
				echo json_encode ("valid");
			}	
			break;			

		case "switchAssembly":
			$timestamp = time();
//			$currentDate = gmdate('Y-m-d', $timestamp);
			$guid = $sno."-10-".$timestamp;
			$qry="SELECT Sno,PartName FROM  mes_sno_master WHERE trim(sno) = '" . trim($sno) ."' and status='a';";
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				echo json_encode ('invalid'); // SNo not got in from card in post
			}else{
				$qry = "update mes_assembly set SERIAL_NUMBER = '" . trim($sno) . "', MainBoard= '" 
						. trim($sno) . "', MacID = '" . trim($macid) .  "', Emp_ID = '" 
						. $_SESSION['empid'] . "', flag='0',GUID_Out = '$guid' where SERIAL_NUMBER = '".trim($sno)."';";
				mysqli_query($link, $qry);
				$qry = "update mes_sno_master set status = 'u' where sno = '$sno';";	
				mysqli_query($link, $qry);
				echo json_encode('added');
			} 
			break;				
/*				"Insert into mes_assembly(SERIAL_NUMBER,MainBoard,MacID,MiniBoard,SMPSNo,Emp_ID)
						values ('".trim($_POST['sw_sno']) . "','". trim($_POST['mb_sno']). "','". trim($_POST['macid'])
								  . "','" . trim($_POST['mi_sno'])."','" . trim($_POST['smp_sno']) 
								  . "','" . $_SESSION['empid']."')"; */ 
								  		
		case "readPT_TestFile":
			$qry="SELECT SERIAL_NUMBER FROM mes_pt WHERE trim(SERIAL_NUMBER) = '" . trim($sno) ."' and Flag='1';";
			//echo $qry;
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				$array['flag']= 'invalid';
				echo json_encode ($array); // SNo not got in from card in post
				break;
			}else{
				$array['flag']= 'valid';
			}

			// Example usage
			$filnam = trim($sno);
			$filename = strtoupper(trim($sno));  // substr($sno,0,strlen($filnam));			
			$folderPT1 = "upload/testlogs/PT1/";
			$folderPT2 = "upload/testlogs/PT2/";
			$searchWord = "Test Program Version:";
			// calling a function 'searchFileByDate' (written above in the code) to search a file in given path
			$filePathPT1 = searchFileByDate($folderPT1, $filename);
			$filePathPT2 = searchFileByDate($folderPT2, $filename);
			//calling a function 'searchAndPrintLine' (written above in the code) to search a word
			if (!empty(trim($filePathPT1))){
				$PT1Ver = searchAndPrintLine($filePathPT1, $searchWord);
				// Read the content of the text file in a variable
				$fileContentPT1 = file_get_contents($filePathPT1);
				$reslt = explode("_",basename($filePathPT1));
				// Escape special characters to prevent SQL injection
				//$fileContent = $link->real_escape_string($fileContent);
				$array['PT1Report'] = $filePathPT1;	
				$array['PT1Ver'] = trim($PT1Ver);	
				$reslt = explode("_",basename($filePathPT1));
				$array['resltPT1'] = $reslt[1];
				$array['fileContentPT1'] = file_get_contents($filePathPT1);
			}
			if (!empty(trim($filePathPT2))){
				$PT2Ver = searchAndPrintLine($filePathPT2, $searchWord);
				$array['PT2Report'] = $filePathPT2;	
				$array['PT2Ver'] = trim($PT2Ver);
				$reslt = explode("_",basename($filePathPT2));
				$array['resltPT2'] = $reslt[1];
				$array['fileContentPT2'] = file_get_contents($filePathPT2);
			}	
			echo json_encode($array);
			break;

		case "readTestFile":
			$qry="SELECT SERIAL_NUMBER FROM mes_testing WHERE trim(SERIAL_NUMBER) = '" . trim($sno) ."' and Flag='1';";
			$result = mysqli_query($link, $qry);
			if (mysqli_num_rows($result) <= 0) {
				$array['flag']= 'invalid';
				echo json_encode ($array); // SNo not got in from card in post
				break;
			}else{
				$array['flag']= 'valid';
			}

			$filename = trim($sno);  //substr($sno,0,strlen($filnam));		
			$folderwrFDL = "upload/testlogs/wrFDL/";
			$folderwrFT = "upload/testlogs/wrFT/";
			$searchWord = "Test Program Version:";
			// calling a function 'searchFileByDate' (written above in the code) to search a file in given path
			$filePathwrFDL = searchFileByDate($folderwrFDL, $filename);
			$filePathwrFT = searchFileByDate($folderwrFT, $filename);
			if (!empty(trim($filePathwrFDL))){
				$wrFDLVer = searchAndPrintLine($filePathwrFDL, $searchWord);
				$fileContentHP = file_get_contents($filePathwrFDL);
				$reslt = explode("_",basename($filePathwrFDL));
					// Escape special characters to prevent SQL injection
					//$fileContent = $link->real_escape_string($fileContent);
				$array['HPReport'] = $filePathwrFDL;	
				$array['HPVer'] = trim($wrFDLVer);	
				$reslt = explode("_",basename($filePathwrFDL));
				$array['resltHP'] = $reslt[1];
				$array['fileContentHP'] = file_get_contents($filePathwrFDL);
			}	
			if (!empty(trim($filePathwrFT))){
				$wrFTVer = searchAndPrintLine($filePathwrFT, $searchWord);
				$array['FTReport'] = $filePathwrFT;	
				$array['FTVer'] = trim($wrFTVer);	
				$reslt = explode("_",basename($filePathwrFT));
				$array['resltFT'] = $reslt[1];
				$array['fileContentFT'] = file_get_contents($filePathwrFT);
			}	
			echo json_encode($array);
			break;
			
		case "reporting":	
			include 'tbhead.html';
			$rpt=$_POST['rpt'];
			switch ($rpt){
			  case "poData":
				$header= 'R_PO_DATA_T <BR> PO Records)';
				$tableName = 'rpodata_vw';
			  break;
			  
			  case "confirmData";
				$header= 'CONFIRM_DATA';
				$tableName = 'CONFIRM_DATA_vw';
			  break;		  
			  
			  case "repairData";
				$header= 'PRODUCTION_DATA <BR> R_REPAIR_T (detail for repair station)';
				$tableName = 'rpodata_vw';
			  break;
			  
			  case "productionData";
				$header= 'PRODUCTION_DATA <BR> R_SN_DETAIL_T (SN Station Records)';
				$tableName = 'r_sn_detail_vw';
			  break;
			  
			  case "wipData";
				$header= 'PRODUCTION_DATA <BR> R_WIP_KEYPARTS_T (Assembly Parent Child Mapping Data)';
				$tableName = 'r_wip_keyparts_vw';
			  break;
			  
			  case "testResult";
				$header= 'PRODUCTION_DATA <BR> R_TEST_RESULT (Test Station Records Master)';
				$tableName = 'r_test_result_vw';
			  break;
			  
			  case "testResultDetails";
				 $header= 'PRODUCTION_DATA <BR> R_TEST_RESULT_Detals ';
				 $tableName="R_Test_Result_Details_vw";
				 break;
			 
			case "allReportData";
				$header= 'Report_DATA <BR> R_Test_Report_Data';
				 $tableName="allTestReports_vw";
				 break;
			}		 
			$sql = "Select * from $tableName;";
			//echo $sql;
	
			// Execute the query
			$result = $link->query($sql);

			// Check if the query was successful
			if ($result === false) {
				die("Error in SQL query: " . $link->error);
			}

			// Check if there are rows in the result set
			if ($result->num_rows > 0) {
				// Fetch the first row to get the field names as table headings
				$firstRow = $result->fetch_assoc();

				// Output table headings
				echo "<H3 style='text-align:center'>".$header."</H3><BR>
				<table id='dTableR' class='display' style='width:99%'>
						<thead>
						<tr>";
				foreach ($firstRow as $heading => $value) {
					echo "<th>$heading</th>";
				}
				echo "</tr></thead><tbody>";

				// Rewind the result set to the beginning
				$result->data_seek(0);

				// Output data of each row
				$sno=1;
				while ($row = $result->fetch_assoc()) {
					echo "<tr>";
					foreach ($row as $value) {
						echo "<td>$value</td>";
					}
					echo "</tr>";
				}
				
				echo "</tbody><tfoot><tr>";
				foreach ($firstRow as $heading => $value) {
					echo "<th>$heading</th>";
				}
				echo "</tr></tfoot>";
				
				echo "</table>";
			} else {
				echo "No records found";
			}

			// Close the database connection
			//$link->close();

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
			$tablename	=	'pcbatracker_' . $_SESSION['stage'] . '_master';
			$qry 		=   "INSERT INTO $tablename (BatchStatus, ToEmpID, ToEmail, ToStage, BatchQuantity, CreatedBy, remarks, Status) 
						    VALUES ('$feedbatch[0]','$feedbatch[3]','$feedbatch[4]','$feedbatch[1]','$feedbatch[5]','".$_SESSION['empid']."','$feedbatch[6]',1)";
			mysqli_query($link, $qry);
			$lastid 	= mysqli_insert_id($link);
			
			// insert to transaction and update pcba_records
			$feedpcba	= 	json_decode($feedpcba);
			$len 		= 	count($feedpcba);
			$tablename	=	'pcbatracker_' . $_SESSION['stage'] . '_transaction';
			$qry1 		=	"INSERT INTO $tablename (MasterID, BID, Sno, PartNo, RevNo, ProdNo, CardName, BatchStatus, FromStage, CreatedBy, Status)	VALUES	";
			$tablename	=	'pcbatracker_' . $feedbatch[1] . '_transaction';
			$qry2 		=	"INSERT INTO $tablename (MasterID, BID, Sno, PartNo, RevNo, ProdNo, CardName, BatchStatus, FromStage, CreatedBy, Status)	VALUES	";
			$qry3		=	"UPDATE pcbatracker_pcba_records SET CardStatus = '$feedbatch[0]', Stage = '$feedbatch[1]', ModifiedBy = '".$_SESSION['empid']."' WHERE Status = 1 AND ProdNo IN (";
			for ($i = 0; $i < $len ; $i++) {
				$pieces		=	explode("|", $feedpcba[$i]);
				$qry1 	   .=	"('$pieces[0]','$lastid','$pieces[1]','$pieces[2]','$pieces[3]','$pieces[4]','$pieces[5]','$feedbatch[0]','".$_SESSION['stage']."','".$_SESSION['empid']."',1), ";
				$qry2 	   .=	"('$pieces[0]','$lastid','$pieces[1]','$pieces[2]','$pieces[3]','$pieces[4]','$pieces[5]','received','".$_SESSION['stage']."','".$_SESSION['empid']."',0), ";
				$qry3 	   .=	"'$pieces[4]', ";
			}
			$qry1		=	substr_replace($qry1,';',-2);
			$qry2		=	substr_replace($qry2,';',-2);
			$qry3		=	substr_replace($qry3,');',-2);
			$qry		=	$qry1 . $qry2 . $qry3;
			mysqli_multi_query($link, $qry);
			
			// for sending email
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
			sendMail($to, $cc, $subject, $body);
			break;

	}
?>