

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML">
<% if((String) session.getAttribute("nombre")==null)
    {
    %>
    <meta http-equiv='Refresh' CONTENT="0; URL=./index.jsp">
    <head><title>Error: No estas Autorizado</title></head>
    <body><h1 style="color: red;">No estas Autorizado Para estar aca haz click <a href="./index.jsp">aca</a> para ir a la pagina de inicio de sesion</h1></body>
    <%

    }else
    {
    %>

<%


   String apellidos = (String) session.getAttribute("ape");//Recoge la session
   String nombres = (String) session.getAttribute("nombre");//Recoge la session
   String correo = (String) session.getAttribute("correo");//Recoge la session
   int numero=(Integer) session.getAttribute("cantidad");
   int privilegios=(Integer) session.getAttribute("admin");
   

%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="es"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="es"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="es"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="es"> <!--<![endif]-->
    
<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>Sistema para la evaluacíon de practicas clínicas</title>
	
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
	
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->
	
	<link href='./images/favicon.ico' rel='icon' type='image/x-icon'/>
    
</head>
<body>
<!--------------Header--------------->
<header> 
	<div class="wrap-header">
            <div id="logo"><h1>Bienvenido<br><%=nombres%> <%=apellidos%></h1></div><div id="search"><a href="./cerrar.jsp">cerrar session</a></div>
	</div>
</header>
<!--------------Navigation--------------->
<nav>
	<div class="wrap-nav">
		<ul>
                    <% if (privilegios==0){ %>
			<li><a href="./principal.jsp?page=inicio">Inicio</a></li>
			<li><a href="./principal.jsp?page=consulta">Consultar Notas</a></li>
			<li><a href="./principal.jsp?page=registro">Registrar Notas</a></li>
			<li><a href="./principal.jsp?page=actualizar">Actualizar Info.</a></li>
			<!--<li><a href="#">Contact</a></li>-->
                        <%} else{
                        %>
                        <li><a href="./principal.jsp?page=inicio">Inicio</a></li>
			<li><a href="./principal.jsp?page=admin">Administrar Permisos</a></li>
			<li><a href="./principal.jsp?page=post">Publicar en cartelera</a></li>
			<li><a href="./principal.jsp?page=actualizar">Actualizar Info.</a></li>
                        <%
                        }%>
                    }
		</ul>
	</div>
</nav>

<!--------------Featured--------------->
<%if(request.getParameter("page")==null||request.getParameter("page").equals("inicio")){ %>
<jsp:include page="./pages/home.jsp?ingresar=admin" />
<% }
else if(request.getParameter("page").equals("consulta")&&privilegios==0)
{
%>
<jsp:include page="./pages/consultar.jsp?ingresar=admin" />
<%} 
else if(request.getParameter("page").equals("registro")&&privilegios==0){
    
%>
<jsp:include page="./pages/registronotas.jsp?ingresar=admin" />
<%} 
else if(request.getParameter("page").equals("admin")&&privilegios==1){
    
%>
<jsp:include page="./pages/permisos.jsp?ingresar=admin" />
<%}
else if(request.getParameter("page").equals("crear")&&privilegios==1){
    
%>
<jsp:include page="./pages/nuevousuario.jsp?ingresar=admin" />
<%}else if(request.getParameter("page").equals("est")&&privilegios==1){
    
%>
<jsp:include page="./pages/estudiantes.jsp?ingresar=admin" />
<%}else if(request.getParameter("page").equals("inscribir")&&privilegios==1){
    
%>
<jsp:include page="./pages/matricula.jsp?ingresar=admin" />
<%}
else if(request.getParameter("page").equals("post")&&privilegios==1){
    
%>
<jsp:include page="./pages/publicar.jsp?ingresar=admin" />
<%}
else if(request.getParameter("page").equals("actualizar")){
    
%>
<jsp:include page="./pages/updateinfo.jsp?ingresar=admin" />
<%} %>

</body>
<%try{
if(request.getParameter("guardar").equals("bn")&&request.getParameter("guardar")!=null){%>
<script>alert("Se han guardado los datos satisfactoriamente");</script>
<%}else{ %>
 <script>alert("Ocurrió un error y no se guardaron los datos");</script>   
<%} 
}catch(Exception e) {
    
}
%>    
</html>
<% }%>
