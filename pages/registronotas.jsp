<%
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
				<h2><a href="#">Registrar Notas</a></h2>
                                
			</div>
                    <div class="content" style="overflow: scroll;">
                            <form method="post"  name="formnotas" id="formnotas" action="guardarnotas">
                                <table>
                                    
                                    <tr>
                                        <td >
                                        <label >Que va A realizar</label>
                                        
                                        <select name="grupo1" id="grupo1" onchange="nota(this.form)" >
                                            <option selected>-----</option>
                                            <option>Registrar Nueva Nota</option>
                                            <option>Modificar Una Nota</option>
                                        </select>
                                        &nbsp;
                                        </td>
                                        <td id="grupo">
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th colspan="2" id="resultado">
                                            
                                        </th>
                                    </tr>
                                    <tr>
                                        <th colspan="2" id="resultado1">
                                            
                                        </th>
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
