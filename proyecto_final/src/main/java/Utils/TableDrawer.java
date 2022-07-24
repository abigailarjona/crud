package Utils;

import java.util.List;
import model.Pedido;

public class TableDrawer {

	public String GetTable(List<Pedido> listPedidos) {
		
		String table = "";
		for (int i = 0; i < listPedidos.size(); i++) 
		{
			table += "<tr>";
			table += "<td>" + listPedidos.get(i).getNombre() + "</td>";
			table += "<td>" + listPedidos.get(i).getApellido() + "</td>";
			table += "<td>" + listPedidos.get(i).getDirection() + "</td>";
			table += "<td>" + listPedidos.get(i).getProducto() + "</td>";
			table += "<td>" + listPedidos.get(i).getPeso() + "</td>";
			table += "<td>" + listPedidos.get(i).getCantidad() + "</td>";
			table += "<td>" + listPedidos.get(i).getId() + "</td>";
			table += "<td>" + "<a href=\"../controller/editarPedido.jsp?id=" + listPedidos.get(i).getId() + "\"><button type=\"button\" class=\"btn btn-outline-warning\">Editar</button></a>" + "</td>";
			table += "<td>" + "<a href=\"../controller/eliminarPedido.jsp?id=" + listPedidos.get(i).getId() + "\"><button type=\"button\" class=\"btn btn-outline-dark\">Borrar</button></a>" + "</td>";
			table += "</tr>";
		}
		
		return table;
	}

}
