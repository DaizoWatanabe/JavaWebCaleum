<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Contatos</title>
</head>
<style>
table,th,td {
	border: 1x solid black;
}
</style>
<body>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
	<c:import url="cabecalho.jsp" />
	
	<!-- não precisa mais criar dao, uma lógica foi criada para gerar a lista fora da camada view -->
	<!--  cria a DAO -->
	<!-- <jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/> -->
	
	<table border="1" style="border-collapse: collapse;">
		<tr>
			<th>Nome</th>
			<th>E-mail</th>
			<th>Endereço</th>
			<th>Data de Nascimento</th>
		</tr>
		<!--  percorre contatos montando linhas na tabela -->
		<c:forEach var="contato" items="${contatos}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'd4d0cb' : 'ffffff'}">
				<td>${contato.nome}</td>
				<td>
					<c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if>	
					
					<c:if test="${empty contato.email }">
						Email não informado
					</c:if>
				</td>
				<td>${contato.endereco}</td>
				<td>
					<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" />
				</td>
				<td>
					<a href="mvc?logica=AlterarContatoLogic&nome=${contato.nome}&email=${contato.email}&endereco=${contato.endereco}&dataNascimento=<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>&id=${contato.id}">Alterar</a>
				<td>
					<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>		
			</tr>
		</c:forEach>	
	</table>
	
	<form action="mvc">
		<input type="hidden" name="logica" value="AdicionarContatoFormLogic">
		<input type="submit" value="Adicionar contato">
	</form>
	
	<c:import url="rodape.jsp" />
</body>
</html>