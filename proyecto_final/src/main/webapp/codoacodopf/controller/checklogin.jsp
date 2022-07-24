<%@page import="DAO.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>

<body>

<%
 
 
 String usuario = request.getParameter("inputEmail");
 String contrasenia = request.getParameter("inputPassword");
 
 
 out.println(usuario);
 out.println(contrasenia);
 
 
 UsuarioDAO usuarioDAO = new UsuarioDAO();
 Boolean usuValido = usuarioDAO.validarUsuarioYPass(usuario, contrasenia);
 
 if(usuValido.booleanValue()){
	 response.sendRedirect("../paginas/pedido.html");
 } else{
	 response.sendRedirect("../paginas/ingresarError.html");
	 out.println("<p stryle='color red'> Usuaurio o password incorrectos</p>");
	 
 }
 
 
 
 
 
 %>
 
 
 </body>
 </html>