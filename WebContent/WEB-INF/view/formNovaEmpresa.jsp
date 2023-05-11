<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada?acao=CadastraEmpresa" var="link"/>

<html>
<head>
<meta charset="UTF-8">

<title>Cadastrar empresa</title>

</head>
<body>
	
	<c:import url="logout-parcial.jsp"/>
	
	<form action="${link}" method='POST'>
		
		<input name='nome' type='text' placeholder='Nome da empresa'><br/>
		<input name='data' type='text' placeholder='Data abertura'><br/>
		
		<button type='submit'>Cadastrar</button>
	</form>
	
</body>
</html>