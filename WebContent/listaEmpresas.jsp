<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
<title>Java standard Taglib</title>
</head>
<body>
	
	<c:if test="${not empty empresa}">
		Empresa ${ empresa } cadastrada com sucesso! <br/>
	</c:if>

	Lista de empresas: <br />

	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>
				${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>
				<a href="mostraEmpresa?id=${empresa.id }">editar</a>
				<a href="removeEmpresa?id=${empresa.id }">remover</a>
			</li>
		</c:forEach>
	</ul>
		
</body>
</html>