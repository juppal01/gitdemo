<style type="text/css">
table {
	box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;	
}
table tr {
    cursor: pointer;
}
table td {
 border: 1px solid #ccc;
}	
fieldset
{
   width: 100%;
   
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
<script language="javascript">
	function displayDiv(var1)
	{
		if (document.getElementById(var1).style.display=="none")
		{	
			document.getElementById(var1).style.display='block';
		} else {
			document.getElementById(var1).style.display='none';
		}
	}
</script>
<?php
// this function will change the color of alternative rows to gray shade.
	$_SESSION["row"]=0;
	//$q = "153";
	//echo("Value of q: " .$q);
	$myCon = mysqli_connect('localhost','root','','MES');
	if (!$myCon) {
    	die('Could not connect: ' . mysqli_error($con));
	}
//$_SESSION['stage']='planning';
	//mysqli_select_db($con,"global_production");
/*	if ($_SESSION['stage']=='aoi'){
		$stge="aoi";
	}else{	*/
		$stge=$_SESSION['stage'];
	//}	?>	
<div style="padding-left: 10px; padding-top:5px; width: 100%; <?php if ($_SESSION['stage']=='aoi' || $_SESSION['stage']== 'mi'){ ?> height: 380px; <?php }else{ ?> height: 432px; <?php } ?> overflow: auto;  
						border-radius: 	10px;box-sizing: border-box; -moz-box-sizing: border-box;-webkit-box-sizing: 
						border-box; border: 1px solid #ccc;" id='getstage-productListing'" >
	<table <?php if ($_SESSION['stage'] == 'planning') { ?>
		style =	"border:1px solid #a6a6a6;
	border-radius: 5px;
	font-size: 16px;
	font-weight:bold;" <?php }else{ ?>
	class="bordered" <?php }?> width='100%'>
		<tbody>	
<?php if ($_SESSION['stage']=='Planning' || $_SESSION['stage']=='Admin'){
		$qry = "Select * FROM mes_planning where status = 'a'" ;
		$result = $myCon->query($qry);
		if (mysqli_num_rows($result)>0)
		{	$recSet = mysqli_fetch_assoc($result)	?>
			<tr>
				<td colspan=6 style="text-align:center;"><h3>Order Details</h3></td>
			</tr>	
			<tr style="line-height:40px;">
				<td width='12%' >P.O. Number</th>
				<td width='18%' ><?=$recSet['PONumber']?></td>
				<td>Customer Name</td>
				<td colspan='3'><?=$recSet['CustomerName']?></td>
			</tr>
			<tr style="line-height:40px;">
				<td width='12%' >Product Name</td>
				<td width='18%' ><?=$recSet['ProductName']?></td>
				<td width='15%' >Quantity</td>
				<td width='15%' ><?=$recSet['Quantity']?></td>
				<td width='10%' >In Time</td>
				<td width='30%' ><?=$recSet['COD']?></td>
			</tr>
<?php	}
	 }else{	
		if ($stge == 'aoi-b'){
			$tablename = "mes_pcb-bo";
		} else if ($stge == 'aoi') {	
			$tablename = "mes_pcb-o";
		} else {	
			$tablename = "mes_".$stge;
		}	
		$qry = "Select a.*, b.PartName as ModalName FROM `$tablename` a 
				 join `mes_sno_master` b on a.SERIAL_NUMBER = b.sno where b.PONumber in ('SI2AC7212002X','SI2AC7230006X','ZZZ0002222') 
					order by a.cod Desc,a.SERIAL_NUMBER limit 0,100;";		
					
		/* $qry = "Select a.*, b.PartName as ModalName FROM mes_smt a 
				 join mes_sno_master b on a.SERIAL_NUMBER = b.sno 
					order by a.cod Desc,a.SERIAL_NUMBER limit 0,80;"; */
		//echo($qry);
		$result = $myCon->query($qry);
		$numrows= mysqli_num_rows($result);
		//echo($qry);?>
			<tr <?=ColorRow()?> >
				<th width='2%' class='sortable'>Sr#</th>
				<th width='15%' class='sortable'>Product SNo.</th>
				<th width='15%' class='sortable'>Model Name</th>
<?php //		if ($_SESSION['stage']=='dip-in'){		?>
				<th width='14%' class='sortable'>MacID</th>  <?php// }	?>
				<th width='30%' class='sortable'>Time</th>
				<th width='11%' class='sortable'>error</th>			
				<th width='13%' class='sortable'>Tech ID</th>
			</tr>
	<?php 
		if ($numrows>0)
		{	$sno=0;
			while ($recSet = mysqli_fetch_assoc($result))
			{ 	$sno++;			?>
			   <tr <?=ColorRow()?>>
					<td class='center'><?=$sno?></td>
						<td><?=$recSet['SERIAL_NUMBER']?></td>    
						<td><?=$recSet['ModalName']?></td>	
<?php// 				if ($_SESSION['stage']=='dip-in'){		?>
						<td><?=$recSet['MacID']?></td>		
<?php	// 			}	?>
						<td><?=$recSet['COD']?></td>
		<?php 	$outTime = "";
				$error = "0";
				if ($recSet['MODt']!= $recSet['COD'])
					$outTime= $recSet['MODt'];
				if ($_SESSION['stage'] != 'assembly') {
					if (trim($recSet['ERROR_FLAG'])!=""){ 
						$outTime =  $recSet['MODt'];
						$error = $recSet['ERROR_FLAG'];
					}
				} 		?>
<!--					<td><?=$outTime?></td>		-->
					<td><?=$error ?></td>
					<td><?=substr($recSet['Emp_ID'],0,16)?></td>          
				</tr>
	<?php	}	
		}	?>

<?php
	}?>		 
	</tbody>
	</div>
 </table>
