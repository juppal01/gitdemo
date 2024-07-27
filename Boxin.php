<fieldset style="border-radius: 10px; width: 1075px; height: 100px;">
<?php
//$_SESSION['stage']="smt";
date_default_timezone_set('Asia/Kolkata');?>
<legend style="font-weight: bold;"><?php echo ucfirst($_SESSION['stage']); ?>:</legend>
	<input type=hidden id="sessionName" value="<?=$_SESSION['stage']?>">
	<table class="table-layout" id="getstage-table-switch" style="width: 1050px;">
		<tr>
			<td style="width: 17%;">&nbsp;<input type="text" maxlength="15" value="" id="boxsno" placeholder="S.No." size=18 style="height: 30px"></td>
			<td style="width: 15%; align:'center'">&nbsp;<input type="text" maxlength="15" value="" id="mainboard" placeholder="Main Board" size=18 style="height: 30px" readonly></td>
			<td style="width: 15%; align:'center'">&nbsp;<input type="text" maxlength="15" value="" id="macid" placeholder="MAC ID" size=18 style="height: 30px" readonly></td>
<!--		<td style="width: 17%; align:'center'">&nbsp;<input type="text" maxlength="15" value="" id="miniboard" placeholder="Mini Board" size=18 style="height: 30px" readonly><input type="hidden" value="" id="smpsno"> </td>  -->
			<td style="width: 17%; align:'center'">Weight: <input type="text" maxlength="15" value="" id="weight" placeholder="Weight" size=12 style="height: 30px" >
			<td style="width: 15%; text-align: center;">
				<button class="button" id="getstage-switch" name="getstage-switch" value="switch" type="submit"><strong>Pack Product</strong></button>
			</td>
		</tr>
	</table>
	<br>
</fieldset>
<BR>
<fieldset style="border-radius: 10px; width: 98%; height: 425px;">
	<table class="table-layout" style="width: 98%px; table-layout: fixed;">
		<tr>
			<th style="width: 3%;">Sno.</th>
			<th style="width: 13%;">Product No.</th>
			<th style="width: 13%;">Main Board</th>
			<th style="width: 13%;">Mac ID</th>
<!--			<th style="width: 13%;">Mini Board</th>
			<th style="width: 13%;">SMPS No</th> -->
			<th style="width: 10%;">Weight</th>
			<th style="width: 15%;">created on</th>
		</tr>
<?php 
		$myCon = mysqli_connect('localhost','root','','mes');
		$qry= "Select a.Serial_Number,a.MainBoard,a.MacID,a.weight,a.MODT FROM mes_boxpack a left join mes_sno_master b  on a.SERIAL_NUMBER = b.SNo where b.PONumber in ('SI2AC7212002X','SI2AC7230006X','ZZZ0002222')order by a.modt desc ;";
		$result = $myCon->query($qry);
		$numrows= mysqli_num_rows($result);
		if ($numrows>0)
		{	$sno=0;
			while ($recSet = mysqli_fetch_assoc($result))
			{ 	$sno++;			?>
			   <tr <?=ColorRow()?>>
					<td><?=$sno?></td>
					<td><?=$recSet['Serial_Number']?></td>
					<td><?=$recSet['MainBoard']?></td>
					<td><?=$recSet['MacID']?></td>
<!--				<td><?=$recSet['MiniBoard']?></td>
					<td><?=$recSet['SMPSNo']?></td>		-->
					<td><?=$recSet['weight']?></td>
					<td><?=$recSet['MODT']?></td>					
				</tr>
<?php			}
		}		?>
	</table>	
</fieldset>


