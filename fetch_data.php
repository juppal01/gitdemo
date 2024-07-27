<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mes";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$project_code = $_GET['project_code'];
$start_date = $_GET['start_date'];
$end_date = $_GET['end_date'];

$sql = "CALL Dashboard_proc(?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sss", $project_code, $start_date, $end_date);
$stmt->execute();
$result = $stmt->get_result();

$data = [];
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

$stmt->close();
$conn->close();

echo json_encode($data);
?>