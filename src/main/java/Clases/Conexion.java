package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion 
{
	public String driver="com.mysql.jdbc.Driver";
	
	public Connection getConnection() throws ClassNotFoundException
	{
		Connection  conexion=null;
		try
		{
			Class.forName(driver);
			conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto22026","root","");
		}
		catch(SQLException e)
		{
			System.out.println("Error de Conexion");
			
		}		
		return conexion;
	}
	
	public static void main (String args[]) throws SQLException, ClassNotFoundException
	{
		Connection conexion=null;
		Conexion con=new Conexion();		
		conexion=con.getConnection();
		
		PreparedStatement ps;
		ResultSet rs;
		
		ps=conexion.prepareStatement("select * from socios");
		rs=ps.executeQuery();
		
		while(rs.next())
		{
			int id=rs.getInt("id_socio");
			String nombre=rs.getString("nombre");
			String mail=rs.getString("mail");			
			System.out.println("ID: "+id+" Nombre:"+nombre+" Mail:"+mail);
		}
		
		
		
		
	}
	
	

}
