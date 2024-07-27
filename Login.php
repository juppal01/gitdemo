<?php 
// hidden input field and this if isset and $indexpage var
$indexpage	=	'index.php';
if (isset($_GET['qrystr'])) {
    $indexpage	=	'index.php?qrystr='.$_GET['qrystr'].'';
}

if (isset($_SESSION['username'])) {
    header('Location: '.$indexpage.'');
    exit();
}
?>
<html>
<head>
	<title>MES System</title>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="styleLogin.css" />
    <!-- Unicons -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
	<script src="js/jquery-3.2.0.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<style>
		.register td:first-child {
			font-weight: bold;
		} 
		#changepass-link:hover {
			cursor: pointer;
		}
		.star {
			visibility: hidden;
			color: red;
		}
	</style> 
</head>
<body>
<input type="hidden" name="qrystr" form="registration" value="<?php echo isset($_GET['qrystr']) ? '?qrystr='.$_GET['qrystr'].'' : NULL; ?>">
<div class="container">   
    <!-- Header -->
    <header class="header">
      <nav class="nav">
        <a href="login.php" class="nav_logo">Manufacturing Execution System</a>

        <ul class="nav_items">
          <li class="nav_item">
            <a href="#" class="nav_link">Home</a>
            <a href="#" class="nav_link">Product</a>
            <a href="#" class="nav_link">Services</a>
            <a href="contact.php" class="nav_link">Contact</a>
          </li>
        </ul>

        <button class="button" id="form-open">Login</button>
      </nav>
    </header>
    <!-- content -->
   <section class="home">
      <div class="form_container">
        <i class="uil uil-times form_close"></i>
        <!-- Login From -->
        <div class="form login_form">
   <form name="registration" id ="registration" method="post" action="<?php echo htmlspecialchars('registration.php');?>">
            <!--<fieldset style="border-radius:20px;"> -->
			<div class="input_box">
                <legend style="font-weight: bold;" id="loginlegend">Login:</legend>
                <table class="register" id="register">
                    <tr class="required-field input_box" hidden>
                        <td>Full Name<span class="star">*</span></td>
                        <td>
							<input type="text" name="ename" class="ename need-ip" id="ename" maxlength="100">
							<input type="hidden" class="need-ip" id="empid-hidden" name="empid" value="">
						</td>
                    </tr>
                    <tr hidden>
                        <td>Designation</td>
                        <td><input type="text" name="designation" class="designation" id="designation" maxlength="50"></td>
                    </tr>
                    <tr hidden>
                        <td>Department</td>
                        <td><input type="text" name="department" class="department" id="department" maxlength="50"></td>
                    </tr>
                    <tr hidden>
                        <td>Mobile No</td>
                        <td><input type="text" name="mobno" class="mobno" id="mobno" maxlength="10"></td>
                    </tr>
                    <tr class="required-field input_box" hidden>
                        <td>Email Address<span class="star">*</span></td>
                        <td><input type="email" name="email" class="email need-ip" id="email"  maxlength="120" placeholder="example@vnl.in"></td>
                    </tr>
                    <tr class="required-field input_box">
                        <td>Username<span class="star">*</span></td>
                        <td><input type="text" name="username" class="username need-ip" id="username" maxlength="20"></td>
                    </tr>
                    <tr class="required-field input_box">
                        <td>Password<span class="star">*</span></td>
                        <td><input type="password" name="pass" class="pass need-ip" id="pass" maxlength="20"></td>
                    </tr>
                    <tr class="required-field input_box" hidden>
                        <td>New Password<span class="star">*</span></td>
                        <td>
							<input type="password" name="newpass" class="newpass need-ip" id="newpass" maxlength="20">
							<img class="checkmark" src="" alt="" style="width: 12px; height: 12px; visibility: hidden">
						</td>
                    </tr>
					<tr class="required-field input_box" hidden>
                        <td>Reconfirm Password<span class="star">*</span></td>
                        <td>
							<input type="password" name="repass" class="repass need-ip" id="repass" maxlength="20">
							<img class="checkmark" src="" alt="" style="width: 12px; height: 12px; visibility: hidden">
						</td>
                    </tr>
					<tr class="required-field input_box" hidden>
                        <td>Reporting Manager<span class="star">*</span></td>
                        <td>
							<input type="text" class="reportingmanager need-ip" id="reportingmanager" maxlength="20">
							<input type="hidden" class="need-ip" id="reportingmanager-hidden" name="reportingmanager" value="">
						</td>
                    </tr>
                    <tr class="required-field" hidden>
                        <td>Reporting Head<span class="star">*</span></td>
                        <td>
							<input type="text" class="reportinghead need-ip" id="reportinghead" maxlength="20">
							<input type="hidden" class="need-ip" id="reportinghead-hidden" name="reportinghead" value="">
						</td>
                    </tr>
                    <tr hidden>
                        <td>Extension Number</td>
                        <td><input type="text" name="extensionno" class="extensionno" id="extensionno" maxlength="4"></td>
                    </tr>
                    <tr hidden>
                        <td>Floor</td>
						<td>
                        <select name="workfloor" class="workfloor" id="workfloor" style="width: 60px;">
                        <option value="-2">-2</option> <option value="-1">-1</option> <option value="0" selected>&nbsp;0</option> <option value="1">&nbsp;1</option>
                        <option value="2">&nbsp;2</option> <option value="3">&nbsp;3</option> <option value="4">&nbsp;4</option> <option value="5">&nbsp;5</option>
                        </select>
                        </td>
                    </tr>
                    <tr hidden>
                        <td>Location</td>
						<td>
                        <select name="locate" class="locate" id="locate" style="width: 60px;">
                            <option value="21-B, Sector 18, Udyog Vihar, Gurgaon">21-B</option> 
                            <option value="31/5, Sector 5, IMT-Manesar, Gurgaon" selected>31/5</option>
                            <option value="21-22, Udyog Vihar, Phase IV, Gurgaon">21-22</option>
                            <option value="others">other</option>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        
                        <td style="text-align: right; padding-top: 12px;" colspan="2">
							<div class="option_field">
								<span class="checkbox"><input type="checkbox" id="check" />
									<label for="check">Remember me</label>
								</span>
								<a href="#" class="forgot_pw">Forgot password?</a>
							</div>
							<button name="loginN" value="login" type="submit" id="loginN" class="button">Login</button>
							<!--<button id="registerme" value="reset" type="reset" class="button">Register</button> -->
							<div class="login_signup">Don't have an account? <a href="#" id="signup">Signup</a></div>
						</td>
                    </tr>
                    <tr hidden>
                        <td style="font-size: 12px; color: blue; padding-top: 12px; vertical-align: bottom;">(*) Required fields</td>
                        <td style="text-align: right; padding-top: 12px;">
							<button name="submit" value="submit" type="submit" id="submit" class="button">Submit</button>
						</td>
                    </tr>
                    <tr>
                        <td style="text-align: right; font-size: 12px; color: blue; padding-top: 12px;" colspan="2"><span id="changepass-link">Change Password</span></td>
                    </tr>
                    <tr hidden>
						<td style="font-size: 12px; color: blue; padding-top: 12px; vertical-align: bottom;">(*) Required fields</td>
                        <td style="text-align: right; padding-top: 12px;">
							<button  name="changepass" value="changepass" type="submit" id="changepass" class="button">Change</button>&nbsp;&nbsp;&nbsp;&nbsp;
						</td>
                    </tr>
                </table>
				</div>
            <!-- </fieldset> -->
			<p id="message" style="color: red; text-align: center;">
				<?php
					if (isset($_SESSION['message'])) {
						echo $_SESSION['message'];
						unset($_SESSION['message']);
					}
					else {
						echo NULL;
					}
				?>
			</p>
        </form>
    </div>
	</div>
    </section>
    <!-- footer -->
    <div class="footer"><strong style="line-height:2">Copyright&copy; <?php echo date("Y");?></strong></div>
</div>
<script src="js/loginpage.js"></script>
<script src="script/scriptLogin.js"></script>
</body>
</html>