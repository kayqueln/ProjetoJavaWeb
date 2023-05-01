<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>

<html>
<head>
<meta charset="UTF-8">

<title>Cadastrar empresa</title>

</head>
<body>

	<form action="${linkServletNovaEmpresa}" method='POST'>
		
		<input name='nome' type='text' placeholder='Nome da empresa'><br/>
		<input name='data' type='text' placeholder='Data abertura'><br/>
		
		<button type='submit'>Cadastrar</button>
	</form>
	
</body>
</html>