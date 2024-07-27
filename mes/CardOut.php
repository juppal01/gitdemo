<?php
if (session_status() === PHP_SESSION_NONE) 
	session_start();
		if ($_SESSION['stage']=='aoi-b' || $_SESSION['stage']=='aoi' || $_SESSION['stage']=='pt'){
			include 'SideNavBar.php'; ?>
			<main class="main" style="padding-left: 10px; padding-top:70px;padding-right:20px;">
<?php 	} ?>
<style>
table {
            border-collapse: collapse; /* Collapse borders into a single border */
			width:100%
        }
        th, td {
            border: 1px solid #7DDFFF; /* Add border to cells */
            padding: 5px 10px; /* Add padding inside cells */
			vertical-align: middle;
        }

}  
</style>
<h1><?php echo strtoupper($_SESSION['stage']); ?></h1>
	<table class="table-layout" id="getstage-table-addcards" >
	<input type="hidden" name="sessionName" value="<?=$_SESSION['stage']?>">
<?php 	if (trim($_SESSION['stage']) == 'dip-in'){			?>
			<tr>
				<td style="width: 19%;">Card S.No.<input type="text" maxlength="50" value="" id="outsno" placeholder="S.No." style="width: 300px; height: 40px"></td>
				<td style="width: 19%;">Mac ID<input type="text" maxlength="15" value="" id="macid" placeholder="mac no." style="width: 150px; height: 30px"></td>				
<!--				<td style="width: 25%; align:'center'"><B>&nbsp;&nbsp;Out Time:&nbsp;&nbsp; <span id="outcurrentDateTime"></span></b></td> -->
				<td style="width: 23%;" >&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" class="batchstatus-radio"   name="cardstatus_out" value="0" >Pass  &nbsp;&nbsp;
					<input type="radio" class="batchstatus-radio" name="cardstatus_out" value="1">Fail
					<span id="errorlist" style="display:none;">
					<b>errors:</b><BR>		
					<select name="errors" id="errors" multiple>
						<option value='Missing'>Missing</option>
						<option value='Wrong Value'>Wrong Value</option>
						<option value='Wrong Polarity'>Wrong Polarity</option>
						<option value='Wrong Component'>Wrong Component</option>
						<option value='Bridging'>Bridging</option>
						<option value='Damage'>Damage</option>
						<option value='Shift'>Shift</option>
						<option value='Pin Hole'>Pin Hole</option>
						<option value='Tilted / Lifted'>Tilted / Lifted</option>
						<option value='Solder : Not / Less / Excess'>Solder : Not / Less / Excess</option>
						<option value='Extra Component'>Extra Component</option>
						<option value='Dry Solder'>Dry Solder</option>
						<option value='Solder Ball'>Solder Ball</option>
						<option value='Solder Splash'>Solder Splash</option>
						<option value='PTH Not Filled'>PTH Not Filled</option>
						<option value='Others'>Others</option>
					</select>
					</span>
				</td>			
				<td style="width: 20%; align:'center'"><textarea id="outremarks" maxlength="200" rows="3" cols="28" style="resize: none;" placeholder="Remarks (if any)"></textarea></td>
				<!-- name="getstage-cardout" -->
				<td style="width: 25%; text-align: center;">
					<button class="button" id="getstage-cardout"  value="cardout" type="submit"><strong>Card Out</strong></button><BR><B>&nbsp;&nbsp;<span id="outcurrentDateTime"></span></b>
				</td>
			</tr>
			
<?php		} else {				?>
			<tr>
				<td style="width: 24%;">S.No. <input type="text" maxlength="50" value="" id="outsno" placeholder="S.No." style="width: 300px; height: 30px"></td>
				<td style="width: 18%; align:'center'"><B>Out Time: <span id="outcurrentDateTime"></span></b>
<?php if (trim($_SESSION['stage']) != 'repair'){							?>
				<td style="width: 12%; text-align:center;" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" class="batchstatus-radio" name="cardstatus_out" id="card1" value="0">Pass  &nbsp;&nbsp;
				<input type="radio" class="batchstatus-radio" name="cardstatus_out" id="card2" value="1">Fail<BR>
<?php		if ($_SESSION['stage']=='aoi' || $_SESSION['stage']=='aoi-b'){		?>
				<span id="errorlist" style="display:none;">
				<b>errors:</b><BR>		
				<select name="errors" id="errors" multiple>
					<option value='Missing'>Missing</option>
					<option value='Wrong Value'>Wrong Value</option>
					<option value='Wrong Polarity'>Wrong Polarity</option>
					<option value='Wrong Component'>Wrong Component</option>
					<option value='Bridging'>Bridging</option>
					<option value='Damage'>Damage</option>
					<option value='Shift'>Shift</option>
					<option value='Up Side Down'>Up Side Down</option>
					<option value='Tilted / Lifted'>Tilted / Lifted</option>
					<option value='Solder : Not / Less / Excess'>Solder : Not / Less / Excess</option>
					<option value='Extra Component'>Extra Component</option>
					<option value='Dry Solder'>Dry Solder</option>
					<option value='Solder Ball'>Solder Ball</option>
					<option value='Bill Board'>Bill Board</option>
					<option value='Tomb Stone'>Tomb Stone</option>
					<option value='OCV / OCR '>OCV / OCR </option>
					<option value='PCB Finishing/Masking'>PCB Finishing/Masking</option>
					<option value='Warpage'>Warpage</option>
					<option value='Track Damage'>Track Damage</option>
					<option value='Copper Expose'>Copper Expose</option>
					<option value='Burr at RIB Edges'>Burr at RIB Edges</option>
					<option value='Others'>Others</option>
				</select>
				</span>
<!--			</td> -->
<?php	}			?>			
					
				</td>	
<?php	}			?>				
<?php	if (ucwords($_SESSION['stage'])=='REPAIR' || $_SESSION['stage']=='repair'){		?>
			<td style="width: 24%;"><b><u>Corrective Action Performed:</u><BR>
				<input type="checkbox" id = "errorcode1" name="errorcode" value="Touch up">Touch up <BR>
				<input type="checkbox" id = "errorcode2" name="errorcode" value="Placed missing component">Placed missing component <BR>
				<input type="checkbox" id = "errorcode3" name="errorcode" value="Replaced damaged component">Replaced damaged component <BR>
				<input type="checkbox" id = "errorcode4" name="errorcode" value="Changed faulty component">Changed faulty component <BR>
				<input type="checkbox" id = "errorcode5" name="errorcode" value="Other">Other</td>
<?php	} 		?>
				<td style="width: 20%; align:'center'">Remarks: <textarea id="outremarks" maxlength="300" rows="4" cols="28" style="resize: none;" placeholder="Remarks (if any)"></textarea></td>
				
				<td style="width: 12%; text-align: center;">
					<button class="button" id="getstage-cardout" name="getstage-cardout" value="cardout" type="submit"><strong>Card Out</strong></button>
				</td>
			</tr> 
<?php	} 		?>		
	</table>
	<br>

</fieldset>
<?php if ($_SESSION['stage'] == 'assembly'){	
		$qry = "Select SERIAL_NUMBER as SERIAL_NUMBER, b.PartName as ModalName, a.COD as COD, a.modt as MODt, 
						a.Emp_ID as Emp_ID,(Select count(*) from mes_assembly where mes_assembly.MainBoard is not null 
						or trim(mes_assembly.MainBoard)<>'') as TotalRecord
					FROM mes_assembly a join mes_sno_master b on a.SERIAL_NUMBER = b.sno 
					order by a.modt desc, a.SERIAL_NUMBER Desc limit 5;";
		//echo($qry);
		$myCon = mysqli_connect('localhost','root','','MES');
		$result = $myCon->query($qry);
		$numrows= mysqli_num_rows($result);	?><BR>
<fieldset style="border-radius: 10px; width: 1075px; height: 410px;">

	<table class="table-layout" style="width: 100%; table-layout: fixed;">
			<tr <?=ColorRow()?> >
				<th width='2%' class='sortable'>Sr#</th>
				<th width='17%' class='sortable'>Product SNo.</th>
				<th width='20%' class='sortable'>Modal Name</th>
				<th width='20%' class='sortable'>In Time</th>
				<th width='20%' class='sortable'>Out Time</th>		
				<th width='15%' class='sortable'>Tech ID</th>
			</tr>
	<?php
		if ($numrows>0)
		{	$sno=0;$totalRecord=0;
			while ($recSet = mysqli_fetch_assoc($result))
			{ 	$sno++;	
				$totalRecord=$recSet['TotalRecord'];?>
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
	echo('<legend style="font-weight: bold;">Total Assembled <?=$totalRecord; ?>:</legend>');
	}?>
	
</fieldset>
<?php 



 if (in_array($_SESSION['stage'], ['aoi-b','aoi','repair','stu-b','stu','pt'])){ 
		include "productlisting_rpt.php";		?>
</main>

    <script src="script/script.js"></script>
	<script src="js/getstage.js"></script> <!--this script is required for card ajax and all other validations, so should be called  -->
<?php }?>	
  </body>
</html>
