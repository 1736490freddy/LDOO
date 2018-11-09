<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos</title>
    </head>
    <body>
        <form action="Procesar" method="post">
            <p>
                <a>Nombre:</a> 
                <input type="text" name="@nombre" size="50"/>
            </p>                            
            <p>
                <a>Apellidos:</a> 
                <input type="text" name="@apellidos" size="50"/>
            </p>
            <a>Edad:</a> 
            <input type="text" name="@edad">
            <br>
            <label for="email"><a>Direccion de Correo Electronico:</a></label>
            <input type="email"  name="@correo" id="email">
            <br>
            <label for="pass"><b>Contraseña:</b></label>
            <input type="password" name="@pass" id="pass">
            <br>
            <p>
                <a>Año de nacimiento:</a>
                <input type="number" name="@anio" min="1950" max="2018"/>
            </p>
            <p>
                <a>Mes:</a>
                <input type="number" name="@mes" min="01" max="12">
            </p>
            <p>
                <a>Dia:</a> 
                <input type="number" name="@dia" min="01" max="31">
            </p>
            <br>            
            <input type = "submit" onclick  value = "Enviar"> 
            <input type = "reset" value = "Borrar todo">
	</form> 
    </body>
</html>
