<fieldset style="border-radius: 10px; width: 100%; height: 590px; padding-left: 10px">
<legend style="font-weight: bold;"><?php echo ucfirst($_SESSION['stage']); ?>:</legend>
	<table class="table-layout" id="getstage-table-addcards" style="width: 99%;">
		<tr>
			<td style="width: 27%;">Shipment No: <input type="text" maxlength="50" value="" id="toship" size=24 placeholder="Shipment No" style="width: 240px; height: 30px" ></td>
			<td style="width: 28%;">Pallet No:&nbsp;<input type="text" maxlength="50" value="" id="topallet" size=24 placeholder="Pallet No" style="width: 240px; height: 30px" ></td>
			<td style="width: 13%;">Quantity: &nbsp;<input type="text" maxlength="5" value="18" id="batchqty" placeholder="Quantity" style="width: 40px;"><span class="star">*</span></td>
			<td style="width: 25%;"><B>Time:&nbsp;<span id="currentDtTime"> </span></b></td>	<!-- display only -->			
			<td style="width: 12%; text-align: center;">
				<button class="0utton" id="getstage-addpallet" name="getstage-addpallet" value="addpallet" type="submit"><strong>Add Pallet</strong></button>
			</td>
		</tr>
	</table>
	<br>
	<div style="width: 99%; max-height: 400px; overflow: auto; border: 1px solid #a6a6a6; border-radius: 5px;" id='getstage-contain' hidden>
	<table class="table-layout" id="getstage-table-ip" style="width: 100%; table-layout: fixed;">
		<tr>
			<th hidden>MasterID</th>
			<th style="width: 3%;">Sno.</th>
			<th style="width: 23%;">Carton Sno.</th>
			<th style="width: 17%;">Switch 1</th>
			<th style="width: 17%;">Switch 2</th>
			<th style="width: 17%;">Switch 3</th>
			<th style="width: 16%;">switch 4</th>
			<th style="width: 7%;">Action</th>
		</tr>
		<tr id="inputrow">
			<td hidden></td>
			<td></td>
			<td><input type="text" size="25" maxlength="15" value=""><span class="star">*</span></td>
			<td><input type="text" size="17" maxlength="40" value="" readonly><span class="star">*</span></td>
			<td><input type="text" size="17" maxlength="20" value="" readonly><span class="star">*</span></td>
			<td><input type="text" size="17" maxlength="40" value="" readonly><span class="star">*</span></td>
			<td><input type="text" size="16" maxlength="100" value="" readonly><span class="star">*</span></td>
			<td style="text-align: center;">
				<img class="image-links" src="images/edit.png" alt="edit" style="margin-right: 5px;" hidden>
				<img class="image-links" src="images/bin.png" alt="remove" hidden>
				<img class="image-links" src="images/save.png" alt="save" style="margin-right: 5px;">
				<img class="image-links" src="images/undo.png" alt="undo">
			</td>
		</tr>
	</table>
	</div>
	<br>
	<div style="width: 1050px; text-align: right;" id='getstage-button-contain' hidden>
		<button class="button" id="getstage-submit" name="getstage-submit" value="submit" type="submit"><strong>Submit</strong></button>
		<?php
			if ($_SESSION['stage'] == 'quality') { ?>
			<button class="button" id="raiseNcr" value="http://10.104.203.36/ncr/index.php" type="button"><strong>Raise NCR</strong></button>
		<?php } ?>
		<span hidden><button class="button" id="getstage-reset" name="getstage-reset" value="reset" type="reset"><strong>Reset</strong></button></span>
	</div>
</fieldset>
	<script src="script/script.js"></script>
	<script src="js/getstage.js"></script> <!--this script is required for card ajax and all other validations, so should be called  -->
