<?php 

	require_once("config.php");

/*
	// Select simples dos usuários
	$sql = new Sql();
	$usuarios = $sql->select("SELECT * FROM hcode_php_tb_usuarios");
	echo json_encode($usuarios);
*/

	// Select de um usuário
	$root = new Usuario();
	$root->loadById(3);
	echo $root; // O objeto vai chamar o método mágico que foi utilizado __toString

?>