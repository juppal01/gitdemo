<?php 
if (session_status() === PHP_SESSION_NONE)
	session_start();
include 'SideNavBar.php' ;
$_SESSION['stage']="Planning";
?>
<style>
table {
            border-collapse: collapse; /* Collapse borders into a single border */
        }
        th, td {
            border: 1px solid #a6a6a6; /* Add border to cells */
            padding: 10px 20px; /* Add padding inside cells */
        }

}  
</style>
<main class="main" style="padding-left: 10px; padding-top:70px; padding-right:20px; ">
<h1><?php echo ucfirst($_SESSION['stage']); ?></H1>
<form action="excel_upload.php" method="post" enctype="multipart/form-data" name="form1" id="form1">
	<table class="table-layout" id="getstage-table-planning" style="border:collapse; width: 100%;">
		<tr>
		  <td style="width:15%"><b>P.O. Number</b></td>
		  <td class="input_box" style="width:35%"><input type=text name='ponumber' id='ponumb' maxlength='200' style="width:400px; height: 40px" placeholder='P.O Number'>
		  <td style="width:15%"><b>Customer Name</b></td>
		  <td class="input_box" style="width:35%"><input type=text name='custname' id='custnam' maxlength='200' style="width:400px; height: 40px" placeholder='Customer Name'>
		</tr>
		<tr>
		  <td style="width:15%"><b>Product Name</b></td>
		  <td class="input_box" style="width:35%"><input type=text name='ProdName' id='prodnam' maxlength='200' style="width:400px; height: 40px" placeholder='Product Name'>
		  <td style="width:15%"><b>Quantity</b></td>
		  <td class="input_box" style="width:35%"><input type=text name='quantity' id='quant' maxlength='200'style="width:400px; height: 40px" placeholder='Quantity'>
		</tr>
		<tr>
			<td style="width:15%;"><b>Master S.No. File</b></td>
			<td ><input name="file" type="file" id="file" size="50"/></td>
			<td colspan=2> <label><b>Excel file Template: &nbsp;&nbsp;</label><a href="Template-SNoMasterFile.xlsx">S.No.MasterFile</a></b></td>
		</tr>
		<tr>
			<td colspan=4 style="text-align:center">
				<button class="button" type="submit" name="Submit" value="Upload" id="Submit"/>Upload</button>
			</td>
		</tr>
	</table>
</form>
<p>&nbsp;</p>
<?php include 'ProductListing_rpt.php';	?>
      
    </main>

    <script src="script.js"></script>
  </body>
</html>