<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="stylesheet" type="text/css" href="css/tab-view.css" />

</style>
</head>
<body>



<div class="TabView" id="TabView">


<!-- ***** Tabs ************************************************************ -->

<div class="Tabs" style="width: 1110px;">
  <a class="Current">Pre-Burnin</a>
  <a>Burnin</a>
  <a>Post Burnin</a>
<!--  <a>Tab 3</a>-->
</div>


<!-- ***** Pages *********************************************************** -->

<div class="Pages" style="width: 1107px; Max-height: 470px;">
  <div class="Page" style="display: block;"><div class="Pad"><?php include 'PTpreburnin.php' ?></div></div>
  <div class="Page" style="display:  none;"><div class="Pad"><h1>Burnin Page is deactivated</h1><?php //include 'smt_in.php' ?></div></div>
  <div class="Page" style="display:  none;"><div class="Pad"><h1>PostBurnin Page is deactivated</h1><?php //include 'preburnin.php' ?></div></div> 
</div>

</div>

<script type="text/javascript" src="js/tab-view.js"></script>
<script type="text/javascript">
tabview_initialize('TabView');
</script>

</body>
</html>
<?php include "productlisting_rpt.php"; ?>