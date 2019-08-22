<?php 

	require_once("config.php");

	$sql = new Sql();
	$usuarios = $sql->select("SELECT * FROM hcode_php_tb_usuarios");

	echo json_encode($usuarios);


?>