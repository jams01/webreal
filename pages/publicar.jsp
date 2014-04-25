
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<%
   int j=(Integer) session.getAttribute("cantidad");
   if(!(request.getParameter("ingresar")==null))
   {
   if((request.getParameter("ingresar").equals("admin")))
   {
%>

<script type="text/javascript" src="./js/myscript.js"></script>
<script type="text/javascript" src="./ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="./ckeditor/adapters/jquery.js"></script>  


<!--------------Content--------------->
<section id="content">
	<div id="main-content1">
		<article>
			<div class="heading">
				<h2><a href="#">Consultar Notas</a></h2>
                                
			</div>
                    <div class="content" style="overflow: auto;height: 600px;">
                        <form method="post"  name="publicacion" id="publicacion" action="publicar" enctype="multipart/form-data">
                                <table>
                                    <tr style="height: 45px;">
                                        <td><h3>Titulo</h3></td><td><input id="personal" type="text" name="titulo" size="60" required/></td>
                                    </tr>
                                    <tr style="height: 45px;">
                                        <td>Imagen</td><td><input type="file" id="personal"  name="imagen" accept="image/*" /></td>
                                    </tr>
                                    <tr>
                                        <td>Texto</td><td><textarea name="texto" id="personal3" rows="10" cols="70" ></textarea></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"></td><td><input type="submit" id="personal" value="Publicar" /></td> 
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
<ckeditor:replace replace="personal3" basePath="/ckeditor/" />
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
