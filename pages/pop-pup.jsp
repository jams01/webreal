
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        String action=(String)request.getParameter("action");
        String tipo=(String)request.getParameter("tipo");
        String practica=(String)request.getParameter("cuenta");
        String start=(String)request.getParameter("start");
        String tamano=(String)request.getParameter("tamano");
    %>
    <head>
        <script type="text/javascript" src="../js/myscript.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/style.css">
        <title>pop-pup</title>
    </head>
    <body onload="filtro1(<%=tipo%>,<%=practica%>,<%=tamano%>)">
        
        <div id="resultado1" style="overflow: auto; height: 500px;" >
           
        </div>
        <div><input type="button" onclick="retornar(<%=start%>,<%=tamano%>)" value="Aceptar"></div>
    </body>
</html>
