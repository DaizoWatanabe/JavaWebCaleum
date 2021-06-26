<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	

	<%-- comentário em JSP aqui: nossa primeira página JSP --%>
	<% String mensagem = "Bem vindo ao sistema de agenda do FJ-21!"; %>
	<% out.println(mensagem); %>
	<br />
	<% String desenvolvido = "Desenvolvido por Gabriel"; %>
	<%= desenvolvido  %>
	<br />
	<% System.out.println("Tudo foi executado");%>
</body>
<c:import url="rodape.jsp"></c:import>
</html>