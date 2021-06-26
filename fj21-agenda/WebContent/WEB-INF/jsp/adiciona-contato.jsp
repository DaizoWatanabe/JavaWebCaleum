<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/jquery-ui.css">
	<script src="js/jquery-1.12.4.js"></script>
  	<script src="js/jquery-ui.js"></script>
	<title>Adiciona Contato</title>
</head>	
	<body>
		<c:import url="cabecalho.jsp" />
		
		<h1>Adiciona Contatos</h1>
		<hr />
		<form action="mvc">
			<input type="hidden" name="logica" value="AdicionaContatoLogic">
			<label for="nome">Nome</label>
			<input type="text" name="nome" /><br />
			<label for="email">E-mail</label>
			<input type="text" name="email" /><br />
			<label for="endereco">Endereço</label>
			<input type="text" name="endereco" /><br />
			<label for="dataNascimento">Data de Nascimento</label>
			<caelum:campoData id="dataNascimento" /><br />
			
			<input type="submit" value="Adicionar">
		</form>
		
		<c:import url="rodape.jsp" />
	</body>
</html>