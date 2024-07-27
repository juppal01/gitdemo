<?php 
if (session_status() === PHP_SESSION_NONE) 
	session_start();
		if (in_array($_SESSION['stage'], ['smd-in','spi-b','pcb-b','pcb-bo','spi','pcb','pcb-o','x-ray','dip-in','pcb-d','mtu-3',])){
			include 'SideNavBar.php'; 
			echo('<main class="main" style="padding-left: 10px; padding-top:70px; padding-right:20px; ">');
 	} 
date_default_timezone_set('Asia/Kolkata');
echo("<h1>". strtoupper($_SESSION['stage'])."</h1>"); ?>
<style>
table {
            border-collapse: collapse; /* Collapse borders into a single border */
			width:100%
        }
        th, td {
            border: 1px solid #7DDFFF;	/* Add border to cells */
            padding: 5px 10px; /* Add padding inside cells */
			vertical-align: middle;
        }

}  
</style>
	<input type=hidden id="sessionName" value="<?=$_SESSION['stage']?>">
	<table class="table-layout" id="getstage-table-addcards">
		<tr>
			<td style="width: 30%;">S.No. <input type="text" maxlength="50" value="" id="sno" placeholder="S.No." style="width: 300px; height: 40px"></td>
			<td style="width: 25%; align:'center'"><B>In Time:&nbsp;&nbsp;&nbsp; <span id="currentDateTime"></span></b>
			<!--<input type="datetime-local" value="<?php echo date("Y-m-d H:i:s");?>" id="intime" readonly>&nbsp;&nbsp;<img src="images/refresh.jpg" id="refrh" width='15px'/>--></td>	<!-- display only -->		
			<td style="width: 30%;">Remarks: <textarea id="remarks" maxlength="300" rows="3" cols="38" style="resize: none;" placeholder="Remarks (if any)"></textarea></td>
			<td style="width: 15%; text-align: center;">
				<button class="button" id="getstage-addcards" name="getstage-addcards" value="addcards" type="submit"><strong>Add Cards</strong></button>
			</td>
		</tr>
	</table>
	<br>
</fieldset>
<?php if ($_SESSION['stage'] == 'assembly'){	
		$qry = "Select SERIAL_NUMBER as SERIAL_NUMBER, b.PartName as ModalName, a.COD as COD, a.modt as MODt, 
						a.Emp_ID as Emp_ID 
					FROM mes_assembly a join mes_sno_master b on a.SERIAL_NUMBER = b.sno 
					where b.PONumber in('SI2AC7212002X','SI2AC7230006X','ZZZ0002222') order by a.modt desc,a.SERIAL_NUMBER Desc;";
		//echo($qry);
		$myCon = mysqli_connect('localhost','root','','MES');
		$result = $myCon->query($qry);
		$numrows= mysqli_num_rows($result);	?><BR>
<fieldset style="border-radius: 10px; width: 100%; height: 100%;">
	<table class="table-layout" style="width: 100%; table-layout: fixed;">
			<tr <?=ColorRow()?> >
				<th width='8%' class='sortable'>Sr#</th>
				<th width='17%' class='sortable'>Product SNo.</th>
				<th width='20%' class='sortable'>Modal Name</th>
				<th width='20%' class='sortable'>In Time</th>
				<th width='20%' class='sortable'>Out Time</th>		
				<th width='15%' class='sortable'>Tech ID</th>
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
						<td><?=$recSet['COD']?></td>
		<?php 	$outTime = "";
				$error = "";
				if ($recSet['MODt']!= $recSet['COD'])
					$outTime= $recSet['MODt'];
				if ($_SESSION['stage'] != 'assembly') {
					if ($recSet['ERROR_FLAG']!=""){ 
						$outTime =  $recSet['MODt'];
						$error = $recSet['ERROR_FLAG'];
					}
				} 		?>
					<td><?=$outTime?></td>
					<td><?=substr($recSet['Emp_ID'],0,16)?></td>          
				</tr>
	<?php	}	
		}
	echo("</table>");
		
	}?>
</fieldset>
<?php 
if (in_array($_SESSION['stage'], ['smd-in','spi-b', 'pcb-b','pcb-bo','spi','pcb','pcb-o','x-ray','dip-in','pcb-d','mtu-3'])){
	include "productlisting_rpt.php";
	?>
</main>

    <script src="script/script.js"></script>
	<script src="js/getstage.js"></script> <!--this script is required for card ajax and all other validations, so should be called  -->
<?php }?>	
  </body>
</html>



