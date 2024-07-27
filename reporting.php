<?php
if (session_status() === PHP_SESSION_NONE)
	session_start();
include 'SideNavBar.php' ;
?>
<link rel="stylesheet" type="text/css" href="css/tab-view.css" />
<link rel="stylesheet" type="text/css" href="css/pagelayout.css" />
<main class="main" style="padding-left: 10px; padding-top:70px; padding-right:20px; ">
<style>	
/* Style the dropdown button */
    select {
        padding: 10px;
        font-size: 16px;
        width: 300px;
		border-radius: 8px;
    }
</style>
<fieldset style="border-radius: 10px; width: 1080px; height: 100px;">
<legend style="font-weight: bold;"><?php echo ucfirst($_SESSION['stage']); ?>:</legend>
	<table class="table-layout" id="getstage-table-reports" style="width: 100%;">
		<tr>
			<td style="height:85px; font-size:16px; text-align:center"><B>Please Select the Report</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<select id="rptDropdown">
				<option value='N/A'>Select the Report Type</option>
				<option value="poData">PO Data</option>
				<option value="productionData">Production Data</option>
				<option value="wipData">WIP Data</option>
				<option value="testResult">Test Result</option>
				<option value='testResultDetails'>Test Result Details</option>
				<option value="confirmData">Confirm Data</option>
				<option value="allReportData">All Test Reports</option>				
				<option value="repairData" disabled>Repair Data</option>
			</select>
			</td>
		</tr>
	</table>
</fieldset><BR>
<div id="content" style="height:480px; border-radius:10px; padding-left: 10px; padding-top:5px; width: 1110px; 
						border-radius: 	10px;box-sizing: border-box; -moz-box-sizing: border-box;-webkit-box-sizing: 
						border-box; border: 1px solid #ccc;overflow: auto;">
</div>
</main>	
	<script src="script/script.js"></script>
	<script src="js/getstage.js"></script> <!--this script is required for card ajax and all other validations, so should be called  -->
