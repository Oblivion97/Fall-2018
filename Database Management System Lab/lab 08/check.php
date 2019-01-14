<?php  
 $uname=$_POST['name'];
 $password=$_POST['PASSWORD'];

 if (!empty($uname)&&!empty($password)) {
 	$host="localhost";
 	$username="root";
 	$password="";
 	$database="project";
 	try{
 		$con=new PDO("mysql:host=$host;dbname=$database",$username,$password);
 		$statment="SELECT * FROM users";
 		$returnobject=$con->query($statment);
 		$table=$returnobject->fetchall(PDO::FETCH_NUM);

 		$isvalid=false;
 		foreach ($table as $row) {
 				if ($row[0]==$uname && $row[1]==$password) {
 					$isvalid=true;
 					break;
 				}
 			}
 			if ($isvalid==true) {
 				echo("<script>window.location.assign('home.php')</script>");
 			}else{
 				echo("<script>window.location.assign('login.php?status=wrong data')</script>");
 			}
 	}catch(PDOException $ex){
 		echo("<script>window.location.assign('login.php?status=dberror')</script>");
 	}
 }else{
 	echo "<script>window.location.assign('login.php?status=invalid')</script>";
 }
?>