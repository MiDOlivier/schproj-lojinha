<%@page import="org.apache.catalina.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Testa a porra do Session</title>
</head>
<body>

<%

	String usuario = (String) session.getAttribute("usuario");
	String nivelUsuario = (String) session.getAttribute("unv");
	nivelUsuario = (nivelUsuario == null)?"-1":nivelUsuario;
	Integer nivelUser = Integer.parseInt(nivelUsuario);
	if (!usuario.isEmpty() && nivelUser > 5) {
		out.print("OK<br>");
		out.print("Commit: " + usuario);
	}else{
		out.print("Redireciona<br>");
		response.sendRedirect("publicSession.jsp");
	}
	//session.setAttribute("usuario", null);
	out.print("<br><a href='publicSession.jsp?dropUserSession=true'> Voltar </a>");

%>

</body>
</html>