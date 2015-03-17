<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel=stylesheet  href="../css/login.css" type=text/css>

</head>

<%	
	String actionForm = request.getParameter("actionForm");
	String errorCode = request.getParameter("errorCode");
	
	if (errorCode==null){
		errorCode = "";
	}else if (errorCode.startsWith("3")){
			errorCode = "Se ha producido un error técnico";
	}else{
		errorCode = "Autenticación incorrecta";
	}
%>
<body>
	<div id="logo"></div>
	<fieldset id="errors">
	<% if (!"".equals(errorCode)){ %> 
		<img id="alert" src="../images/danger.png"><%= errorCode %> 
	<% } %>
	</fieldset>
	<form id="login" action="<%=actionForm%>" method="post">
	    <h1>Log In</h1>
	    <fieldset id="inputs">
	        <input name="user" id="user" type="text" placeholder="Nombre de usuario" autofocus required>   
	        <input name="password" id="password" type="password" placeholder="Contraseña" required>
	    </fieldset>
	    <fieldset id="actions">
	        <input type="submit" id="submit" value="Log in">
	    </fieldset>
	    <input type="hidden" name="redirectSAML" value="true">
	</form>
	
</body>
</html>