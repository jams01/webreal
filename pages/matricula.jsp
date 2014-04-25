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
				<h2><a href="#">Matricular Estudiantes</a></h2>
                                
			</div>
                    <div class="content">
                            <form method="post"  name="usuario" id="forusuarios" action="Matriculas" >
                                <table style="margin: 0 auto;width: 550px;">
                                    <tr>
                                        <td>Materia</td><td><input type="text" name="materia" size="10" id="30" onchange="comprobar(30,3)" required/><input type="text" id="130" readonly="readonly" style="border: 0px;"/></td>
                                    </tr>
                                    <tr>
                                        <td>Curso</td><td><input type="text" name="curso" size="10" pattern="([A-Z|0-9]){1,4}" title="hasta 4 caracteres (letras Mayusculas)" required/></td>
                                    </tr>
                                    <tr>
                                        <td>Docente</td><td><input type="text" name="docente" size="10" id="20" onchange="comprobar(20,1)" required/><input type="text" id="120" readonly="readonly" style="border: 0px;"/></td>
                                    </tr>
                                    <tr id="0">
                                    
                                    </tr>
                                    <tr>
                                        <td><input type="button" id="agregar" onclick="otro(0)" value="agregar estudiante"/><br/></td>
                                    </tr>
                                    <tr>
                                        <td></td><td><input type="submit" value="Guardar" id="guardar" disabled/></td>
                                    </tr>
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
