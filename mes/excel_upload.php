<style>
/* Center the loader */
#loader {
/*  position: absolute;*/
  position: -webkit-sticky;
  position: sticky;
  left: 50%;
  top: 50%;
  z-index: 10;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid blue;
  border-right: 16px solid green;
  border-bottom: 16px solid red;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Add animation to "page content" */
.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}

#myDiv {
  display: none;
  text-align: center;
}
</style>
<div id="loader"></div>

<!-- script to load loader on window load -->
<script> 
			// Animate loader off screen
		$(document).ready(function(){
			$("#loader").attr("style", "display:visible");
		});
	/*seperate code
       document.onreadystatechange = function() { 
            if (document.readyState !== "complete") { 
                //document.querySelector("body").style.visibility = "hidden"; 
                document.querySelector( 
                  "#loader").style.visibility = "visible"; 
            } else { 
                document.querySelector("#loader").style.display = "none"; 
                document.querySelector( 
                  "body").style.visibility = "visible"; 
            } 
        }; */
    </script> 
	
<?php
//if(isset($_POST["submit"]))	{
	$ponumber 		= $_POST['ponumber'];
	$customername 	= $_POST['custname'];
	$productname 	= $_POST['ProdName'];
	$quantity 		= $_POST['quantity'];
	$url			= 'localhost';
	$username		= 'root';
	$password		= '';
	$conn			= mysqli_connect($url,$username,$password,"MES");
	if(!$conn){
		die('Could not Connect My Sql:' .mysqli_error());
	}
	
	 
	//------------ upload file -----------------------------------------
		$target_dir = "upload/mes/";
		$target_file = $target_dir . basename($_FILES["file"]["name"]);
							//'file' is the input field name of the form
		if (trim($target_file) <> trim($target_dir) && trim($target_file)<>"")
		{	$uploadOk = 1;
			$FileType = pathinfo($target_file,PATHINFO_EXTENSION);
		   	if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
	      	  //echo "File is moved from temp directory to given path and file name.";
		   	} else {
  			  //echo "Sorry, there was an error uploading your file.";
		   	}
		} else {
			$target_file="";
		}	
	//------------------- File Uploaded	 -------------
if ($target_file!=""){
	//------- Reading Excel File ----------
	define('EOL',(PHP_SAPI == 'cli') ? PHP_EOL : '<br />');
	require_once 'Classes/PHPExcel/IOFactory.php';
	$objReader = PHPExcel_IOFactory::createReader('Excel2007'); // for xlsx extension
	$objPHPExcel = $objReader->load($target_file);	// excel file loaded to read
//----------------------------------------------------------------
		$noSheet = $objPHPExcel->getSheetCount();
		$sheetName=$objPHPExcel->getSheetNames();
	foreach($sheetName as $snam) {
    
        //$sheet =$objPHPExcel->getSheet($j);//Activate first sheet table
		$sheet=$objPHPExcel->getSheetByName($snam);
		//echo ("<BR>sheet index: ".$sheet);
        $highestRow = $sheet->getHighestRow();//Get total number
        $highestColumn =$sheet->getHighestColumn(); //Get total columns
        /* Verify that the header data is aligned
        $A1 = $objPHPExcel->getActiveSheet()->getCell("A1")->getValue();
        $B1 = $objPHPExcel->getActiveSheet()->getCell("B1")->getValue();
        if($A1!='Full name'||$B1!='Gender'||$C1!='Nation'){
            print_r('EXCEL Text data does not correspond');
        }*/
		
	//	$query = "Delete from crawl_erp_data;";
	//	mysqli_query($conn,$query);
		
		$query = "insert into mes_sno_master 
					(SNo,PONumber,PartName,ModalNumber,ISMNo) values ";
		$ID=0;$values="";
        for($i=2;$i<=$highestRow;$i++)
        {	++$ID;
			$SNo         = addslashes($sheet->getCell("A" .$i)->getValue());
            $PartName    = addslashes($sheet->getCell("B" .$i)->getValue());
			$ModalNumber = addslashes($sheet->getCell("C" .$i)->getValue());
			$IsmNumber 	 = addslashes($sheet->getCell("D" .$i)->getValue());
/*			$ManufacturerNo= addslashes($objPHPExcel->getActiveSheet()->getCell("C" .$i)->getValue());
  			$ManufacturerName =addslashes($objPHPExcel->getActiveSheet()->getCell("D" .$i)->getValue());
			$ManufacturerPartNo=addslashes($objPHPExcel->getActiveSheet()->getCell("E" .$i)->getValue());	*/
			 
			$values .= "('$SNo','$ponumber','$PartName','$ModalNumber','$IsmNumber'),";
			
			if ( $i%1000 == 0) {
				$values = substr($values, 0, strlen($values) - 1);
				$insert_query = $query . $values;
				mysqli_query($conn,$insert_query);
				$values = '';  
			}
        }
		$values = substr($values, 0, strlen($values) - 1);
		$insert_query = $query . $values;
		mysqli_query($conn,$insert_query);
		$highestRow--;
//		Echo "<label>Succefully Uploaded ".$highestRow." Records !! </label>";			
	}	
}
	$qry = "Select PONumber from mes_planning where PONumber = '$ponumber'";
	$result	= mysqli_query($conn,$qry);
	if (mysqli_num_rows($result) > 0)
		$qry = "update mes_planning set CustomerName = '$customername', ProductName = '$productname',Quantity = '$quantity'
				 where ponumber = '$ponumber'";
	else
		$qry = "insert into mes_planning (ponumber,customername,ProductName,Quantity) 
					values ('$ponumber','$customername','$productname','$quantity')";
	mysqli_query($conn, $qry);
	
?>
<script>
	$(document).ready(function(){
		$("#loader").attr("style", "display:none");
	});
</script>	
<?php	
	header('Location: index.php');			
	exit(0);
 ?>
