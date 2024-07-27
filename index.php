<?php
session_start();
//echo ($_SESSION['stage']." stage");
	date_default_timezone_set('Asia/Kolkata');
	function ColorRow()
	{
		$_SESSION["row"]++;
		if (fmod($_SESSION["row"],2) <> 0 )
		{
	      $rowColor = "bgcolor = '#EFEFEF'";
//	      $rowColor = "bgcolor = '#dce9f9'";
		  return $rowColor;
		}
			return "";
	}	
	//$q = $_GET['q'];
	$recSet = array();
	if (!isset($_SESSION['username'])) {
		header('Location: login.php');
		exit();
	}
	if (isset($_GET['qrystr'])) {
		list($numeric, $alpha) = sscanf(hex2bin(base64_decode($_GET['qrystr'])), '%d%s');
	} 
include 'SideNavBar.php'; ?>
    <main class="main" style="padding-left: 10px; padding-top:100px;">
      
    </main>

    <script src="script/script.js"></script>
  </body>
</html>
