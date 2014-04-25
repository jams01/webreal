<%-- 
    Document   : cerrar
    Created on : 26-nov-2010, 12:30:40
    Author     : ING.FERNANDO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
if((String)session.getAttribute("nombre")!=null){
  session.invalidate();//destruye la session
}
%>

<html>
    <head>
        <meta http-equiv='Refresh' CONTENT="0; URL=./index.jsp">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>A ABANDONADO LA SESSION, PARA INGRESAR NUEVAMENTE CLICK <a href="index.jsp">Aqui</a></h1>
    </body>
</html>
