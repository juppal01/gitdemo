<html>
<head>
<!--
<meta charset="utf-8">
<meta name="viewport" content="width=200px; user-scalable=no" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta name="mobile-web-app-capable" content="yes">-->

<title>Box Packing</title>
</head>
<?php
	//session_start();
	//include ("_include/header.php");
	
//--------------- Function Starts here -----------------	
// this function will change the color of alternative rows to gray shade.
	$_SESSION["row"]=0;
	function ColorRow()
	{
		$_SESSION["row"]++;
		if (fmod($_SESSION["row"],2) <> 0 )
		{
	      $rowColor = "bgcolor = '#EFEFEF'";
//	      $rowColor = "bgcolor = '#dce9f9'";
		  return $rowColor;
		}
			return "";
	}
	
	//----- to select the selected value in dropdown-----------------
	function Selectdrop($var1,$var2)
	{
		if (trim($var1)==trim($var2))
		{	return "selected";
		}else{
			return "";
		}
	}
	
//--------------------- all Functions end here --------------------------	
	
	$PackingListDate= "";

	$dbcon = mysqli_connect("localhost", "root", "", "MES");
	if (!$dbcon) {
		die("Connection failed: " . mysqli_connect_error());
	}
    $qry = 'Select product_box.Id, product_box.PackingListNo, product_box.icNo, product_box.ProdSno, 
				 product_box.boxNo 
			from product_box 
			where 	id = (Select max(id) from product_box)';
	//echo $qry;
	$result = $dbcon->query($qry);
	//$numrow= mysqli_num_rows($result);
	$row = mysqli_fetch_assoc($result);
	if ($row>0){
		$SO_NO 			= $row['icNo'];
		$packingListNo 	= $row['PackingListNo'];
		$BoxNo 			= $row['boxNo']+1;
	//	$LotNo			= $row['LotNo'];
		$LotNo			=  "";
		$proddesc       =  "";
	}else{
		$SO_NO 			= "";
		$packingListNo 	= "";
		$BoxNo 			= "";
	//	$LotNo			= $row['LotNo'];
		$LotNo			=  "";
		$proddesc       =  "";
	}
	if (isset($_SESSION['SO_No'])) {
		$PackingListDate= $_SESSION['PackingListDate'];
	}
	
		$Prodqry= "Select ProductName as ProdDesc from product_master where PartNo is not null order by ProductName";
		$Prodresult = $dbcon->query($Prodqry);
		$Prodrow= mysqli_num_rows($Prodresult);
		//echo $Prodqry;
	//include 'packing_box_modal_moreItems.php';	
 ?>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="js/tablesort.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<!-- for Photo click scripts -->
	<script type="text/javascript" charset="utf-8" src="js/quantize.js"></script>
	<script type="text/javascript" charset="utf-8" src="js/color-thief.js"></script>
<!-- photo click scripts ends -->	
	
<style type="text/css">
	#yourimage {
		width:20px;	
	}
	tr {
		padding-top: 10px;
	}
	#swatches {
		width: 20px;
		height: 20px;	
	}
	
	#yourimage2 {
		width:20px;	
	}
	
	#swatches2 {
		width: 20px;
		height: 20px;	
	}

	.swatch {
		width:20px;
		height: 20px;
		border-style:solid;
		border-width:thin;	
		float: left;
		margin-right: 3px;	
	}
	
fieldset
{
   width: 97%;
   padding:10px;
   border:1px solid #ccc;
-moz-border-radius: 10px;
-webkit-border-radius: 10px;
-khtml-border-radius: 10px;
border-radius: 10px;   
}
img {
    opacity: 0.8;
    filter: alpha(opacity=40); /* For IE8 and earlier */
}

img:hover {
    opacity: 1.2;
    filter: alpha(opacity=100); /* For IE8 and earlier */
	cursor:pointer;
}
</style>

<div id = "imgOverlay" style="position:fixed; top:0; right:0; bottom:0; left:0; background-color: rgba(254,254,254,0.6); z-index: 10;" hidden>
<img src = "images/submitting.png" style="display: block; margin-left: auto; margin-right: auto; margin-top: 150px;">
</div>

<fieldset> 
<form id="myform" method="Post" action='_include/BoxPacking_submit.php' enctype="multipart/form-data" >
<input type='hidden' name='submitted' id='submitted' value='1'/>
<input type='hidden' name='ProdSno' id='ProdSno' />
<legend>Product Packing</legend>
	<table border="0" id="maintable" class="sortcompletecallback-applyZebra bordered" width="100%">
    	<tr <?=ColorRow()?>>
	        <th colspan="5">Packing List</th>
        </tr>
		<tr <?=ColorRow()?> >
			<td width="15%">Packing List No</td>
			<td width="35%"><input type="text" id="packingListNo" Name="packingListNo" value="<?=$packingListNo?>" size="40" tabindex="1"></td>
			<td width="15%">Packing List Date</td>
			<td width="35%" colspan='2'><input type="date" id="PackingListDate" Name="PackingListDate" value="<?php echo empty($PackingListDate) ? date('Y-m-d') : explode(' ', $PackingListDate)[0];?>" tabindex="2"></td>
		</tr>
		<tr <?=ColorRow()?> >
			<td width="15%">S.O. No</td>
			<td width="35%">
				<input type="text" id= "SO_No" Name= "SO_No" value="<?=$SO_NO?>" size="40" tabindex="3">
			</td>
			<td>Box No</td>
			<td ><input type="text" id="BoxNo" Name="BoxNo" value="<?=$BoxNo?>" size="10" tabindex="4"></td>
			<td>Lot No. <input type="text" id="LotNo" Name="LotNo" value="<?=$LotNo?>" size="10" tabindex="5"></td>
		</tr>
    	<tr <?=ColorRow()?>>
			<td  width='15%'>Product Description</td>
			<td width='35%'>
				<select name="proddesc" id="proddesc" onchange="FetchProductList(this.value);" tabindex='6'>
				<option value="NA" <?=Selectdrop($proddesc,'NA')?>>Select</option>
	<?php		while ($recSet = mysqli_fetch_assoc($Prodresult)) {		?> 
					<option value="<?=$recSet['ProdDesc']?>" <?=Selectdrop($proddesc,$recSet['ProdDesc'])?>><?=$recSet['ProdDesc']?></option>
	<?php		}	?>
			</td>
			<td >Total Qty</td>
			<td colspan='2'><input type="text" id="QtyPerBox" Name="QtyPerBox" size='10' value="" tabindex="7"></td>
<!---			<td>Node Side <Input type='radio' value='Left' checked name='Nside' id='Nside_0'>Left
				<Input type='radio' value='Right' name='Nside' id='Nside_1'>Right </td> -->
        </tr>		
		
     </table>


<legend>Product Listing</legend>
	<table border="0" id="maintable" class="sortcompletecallback-applyZebra bordered" width="100%">
	<tr <?=ColorRow()?>>
		<td colspan="4">
			<div ID="ProductListing" style="width: 98%; padding: 2px; height: 230px; Overflow-y: auto"> 
			</div>
		</td>
	</tr>
	<tr><td colspan='5'></td></tr>
	<tr id="UGS_Cable"  style="display:none;" bgcolor='#dce9f9' >
		<td >Cable Assembly (201.01163.00)</td>
		<td Colspan='4'><input type="checkbox" value="CA,RS485 +Power,15Mtr,7Core,8P(M) Circular Conn,8P(F) Circular Conn,WD CAP,Cable OD 9.5mm for UGS Interconnecting Cable" id="Accessory" name="Accessory" checked>CA,RS485 +Power,15Mtr,7Core,8P(M) Circular Conn,8P(F) Circular Conn,WD CAP,Cable OD 9.5mm for UGS Interconnecting Cable</td
	</tr>
	<tr <?=ColorRow()?>>
		<td width='15%'>Choose File to click a picture</td>
		<td width="35%"><input type="file" capture="camera" accept="image/*" id="takePictureField" name="takePictureField">
					<img id="yourimage"> 
		</td>
		<td width="15%">Choose File to click a picture</td>
		<td width="35%" colspan='2'><input type="file" capture="camera" accept="image/*" id="takePictureField2" name="takePictureField2">
			<img id="yourimage2">
		</td>
	</tr>
	<tr <?=ColorRow()?>>
		<td colspan="5">Remarks/Additional Items<BR>
			<Textarea name="packRemarks" rows="3" cols="80"></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<button type="button" id='SaveBttn' Name = 'SaveBttn' onclick="javascript:submitform('Next');" style="height: 30px; vertical-align: top;">Next Box</button>
			<input type="hidden" id="nextAction" name="nextAction" value="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
		<td colspan="2" width="50%">&nbsp;</td>
	</tr>
	</table>
	<div id="swatches" style="display:none;">
		<div id="swatch0" class="swatch"></div>
		<div id="swatch1" class="swatch"></div>
		<div id="swatch2" class="swatch"></div>
		<div id="swatch3" class="swatch"></div>
		<div id="swatch4" class="swatch"></div>
	</div>
	<div id="swatches2" style="display:none;">
		<div id="swatch20" class="swatch"></div>
		<div id="swatch21" class="swatch"></div>
		<div id="swatch22" class="swatch"></div>
		<div id="swatch23" class="swatch"></div>
		<div id="swatch24" class="swatch"></div>
	</div>
<!--	<button type="button" onclick="showModal2();" style="margin-left: 50px;">Add more items</button>-->
</form>
</fieldset>	
<script language="javascript">
	function submitform(varVal) {	
		$('#SaveBttn').prop('disabled', true);
		$('#nextAction').val(varVal);
            var favorite = [];
            $.each($("input[name='varProdSno']:checked"), function(){            
                favorite.push($(this).val());
            });
           
			$('#ProdSno').val(favorite.join(","));
			//alert("My favourite sports are: " + favorite.join(", "));
		$('#myform').submit();
	}

function FetchProductList(str) {
    if (str == "NA") {
        document.getElementById("ProductListing").innerHTML = "";
        return;
    } else { 
		var lotno = document.getElementById("LotNo").value;
		//if (document.getElementById("Nside_0").checked == true)
			var Nside = "";//document.getElementById("Nside_0").value;
		//else
			var Nside = ""; // document.getElementById("Nside_1").value;
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("ProductListing").innerHTML = xmlhttp.responseText;
				document.getElementById("QtyPerBox").value=document.getElementById("totQty").value;
				if (document.getElementById("proddesc").value=="UGS-GW") {
					document.getElementById("UGS_Cable").style="Display:'table-row'";
					document.getElementById("Accessory").checked=true;
				}else{
					document.getElementById("Accessory").value="";
					document.getElementById("UGS_Cable").style.display="none";
					document.getElementById("Accessory").checked=false;
				}	
				$('#serachstringH').keyup(function()
				{
					searchTable($(this).val());
				});
            }
        }
        xmlhttp.open("GET","ProductListing_Ajax.php?proddesc="+str+"&lotno="+lotno+"&Nside="+Nside,true);
        xmlhttp.send();
    }
}
// Script for Photo Click starts here
	var desiredWidth;
	$(document).ready(function() {
        console.log('onReady');
		$("#takePictureField").on("change",gotPic);
		$("#yourimage").load(getSwatches);
		//desiredWidth = window.innerWidth;
		desiredWidth = "20px";
        
        if(!("url" in window) && ("webkitURL" in window)) {
            window.URL = window.webkitURL;   
        }
	});

	$(document).ready(function() {
        console.log('onReady');
		$("#takePictureField2").on("change",gotPic2);
		$("#yourimage2").load(getSwatches2);
		//desiredWidth = window.innerWidth;
		desiredWidth = "20px";
        
        if(!("url" in window) && ("webkitURL" in window)) {
            window.URL = window.webkitURL;   
        }
	});	

	// Total qty change on select/deselect of checkbox
	function updateQty(){
		$('input[name="varProdSno"]').change(function() {
			var total = $('input:checkbox:checked').length;
			if(document.getElementById("Accessory").checked==true)
				total=total-1;
			$('#QtyPerBox').val(total);
		});
	}	
// Total Qty change ends here

	function getSwatches(){
		var colorArr = createPalette($("#yourimage"), 5);
		for (var i = 0; i < Math.min(5, colorArr.length); i++) {
			$("#swatch"+i).css("background-color","rgb("+colorArr[i][0]+","+colorArr[i][1]+","+colorArr[i][2]+")");
			console.log($("#swatch"+i).css("background-color"));
		}
	}	
	
	function gotPic(event) {
        if(event.target.files.length == 1 && 
           event.target.files[0].type.indexOf("image/") == 0) {
            $("#yourimage").attr("src",URL.createObjectURL(event.target.files[0]));
        }
	}
	function getSwatches2(){
		var colorArr = createPalette($("#yourimage2"), 5);
		for (var i = 0; i < Math.min(5, colorArr.length); i++) {
			$("#swatch2"+i).css("background-color","rgb("+colorArr[i][0]+","+colorArr[i][1]+","+colorArr[i][2]+")");
			console.log($("#swatch2"+i).css("background-color"));
		}
	}	
	
	function gotPic2(event) {
        if(event.target.files.length == 1 && 
           event.target.files[0].type.indexOf("image/") == 0) {
            $("#yourimage2").attr("src",URL.createObjectURL(event.target.files[0]));
        }
	}
// Script for Photo Click Ends here	
function searchTable(inputVal)
{
	var table = $('#maintableH');
	table.find('tr').each(function(index, row)
	{
		var allCells = $(row).find('td');
		if(allCells.length > 0)
		{
			var found = false;
			allCells.each(function(index, td)
			{
				var regExp = new RegExp(inputVal, 'i');
				if(regExp.test($(td).text()))
				{
					found = true;
					return false;
				}
			});
			if(found == true)$(row).show();else $(row).hide();
		}
	});
}          
 </script>    



<?php
if (isset($_GET['RefNo'], $_GET['icNo'])) {
?>	
<div style="width: 98%; padding: 5px;" class="bordered" id="printinclude">
<?php 
if(!strpos($_GET['icNo'],'RMI')) {
	include 'packingList_print_include.php'; 
}
else {
	include 'packingList_Transmission_print_include.php'; 
}	
?>
</div>
<?php
}
?>