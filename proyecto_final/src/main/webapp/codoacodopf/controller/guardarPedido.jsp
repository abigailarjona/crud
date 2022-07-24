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
	String nombre = request.getParameter("FirstName");
	String apellido = request.getParameter("LastName");
	String direction = request.getParameter("direction");
	String producto = request.getParameter("producto");
	Integer peso = Integer.parseInt(request.getParameter("peso"));
	Integer cantidad = Integer.parseInt(request.getParameter("cantidad"));
	
	String stringId = request.getParameter("id");
	
	Integer id = -1;
	if (stringId != null)
	{
		id = Integer.parseInt(stringId);
	}

	Pedido pedido = new Pedido(nombre, apellido, direction, producto, peso, cantidad, id);

	pedidoDAO pedidoDAO = new pedidoDAO();
	
	if (id < 0)
	{
		Boolean okGuardado = pedidoDAO.guardarPedido(pedido);

		if (okGuardado) {
			out.println("El pedido se agrego correctamente");
		} else {
			out.println("error en agregar pedido");
		}
	} else {
		Boolean okGuardado = pedidoDAO.editarPedido(pedido);

		if (okGuardado) {
			response.sendRedirect("../paginas/lista.jsp");
		} else {
			out.println("error en guardar pedido");
		}
	}
	%>

</body>

</html>