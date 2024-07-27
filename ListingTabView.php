<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="stylesheet" type="text/css" href="css/tab-view2.css" />

</style>
</head>
<body>



<div class="Tabvw" id="Tabvw">


<!-- ***** Tabs ************************************************************ -->

<div class="Tabss" style="width: 1110px;">
  <a class="Current_">MainBoard</a>
  <a>MiniBoard</a>
  <a>Switch</a>
<!--  <a>Tab 3</a>-->
</div>


<!-- ***** Pages *********************************************************** -->

<div class="Pages_" style="width: 1108px; height: 590px;">
  <div class="Page_" style="display: block;"><div class="Pad_"><?php include('mainboardlisting.php') ?></div></div>
  <div class="Page_" style="display:  none;"><div class="Pad_"><?php include('miniboardlisting.php')?></div></div>
  <div class="Page_" style="display:  none;"><div class="Pad_"><?php include('SwitchListing.php') ?></div></div> 
</div>

</div>

<script type="text/javascript" src="js/tab-view2.js"></script>
<script type="text/javascript">
	Tabvw_initialize('Tabvw');
</script>

</body>
</html>