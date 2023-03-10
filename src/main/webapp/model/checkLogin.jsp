<%@page import="classes.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	
	Usuario usuario =  new Usuario( email, senha, "");
	if ( usuario.checkLogin()){
		out.print( "Login Ok");	
	}else{
		out.print( "Usuario ou Senha Incorretos!");
	}	

%>