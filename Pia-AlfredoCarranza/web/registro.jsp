<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="UTF-8"> 
      <title>Registro</title>
      <script type="text/javascript">
          function validar(){
              var contra1 = document.login.contra1.value;
              var contra2 = document.login.contra2.value;              
              if(contra1 !== contra2){
                  alert("Las contraseñas no son iguales");
                  return false;
              }
              else if(contra1 === '' || contra2 === ''){
                  alert("Debe introducir la contraseña en los dos campos");
                  return false;
              }
              else{
                  return true;
              }
          }
      </script>
   </head>
   <body>
       <h1>Registrarse</h1>
       <form action="REGISTRARSE" method="POST" name="login" onSubmit="return validar()">
            <%--<h1>Usuario<input type="text" name="usuario"/></h1>--%>    
            <%-- <h1>Usuario<input type="text" name="usuario"/></h1>--%>  
            <br> 
            <h1>Usuario <input type="text" name="usuario"/> </h1>
            <h1>Contraseña <input type="password" name="contra1"/></h1>
            <br>  
            <h1>Repetir contraseña <input type="password" name="contra2"/></h1>            
            <br>
            <input type="submit" name="ENTRAR" value="Enviar"/>
       </form>
   </body>
</html>
