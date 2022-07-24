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
	Boolean okEliminado = pedidoDAO.eliminarPedido(id);

	if (okEliminado) {
		out.println("El pedido se elimino correctamente");
	} else {
		out.println("error en eliminar pedido");
	}
	response.sendRedirect("../paginas/lista.jsp");
	%>

</body>

</html>