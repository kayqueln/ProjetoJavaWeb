<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada?acao=Login" var="link"/>

<html>
<head>
<meta charset="UTF-8">

<title>Cadastrar empresa</title>

</head>
<body>
	

	<form action="${link}" method='POST'>
		
		<input name='login' type='text' placeholder='Login'><br/>
		<input name='senha' type="password" placeholder='Senha'><br/>
		
		<button type='submit'>Entrar</button>
	</form>
	
</body>
</html>