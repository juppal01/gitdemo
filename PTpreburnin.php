<?php date_default_timezone_set('Asia/Kolkata');
echo("<h1>". strtoupper($_SESSION['stage'])."</h1>"); ?>
<form action="PTlogUpload.php" method="post" enctype="multipart/form-data" name="form2" id="form2">
	<input type=hidden id="sessionName" value="<?=$_SESSION['stage']?>">
	<table class="table-layout" id="getstage-table-addcards" style="width: 100%;">
		<tr>
			<td style="width: 15%;">Product No</td>
			<td style="width: 35%;"> 
			     <input type="text" maxlength="50" value="" name="PTSno" id="PTSno" placeholder="Product No." style="width: 300px; height: 30px">
			</td>
			<td style="width: 15%;">Test Log</td>
			<td style="width: 35%;"><input type="hidden" name="testfile1" id="PT1Report" size="50"/>
			<input type="hidden" name="testfile2" id="PT2Report" size="50"/><span id='PT2reslt'></span></td>			
		</tr>
		<tr>
			<td style="width: 15%;">SW Version</td>
			<td style="width: 35%;"> 
			     <input type="text" maxlength="50" value="" size=20 name="swVersion" id="PT2Ver" placeholder="SW Version" style="height: 30px">
			</td>			
			<td style="width: 15%;">Result</td>
			<td style="width: 35%;">
				<input type="radio" class="batchstatus-radio" name="result" id="PASS" value="0">Pass  &nbsp;&nbsp;
				<input type="radio" class="batchstatus-radio" name="result" id="FAIL" value="1">Fail <BR>
				<span id="errorlist" style="display:none;">
					<b>errors:</b><BR>		
					 <input size=50 type="text" id="error-box" name="error-box" placeholder="error type" />
					<div id="suggesstion-box"></div>
				</span>
			</td>			
		</tr>
		<tr>
			<td colspan='2'>PT1 Report: <textarea rows=4 cols=65 id='PT1reportrslt' name='PT1reportrslt'></textarea> 
			<td colspan='2'>PT2 Report: <textarea rows=4 cols=65 id='PT2reportrslt' name='PT2reportrslt'></textarea> 
		</tr>
		<tr>
			<td colspan=4 style="text-align: center;">
			    <button class="button" id="getstage-preburnin" name="getstage-preburnin" value="addcards" type="button"> <strong>Submit</strong></button> 
			</td>
		</tr>
	</table>
</form>