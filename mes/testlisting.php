<?php
error_reporting(E_ERROR | E_PARSE);
set_time_limit(0);			
include("Crawl_navbar.html")
//include("_include/headerSlim.php");
?>

					<!-- HTML tags ---->
<!doctype html>
<html>
<head>
<meta charset="utf-8" /> 
<meta name="viewport"
      content="width=device-width, initial-scale=1.0" /> 
<meta http-equiv="X-UA-Compatible" content="ie=edge" /> 
<title>VNL-Automation-Crawling of MPN Description</title>
</head>
<style>
/* Center the loader */
#loader {
/*  position: absolute;*/
  position: -webkit-sticky;
  position: sticky;
  left: 50%;
  top: 50%;
  z-index: 10;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid blue;
  border-right: 16px solid green;
  border-bottom: 16px solid red;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Add animation to "page content" */
.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}

#myDiv {
  display: none;
  text-align: center;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css">					
<script>
$(document).ready(function() {
	$('#dTable').DataTable( {
		dom: 'Bfrtip',
		buttons: [
			'copyHtml5',
			'excelHtml5',
			'csvHtml5',
			'pdfHtml5'
		]
	} );
} );
</script>	
<BR><BR><P></P>

<table  id="dTable" class="display" style="width:99%">
<thead>
	<TR>
		<th>SNo.</th>
		<th>Part Name</th>
		<th>Serial Number</th>
		<th>SMT IN</th>
		<th>SMT Out</th>
		<th>Quality IN</th>
		<th>Quality Out</th>
		<th>MI IN</th>
		<th>MI Out</th>		
		<th>Switch_No</th>
		<th>MAC_ID</th>		
		<th>Assembly In</th>
		<th>Assembly Out</th>		
	</tr> 
</thead>
<tbody>	

<?php
	$url='localhost';
	$username='root';
	$password='';
	$conn=mysqli_connect($url,$username,$password,"MES");
	if(!$conn){
		die('Could not Connect My Sql:' .mysqli_error());
	}	
		$qry= $qry= "Select * from mainboardlist";
		$result = $conn->query($qry);
		$numrows=mysqli_num_rows($result);	
		if ($numrows>0)
		{   $sno=0;
			while ($recSet = mysqli_fetch_assoc($result)){		
				++$sno;					?>
				<tr>
					<td><?=$sno;?></td>
					<td><?=$recSet["Modal_Name"];?></td>
					<td><?=$recSet["SERIAL_NUMBER"];?></td>
					<td><?=$recSet["SMT_IN"];?></td>
					<td><?=$recSet["smt_out"];?></td>
					<td><?=$recSet["Quality_IN"];?></td>
					<td><?=$recSet["Quality_out"];?></td>
					<td><?=$recSet["MI_IN"];?></td>
					<td><?=$recSet["MI_Out"];?></td>
					<td><?=$recSet["SwitchNo"];?></td>
					<td><?=$recSet["MAC_ID"];?></td>
					<td><?=$recSet["Assembly_IN"];?></td>
					<td><?=$recSet["Assembly_Out"];?></td>
				</tr>
<?php		}	
		}			?>	
	</tbody>
	<tfoot>
	 <tr>
		<th >SNo.</th>
		<th >Part Name</th>
		<th >Serial Number</th>
		<th>SMT IN</th>
		<th>SMT Out</th>
		<th>Quality IN</th>
		<th>SNo.</th>		
		<th>SNo.</th>
		<th>MI Out</th>
		<th>Switch_No</th>
		<th>MAC_ID</th>		
		<th>Assembly IN</th>
		<th>Assembly Out</th>		
	</tr>
	</tfoot>	 
	</table>

	</body>