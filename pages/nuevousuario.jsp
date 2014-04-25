<%
   int j=(Integer) session.getAttribute("cantidad");
   if(!(request.getParameter("ingresar")==null))
   {
   if((request.getParameter("ingresar").equals("admin")))
   {
%>

<script type="text/javascript" src="./js/myscript.js"></script>


<!--------------Content--------------->
<section id="content">
	<div id="main-content1">
		<article>
			<div class="heading">
				<h2><a href="#">Crear Usuario</a></h2>
                                
			</div>
                    <div class="content">
                            <form method="post"  name="usuario" id="forusuarios" action="crearusuario" >
                                <table style="width: 500px;margin: 0 auto; ">
                                    <tr style="height: 45px;">
                                        <td>Nombre</td><td><input id="personal" type="text" name="nombre" required/></td>
                                        <td>Apellido</td><td><input id="personal" type="text" name="apellido" required/></td>
                                    </tr>
                                    <tr style="height: 45px;">
                                        <td>Cedula</td><td><input id="personal" type="text" name="cedula" required/></td>
                                        <td>Código</td><td><input id="personal" type="text" name="codigo" required/></td>
                                    </tr>
                                    <tr style="height: 45px;">
                                        <td>Correo</td><td><input id="personal" type="email" name="correo" required/></td>
                                        <td>tipo de usuario</td><td><select name="usuario" required><option>docente</option><option>administrador</option></select></td>
                                    </tr>
                                    <tr><td colspan="2"></td><td><input id="personal" type="submit" value="Crear"/></td></tr>
                                </table>
                                
                                
                                
                            </form>    
			</div>
		</article>
		
	</div>
	<div class="clear"></div>
</section>
<!--------------Footer--------------->
<footer>
	<div class="wrap-footer">
		<p>Copyright © 2012 - <a href="http://www.zerotheme.com/432/free-responsive-html5-css3-website-templates.html" target="_blank">Free Responsive Html5 Templates</a> by Zerotheme.com</p>
	</div>
</footer>
<% } 
   else 
   {
       response.sendRedirect("../principal.jsp?page=inicio");
   }
}
   else 
   {
       response.sendRedirect("../principal.jsp?page=inicio");
   }
%>