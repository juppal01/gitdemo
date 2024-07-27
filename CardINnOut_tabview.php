<?php 
	session_start();
	  include 'SideNavBar.php'; ?>
    <main class="main" style="padding-left: 10px; padding-top:70px;padding-right:20px;">
  <style>
    /* Style for tabs */
    .tab {
      display: none;
    }

    /* Style for active tab */
    .active {
      display: block;
    }

    /* Style for tab buttons */
    .tab-button {
      cursor: pointer;
      padding: 10px 15px;
      border: 1px solid #ccc;
      background-color: #f1f1f1;
	  //background: url('tab-view.png')  repeat-x 0px -72px;
      color: #333;
      display: inline-block;
    }

    /* Style for active tab button */
    .active-button {
      background-color: #b9c3dd;
    }
  </style>



<!-- Tab buttons -->
<div class="tab-buttons ">
<?php if ($_SESSION['stage']!= 'aoi') {		?>
			<div class="tab-button active-button" onclick="openTab('inTab')">
<?php			if ($_SESSION['stage'] == 'assembly' || $_SESSION['stage'] == 'testing' )
				{ 	echo ("Prod. In"); 
				} else {
					echo("Card In");	
				}?>
			</div>
<?php } ?>	
<?php if (trim($_SESSION['stage']) != 'smt' ) {			?>
			<div class="tab-button <?php if ($_SESSION['stage'] == 'aoi') {echo('active-button');}?>" onclick="openTab('outTab')" >
<?php			if ($_SESSION['stage'] == 'assembly' || $_SESSION['stage'] == 'testing' )
				{ 	echo ("Prod. Out"); 
				} else {
					echo("Card Out");	
				}?>
			</div>
<?php }?>		
</div>

<!-- Tab content -->
<div id="inTab" class="tab <?php if ($_SESSION['stage'] != 'aoi') {echo('active');}?>">
  <?php 
	if ($_SESSION['stage']!= 'aoi'){
		include 'smt_in.php'; }?>
</div>

<div id="outTab" class="tab <?php if ($_SESSION['stage'] == 'aoi') {echo('active');}?>">
  <?php 
	 if ($_SESSION['stage']!= 'smt-b' && $_SESSION['stage']!='assembly' && $_SESSION['stage']!='testing' && $_SESSION['stage']!='pt') {
		include 'CardOut.php'; 
	 } else if ($_SESSION['stage']=='assembly'){
		include 'SwitchAssembly.php';
	 } else if ($_SESSION['stage']=='testing'){
		include 'testingTabView.php';
	 } else if ($_SESSION['stage']=='pt'){	
		include 'ptTestingTabView.php';
	 } else if ($_SESSION['stage']=='pt-repair'){	
		include 'pt_repair.php';		
	 }		?>	
</div>

<script>
  // Function to switch between tabs
  function openTab(tabName) {
    // Hide all tabs
    var tabs = document.getElementsByClassName('tab');
    for (var i = 0; i < tabs.length; i++) {
      tabs[i].classList.remove('active');
    }

    // Deactivate all tab buttons
    var tabButtons = document.getElementsByClassName('tab-button');
    for (var i = 0; i < tabButtons.length; i++) {
      tabButtons[i].classList.remove('active-button');
    }

    // Show the selected tab
    document.getElementById(tabName).classList.add('active');

    // Activate the selected tab button
    event.currentTarget.classList.add('active-button');
  }
</script>
</main>

    <script src="script/script.js"></script>
	<script src="js/getstage.js"></script> <!--this script is required for card ajax and all other validations, so should be called  -->
  </body>
</html>
