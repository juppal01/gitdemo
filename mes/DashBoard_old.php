
<?php
if (session_status() === PHP_SESSION_NONE) 
	session_start();

include 'SideNavBar.php'; 
echo('<main class="main" style="padding-left: 10px; padding-top:70px; padding-right:20px; ">');
date_default_timezone_set('Asia/Kolkata'); ?>
    <script type="text/javascript">
        // Function to refresh the page
        function autoRefresh() {
            window.location.reload();
        }

        // Set the interval to 5 minutes (300000 milliseconds)
        setInterval(autoRefresh, 300000); // 300000 ms = 5 minutes
    </script>
	
<style type="text/css">
table {
	box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;	
  font-size: 22px;
}
table tr {
    cursor: pointer;
}
table td {
 border: 1px solid #ccc;
 padding-left: 10px;
}	
table th {
 border: 1px solid #ccc;
}	

</style>
<?php

		$link = mysqli_connect("localhost", "root", "", "MES");
		if (!$link) {
			die("Connection failed: " . mysqli_connect_error());
		}
		$qry = "select * from dashboard_vw where date = '".date('Y-m-d')."' order by `S.No`, modalnumber";
//echo $qry;
		$result = $link->query($qry);
		// Check if the query was successful
		if ($result === false) {
			die("Error in SQL query: " . $link->error);
		}
		// Check if there are rows in the result set
		if ($result->num_rows > 0) {
			// Fetch the first row to get the field names as table headings
			$firstRow = $result->fetch_assoc();

			// Output table headings
			echo "<H2 style='text-align:center'>DASHBOARD</H2><BR>
			<table id='dTableR' class='table-layout'  style='width:99%'>
					<thead>
					<tr>";
			foreach ($firstRow as $heading => $value) {
				echo "<th>".strtoupper($heading)."</th>";
			}
			echo "</tr></thead><tbody>";

			// Rewind the result set to the beginning
			$result->data_seek(0);

			// Output data of each row
			$sno=1;
			while ($row = $result->fetch_assoc()) {
				echo "<tr>";
				echo"<td>$sno</td>";
				$sno++;
				// Skip the first column
				foreach (array_slice($row, 1) as $value) {
					echo "<td>$value</td>";
				}
				echo "</tr>";
			}
			
			echo "</tbody>";			
			echo "</table>";
		} else {
			echo "No records found";
		}

		// Close the database connection
		//$link->close();
?>
</main>