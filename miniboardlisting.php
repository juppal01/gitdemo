<?php
error_reporting(E_ERROR | E_PARSE);
set_time_limit(0);			
include("Crawl_navbar.html")
?>

					<!-- HTML tags ---->		
<script>
$(document).ready(function() {
	$('#dTable1').DataTable( {
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

<table  id="dTable1" class="display" style="width:99%">
<thead>
	<TR>
		<th>SNo.</th>
		<th>Part Name</th>
		<th>Serial Number</th>
		<th>SMT IN</th>
		<th>SMT Out</th>
		<th>Quality IN</th>
		<th>Quality Out</th>
		<th>DIP-IN</th>
		<th>DIP-Out</th>		
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
		$qry= $qry= "Select * from miniboardlist";
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
					<td><?=$recSet["Assembly_out"];?></td>
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