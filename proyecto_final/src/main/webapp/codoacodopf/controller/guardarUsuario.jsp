<%@page import="DAO.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	    String usuario = request.getParameter("user");
		String contrasenia = request.getParameter("pass");

		Usuario usu = new Usuario(usuario, contrasenia);

		UsuarioDAO UsuarioDAO = new UsuarioDAO();

		Boolean okGuardado = UsuarioDAO.guardarUsuario(usu);
		if (okGuardado) {
			out.println("El usuario se agrego correctamente <br>");
		} else {
			out.println("Error en agregar usuario <br>");
		}
	%>
	
	
	</body>
	</html>