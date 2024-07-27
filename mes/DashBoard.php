<?php
if (session_status() === PHP_SESSION_NONE) 
	session_start();

include 'SideNavBar.php'; 
echo('<main class="main" style="padding-left: 10px; padding-top:70px; padding-right:20px; ">');
date_default_timezone_set('Asia/Kolkata'); 
$link = mysqli_connect("localhost", "root", "", "MES");

if (!$link) {
	die("Connection failed: " . mysqli_connect_error());
}
?>

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
 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
        function fetchData() {
            var projectCode = $('#project_code').val();
            var startDate = $('#start_date').val();
            var endDate = $('#end_date').val();

            $.get('fetch_data.php', {
                project_code: projectCode,
                start_date: startDate,
                end_date: endDate
            }, function(data) {
                $('#dashboard').html(formatData(data));
				
            }, 'json')
        }

        function formatData(data) {
            var html = '<table border="1" class="table-layout"  style="width:99%"><tr><th>S.No.</th><th>Date</th><th>Stage</th><th>Modal Number</th><th>Total Quantity</th> <th>Cumulative Total</th></tr>';
			let sno=1;
            data.forEach(function(row) {
                html += '<tr>';
				html += '<td>' + sno + '</td>';
                html += '<td>' + row.date + '</td>';
                html += '<td>' + row.ModalNumber + '</td>';
                html += '<td>' + row.Stage + '</td>';
                html += '<td>' + row.total + '</td>';
				html += '<td>' + row.CumulativeTotal + '</td>';
                html += '</tr>';
				sno++;
            });
            html += '</table>';
            return html;
        }
		
		function setDefaultDates() {
            var today = new Date();
            var formattedDate = today.toISOString().split('T')[0];
            $('#start_date').val(formattedDate);
            $('#end_date').val(formattedDate);
        }
		
        $(document).ready(function() {
			 // Declare the chart variable outside the function to reuse it
			
			setDefaultDates();
            $('#filter_form').submit(function(e) {
                e.preventDefault();
                fetchData();
            });
			$('#filter_form').submit();
            setInterval(fetchData, 300000); // Fetch every 5 minutes (300000 ms)
        });
    </script>

<?php $qry = "SELECT distinct(ModalNumber) as ModNum FROM mes.mes_sno_master 
					where date_format(COD, '%Y-%m-%d') > '2024-05-30'";
		$result = mysqli_query($link, $qry);
				
?>					

    <h1>Production Dashboard</h1>
    <form id="filter_form">
	<table border="1" class="table-layout"  style="width:99%">
		<tr>
        <td>Project Code:</td>
		<td> <select id="project_code" name="project_code">
<?php		if (mysqli_num_rows($result) > 0) {		
				while ($recSet = mysqli_fetch_assoc($result)){
					$modNum = $recSet['ModNum'];		
					echo "<option value='".$modNum."'>".$modNum."</option>";
				}	
			}			?>				
        </select>
		</td>
        <td>Start Date:</td>
        <td><input type="date" id="start_date" name="start_date" required></td>
        <td>End Date:</td>
        <td><input type="date" id="end_date" name="end_date" required></td>
        <td><button class="button" type="submit">Filter</button></td>
		</tr>
	</table>
    </form>
    <div id="dashboard">	</div>
</main>
    <script src="script/script.js"></script>
	<script src="js/getstage.js"></script> <!--this script is required for card ajax and all other validations, so should be called  -->
 </body>