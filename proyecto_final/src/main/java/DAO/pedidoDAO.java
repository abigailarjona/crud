package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import conexionBD.ConexionDB;
import model.Pedido;

public class pedidoDAO {

	public Boolean guardarPedido(Pedido pedido) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();
			sql = "INSERT INTO `pedido1` " + "(`nombre`, `apellido`, `direction`, `producto`, `peso`, `cantidad`)"
					+ "VALUES (" + toSQLString(pedido.getNombre()) + "," + toSQLString(pedido.getApellido()) + ","
					+ toSQLString(pedido.getDirection()) + "," + toSQLString(pedido.getProducto()) + ","
					+ toSQLString(pedido.getPeso().toString()) + "," + toSQLString(pedido.getCantidad().toString())
					+ ")";

			System.out.println(sql);

			statement.executeUpdate(sql);

			return true;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public Boolean editarPedido(Pedido pedido) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();
			sql = "UPDATE `pedido1` SET " + 
			"`nombre`=" + toSQLString(pedido.getNombre()) + "," + 
			"`apellido`=" + toSQLString(pedido.getApellido()) + "," + 
			"`direction`=" + toSQLString(pedido.getDirection()) + "," + 
			"`producto`=" + toSQLString(pedido.getProducto()) + "," + 
			"`peso`=" + toSQLString(pedido.getPeso().toString()) + "," + 
			"`cantidad`=" + toSQLString(pedido.getCantidad().toString()) +
			"WHERE id=" + toSQLString( pedido.getId().toString());
			
			statement.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	private String toSQLString(String text) {
		return "'" + text + "'";
	}

	public List<Pedido> listarPedidos() {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String("SELECT * FROM pedido1");
			ResultSet resultSet = statement.executeQuery(sql);
			List<Pedido> listPedidos = new ArrayList<Pedido>();
			while (resultSet.next()) {
				Pedido pedido = new Pedido(resultSet.getString("nombre"), resultSet.getString("apellido"),
						resultSet.getString("direction"), resultSet.getString("producto"), resultSet.getInt("peso"),
						resultSet.getInt("cantidad"), resultSet.getInt("id"));
				listPedidos.add(pedido);
			}
			return listPedidos;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	public List<Pedido> listarPedidosEC() {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection conn = conexionDB.establecerConexion();
			Statement state = conn.createStatement();

			String sql = new String("SELECT * FROM pedidos ORDER BY apellido");
			ResultSet rs = state.executeQuery(sql);

			List<Pedido> listaPedidos = new ArrayList<Pedido>();
			while (rs.next()) {
				Pedido pedido = new Pedido(rs.getString("nombre"), rs.getString("apellido"), rs.getString("direction"),
						rs.getString("producto"), rs.getInt("peso"), rs.getInt("cantidad"), rs.getInt("id"));
				listaPedidos.add(pedido);

			}
			return listaPedidos;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}

	/**/
	public Pedido getPedido(String id) throws SQLException {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();
			sql = "SELECT `nombre`, `apellido`, `direction`, `producto`, `peso`, `cantidad`, `id` FROM `pedido1` WHERE id="
					+ toSQLString(id);

			ResultSet resultSet = statement.executeQuery(sql);
			resultSet.next();
			Pedido pedido = new Pedido(resultSet.getString("nombre"), resultSet.getString("apellido"),
					resultSet.getString("direction"), resultSet.getString("producto"), resultSet.getInt("peso"),
					resultSet.getInt("cantidad"), resultSet.getInt("id"));

			return pedido;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public Boolean eliminarPedido(String id) throws SQLException {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();
			sql = "DELETE FROM `pedido1` WHERE id=" + toSQLString(id);

			statement.executeUpdate(sql);

			this.listarPedidosEC();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

}

// 
