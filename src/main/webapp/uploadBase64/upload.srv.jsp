<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.nio.file.Path"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="classes.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String filename = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.ENGLISH).toString();
	filename += ".base64";
	String caminho = "/home/aluno/eclipse-workspace-gu3015343/"+filename;
	String foto = request.getParameter("foto");
	byte[] bytes = foto.getBytes();
	Files.write(Paths.get(caminho), bytes);
	//-- Add to database
	
	//--
	Files.readAllBytes(Paths.get(caminho));
	out.print(foto);

%>