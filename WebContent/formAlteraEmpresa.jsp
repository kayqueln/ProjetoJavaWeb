<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/alteraEmpresa" var="linkServletEmpresa"/>


<html>
<head>
<meta charset="UTF-8">

<title>Cadastrar empresa</title>

</head>
<body>

	<form action="${linkServletEmpresa}" method='POST'>
		
		<input name='nome' type='text' placeholder='Nome da empresa' value="${empresa.nome }" ><br/>
		<input name='data' type='text' placeholder='Data abertura' value="<fmt:formatDate value='${empresa.dataAbertura }' pattern='dd/MM/yyyy'/>"><br/>
		<input name='id' type="hidden" value="${empresa.id }" >
		
		<button type='submit'>Cadastrar</button>
	</form>
	
</body>
</html>