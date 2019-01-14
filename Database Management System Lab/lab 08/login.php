<!DOCTYPE html>
<html>
<head>
	<title>My sample webpage</title>
	<meta charset="utf-8">
</head>

<body>
<form method ="post" action="check.php">
	
	User Name:<input type ="text" id="uname" name="unmae"></br>
	Password:<input type ="password" id="password" name="password"></br>
	<input type="Submit" name="Log In">
</form>
	<?php 
		if (isset($_GET['status'])) {
			$status=$_GET['status'];
			if ($status=='invalid') {
				echo "<script>window.alert('invalid input.')</script>";
			}elseif ($status=='dberror') {
				echo "<script>window.alert('database connection error.')</script>";
			}elseif ($status=='wrongdata') {
				echo "<script>window.alert('wrong user name or password.')</script>";
			}	
		}
	 ?>
</body>
</html>