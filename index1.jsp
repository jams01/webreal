


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="ingreso">
            <table align="center">
                <tr>
                    <td colspan="2">
                        AUTENTICACION DE USUARIO
                    </td>
                </tr>
                <tr>
                    <td>
                        Usuario
                    </td>
                    <td>
                        <input type="text" name="usu" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Contraseña
                    </td>
                    <td>
                        <input type="password" name="pass" required/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Ingresar"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
