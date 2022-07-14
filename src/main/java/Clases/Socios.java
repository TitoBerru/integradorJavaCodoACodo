package Clases;

import java.sql.Date;

public class Socios 
{
	private int id_socios;
	private String nombre;
	private String apellido;
	private int dni;
	private String mail;
	private boolean estado;
	
	public Socios(int id,String nombre,String apellido,int dni,String mail,boolean estado)
	{
		this.setId_socios(id);     
		this.setNombre(nombre);  
		this.setApellido(apellido);
		this.setDni(dni);
		this.setMail(mail);	
		this.setEstado(estado);
	}
	
	
	
	
	public Socios()
	{
		super();
	}
	
	public int getId_socios() 
	{
		return id_socios;
	}
	public void setId_socios(int id_socios) {
		this.id_socios = id_socios;
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
	public int getDni() {
		return dni;
	}
	public void setDni(int dni) {
		this.dni = dni;
	}

	public boolean getEstado() {
		return estado;
	}
	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
	
	
	
	
	
	
	
}
