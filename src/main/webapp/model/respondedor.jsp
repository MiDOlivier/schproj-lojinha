<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="database.DBQuery"%>
<%@ page import="database.DBConnection"%>
<%@ page import="classes.Usuario"%>
<%@ page import="java.sql.ResultSet"%>
<% 

		

	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	
	// Consultar o BD
	//DBConnection dbConnect = new DBConnection();
	DBQuery dbQuery = new DBQuery();
	
	//out.print(dbQuery.query("select idUsuario from usuarios where email = '" + email + "'"));
	
	ResultSet rs = dbQuery.query("select idUsuario from usuarios where email = '" + email + "'");
	//String outputString = "" + rs.getString("idUsuario");
	
	if (!rs.next()) {
		//out.print("Usuario não encontrado.");
		out.print("<p style='color:red'>Usuario ou Senha Incorretos</p>");
	} else {
		ResultSet rSenha = dbQuery.query("select idUsuario from usuarios where email = '" + email + "' and senha = '" + senha + "'");
		if (!rSenha.next()) {
			out.print("<p style='color:red'>Usuario ou Senha Incorretos</p>");
			//out.print("Senha incorreta.");
		} else {
			out.print("Usuario Encontrado.");
			ResultSet res = dbQuery.query("select * from usuarios where email = '" + email + "'");
			while (res.next()) {
				
				BufferedReader reader = new BufferedReader(new FileReader(res.getString("foto")));
			     String inputStream = reader.readLine();
			    
			    if (inputStream != null) {
			        try {
			        	
			        	String p1 = "<br><img id=\"imgPreview\" style=\"\" src=\"";
			        	String p2 = inputStream;
			        	String p3 = "\">";
			        	
			        	out.print(p1+p2+p3);
			        } catch (IOException e) {
			            e.printStackTrace();
			        }
			    }
			    
			    reader.close();
			}
		}
	}
	//	out.print("idUsuario not found.");
	//}
	
	//out.print( "<br>Email:" + email + ", " + "Senha:" + senha);
	

%>