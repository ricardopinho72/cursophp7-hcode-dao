<?php 

	require_once("config.php");

/*
	// Select simples dos usuários
	$sql = new Sql();
	$usuarios = $sql->select("SELECT * FROM hcode_php_tb_usuarios");
	echo json_encode($usuarios);
*/


/*
	// Exibe um usuário
	$root = new Usuario();
	$root->loadById(3);
	echo $root; // O objeto vai chamar o método mágico que foi utilizado __toString
*/


/*
	// Exibe uma lista de usuários 
	// O método getLista foi configurado como estático, por isso ele não precisa ser instanciado.
	$lista = Usuario::getList();
	echo json_encode($lista);
*/


/*
	// Exibe uma lista de usuários buscando pelo login
	$busca = Usuario::search("m");
	echo json_encode($busca);
*/


/*
	// Exibe um usuário usando o login e a senha (autenticação)
	$usuario = new Usuario();
	$usuario->login("admin", "123456");
	echo $usuario;
*/


	// Inserir usuário
	$usuario = new Usuario();
	$usuario->setDeslogin("batista");
	$usuario->setDessenha("123456");
	$usuario->insert();
	echo $usuario;
?>