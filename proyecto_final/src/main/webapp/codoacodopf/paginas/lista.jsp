<%@ page import="model.Pedido"%>
<%@ page import="java.util.List"%>
<%@ page import="DAO.pedidoDAO"%>
<%@ page import="Utils.TableDrawer"%>

<!doctype html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>lista</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link href="ingresar.css" rel="stylesheet">
</head>
<body class="text-center bg-light">
	<div class="L_lista">
		<img alt="" src="../logo.jpeg" class="logo" width="300" height="300">
		<br>
	</div>

	<h1>Pedidos</h1>
	<div class="caja-lista">
		<div class="text-center">
	
		</div>

		<table class="table table-hover table-sm">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Nombre</th>
					<th scope="col">Apellido</th>
					<th scope="col">Direccion</th>
					<th scope="col">Producto</th>
					<th scope="col">Peso(KG)</th>
					<th scope="col">Cantidad</th>
					<th scope="col">N. de pedido</th>
					<th scope="col">Editar</th>
					<th scope="col">Eliminar </th>
				</tr>
			</thead>
			<tbody>
				<% 
				pedidoDAO pedidoDAO = new pedidoDAO(); 
				List<Pedido> listPedidos = pedidoDAO.listarPedidos(); 
				TableDrawer tableDrawer = new TableDrawer();
				out.println(tableDrawer.GetTable(listPedidos));
    			%>
			</tbody>
		</table>

	</div>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>