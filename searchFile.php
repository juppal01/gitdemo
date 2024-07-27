<?php

function searchFileByDate($folder, $filename) {
    $files = [];
    
    // Recursive function to search for the file
    $iterator = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($folder));
    foreach ($iterator as $file) {
		//echo $file."<BR> \n";
        if ($file->isFile()) {
			$reslt = explode("_",basename($file));
			if ($reslt[0]=='EC2349000265'){
				$files[] = [
					'path' => $file->getPathname(),
					'modified' => $file->getMTime(),
				];
			}	
        }
    }
    
    // Sort the results by modification date in descending order
    usort($files, function ($a, $b) {
        return $b['modified'] - $a['modified'];
    });

    return $files;
}

function searchAndPrintLine($filePath, $searchWord) {
    // Check if the file exists
    if (!file_exists($filePath)) {
        die("File not found: $filePath");
    }

    // Read the file content
    $lines = file($filePath, FILE_IGNORE_NEW_LINES);

    // Search for the word in each line
    $found = false;
    foreach ($lines as $line) {
        if (strpos($line, $searchWord) !== false) {
            $found = true;
			$strt = strlen($searchWord)+2;
			$noc = strlen($line)-$strt-2;
			$ver=substr($line,$strt,$noc);
            echo "<BR> \n $searchWord: $ver" . PHP_EOL;
            break;
        }
    }

    if (!$found) {
        echo "The word $searchWord was not found in the file." . PHP_EOL;
    }
}

// Example usage
$filename = 'EC22330110*.txt';
$folder = "upload/testlogs/HP" ;
$searchWord = "Test Program Version:";

$results = searchFileByDate($folder, $filename);
//print_r($results);
// Display the sorted results
foreach ($results as $result) {
	//echo("in loop");
    echo "<BR> \n File: {$result['path']}, Modified Date: " . date('Y-m-d H:i:s', $result['modified']) . "<BR>\n";
	
	$filePath = str_replace ('\\', '/', $result['path']);
	$reslt = explode("_",basename($filePath));
	echo "<img src='images/$reslt[1].png' width='20px'> <BR> \n";
	echo ("<BR><a href='http://localhost/mes_system/$filePath'> <img src='images/$reslt[1]_file.png' width='30px' title= '".basename($filePath)."'></a>");
	break;
}
searchAndPrintLine($filePath, $searchWord);

// Read the content of the text file
//$fileContent = file_get_contents($filePath);

// Escape special characters to prevent SQL injection
//$fileContent = $conn->real_escape_string($fileContent);

// Insert the content into the MySQL table
// $sql = "INSERT INTO your_table (content) VALUES ('$fileContent')";

/* if ($conn->query($sql) === TRUE) {
    echo "File content inserted into the table successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Close the database connection
$conn->close();  */
?>

