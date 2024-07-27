<?php
if (session_status() === PHP_SESSION_NONE)
	session_start();
include 'SideNavBar.php' ;
$_SESSION['stage']="Planning";

?>
<link rel="stylesheet" type="text/css" href="css/tab-view.css" />
<link rel="stylesheet" type="text/css" href="css/pagelayout.css" />
<main class="main" style="padding-left: 10px; padding-top:70px; padding-right:20px; ">
<div class="TabView" id="TabView">


<!-- ***** Tabs ************************************************************ -->

<div class="Tabs" style="width: 100%;">
  <a class="Current">Box Pack</a>
  <a>Carton Pack</a>
  <a>Pallet Pack</a>
<!--  <a>Tab 3</a>-->
</div>


<!-- ***** Pages *********************************************************** -->

<div class="Pages" style="width: 100%; height: 600px;">
  <div class="Page" style="display: block;"><div class="Pad"><?php include('Boxin.php') ?></div></div>
  <div class="Page" style="display:  none;"><div class="Pad"><h1><?php include('CartonPack.php') ?></h1><?php //include 'smt_in.php' ?></div></div>
  <div class="Page" style="display:  none;"><div class="Pad"><?php include 'Pallet.php' ?></div></div> 
</div>

</div>
 </main>
<script type="text/javascript" src="js/tab-view.js"></script>
<script type="text/javascript">
	tabview_initialize('TabView');
</script>

</body>
</html>