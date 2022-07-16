<%@page import="Clases.SociosDAO"  %>
<%@page import="Clases.Socios"%>
<%@page import="Clases.SociosController"%>
<%@page import="java.util.List"  %>

<!DOCTYPE html>
<html lang = "es">
<head>
<meta charset="ISO-8859-1">
<title>LGG GYM - Agregar Socio</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	<link rel="stylesheet" type="text/css" href="../Css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="../Css/font-awesome.css">

    <link rel="stylesheet" type="text/css" href="../Css/templatemo-nuevo-socio.css">
     
</head>
<body>
<header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="#top" class="logo">LGG<em> GYM </em></a>
                    </nav>
                </div>
            </div>
        </div>
    </header>
 
    
    <section class="section" id="listado-socios">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 auto">
                    <div class="section-heading">
                        <h2>Nuestros <em>Socios</em></h2>
                        <img src="img/line-dec.png" alt="">
                        <div  class="container" >
                            <div class="row" >
                                    <a class="btn btn-dark col-4 m-4 " href="./../SociosController">Volver</a>
                                    
                                    <table class="table" >
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
                                            String ruta="../SociosController?accion=modificar&id="+resultado.get(i).getId_socios();	
                                            String rutaE="../SociosController?accion=eliminar&id="+resultado.get(i).getId_socios();
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
                        
                    </div>
                </div>
            </div>   
        </div>
    </section>
    

</body>
</html>