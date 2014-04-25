<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="../js/myscript.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/style.css">
        <title>pop-pup</title>
    </head>
    <body>
        <div id="resultado" style="height: 500px;overflow: auto;">
            <br/>
            <h1 style="color: red; font-size: 40px;text-align: center;">
                Atencion!!!!!
                </h1><br/>
                <article>
                    <form method="post" id="eli" name="eli" action="../elimina" style="margin-left: 80px; width: 300px;">
                    <label>Escriba su contraseña para proseguir con la finalización del periodo</label>
                    <br/><input type="password" id="contrasena" name="contrasena" required/><br/>   
                    <input type="button" value="Aceptar" onclick="eliminar(this.form)" />
                </form>
            </article>
        </div>
    </body>
</html>
