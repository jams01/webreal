<%@page import="servlets.Sql"
        import="java.util.ArrayList"
        import="java.util.Iterator"
        %>
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
				<h2><a href="#">Administrar Permisos</a></h2>
                                
			</div>
			<div class="content">
                            
                                <table id="permisostable">
                                    
                                    <tr>
                                        <td>
                                            Permiso de Edición Global
                                        </td>
                                        <td id="permisostable">
                                            <form id="editg" >
                                                <% int permiso =Integer.valueOf(Sql.getCampo("select valor from permiso where idpermiso='1'"));
                                                   String ch1="",ch2="",ch3="";
                                                if(permiso==1){
                                                    ch1="checked";
                                                    ch2="";
                                                    ch3="";
                                                }else if(permiso==2){
                                                    ch3="checked";
                                                    ch1="";
                                                    ch2="";
                                                }else{
                                                    ch2="checked";
                                                    ch1="";
                                                    ch3="";
                                                }
                                                %>
                                                <input type="radio" name="activar" value="0" onchange="permisoglobal(this.form)" <%=ch2%>/>Desactivar<br>
                                                <input type="radio" name="activar" value="1" onchange="permisoglobal(this.form)" <%=ch1%>/>Activar insersión de nuevas notas solamente<br>
                                                <input type="radio" name="activar" value="1" onchange="permisoglobal(this.form)" <%=ch3%> />Activar inserción y/o edición de notas
                                                
                                               
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="permisostable">
                                            <%
                                            ArrayList profesores=Sql.consulta("select codigo,nombre,apellido,permisos from docente;");
                                            %>
                                            Permisos de Edición a profesores<br>
                                            <form id="formpermiso" name="formpermiso">
                                            <select name="permisosdoc" id="permisosdoc" onchange="generar_radio(this.form)">
                                                <option selected>-----</option>
                                                <% 
                                                    int control=0;
                                                    String[] datos;
                                                    for(Iterator i=profesores.iterator();i.hasNext();){
                                                        datos=(String[])i.next();
                                                        if(control>0){
                                                            %>
                                                            <option id="<%=datos[0]%>" class="<%=datos[3] %>"><%=datos[1]+" "+datos[2] %></option>
                                                            <%
                                                        }
                                                        control++;
                                                    }
                                                    %>
                                            </select>
                                            </form>
                                        </td>
                                        <td id="resultador">
                                            
                                        </td>
                                    </tr>
                                </table>
                                
                                
                                
                              
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
