
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String curso=request.getParameter("curso");
    String materia=request.getParameter("materia");
    String docente=(String)session.getAttribute("codigo");
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/myscript.js"></script>
        <link rel="stylesheet" href="../css/style.css">
        <title>pop-pup</title>
    </head>
    <body onload="lista('<%=curso%>',<%=materia%>)">
        <div id="resultado" style="height: 500px;overflow: auto;">
            
        </div>
    </body>
</html>
