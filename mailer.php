<?php
	function sendMail($to, $cc, $subject, $body) {
		require_once "phpmailer/class.phpmailer.php";
		require_once "phpmailer/class.smtp.php";
		
		$body	   .=	'<br>Regards,<br>'.$_SESSION['ename'];
		$body	   .=	'<br>(This is a system generated mail, do not reply !)';

		$mail = new PHPMailer();
		$mail->IsSMTP();
		$mail->Mailer = 'smtp';
		$mail->SMTPAuth = true;
		//$mail->Host = 'smtp.office365.com';
		$mail->Host = 'vnl-in.mail.protection.outlook.com';
		//$mail->Port = 587;
		$mail->SMTPSecure = 'starter';
		$mail->Username = "agile@vnl.in";
		$mail->Password = "Jap97540";
		$mail->IsHTML(true);
		$mail->From = "agile@vnl.in";
		$mail->FromName = "MES SYSTEM";
		foreach ($to as $addmail) {
			$mail->addAddress($addmail);
		}
		foreach ($cc as $addmail) {
			$mail->addCC($addmail);
		}
		$mail->Subject = $subject;
		$mail->Body = $body;
		$mail->Send();
	}
?>