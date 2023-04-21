<html>
<head>
	<title>Caninos y Felinos</title>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        
    <title>Mascotas</title>
    <link href="stylesF.css" rel="stylesheet" type="text/css"/>
    
</head>
<body>
    <div id="veterinaria">
	<h1>Mascotas</h1>
	<label for="opcion"><h4>Una opción para ingresar una nueva mascota o eliminarla:</h4></label>
	<select id="opcion" onchange="mostrarFormulario()">
		<option value="">Selecciona una opción</option>
		<option value="opcion1">Caninos</option>
		<option value="opcion2">Felinos</option>
        <option value="opcion3">Eliminar mascota</option>
	</select>
	<div id="formulario1" style="display:none;">
		<h2>Caninos</h2>
		<form action="servletRegistro" method="post">
                    <input type="hidden" id="id" name="tipo" value="canino">
			<label for="nombreC">Nombre:</label>
			<input type="text" name="nombreC" id="nombreC"><br>
			<label for="razaC">Raza:</label>
			<input type="text" name="razaC" id="razaC"><br>
			<label for="colorC" >Color:</label>
			<input type="text" name="colorC"id="colorC"><br>
			<label for="edadC" >Edad:</label>
			<input type="text" id="edadC" name="edadC"><br>
			<label for="nivelE" >Nivel de entrenamiento (0 a 10):</label>
			<input type="text" id="nivelE"name="nivelE"><br>
			<button type="submit">Enviar</button>
            <br>
		</form>
	</div>
	<div id="formulario2" style="display:none;">
		<h2>Felinos</h2>
		<form action="servletRegistro" method="post">
                    <input type="hidden" id="id" name="tipo" value="felino">
			<label for="nombreF" >Nombre:</label>
			<input type="text" name="nombreF" id="nombreF"><br>
			<label for="razaF" >Raza:</label>
			<input type="text" name="razaF" id="razaF"><br>
			<label for="colorF" >Color:</label>
			<input type="text"  name="colorF" id="colorF"><br>
			<label for="edadF">Edad:</label>
			<input type="text"  name="edadF" id="edadF"><br>
                        <label for="libre">Se encuentra libre de toxoplasmosis Si/No):</label>
			<input type="text"  name="libre" id="libre"><br>
			    
<button type="submit">Enviar</button>
            <br>
		</form>
	</div>
	<br>
    <div id="formularioBuscar" style="display:none;">
        <h2>Eliminar mascota</h2>
        <form action="servletRegistro" method="post">
            <input type="hidden" id="id" name="tipo" value="busqueda">
            
            <label for="nombreB" >Ingrese el nombre de la mascota que desea eliminar</label>
            <input type="text" id="nombreB" name="nombreB"><br>
            <button type="submit">Eliminar</button>
        </form>
     
    </div>
    </div>
    <script>
        function mostrarFormulario() {
            var opcion = document.getElementById("opcion").value;
            if (opcion === "opcion1") {
                document.getElementById("formulario1").style.display = "block";
                document.getElementById("formulario2").style.display = "none";
                document.getElementById("formularioBuscar").style.display = "none";
            } else if (opcion === "opcion2") {
                document.getElementById("formulario1").style.display = "none";
                document.getElementById("formulario2").style.display = "block";
                document.getElementById("formularioBuscar").style.display = "none";
            } else if (opcion === "opcion3") {
                document.getElementById("formulario1").style.display = "none";
                document.getElementById("formulario2").style.display = "none";
                document.getElementById("formularioBuscar").style.display = "block";
            } else {
                document.getElementById("formulario1").style.display = "none";
                document.getElementById("formulario2").style.display = "none";
                document.getElementById("formularioBuscar").style.display = "none";
            }
        }
        
    </script>

</body>
</html>