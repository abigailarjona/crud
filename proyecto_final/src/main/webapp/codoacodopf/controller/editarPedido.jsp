<%@page import="DAO.pedidoDAO"%>
<%@page import="model.Pedido"%>
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
	String id = request.getParameter("id");

	pedidoDAO pedidoDAO = new pedidoDAO();
	Pedido pedido = pedidoDAO.getPedido(id);

	if (pedido != null) {
		response.sendRedirect("../paginas/editar.jsp?" +
		 "nombre=" + pedido.getNombre() + "&" +
		 "apellido=" + pedido.getApellido() + "&" +
		 "direction=" + pedido.getDirection() + "&" +
		 "producto=" + pedido.getProducto() + "&" +
		 "peso=" + pedido.getPeso() + "&" +
		 "cantidad=" + pedido.getCantidad() + "&" +
		 "id=" + pedido.getId()
		 );
	} else {
		out.println("error editar pedido");
	}
	
	%>

</body>

</html>