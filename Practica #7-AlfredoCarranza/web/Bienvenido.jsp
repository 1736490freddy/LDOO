<%@page import="MODELO.USUARIO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        HttpSession sesion = request.getSession();
        String usuario,contrasena;
        usuario = sesion.getAttribute("username").toString();
        contrasena = sesion.getAttribute("password").toString();
        USUARIO U = new USUARIO(usuario,contrasena);
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido/title>
    </head>
    <body>
        <h1>Bienvenido</h1>
        <h2>Tu Nombre es:<a> <%=U.getUsuario()%>! </a> </h2>
        <h2>Tu Contraseña es:<a> <%= U.getContrasena()%> </a> </h2>
        <form action="SesionOff.jsp">
            <input type="submit" name="Cerrar Sesion" value="Cerrar La Sesion"/>
        </form>
        <a href="COOKIE"><input type="submit" value="Tus galletitas" name="Galletitas"/></a>
    </body>
</html>