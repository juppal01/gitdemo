<!DOCTYPE html>
<!-- YouTube or Website - CodingLab -->
<?php
if (session_status() === PHP_SESSION_NONE) 
	session_start();
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
?>	
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MES</title>
	<link rel="stylesheet" href="css/styleLogin.css" />
    <link rel="stylesheet" href="style.css" />
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
	<script src="js/jquery-3.2.0.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
  </head>
  <body>
    <nav class="sidebar">
      <a href="dashboard.php" class="logo"><img src="images/logo.png" style='width:90px; height:45px;' alt=""></a>

      <div class="menu-content">
        <ul id="tablist" class="tablist menu-items">
          <div class="menu-title"><B><u>Main Menu</u></b></div>

          <li class="item">
            <a href="javascript:void(0)" onclick="openStage('Planning','planning.php')">Planning</a>
          </li>

          <li class="item">
            <div class="submenu-item">
              <span>SMD-IN</span>
              <i class="fa-solid fa-chevron-right"></i>
            </div>

            <ul id="tablistSub1" class="menu-items submenu">
              <div class="menu-title">
                <i class="fa-solid fa-chevron-left"></i>
                SMD-IN
              </div>
              <li class="item">
                <a href="javascript:void(0)" onclick="openStage('smd-in','smt_in.php')">SMD-IN</a>
              </li>
			  <li class="item">
                <a href="javascript:void(0)" onclick="openStage('spi-b','smt_in.php')">SPI-B</a>
              </li>
              <li class="item">
                <a href="javascript:void(0)" onclick="openStage('pcb-b','smt_in.php')">PCB-B</a>
              </li>
			  <li class="item">
                <a href="javascript:void(0)" onclick="openStage('pcb-bo','smt_in.php')">PCB-BO</a>
              </li>
			  <li class="item">
                <a href="javascript:void(0)" onclick="openStage('aoi-b','CardOut.php')">AOI-B</a>
              </li>
	         <li class="item">
                <a href="javascript:void(0)" onclick="openStage('stu-b','CardINnOut_tabview.php')">STU-B</a>
              </li>

            </ul>
          </li>
          <li class="item">
            <div class="submenu-item">
              <span>SPI</span>
              <i class="fa-solid fa-chevron-right"></i>
            </div>

            <ul id="tablistSub2" class="menu-items submenu">
              <div class="menu-title">
                <i class="fa-solid fa-chevron-left"></i>
                SPI
              </div>
			  <li class="item">
                <a href="javascript:void(0)" onclick="openStage('spi','smt_in.php')">SPI</a>
              </li>
              <li class="item">
                <a href="javascript:void(0)" onclick="openStage('pcb','smt_in.php')">PCB</a>
              </li>
              <li class="item">
                <a href="javascript:void(0)" onclick="openStage('pcb-o','smt_in.php')">PCB-O</a>
              </li>
              <li class="item">
                <a href="javascript:void(0)" onclick="openStage('aoi','CardOut.php')">AOI</a>
              </li>
			  <li class="item">
                <a href="javascript:void(0)" onclick="openStage('stu','CardINnOut_tabview.php')">STU</a>
              </li>
			  <li class="item">
                <a href="javascript:void(0)" onclick="openStage('x-ray','smt_in.php')">X-RAY</a>
              </li>
              </ul>
          </li>

          <li class="item">
            <a href="javascript:void(0)" onclick="openStage('repair','CardINnOut_tabview.php')">Repair</a>
          </li>

        <!--  <li class="item">
            <a href="javascript:void(0)" onclick="openStage('quality','CardINnOut_tabview.php')">Quality</a>
          </li> -->
		  
		  <li class="item">
            <div class="submenu-item">
              <span>DIP-IN</span>
              <i class="fa-solid fa-chevron-right"></i>
            </div>

            <ul id="tablist" class="menu-items submenu">
              <div class="menu-title">
                <i class="fa-solid fa-chevron-left"></i>
                DIP-IN
              </div>
              <li class="item">
                <a href="javascript:void(0)" onclick="openStage('dip-in','smt_in.php')">DIP-IN</a>
              </li>
              <li class="item">
                <a href="javascript:void(0)" onclick="openStage('pcb-d','smt_in.php')">PCB-D</a>
              </li>
              <li class="item">
                <a href="javascript:void(0)" onclick="openStage('mtu-3','smt_in.php')">MTU-3</a>
              </li>
              <li class="item">
                <a href="javascript:void(0)" onclick="openStage('pt','CardINnOut_tabview.php')">PT</a>
              </li>
              <li class="item">
                <a href="javascript:void(0)" onclick="openStage('pt-repair','CardINnOut_tabview.php')">Repair</a>
              </li>
             </ul>
          </li>
		  <li class="item">
            <a href="javascript:void(0)" onclick="openStage('assembly','CardINnOut_tabview.php')">Assembly</a>
          </li>
		  <li class="item">
            <a href="javascript:void(0)" onclick="openStage('testing','CardINnOut_tabview.php')">Testing</a>
          </li>
		  <li class="item">
            <a href="javascript:void(0)" onclick="openStage('packing','Packing.php')">Packing</a>
          </li>
		  <li class="item">
            <a href="javascript:void(0)" onclick="openStage('pcbalisting','ListingTabView.php')">PCBA Listing</a>
          </li>
		  <li class="item">
            <a href="javascript:void(0)" onclick="openStage('reports','Reporting.php')">Reports</a>
          </li>
		  <li></li>
        </ul>
      </div>
    </nav>

    <nav class="navbar">
      <i class="fa-solid fa-bars" id="sidebar-close"></i>
	   Manufacturing Execution System
	  <span class="navbar_content" style="clear: right"><a href="logout.php">
        <img src="images/logout.png" alt="" style="float:right;width:35px;height:35px;object-fit:cover;" /></a>
      </span>
    </nav>
<?php 
	/* for admin show all stages */
	if ($_SESSION['stage'] == 'admin') {
		$_SESSION['adminstage'] = 'admin';
		$_SESSION['stage'] = 'planning';
	}
?>

<input type="hidden" id="stagerights" name="stagerights" value="<?php echo $_SESSION['stage']; ?>" data-admin="<?php echo isset($_SESSION['adminstage']) ? $_SESSION['adminstage'] : NULL; ?>">
<input type="hidden" id="numeric" name="numeric" value="<?php echo isset($_GET['qrystr']) ? $numeric : NULL; ?>">
<input type="hidden" id="alpha" name="alpha" value="<?php echo isset($_GET['qrystr']) ? $alpha : NULL; ?>">
    	<script src="js/tabmenu.js"></script>
	<script src="js/getstage.js"></script> <!--this script is required for card ajax and all other validations, so should be called  -->