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

                        if (rol.equals("1")) { %>                      
                <li><a href="registrar_empleado.jsp">Empleados</a></li> 
                <li><a href="registrar_cliente.jsp">R Clientes</a></li>
                <li><a href="listar?pag=0">Clientes</a></li>
                <li><a href="resgistrar_pelicula.jsp">R Peliculas</a></li>
                <li><a href="listar_peliculas?pag=0">Peliculas</a></li>
                <li><a href="resgistrar_prestamo.jsp">Prestamos</a></li>                         
                    <% } else if (rol.equals("2")) { %>
                <li><a href="resgistrar_pelicula.jsp">Peliculas</a></li>
                <li><a href="resgistrar_prestamo">Prestamos</a></li> 
                    <% } else if (rol.equals("3")) { %>
                <li><a href="resgistrar_pelicula.jsp">Peliculas</a></li>
                    <% }%>        
            </ul>
            <ul class="nav navbar-nav navbar-right">

                <% if (rol.equals("Gerente") || rol.equals("Empleado") || rol.equals("Cliente")) {%>
                <li><a href="cerrar"><span class="glyphicon glyphicon-user"></span>Cerrar sesion</a></li>
                    <% } else { %>
                <li><a href="registrar_cliente.jsp">Registrarse</a></li>
                    <% }%>
            </ul> 
        </div>
    </nav>       
</div> 
