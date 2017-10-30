<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gerenciador</title>
</head>
<body>
	Bem vindo ao nosso gerenciador de empresas!
	<br>
	<c:if test="${not empty usuarioLogado}">
        Você está logado como ${usuarioLogado.email}<br/>
    </c:if>
	<br>

	<form action="executa" method="post">
		<input type="hidden" name="tarefa" value="NovaEmpresa">
		Cadastrar empresa: <input type="text" name="nome">
		<input type="submit" value="Cadastrar">
	</form>

	<form action=executa method="post">
		<input type="hidden" name="tarefa" value="Login">
		Email: <input type="email" name="email"> <br> <br>Senha: <input
			type="password" name="senha">
			<input type="submit"value="Logar">
	</form>
	
	<form action="executa" method="get">
		<input type="hidden" name="tarefa" value="BuscaEmpresa">
		Busca empresa: <input type="text" name="filtro">
		<input type="submit" value="Buscar">
	</form>
	
	<form action="executa" method="post">
	<input type="hidden" name="tarefa" value="Logout">
	<input type="submit" value="Deslogar">
	</form>
</body>
</html>