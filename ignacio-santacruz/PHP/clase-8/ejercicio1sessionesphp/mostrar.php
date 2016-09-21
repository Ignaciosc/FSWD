<?php 
session_start();

var_dump($_POST);
if (!isset($_SESSION["contador"])) {
	$_SESSION["contador"]=0;
}

if (isset($_POST["incrementar"])){
    $_SESSION["contador"]=$_SESSION["contador"]+1;
}
if (isset($_POST["reset"])){
    $_SESSION["contador"]=0;
}

 header("location: modificar.php");
exit;

 ?>
