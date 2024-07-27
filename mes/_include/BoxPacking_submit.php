	<?php
		session_start();
		require_once("formvalidator.php");
// Picture upload starts from here..

					$target_dir = "../Photo/";
					$target_file = $target_dir . basename($_FILES["takePictureField"]["name"]);
					$target_file2 = $target_dir . basename($_FILES["takePictureField2"]["name"]);
					$uploadOk = 1;
					$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
					$imageFileType2 = pathinfo($target_file2,PATHINFO_EXTENSION);
					// Check if file already exists
					if (file_exists($target_file)) {
					    echo "Sorry, file already exists.";
					    $uploadOk = 0;
					}
					// Check file size
					if ($_FILES["takePictureField"]["size"] > 2097152) {
		    			echo "Sorry, your file is too large. Please set your camera resolution to 640x480";
					    $uploadOk = 0;
					}
					// Check if $uploadOk is set to 0 by an error
					if ($uploadOk == 0) {
		    			echo "Sorry, your file was not uploaded.";
						// if everything is ok, try to upload file
					} 
					move_uploaded_file($_FILES["takePictureField"]["tmp_name"], $target_file);
					move_uploaded_file($_FILES["takePictureField2"]["tmp_name"], $target_file2) ;
//Picture upload ends here
	$dbcon = mysqli_connect("localhost", "root", "", "MES");
	if (!$dbcon) {
		die("Connection failed: " . mysqli_connect_error());
	}
	
	$tablename= "Product_box";
	
	if (!$dbcon) {
		die("Connection failed: " . mysqli_connect_error());
	}
	if ($_POST['proddesc']=='UGS-GW' && $_POST['Accessory'] <>'')
		$formvars['AccessoryPartNo']='201.01163.00';
	else
		$formvars['AccessoryPartNo']='';
	
	$formvars['SO_No'] 			= Sanitize($_POST['SO_No']);
	$formvars['proddesc'] 		= Sanitize($_POST['proddesc']);		
	$formvars['packingListNo']	= Sanitize($_POST['packingListNo']);
	$formvars['PackingListDate']= Sanitize($_POST['PackingListDate']);
	$formvars['BoxNo'] 			= Sanitize($_POST['BoxNo']);
	$formvars['QtyPerBox'] 		= Sanitize($_POST['QtyPerBox']);
	$formvars['ProdSno'] 		= Sanitize($_POST['ProdSno']);
	$formvars['packRemarks']	= Sanitize($_POST['packRemarks']);
	if (!isset($_POST['Accessory']))
		$postAccessory="N";
	else
		$postAccessory=$_POST['Accessory'];
	
	$formvars['Accessory']		= Sanitize($postAccessory);
	$_SESSION['SO_No']			= $formvars['SO_No'];
	$_SESSION['packingListNo']	= $formvars['packingListNo'];
	$_SESSION['PackingListDate']= $formvars['PackingListDate'];
	$_SESSION['BoxNo']			= intval($formvars['BoxNo'])+1;
	$_SESSION['LotNo']			= $_POST['LotNo'];
	
	
	$ProdList = explode(",",$formvars['ProdSno']);
	foreach($ProdList as $prodSnoArry) 
	{
		$insert_query = 'insert into '.$tablename.'(
						icNo,ProdDesc,ProdSno,PackingListNo,boxNo,BoxQty,PackingDate,Remarks,
						AccessoryPartNo,AccessoryDesc,pic1,pic2
                )
                values
                (
					"' . SanitizeForSQL($formvars["SO_No"]) . '",
					"' . SanitizeForSQL($formvars['proddesc']) . '",
					"' . $prodSnoArry . '",
					"' . SanitizeForSQL($formvars['packingListNo']) . '",
					"' . SanitizeForSQL($formvars['BoxNo']) . '",
					"' . SanitizeForSQL($formvars['QtyPerBox']) . '",
					"' . SanitizeForSQL($formvars['PackingListDate']) . '",
					"' . SanitizeForSQL($formvars['packRemarks']) . '",
					"' . SanitizeForSQL($formvars['AccessoryPartNo']) . '",
					"' . SanitizeForSQL($formvars['Accessory']) . '",
					"' . 'photo/'.basename( $_FILES["takePictureField"]["name"]).'",
					"' . 'photo/'.basename( $_FILES["takePictureField2"]["name"]).'"
                )';  
			//echo ("<BR> qry ".$insert_query);	
			//' . SanitizeForSQL($_SESSION['UserID']) . '
			$dbcon->query($insert_query);
			$updQry = "Update pcbatracker_pcba_records Set Stage = 'packing/dispatch' 
						where Sno = '" . $prodSnoArry ."';";
			$dbcon->query($updQry);
						
	}	   	

		
    
/*  This function is meant to protect the special character in string (e.g. single quote or & signs) to database*/
    function SanitizeForSQL($str)
    {
		global $dbcon;
		
        if( function_exists( "mysql_real_escape_string" ) )
        {
			  $ret_str=$dbcon->escape_string($str);
        }
        else
        {
              $ret_str = addslashes( $str );
        }
        return $ret_str;
    }
   
 /*
    Sanitize() function removes any potential threat from the
    data submitted. Prevents email injections or any other hacker attempts.
    if $remove_nl is true, newline chracters are removed from the input.
    */
    function Sanitize($str,$remove_nl=true)
    {
        $str = Strip_Slashes($str);

        if($remove_nl)
        {
            $injections = array('/(\n+)/i',
                '/(\r+)/i',
                '/(\t+)/i',
                '/(%0A+)/i',
                '/(%0D+)/i',
                '/(%08+)/i',
                '/(%09+)/i'
                );
            $str = preg_replace($injections,'',$str);
        }

        return $str;
    }    
    function Strip_Slashes($str)
    {
        if(get_magic_quotes_gpc())
        {
            $str = stripslashes($str);
        }
        return $str;
    }    
?>
<script type="text/javascript">
	window.location.href = '../Index.php';
</script>
