package model;

public class Pedido {
	private String nombre;
	private String apellido;
	private String direction;
	private String producto;
	private Integer peso;
	private Integer cantidad;
	private Integer id;
	
	public Pedido(String nombre, String apellido, String direction, String producto,  Integer peso, Integer cantidad, Integer id
	) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.direction = direction;
		this.producto = producto;
		this.peso = peso;
		this.setCantidad(cantidad);
		this.setId(id);
		
	}
	
	
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
		
	}
	
	public String getApellido() {
		return apellido;
	}
	
	public void setApellido(String apellido) {
		this.apellido = apellido;
		
	}
	
	public String getDirection() {
		return direction;
	}
	
	public void setDirection(String direction) {
		this.direction = direction;
		
	}
	
	public String getProducto() {
		return producto;
	}
	
	public void setProducto(String producto) {
		this.producto = producto;
		
	}
	
	public Integer getPeso() {
		return peso;
	}

	public void  setPeso(Integer Peso) {
		this.peso = peso;
	}


	public Integer getCantidad() {
		return cantidad;
	}


	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}
	
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}
	
	
	

}
