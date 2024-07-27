<?php
$link = mysqli_connect("localhost", "root", "", "MES");
if (!$link) {
	die("Connection failed: " . mysqli_connect_error());
}

// function to search a word and returning a required remaining word from a text file
function searchAndPrintLine($filePath, $searchWord){
	// Check if the file exists
	//$filePath = "upload/testlogs/FT/20240105/FT/EC2233002110_PASS_Y_1_101141.txt"; //__DIR__ .$filePath;
	if (!file_exists($filePath)) {
		return('File Not Found');
		die($filePath);
	}
	// Read the file content
	$lines = file($filePath, FILE_IGNORE_NEW_LINES);
	// Search for the word in each line
	$found = false;
	foreach ($lines as $line) {
		if (strpos($line, $searchWord) !== false) {
			$found 	= true;
			if ($searchWord == "Capture end "){
				$strt = strlen($searchWord)+22;
				$noc = strlen($line)-$strt-22;
			}else{	
				$strt 	= strlen($searchWord)+2;
				$noc 	= strlen($line)-$strt-2;
			}	
			$ver	= substr($line,$strt,$noc);
			return($ver);
			break;
		}
	}
	if (!$found) {
		return $searchWord;
	}
}

		$qry="SELECT a.SERIAL_NUMBER, a.reportPath1 AS PTreportPath FROM mes_PT_testing a LEFT JOIN mes_sno_master b ON a.SERIAL_NUMBER = b.sno WHERE b.ponumber IN ('SI2AC7212002X', 'SI2AC7230006X', 'ZZZ0002222') and trim(a.reportpath1) != '';";
		$result = mysqli_query($link, $qry);
		while ($recSet = mysqli_fetch_assoc($result)){
			$filePathFT  = $recSet["PTreportPath"];
		//	$filePathHP  = $recSet["HPreportPath"];
			$searchWord[0] = "SN = ";
			$searchWord[1] = "Test Program Version:";
			$searchWord[2] = "Test Date and Start Time:";
			$searchWord[3] = "PN  = ";
			$searchWord[4] = "LINE  =";
			$searchWord[5] = "TEST_PC = ";
			$searchWord[6] = "TEST_PC_IP  = ";
			$searchWord[7] = "TPVER  = ";
			$searchWord[8] = "FWVER  = ";
			$searchWord[9] = "GUID = ";
			$searchWord[10]= "Finish Date and Time : ";
			$searchWord[11]= "Test Status: ";
			$searchWord[12]= "Capture end ";
			$searchWord[13]= "STATION ID: ";
			//calling a function 'searchAndPrintLine' (written above in the code) to search a word
			//$HPVer = searchAndPrintLine($filePathHP, $searchWord);
			for ($i = 0; $i <= 13; $i++) { 
				$srcVal[$i] 	= searchAndPrintLine($filePathFT, $searchWord[$i]);
			//	$HP_srcVal[$i] 	= searchAndPrintLine($filePathHP, $searchWord[$i]);
			}
			//$fileContentHP = base64_encode(file_get_contents($filePathHP));
			$fileContentFT = base64_encode(file_get_contents($filePathFT));
			$i=0;
			$qry="Insert into mes_ft_test_result_extract_PT1(SNo,TPV,TDST,PN,Line,Test_PC,TP_IP,
						TPVER,FWVER,GUID,FINISHDATE,TestStatus,CaptureEnd,StationID,testRPT,TestType) 
				  values('$srcVal[0]','$srcVal[1]','$srcVal[2]','$srcVal[3]','$srcVal[4]','$srcVal[5]','$srcVal[6]',
						'$srcVal[7]','$srcVal[8]','$srcVal[9]','$srcVal[10]','$srcVal[11]','$srcVal[12]','$srcVal[13]',
						'$fileContentFT','FT');";
			mysqli_query($link, $qry);
			//echo ("<BR> \n".$qry);		
		}	


						/* ('$HP_srcVal[0]','$HP_srcVal[1]','$HP_srcVal[2]','$HP_srcVal[3]','$HP_srcVal[4]','$HP_srcVal[5]',
						 '$HP_srcVal[6]','$HP_srcVal[7]','$HP_srcVal[8]','$HP_srcVal[9]','$HP_srcVal[10]','$HP_srcVal[11]',
						 '$HP_srcVal[12]','$HP_srcVal[13]','$fileContentHP','HP')*/
?>