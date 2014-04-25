<%-- 
    Document   : home
    Created on : 11-abr-2014, 11:28:03
    Author     : JonathanArley
--%>
<%@page import="java.util.Iterator"%>
<%@page import="servlets.Sql"%>
<%@page import="java.util.ArrayList"%>
<%
   int numero=(Integer) session.getAttribute("cantidad");
   int privilegios=(Integer) session.getAttribute("admin");
   if(!(request.getParameter("ingresar")==null))
   {
   if((request.getParameter("ingresar").equals("admin")))
   {
%>



<!--------------Content--------------->
<section id="content">
	<div id="main-content">
            <% ArrayList noticias=Sql.consulta("select a.nombre,a.apellido,p.titulo,p.contenido,p.imagen,p.fecha from administrador a inner join publicaciones p on p.publicado=a.codigo order by p.fecha DESC limit 5;");
            String[] datos;
            int j=0;
            for(Iterator i=noticias.iterator();i.hasNext();){
                datos=(String[])i.next();
                if(j>0){
            %>
		<article>
			<div class="heading">
				<h2><a href="#"><%=datos[2]%></a></h2>
			</div>
			<div class="content">
                            <% if(!(datos[4].equals("./imagesUsers/"))) {%>
                            <img width="560" height="250" src="<%=datos[4]%>" />
                            <%} %>
				<p><%=datos[3]%></p>
				<p>...............</p>
				<div class="info">publicado por <%=datos[0]%> <%=datos[1]%>| <%=datos[5]%> </div>
			</div>
		</article>
                <%
                }
                j++;
                    }
                 %>
		
	</div>
	<div id="sidebar" class="col-right">
		<section>
                    <%if (privilegios==0){ %>
			<div class="heading"><h2>Mis Grupos</h2></div>
			<div class="content">
                            
                                <% 
                                for (int i=2;i<=numero;i++)
                                {
                                    %>
                                    <a href="./pages/pop-2.jsp?curso=<%=(String)session.getAttribute(String.valueOf(i)+"1") %>&materia=<%=(String)session.getAttribute(String.valueOf(i)+"3") %>" target="_blank" onClick="window.open(this.href, this.target, 'width=600,height=600'); return false;">
                                        <%=(String)session.getAttribute(String.valueOf(i)+"1") %> 
                                        &nbsp
                                        <%=(String)session.getAttribute(String.valueOf(i)+"2") %> 
                                    </a><hr>
                                    <%
                                    
                                }
                                %>
                         <%}else{
                         %>
                         <div class="heading"><h2>Acciones</h2></div>
			<div class="content">
                            <a href="./principal.jsp?page=crear">crear usuario</a><hr>
                            <a href="./principal.jsp?page=est">crear estudiante</a><hr>
                            <a href="./principal.jsp?page=inscribir">Matricular</a><hr>
                            <a href="./pages/fin_semestre.jsp" target="_blank" onClick="window.open(this.href, this.target, 'width=600,height=600'); return false;">finalizar periodo</a><hr>
                         <%
                         }%>
			</div>
		</section>
		<section>
			<div class="heading"><h2>links sugerios</h2></div>
			<div class="content">
				<ul>
                                    <li><a href="http://www.uis.edu.co" target="_blank">Universidad Industrial de Santander</a></li>
					<li><a href="#">otra cosa</a></li>
					<li><a href="#">algo mas</a></li>
					<li><a href="#">aun mas</a></li>
					<li><a href="#">y todavia mas</a></li>
				</ul>
			</div>
		</section>
		<section>
			<div class="heading"><h2>informacion adicional</h2></div>
			<div class="content">
				<div class="post">
                                    <img src="images/img1.jpg" width="230" height="130"/>
					<h4><a href="#">informacion</a></h4>
				</div>
				<div class="post">
					<img src="images/img1.jpg"/>
					<h4><a href="#">informacion</a></h4>
				</div>
				<div class="post">
					<img src="images/img1.jpg"/>
					<h4><a href="#">informacion</a></h4>
				</div>
				<div class="post">
					<img src="images/img1.jpg"/>
					<h4><a href="#">informacion</a></h4>
				</div>
			</div>
		</section>
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
