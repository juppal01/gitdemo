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
			<tr>
				<td style="width: 24%;">S.No. <input type="text" maxlength="50" value="" id="outsno" placeholder="S.No." 
					style="width: 300px; height: 30px">
				</td>
				<td style="width: 18%; align:'center'"><B>Out Time: <span id="outcurrentDateTime"></span></b></td>
				<td style="width: 24%;"><b><u>Corrective Action Performed:</u><BR>
					<input type="checkbox" id = "errorcode1" name="errorcode" value="Touch up">Touch up <BR>
					<input type="checkbox" id = "errorcode2" name="errorcode" value="Placed missing component">Placed missing component <BR>
					<input type="checkbox" id = "errorcode3" name="errorcode" value="Replaced damaged component">Replaced damaged component <BR>
					<input type="checkbox" id = "errorcode4" name="errorcode" value="Changed faulty component">Changed faulty component <BR>
					<input type="checkbox" id = "errorcode5" name="errorcode" value="Other">Other
				</td>
				<td style="width: 20%; align:'center'">Remarks: 
					<textarea id="outremarks" maxlength="300" rows="4" cols="28" style="resize: none;" placeholder="Remarks (if any)"></textarea>
				</td>		
				<td style="width: 12%; text-align: center;">
					<button class="button" id="getstage-cardout" name="getstage-cardout" value="cardout" type="submit"> <strong>Card Out</strong></button>
				</td>
			</tr> 
	</table>
	<br>
<?php 
	if (in_array($_SESSION['stage'], ['aoi-b','aoi','repair','stu-b','stu','pt'])){ 
		include "productlisting_rpt.php";		?>
		</main>
		<script src="script/script.js"></script>
		<script src="js/getstage.js"></script> <!--this script is required for card ajax and all other validations, so should be called  -->
<?php }?>	
  </body>
</html>
