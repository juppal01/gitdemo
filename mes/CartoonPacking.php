<?php date_default_timezone_set('Asia/Kolkata');?>
	<input type=hidden id="sessionName" value="<?=$_SESSION['stage']?>">
	<table class="table-layout" id="getstage-table-addcards" style="width: 100%;">
		<tr>
			<td style="width: 15%;">Carton No.</td>
			<td style="width: 35%;"> 
			     <input type="text" maxlength="15" value="" name="CartoonNo" id="CartoonNo" placeholder="Cartoon No." style="width: 300px; height: 30px">
			</td>
			<td style="width: 15%;">Switch No.1</td>
			<td style="width: 35%;">
				<input type="text" name="switchno1" id="switchno1" size="15" placeholder="Switch No. 1" style="width: 300px; height: 30px"/>
			</td>			
		</tr>
		<tr>
			<td style="width: 15%;">Switch No. 2</td>
			<td style="width: 35%;"> 
			     <input type="text" name="switchno2" id="switchno2" size="15" placeholder="Switch No. 2" style="width: 300px; height: 30px"/>
			</td>			
			<td style="width: 15%;">Switch No. 3</td>
			<td style="width: 35%;">
				<input type="text" name="switchno3" id="switchno3" size="15"  placeholder="Switch No. 3" style="width: 300px; height: 30px"/>
			</td>			
		</tr>
		<tr>
			<td style="width: 15%;">Switch No. 4</td>
			<td style="width: 35%;">
				<input type="text" name="switchno4" id="switchno4" size="15" placeholder="Switch No. 4" style="width: 300px; height: 30px"/>
			</td>
			<td style="width: 15%;">Carton Weight</td>
			<td style="width: 35%;">
				<input type="text" name="weights" id="weights" size="15" placeholder="Weight" style="width: 300px; height: 30px"/>
			</td>
		</tr>
		<tr>			
			<td colspan=4 style="text-align: center;">
			    <button class="button" id="getstage-cartoon" name="getstage-cartoon" value="addcards" type="submit"> <strong>Submit</strong></button>
			</td>
		</tr>
	</table>
	<BR>
	<table class="table-layout" style="width: 98%px; table-layout: fixed;">
		<tr>
			<th style="width: 3%;">Sno.</th>
			<th style="width: 13%;">Carton No.</th>
			<th style="width: 13%;">Switch 1</th>
			<th style="width: 13%;">Switch 2</th>
			<th style="width: 13%;">Switch 3</th>
			<th style="width: 13%;">Switch 4</th>
			<th style='width: 10%;'>Weight  </th>
			<th style="width: 15%;">created on</th>
		</tr>
<?php 
		$myCon = mysqli_connect('localhost','root','','MES');
		$qry= "Select distinct cartoonno FROM mes_contpacking;";
		$result = $myCon->query($qry);
		$numrows= mysqli_num_rows($result);
		if ($numrows>0)
		{	$sno=0;
			while ($recSet = mysqli_fetch_assoc($result))
			{ 	$sno++;			?>
			   <tr <?=ColorRow()?>>
					<td><?=$sno?></td>
					<td><?=$recSet['cartoonno']?></td>
<?php 				$qry= "Select SwitchNo,cod,weight FROM mes_contpacking where cartoonno ='".$recSet['cartoonno']."';";
					$result2 = $myCon->query($qry);
					while ($recSet2 = mysqli_fetch_assoc($result2))
					{	?>
						<td><?=$recSet2['SwitchNo']?></td>	
<?php					$cod=$recSet2['cod'];$weight=$recSet2['weight'];
					}		?>
					<td><?=$weight ?></td>
					<td><?=$cod?></td>					
				</tr>
<?php			}
		}		?>
	</table>
		
