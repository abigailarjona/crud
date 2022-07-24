package DAO;

import java.sql.Connection;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Statement;

import conexionBD.ConexionDB;
import model.Usuario;




public class UsuarioDAO{
	
	
	
public Boolean validarUsuarioYPass(String usuario, String contrasenia) {
	try {
		ConexionDB ConexionDB = new ConexionDB();
		Connection connection = ConexionDB.establecerConexion();
		Statement statement = connection.createStatement();
		
		
		String sql = new String("SELECT * FROM usuarios WHERE usuario = '" + usuario.trim() + "' AND clave ='" + contrasenia.trim() + " ' ");	
		
		System.out.println(sql);
		ResultSet resultSet = null;
		try {
			resultSet = statement.executeQuery(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (resultSet.next() ) {
			return true;
		}
		 
		return false;
	} catch (SQLException e) {
		e.printStackTrace();
		return false;
	}
		
}

 public Boolean guardarUsuario(Usuario usuario) {
	 try {
		 ConexionDB conexionDB = new ConexionDB();
		 Connection connection = conexionDB.establecerConexion();
		 Statement statement = connection.createStatement();
		 
		 String sql = new String();
		 sql = "INSERT INTO `usuarios` (`usuario`, `clave`) VALUES ("
				 + "'" + usuario.getUsuario() + "'" + ","
				 + "'" + usuario.getClave() + "');";
				 
			statement.executeUpdate(sql);
			
			return true;
			
		 
	 } catch (Exception e) {
		 e.printStackTrace();
		 return false;
	 }
	 
  }
	
}