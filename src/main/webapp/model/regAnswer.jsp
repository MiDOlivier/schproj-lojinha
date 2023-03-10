<%@page import="java.util.Date"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="database.DBQuery"%>
<%@ page import="database.DBConnection"%>
<%@ page import="classes.Usuario"%>
<%@ page import="java.sql.ResultSet"%>
<% 		

	String idUsuario = request.getParameter("idUsuario");
	String senha = request.getParameter("senha");
	String email = request.getParameter("email");
	String idNivelUsuario = request.getParameter("idNivelUsuario");
	String nome = request.getParameter("nome");
	String cpf = request.getParameter("cpf");
	String endereco = request.getParameter("endereco");
	String bairro = request.getParameter("bairro");
	String cidade = request.getParameter("cidade");
	String uf = request.getParameter("uf");
	String cep = request.getParameter("cep");
	String telefone = request.getParameter("telefone");
	String foto = request.getParameter("foto");
	String ativo = request.getParameter("ativo");
	
	String filename = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.ENGLISH).format(new Date());
	filename += ".base64";
	String caminho = "/home/aluno/eclipse-workspace-gu3015343/"+filename;
	byte[] bytes = foto.getBytes();
	Files.write(Paths.get(caminho), bytes);
	//-- Add to database
	
	//--
	Files.readAllBytes(Paths.get(caminho));
	
	DBQuery dbQuery = new DBQuery();
	
	ResultSet rs = dbQuery.query("select idUsuario from usuarios where email = '" + email + "'");
	//String outputString = "" + rs.getString("idUsuario");
	
	if (rs.next()) {
		//out.print("Usuario não encontrado.");
		out.print("<br><br><p style='color:red'>Email de usuario ja existe</p>");
		
	} else {
	
	Usuario newUser = new Usuario(idUsuario, email, senha, idNivelUsuario, nome, cpf, endereco, bairro, cidade, uf,  cep, telefone, caminho, ativo);
	
	newUser.newPassword();
	
	newUser.save();
	
	//String mailbody = "Senha do user: " + newUser.getSenha() + " !";
	
	//newUser.enviarEmailComSenha("miguel_ifsp_testes@yahoo.com", "miguel_ifsp_testes@yahoo.com", "senha do user", mailbody);
	
	}
	
	/*
	// Consultar o BD
	//DBConnection dbConnect = new DBConnection();
	DBQuery dbQuery = new DBQuery();
	
	//out.print(dbQuery.query("select idUsuario from usuarios where email = '" + email + "'"));
	
	ResultSet rs = dbQuery.query("select idUsuario from usuarios where email = '" + email + "'");
	//String outputString = "" + rs.getString("idUsuario");
	
	if (!rs.next()) {
		out.print("Usuario não encontrado.");
	} else {
		ResultSet rSenha = dbQuery.query("select idUsuario from usuarios where email = '" + email + "' and senha = '" + senha + "'");
		if (!rSenha.next()) {
			out.print("Senha incorreta.");
		} else {
			out.print("Usuario Encontrado.");
		}
	}
	//	out.print("idUsuario not found.");
	//}
	
	out.print( "<br>Email:" + email + ", " + "Senha:" + senha);
	*/
	
%>