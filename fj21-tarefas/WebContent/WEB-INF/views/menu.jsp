<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link type="text/css" rel="stylesheet" href="resources/css/tarefas.css"/>
<title>Insert title here</title>
</head>
<body>
	<h2>Página Inicial da Lista de Tarefas</h2>
	<p>Bem Vindo, ${usuarioLogado.login}</p>
	<a href="listaTarefas">Clique aqui</a> para acessar a lista de tarefas
	<a href="logout">Sair do sistema</a>
</body>
</html>