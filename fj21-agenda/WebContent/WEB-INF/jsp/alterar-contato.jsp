<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterar Contato</title>
</head>
<body>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
	<c:import url="cabecalho.jsp" />
	
	<h4>Para alterar digite os dados e aperte o botão:</h4> 
	
	<form action="mvc" contenteditable="true" >
		<input type="hidden" name="logica" value="AlteraContatoLogic">
		<label for="nome">Nome</label>
		<input value="${contato.nome}"  type="text" name="nome"/><br><br>
		<label for="email">E-mail</label>	
		<input value="${contato.email}" type="text" name="email"><br><br>	
		<label for="endereco">Endereço</label>
		<input value="${contato.endereco}" type="text" name="endereco"><br><br>	
		<label for="dataNascimento">Data de Nascimento</label>
		<input type="text" value='<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>' name="dataNascimento"><br><br>
		<input type="hidden" name="id" value="${contato.id}">	
		<input type="submit" value="Alterar">	
	</form>	
		
</body>
</html>