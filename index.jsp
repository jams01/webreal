<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <% if((String)session.getAttribute("nombre")!=null)
    {
    %>
    <meta http-equiv='Refresh' CONTENT="0; URL=./principal.jsp">
    <head><title>Redirigiendo...</title></head>
    <body></body>
    <%

    }else
    {
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>iniciar sesion</title>
       
    </head>
    <body>
        
        
        <form method="post" action="ingreso" name="form1" id="form1">
            <table align="center">
                <tr>
                    <td colspan="2">
                        AUTENTICACION DE USUARIO
                    </td>
                </tr>
                <tr>
                    <td>
                        Tipo usuario
                    </td>
                    <td>
                        <select name="tipo" id="tipo">
                            <option>docente</option>
                            <option>administrador</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="result"></div>
                        Usuario
                    </td>
                    <td>
                        <input type="text" name="usu" id="usu" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Contraseña
                    </td>
                    <td>
                        <input type="password" name="pass" id="pass" required/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Ingresar" name="enviar" id="enviar"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div style="color: red;" id="error"></div>
                    </td>
                </tr>
            </table>
        </form>
         <% 
         if (request.getParameter("login") == null) {
        
    } else {
        %>
    <script>alert("Error, Usuario o contraseña errados");
    document.getElementById("error").innerHTML="Usuario o contraseña errados";
    </script>    
    <%
    }
         
    %>
    </body>
</html>
<% }%>