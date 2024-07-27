<fieldset style="border-radius: 10px; width: 1080px; height: 560px;">
<?php
$_SESSION['stage']="smt";
date_default_timezone_set('Asia/Kolkata');?>
<legend style="font-weight: bold;"><?php echo ucfirst($_SESSION['stage']); ?>:</legend>
	<table class="table-layout" id="getstage-table-addcards" style="width: 1050px;">
		<tr>

			<td style="width: 18%;">&nbsp;<input type="text" maxlength="15" value="" id="sno" placeholder="S.No." style="width: 180px; height: 30px"><span class="star">*</span></td>
	
			<td style="width: 6%;">
				<input type="radio" class="batchstatus-radio" name="batchstatus" id="batchstatusIn" value="In" checked>In<br><BR>
				<span id='outHide'><input type="radio" class="batchstatus-radio" name="batchstatus" id="batchstatusOut" value="out">Out</span>
			</td>
			<td style="width: 27%;">In Time:&nbsp;&nbsp;&nbsp;&nbsp;<input type="datetime-local" value="<?php echo date("Y-m-d H:i:s");?>" id="intime" readonly><BR><BR>
			<span id='outHideTime'>Out Time:&nbsp;<input type="datetime-local" value="<?php echo date("Y-m-d H:i:s"); ?>" id="outtime" readonly></span></td>	<!-- display only -->		
			<td style="width: 8%;" valign="middle">&nbsp;
				<input type="radio" class="batchstatus-radio" name="cardstatus" value="Pass" checked>Pass<br><BR>&nbsp;
				<input type="radio" class="batchstatus-radio" name="cardstatus" value="Fail">Fail
			</td>
			<td style="width: 10%;"><textarea id="remarks" maxlength="300" rows="3" cols="30" style="resize: none;" placeholder="Remarks (if any)"></textarea></td>
			<td style="width: 14%; text-align: center;">
				<button class="button" id="getstage-addcards" name="getstage-addcards" value="addcards" type="submit"><strong>Add Cards</strong></button>
			</td>
		</tr>
	</table>
	<br>
	<div style="width: 1050px; max-height: 400px; overflow: auto; border: 1px solid #a6a6a6; border-radius: 5px;" id='getstage-contain' hidden>
	<table class="table-layout" id="getstage-table-ip" style="width: 1050px; table-layout: fixed;">
		<tr>
			<th hidden>MasterID</th>
			<th style="width: 3%;">Sno.</th>
			<th style="width: 23%;">Card Sno.</th>
			<th style="width: 15%;">Part No.</th>
			<th style="width: 14%;">Rev No.</th>
			<th style="width: 15%;">Prod No.</th>
			<th style="width: 23%;">Card Name</th>
			<th style="width: 7%;">Action</th>
		</tr>
		<tr id="inputrow">
			<td hidden></td>
			<td></td>
			<td><input type="text" size="28" maxlength="100" value=""><span class="star">*</span></td>
			<td><input type="text" size="15" maxlength="40" value="" readonly><span class="star">*</span></td>
			<td><input type="text" size="14" maxlength="20" value="" readonly><span class="star">*</span></td>
			<td><input type="text" size="15" maxlength="40" value="" readonly><span class="star">*</span></td>
			<td><input type="text" size="27" maxlength="100" value="" readonly><span class="star">*</span></td>
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
<script src="js/getstage.js"></script>

