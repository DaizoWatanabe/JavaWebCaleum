<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
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
	<script type="text/javascript">
		function finalizaAgora(id) {
			$.post("finalizaTarefa", {'id' : id}, function(resposta) {
				$("#tarefa_"+id).html(resposta);
			});
		}
	</script>
	
	<script type="text/javascript">
		function removeTarefa(id) {
			$("#tarefa_"+id).closest("tr").hide();
		}
	</script>
	
	<a href="novaTarefa">Criar nova tarefa</a>
	<a href="logout">Sair do sistema</a>
	
	<br /> <br />
	
	<table>
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado</th>
			<th>Data de finalização</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr id="tarefa_${tarefa.id}">
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq false}">
					<td id="tarefa_${tarefa.id}">
						<a href="#" onclick="finalizaAgora(${tarefa.id})">
							Finalizar agora!
						</a>
					</td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true}">
					<td>Finalizado</td>
				</c:if>
				<td>
					<fmt:formatDate value="${tarefa.dataFinalizacao.time}" 
					pattern="dd/MM/yyyy"/>
				</td>
				<td>
					<a href="mostraTarefa?id=${tarefa.id}">Alterar</a>
				</td>
				<td id="tarefa_${tarefa.id}">
					<a href="#" onclick="removeTarefa(${tarefa.id})">
						Excluir
					</a>
				</td>
				<td>
					<a href="removeTarefa?id=${tarefa.id}">Remover</a>
				</td>
			</tr>											
		</c:forEach>	
 	</table>
 	
</body>
</html>