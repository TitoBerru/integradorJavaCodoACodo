package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SociosDAO 
{
	Connection conexion;
	
	public SociosDAO() throws ClassNotFoundException
	{
		Conexion con=new Conexion();
		conexion=con.getConnection();
	}
	
	
	public List<Socios> listarSocios()
	{
		PreparedStatement ps;
		ResultSet rs;
		List<Socios> lista=new ArrayList<>();
		
		
		try
		{
			ps=conexion.prepareStatement("select * from socios");
			rs=ps.executeQuery();
			
			while(rs.next())
			{
				int id=rs.getInt("id_socio");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				int dni=rs.getInt("dni");
				String mail=rs.getString("mail");				
				boolean estado=rs.getBoolean("estado");				
				Socios socio=new Socios(id,nombre,apellido,dni,mail,estado);
				lista.add(socio);
			}
			
		}
		catch(SQLException e)
		{
			System.out.println("Error de conexion");
			return null;			
		}
		
		
		
		return lista;		
		
		
	}
	
	
	
	public Socios mostrarSocio(int _id)
	{
		PreparedStatement ps;
		ResultSet rs;
		Socios socio=null;
		
		
		try
		{
			ps=conexion.prepareStatement("select * from socios where id_socio=?");
			ps.setInt(1, _id);
			rs=ps.executeQuery();
			
			while(rs.next())
			{
				int id=rs.getInt("id_socio");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				int dni=rs.getInt("dni");
				String mail=rs.getString("mail");			
				boolean estado=rs.getBoolean("estado");				
				socio=new Socios(id,nombre,apellido,dni,mail,estado);							
			}	
			return socio;	
			
		}
		catch(SQLException e)
		{
			System.out.println("Error de conexion");
			return null;	
		}
		
		
		
	}
	
	
	
	public boolean insertarSocio(Socios socio)
	{
		PreparedStatement ps;
		try
		{
			ps=conexion.prepareStatement("insert into socios (nombre,apellido,dni,mail,estado) values (?,?,?,?,?)");
			ps.setString(1, socio.getNombre());
			ps.setString(2, socio.getApellido());
			ps.setInt(3, socio.getDni());
			ps.setString(4, socio.getMail());			
			ps.setBoolean(5, socio.getEstado());
			ps.execute();	
			
			return true;
		}
		catch(SQLException e)
		{
			System.out.println("Error de conexion");
			return false;			
		}	
	}
	
	public boolean actualizarSocio(Socios socio)
	{
		PreparedStatement ps;
		try
		{
			ps=conexion.prepareStatement("update socios set nombre=? ,apellido=?,dni=?,mail=?,estado=? where id_socio=?");
			
			
			ps.setString(1, socio.getNombre());
			ps.setString(2, socio.getApellido());
			ps.setInt(3, socio.getDni());
			ps.setString(4, socio.getMail());			
			ps.setBoolean(5, socio.getEstado());
			ps.setInt(6, socio.getId_socios());
			ps.execute();
			
			return true;
		}
		catch(SQLException e)
		{
			System.out.println("Error de conexion");
			return false;			
		}
	}
	
	
	
		public boolean eliminarSocio(int _id)
		{
			PreparedStatement ps;
			try
			{
				ps=conexion.prepareStatement("delete from socios where id_socio=?");
				ps.setInt(1, _id);
				ps.execute();	
				
				return true;		
			}
			catch(SQLException e)
			{
				System.out.println("Error de conexion");
				return false;			
			}

		}
	
	
	
}
	
	
	
	
	


