<%@page import="classes.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String drop = request.getParameter("dropUserSession");
	String usuario = request.getParameter("usuario");
	String senha = request.getParameter("senha");//getParam always returns string
	
	if (drop == null) {
	
	Usuario user =  new Usuario( usuario, senha, "");
	
	///if (usuario != null) {
		if (user.checkLogin()) {
			session.setAttribute("usuario", usuario);
			session.setAttribute("uid", (user.getIdUsuario()));
			session.setAttribute("unv", user.getIdNivelUsuario());
			out.print(usuario);
			out.print("<br><a href='privateSession.jsp'> Pagina Privativa </a>");
		} else {
			out.print("Usuario Invalido");
		}
	} else {
		
		session.removeAttribute("usuario");
		session.removeAttribute("senha");
		session.removeAttribute("uid");
		session.removeAttribute("unv");
		
	}
	//}
	/*usuario == null ||*/ 

%>