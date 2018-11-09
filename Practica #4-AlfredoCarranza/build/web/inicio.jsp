<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <body style="background-color: red;">
        <div>
            <h1>Practica #4</</h1>
        </div>
        <br>
        <h2>Tus datos son:</h2>
        <br>
        <h3>
        <% 
            String nombre = request.getParameter("nombre");
            String apellidoP = request.getParameter("apellidoP");
            String apellidoM = request.getParameter("apellidoM");
            String fecha = request.getParameter("fecha");
            String correo = request.getParameter("correo");
            String pass = request.getParameter("pass");
        %>
        <%
            out.println("<html>");
            out.println("<head><title> Practica #4 </title></head>");
            out.println("<body>");
            out.println( "  <P align=\"center\"> El nombre es: " + nombre  + apellidoP + apellidoM + "<br>" );
            out.println( " La fecha de nacimiento es " + fecha  );
            out.println( "<br>El correo es " + correo  );
            out.println( "<br>La contraseña es " + pass  );
            out.println("</body>");
            out.println("</html>"); 
         %>
        </h3>
        </body>
</html>
