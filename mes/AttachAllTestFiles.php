<?php 
set_time_limit(0);
function searchFileByDate($folder, $filename) 
{
	$files = [];
	// Recursive function to search for the file
	$iterator = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($folder));
	foreach ($iterator as $file) {
		//echo $file."<BR> \n";
		if ($file->isFile()) {
			//echo ("FILE 1st Loop :".$file."<BR>");
			$reslt = explode("_",basename($file));
			if ($reslt[0]==$filename){			
				$files[] = [
					'path' => $file->getPathname(),
					'modified' => $file->getMTime(),
				];
			}	
		}
	}
	
//echo count($files)." total files<BR>";

	// Sort the results by modification date in descending order
	usort($files, function ($a, $b) {
		return $b['modified'] - $a['modified'];
	});

	$filePath=[];
	$i=0;
	foreach ($files as $result) {
		//echo "\n {$result['path']}, Modified Date: " . date('Y-m-d H:i:s', $result['modified']) . "<BR>\n";
		$filePath[$i] 	= str_replace ('\\', '/', $result['path']);
		$i++;
		//echo ($filePath." | ".$result['modified']."<BR>");
		//$reslt 		= explode("_",basename($filePath));
		//break;		//In case of Sorted by Descending break will give result for only file which is latest
	}
	//print_r($filePath);
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
$link = mysqli_connect("localhost", "root", "", "MES");
if (!$link) {
	die("Connection failed: " . mysqli_connect_error());
}
$qry = "Select a.Serial_Number as sno from mes_pt_testing a  join mes_sno_master b on a.Serial_Number = b.Sno join mes_keypartmaster c on b.ponumber= c.ponumber;" ;
$result = mysqli_query($link, $qry);
while ($recSet = mysqli_fetch_assoc($result)) { 
	
	//$sno = 'AO220028YFL';	 //$recSet['sno'];

	$filename = strtoupper(trim($recSet['sno']));  // substr($sno,0,strlen($filnam));			

	$folder[0] = "upload/testlogs/PT1/";
	$folder[1] = "upload/testlogs/PT2/";
	$folder[2] = "upload/testlogs/wrFT/";
	$folder[3] = "upload/testlogs/wrfdl/";

	// calling a function 'searchFileByDate' (written above in the code) to search a file in given path
	$cnt = 1;
	foreach($folder as $folderPath){
		$filePath = searchFileByDate($folderPath, $filename);
		if (!empty($filePath)){
			foreach ($filePath as $fileNam) {
				$reslt = explode("_",basename($fileNam)); //make an array by dividing the file name having separator '-'
				//$array['resltPT1'] = $reslt[1];		//it will extract Pass/Fail/running word from the file name
				//$array['fileContentPT1'] = file_get_contents($fileNam);	//to extract complete text from the text file
			if 	(strtoupper($reslt[1]) != 'RUNNING'){
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
				for ($i = 0; $i <= 13; $i++) { 
					//calling a function 'searchAndPrintLine' (written above in the code) to search a word
					$srcVal[$i] 	= searchAndPrintLine($fileNam, $searchWord[$i]);
				}
				$fileContentPT1 = base64_encode(file_get_contents($fileNam));
				$i=0;
				$qry="Insert into mes_ALL_test_results(SNo,TPV,TDST,PN,Line,Test_PC,TP_IP,
							TPVER,FWVER,GUID,FINISHDATE,TestStatus,CaptureEnd,StationID,filename,testRPT) 
					  values('$srcVal[0]','$srcVal[1]','$srcVal[2]','$srcVal[3]','$srcVal[4]','$srcVal[5]','$srcVal[6]',
							'$srcVal[7]','$srcVal[8]','$srcVal[9]','$srcVal[10]','$srcVal[11]','$srcVal[12]','$srcVal[13]',
							'$fileNam','$fileContentPT1');";
				//echo $qry."<BR>";
				mysqli_query($link, $qry);
			}	
			}		//for loop closed
		}			// end of if condition		
	} 				//end of First for Loop for folderPath
} 	//while loop closed	
echo ("All Test Result Report Created Successfully !!");

?>