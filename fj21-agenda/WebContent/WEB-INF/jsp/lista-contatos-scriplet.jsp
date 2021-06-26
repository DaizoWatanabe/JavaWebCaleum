<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, br.com.caelum.agenda.dao.*, br.com.caelum.agenda.modelo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Contatos</title>
</head>
<body>
	<table>
		<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		
		for (Contato contato : contatos) {
		%>
			<tr>
				<th>Nome</th>
				<th>E-mail</th>
				<th>Endereço</th>
				<th>Data Nascimento</th>
			</tr>
			<tr>	
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<td><%=sdf.format(contato.getDataNascimento().getTime()) %></td>
			</tr>
		<%	
		}
		%>
	</table>
</body>
</html>