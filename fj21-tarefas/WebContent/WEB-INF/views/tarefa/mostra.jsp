<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link type="text/css" rel="stylesheet" href="resources/css/tarefas.css"/>
	<link rel="stylesheet" href="resources/jquery-ui.css">
	<script src="resources/jquery-1.12.4.js"></script>
  	<script src="resources/jquery-ui.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" />
		
		Descrição:<br />
		<textarea rows="5" cols="100" name="descricao"><%--
			 --%>${tarefa.descricao}<%-- 
			 --%></textarea>
		<br />
		
		Finalizado? <input type="checkbox" name="finalizado" 
			value="true" ${tarefa.finalizado? 'checked' : '' }/> <br />
		
		Data de finalização: <br />
		<caelum:campoData id="dataFinalizacao" />
		<br />

		<input type="submit" value="Alterar" />	
				
	</form>
</body>
</html>