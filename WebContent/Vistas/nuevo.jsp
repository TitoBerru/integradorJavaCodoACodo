<!DOCTYPE html>
<html lang = "es">
<head>
<meta charset="ISO-8859-1">
<title>LGG GYM - Agregar Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="Css/Estilos.css" type="text/css"></link>
</head>
<body>
<h1>Agregar Socio</h1>
<div  class="container" >
		<div class="row" >			
				<form action="SociosController?accion=insert" method="post" class="form">   		
				<div class="mb-3">
					<label for="nombre" class="form-label nombre">Nombre</label>
					<input type="text" class="form-control" id="nombre" name="nombre" 
					placeholder ="Ingrese su nombre" required minlength="4" maxlength="30">					
				</div>		
				<div class="mb-3">
					<label for="apellido" class="form-label">Apellido</label>
					<input type="text" class="form-control" id="apellido" name="apellido" placeholder ="Ingrese su Apellido"
					required minlength="4" maxlength="30">					
				</div>		
				<div class="mb-3">
					<label for="dni" class="form-label">DNI</label>
					<input type="number" class="form-control" id="dni" name="dni"
					 placeholder ="Ingrese su DNI" min="999999"max="99999999" required>					
				</div>							
				<div class="mb-3">
					<label for="Mail" class="form-label">Mail</label>
					<input type="email" is-email class="form-control" id="mail" name="mail" placeholder ="Ingrese su email"
					required minlength="4" maxlength="30">					
				</div>
				<button type="submit" > Agregar</button>				
				</form>
		</div>
</div>
</body>
</html>