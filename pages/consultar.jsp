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
				<h2><a href="#">Consultar Notas</a></h2>
                                
			</div>
                    <div class="content" style="overflow: auto;height: 600px;">
                            <form method="post"  name="formnotas" id="formnotas">
                                <table>
                                    
                                    <tr>
                                        <td >
                                        
                                        <label>selecciona el grupo</label>&nbsp;<select  name="gruposel" id="gruposel" onchange="cambio2(this.form)"><option selected>-------</option>";
                                        <% 
                                           
                                            for(int i=2;i<=j;i++)
                                            {
                                               %>
                                               <option id="<%=session.getAttribute(String.valueOf(i)+"1")%>" class="<%=session.getAttribute(String.valueOf(i)+"3")%>"><%=session.getAttribute(String.valueOf(i)+"1")%>&nbsp<%=session.getAttribute(String.valueOf(i)+"2")%></option>;
                                        <%
                                                }   
                                        %></select>
                                        &nbsp;
                                        </td>
                                        <td id="grupo">
                                            
                                        </td>
                                        &nbsp;
                                        <td id="practica">
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th colspan="3" id="resultado">
                                            
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
