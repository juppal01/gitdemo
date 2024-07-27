<?php
// Specify the relative path to your text file
$filePath = 'upload/testlogs/FT/20240105/FT/EC2349000265_RUNNING_Y_1_181932.txt';

// Check if the file exists
if (file_exists($filePath)) {
    // Read the content of the file into an array of lines
    $lines = file($filePath);

    // Print the first 5 words from the file
    $wordsToPrint = 5;
    $wordCount = 0;

    foreach ($lines as $line) {
        // Use preg_split to split the line into an array of words
        $words = preg_split('/\s+/', $line, -1, PREG_SPLIT_NO_EMPTY);

        // Iterate through the words in the line
        foreach ($words as $word) {
            // Print the word
            echo $word . ' ';

            // Increment the word count
            $wordCount++;

            // Check if the desired number of words have been printed
            if ($wordCount >= $wordsToPrint) {
                break 2; // Exit both foreach loops
            }
        }
    }

    // Output a line break after the words are printed
    echo PHP_EOL;
} else {
    // Handle the case when the file does not exist
    echo 'The file does not exist.' . PHP_EOL;
}
?>