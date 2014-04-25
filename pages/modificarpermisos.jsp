

<%@page import="servlets.Sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String accion=(String) request.getParameter("action");
  String valor=(String)request.getParameter("tipo");
  String codigo=(String)session.getAttribute("codigo");
  String docente=(String)request.getParameter("cod");
  int permiso=(Integer)session.getAttribute("admin");
  String mensaje=null,mensaje1=null;
    if(permiso==1){
        Sql.ejecuta("start transaction;");
        if(accion.equals("global")){
            mensaje=Sql.ejecuta("Update permiso set valor='"+valor+"',realizado='"+codigo+"' where idpermiso='1';");
            mensaje1=Sql.ejecuta("Update docente set permisos="+valor+" where codigo like '%';");
        }else{
            mensaje=Sql.ejecuta("Update docente set permisos="+valor+" where codigo='"+docente+"';");
        }
        if(mensaje==null && mensaje1==null){
            Sql.ejecuta("commit;");
            mensaje="Se guardo la configuración";
        }
        else {
            Sql.ejecuta("rollback;");
            mensaje="Error al guardar la configuración";
        }

        response.getWriter().printf(mensaje);
    }else{
        response.sendRedirect("../principal.jsp?page=inicio");
    }
%>