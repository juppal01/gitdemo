<fieldset style="border-radius: 10px; width: 1060px; height: 560px;">
<!--<legend style="font-weight: bold;"><?php echo ucfirst($_SESSION['stage']); ?>:</legend>-->
	<table class="table-layout" id="getstage-tbCarton-addcards" style="width: 98%;">
		<tr>
			<td style="width: 40%;">Carton No:&nbsp;<input type="text" maxlength="30" value="" id="tocarton" size=24 placeholder="Carton No" style="width: 240px; height: 30px" ></td>
			<td style="width: 18%;">Quantity: &nbsp;<input type="text" maxlength="10" value="10" id="cartonqty" placeholder="Quantity" style="width: 80px;"><span class="star">*</span></td>
			<td style="width: 27%;"><B>Time:&nbsp;&nbsp;<span id="currentDtTime"> </span></b></td>	<!-- display only -->			
			<td style="width: 15%; text-align: center;">
				<button class="button" id="getstage-addcarton" name="getstage-addpallet" value="addcarton" type="submit"><strong>Add Carton</strong></button>
			</td>
		</tr>
	</table>
	<br>
	<div style="width: 1050px; max-height: 400px; overflow: auto; border: 1px solid #a6a6a6; border-radius: 5px;" id='getstage-contain1' hidden>
	<table class="table-layout" id="getstage-table-ip1" style="width: 1050px; table-layout: fixed;">
		<tr>
			<th hidden>MasterCartID</th>
			<th style="width: 5%;">Sno.</th>
			<th style="width: 35%;">Product Sno.</th>
			<th style="width: 25%;">MacID</th>
			<th style="width: 25%;">Boxed on</th>
			<th style="width: 10%;">Action</th>
		</tr>
		<tr id="inputrowCarton">
			<td hidden></td>
			<td></td>
			<td><input type="text" size="25" maxlength="30" value=""><span class="star">*</span></td>
			<td><input type="text" size="17" maxlength="40" value="" readonly><span class="star">*</span></td>
			<td><input type="text" size="17" maxlength="20" value="" readonly><span class="star">*</span></td>
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
	<div style="width: 1050px; text-align: right;" id='getstage-button-contain1' hidden>
		<button class="button" id="getstage-submit1" name="getstage-submit1" value="submit" type="submit"><strong>Submit</strong></button>
		<?php
			if ($_SESSION['stage'] == 'quality') { ?>
			<button class="button" id="raiseNcr" value="http://10.104.203.36/ncr/index.php" type="button"><strong>Raise NCR</strong></button>
		<?php } ?>
		<span hidden><button class="button" id="getstage-resetCarton" name="getstage-resetCarton" value="reset" type="reset"><strong>Reset</strong></button></span>
	</div>
</fieldset>
