<%@ page import="java.util.List, br.com.alura.gerenciador.modelo.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
<title>Java standard Taglib</title>
</head>
<body>
	
	<c:import url="logout-parcial.jsp"/>
	
	Usuário Logado: ${usuarioLogado.login}
	
	<br><br>
	
	<c:if test="${not empty empresa}">
		Empresa ${ empresa } cadastrada com sucesso! <br/>
	</c:if>

	Lista de empresas: <br />

	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>
				${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>
				<a href="entrada?acao=MostraEmpresa&id=${empresa.id }">editar</a>
				<a href="entrada?acao=RemoveEmpresa&id=${empresa.id }">remover</a>
			</li>
		</c:forEach>
	</ul>
		
</body>
</html>