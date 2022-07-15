<%@page import="Clases.SociosDAO"  %>
<%@page import="Clases.Socios"%>
<%@page import="java.util.List"  %>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<title>La Gota Gorda GYM</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
<link rel="stylesheet" href="Css/Estilos.css" type="text/css"></link>
</head>
<body>
<h1>Listado de Socios</h1>
<div  class="container" >
		<div class="row" >
				<a class="btn btn-primary col-4 m-4" href="SociosController?accion=nuevo">Agregar Socio</a>
				
				<table class="table table-primary" >
					<thead>
						<th class="result">Socio n°</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>DNI</th>
						<th>Mail</th>					
						<th>Estado</th>
						<th class="text-center">Modificar</th>
						<th class="text-center">Eliminar</th>				
					</thead>
						<%
						List<Socios> resultado=null;
						SociosDAO socio=new SociosDAO();
						resultado=socio.listarSocios();				
						for(int i=0;i<resultado.size();i++)
						{
						String ruta="SociosController?accion=modificar&id="+resultado.get(i).getId_socios();	
						String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getId_socios();
						%>			
						<tr>
						<td class="result"><%=resultado.get(i).getId_socios()%></td>				
						<td><%=resultado.get(i).getNombre() %></td>				
						<td><%=resultado.get(i).getApellido() %></td>
						<td><%=resultado.get(i).getDni()%></td>
						<td><%=resultado.get(i).getMail() %></td>
						<% if(resultado.get(i).getEstado()){ %>
							<td>Activo</td>
						<% } else { %>
						<td>Inactivo</td>
						<%} %>			
						
						<td class="text-center"><a href=<%=ruta%>> <i class="fas fa-edit"></i> </a></td>
						<td class="text-center"><a href=<%=rutaE%>><i class="fas fa-trash"></i> </a></td>
						</tr>			
						<%
						}
						%>
			</table>	
		</div>
</div>
<footer class="footer">
<div class=mainFooter>
        <div class=sectionOneFooter>
            <h5><span class="nuestras">Nuestras</span> Redes Sociales</h5>
            <div class="socialIconsFooter">
                <img src="img/social_facebook_fb_2763.png">
                <img src="img/1491579583-yumminkysocialmedia02_83111.png">
                <img src="img/instagram_socialnetwork_22374.png">
                <img src="img/Youtube_36365.png">
                <img src="img/Google_icon-icons.com_60497.png">
            </div>
        </div>
        <div class=sectionTwoFooter>
            <div class="contactFooter">
                <p>Contactenos</p>
                <img src="img/1496676725-rounded-high-ultra-colour02-maps_84627.png">
                <img src="img/phone-icon_34382.png">
                <img src="img/4202011emailgmaillogomailsocialsocialmedia-115677_115624.png">
               
            </div>
        </div>
        <div class=sectionThreeFooter>
            <p>@2022 todos los derechos reservados</p>
        </div>
    </div>

</footer>
</body>
</html>