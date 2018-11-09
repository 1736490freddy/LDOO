<%@page import="modelo.Persona"%>
<%
    Persona per = (Persona)request.getSession().getAttribute("persona"); 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos Entregados</title>
    </head>
    <body>
        <h1>Datos Correctos</h1>
        <p><b>Nombre:</b> <%= per.getNombre()%> </p>
        <p><b>Apellidos:</b> <%= per.getApellidos()%></p>
        <p><b>Edad:</b> <%= per.getEdad()%></p>
        <p><b>Correo:</b> <%= per.getCorreo()%></p>
        <p><b>Contraseña:</b> <%= per.getContrasenia()%></p>
        <p><b>Año:</b> <%= per.getAnio()%></p>
        <p><b>Mes:</b> <%= per.getMes()%></p>
        <p><b>Dia:</b> <%= per.getDia()%></p>
    </body>
</html>