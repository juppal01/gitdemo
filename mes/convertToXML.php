<?php
// Assuming you have a MySQL connection
$servername = "your_server_name";
$username = "your_username";
$password = "your_password";
$dbname = "your_database_name";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to fetch data from MySQL
$sql = "SELECT * FROM your_table_name";
$result = $conn->query($sql);

// Create a SimpleXMLElement object
$xml = new SimpleXMLElement('<?xml version="1.0"?><records></records>');

// Check if the query was successful
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $recordElement = $xml->addChild('record');

        // Loop through the columns in the MySQL record
        foreach ($row as $key => $value) {
            $recordElement->addChild($key, $value);
        }
    }
}

// Save the XML to a file or output it
$xmlFileName = 'records.xml';
$xml->asXML($xmlFileName);

// If you want to output the XML directly, use the following line instead
// header('Content-Type: text/xml');
// echo $xml->asXML();

// Close the MySQL connection
$conn->close();
?>