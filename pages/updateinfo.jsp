<%@page import="servlets.Sql"%>
<%
    int privilegios=(Integer) session.getAttribute("admin");
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
				<h2><a href="#">Actualizar Información</a></h2>
                                
			</div>
			<div class="content">
                           
                            
                                            <form method="post" name="personal" action="Personalinf?tipo=info">
                            <table style="width: 70%;">
                                    
                                    <tr>
                                        <td >
                                                <label>información personal</label>
                                            </td><td></td><td></td><td></td>
                                    </tr>
                                        <% 
                                           
                                            if(privilegios==0){
                                              %>
                                    <tr>
                                       
                                            <td>Código&nbsp;</td>
                                            <td><input type="text" name="codigo" readonly="readonly" value="<%=session.getAttribute("codigo")%>"/></td><td></td><td></td>
                                    </tr>
                                    <tr>
                                            <td>Nombre&nbsp;&nbsp;   </td>
                                            <td><input type="text" name="nombre" size="35" value="<%=Sql.getCampo("select nombre from docente where codigo='"+session.getAttribute("codigo")+"'") %>" required/>&nbsp;</td>
                                            <td>&nbsp;Apellido&nbsp;</td>
                                            <td>&nbsp; <input type="text" size="35" name="apellido" value="<%=Sql.getCampo("select apellido from docente where codigo='"+session.getAttribute("codigo")+"'") %>" required/></td>
                                    </tr>
                                    <tr>
                                            <td>Correo&nbsp;</td>
                                            <td><input type="email" size="35" name="correo" value="<%=Sql.getCampo("select correo from docente where codigo='"+session.getAttribute("codigo")+"'") %>" required /></td><td></td><td></td>
                                    </tr>
                                    <% }else{
                                    %>
                                        <tr>
                                       
                                            <td>Código&nbsp;</td>
                                            <td><input type="text" name="codigo" readonly="readonly" value="<%=session.getAttribute("codigo")%>"/></td><td></td><td></td>
                                    </tr>
                                    <tr>
                                            <td>Nombre&nbsp;&nbsp;   </td>
                                            <td><input type="text" name="nombre" size="35" value="<%=Sql.getCampo("select nombre from administrador where codigo='"+session.getAttribute("codigo")+"'") %>" required/>&nbsp;</td>
                                            <td>&nbsp;Apellido&nbsp;</td>
                                            <td>&nbsp; <input type="text" size="35" name="apellido" value="<%=Sql.getCampo("select apellido from administrador where codigo='"+session.getAttribute("codigo")+"'") %>" required/></td>
                                    </tr>
                                    <tr>
                                            <td>Correo&nbsp;</td>
                                            <td><input type="email" size="35" name="correo" value="<%=Sql.getCampo("select correo from administrador where codigo='"+session.getAttribute("codigo")+"'") %>" required /></td><td></td><td></td>
                                    </tr>
                                    <%
                                    }%>
                                    <tr>
                                        <td></td><td><input type="submit"  value="guardar" />
                            </table>
                                            </form>
                                        
                                        </td>
                                </tr><br><br><br>
                                    <form method="post" action="Personalinf?tipo=pass">
                                        <table style="width: 70%;">
                                    
                                    <tr>
                                        <th >
                                            Cambiar Contraseña
                                        </th>
                                    </tr>
                                    <tr>
                                        <th >
                                           Contraseña Anterior 
                                        </th>
                                        <th>
                                            <input type="password" name="contrasenaante" required/>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                            Contraseña Nueva
                                        </th>
                                        <th>
                                           <input type="password" name="contrasena1" onkeyup="contrasenas(this.form)" required/> 
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                            repita contraseña
                                        </th>
                                        <th>
                                            <input type="password" name="contrasena2" onkeyup="contrasenas(this.form)" required/> 
                                        </th>
                                    </tr>
                                    <tr>
                                        <th><input type="submit" name="enviar" id="envia" value="Cambiar" disabled="true"></th>
                                        <th><label id="resultado" style="color: red;"></label></th>
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
