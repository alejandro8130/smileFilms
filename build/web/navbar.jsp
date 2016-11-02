 <%-- 
    Document   : navbar
    Created on : 28-oct-2016, 10:12:00
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Smile Films<span class="glyphicon glyphicon-facetime-video"></span></a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">Home</a></li>
                    <%
                        HttpSession rs = request.getSession();
                        String rol;
                        if (rs.getAttribute("rol") == null) {
                            rol = "Vacio";
                        } else {
                            rol = (String) rs.getAttribute("rol");
                        }

                        if (rol.equals("Gerente")) { %>                      
                <li><a href="#">Empleados</a></li> 
                <li><a href="registrar_cliente.jsp">R Clientes</a></li>
                <li><a href="listar?pag=0">Clientes</a></li>
                <li><a href="#">Peliculas</a></li>
                <li><a href="#">Prestamos</a></li>                         
                    <% } else if (rol.equals("Empleado")) { %>
                <li><a href="#">Peliculas</a></li>
                <li><a href="#">Prestamos</a></li> 
                    <% } else if (rol.equals("Cliente")) { %>
                <li><a href="#">Peliculas</a></li>
                <li><a href="#">Prestamos</a></li> 
                    <% }%>        
            </ul>
        </div>
    </nav>       
</div> 
