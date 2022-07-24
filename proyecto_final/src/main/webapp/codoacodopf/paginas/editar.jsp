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

	<h1>Hace tu pedido.</h1>
	<form action="../controller/guardarPedido.jsp?id=<%=request.getParameter("id")%>" method="POST">
		<div class="form-pedido">
		
			<div class="input-group">
				<span class="input-group-text">Nombre y Apellido</span> 
				<input
					type="text" name="FirstName" id="FirstName"
					aria-label="First name" class="form-control" 
					value="<%=request.getParameter("nombre")%>"> 
				<input
					type="text" name="LastName" id="LastName" aria-label="Last name"
					class="form-control" 
					value="<%=request.getParameter("apellido")%>">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-text">Direccion</span> 
				<input type="text"
					aria-label="direction" class="form-control" name="direction"
					id="direction" value="<%=request.getParameter("direction")%>">

			</div>
			<br> <select class="form-select" aria-label="Default select example"
				name="producto" id="producto"
				value="<%=request.getParameter("producto")%>">
				<option selected>Elegi tu producto</option>
				<option value="Eukanuba">Eukanuba</option>
				<option value="canin">Royal canin</option>
				<option value="Purina">Purina</option>
				<option value="Dog chow">Dog chow</option>
				<option value="Pedigree">Pedigree</option>
				<option value="Pro plan">Pro plan</option>
				<option value="Rosco">Rosco</option>
				<option value="Tiernitos">Tiernitos</option>
				<option value="Pacha">Pacha</option>

			</select> <br> <select class="form-select form-select-sm"
				aria-label=".form-select-sm example" name="peso" id="peso" value="<%=request.getParameter("peso")%>">
				<option selected>Elegi el peso(KG)</option>
				<option value="5">5</option>
				<option value="8">8</option>
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="21">21</option>
				
			</select> <br> <select class="form-select form-select-sm"
				aria-label=".form-select-sm example" name="cantidad" id="cantidad" value="<%=request.getParameter("cantidad")%>">
				<option selected>Cantidad</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select> <br> <br>


			<div class="col-12">
				<button class="btn btn-warning" type="submit">Guardar pedido</button>
			</div>





		</div>
	</form>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>