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
                <li><a href="listar_barcode?pag=0">Barcode</a></li>               
                <%
                    HttpSession rs = request.getSession();
                    String rol;
                    if (rs.getAttribute("rol") == null) {
                        rol = "Vacio";
                    } else {
                        rol = (String) rs.getAttribute("rol");
                    }

                    if (rol.equals("1")) { %>                      
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Empleados<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="registrar_empleado.jsp">Registrar</a></li>
                        <li><a href="listar_empleados?pag=0">Listar2</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Clientes<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="registrar_cliente.jsp">Registrar</a></li>
                        <li><a href="listar?pag=0">Listar</a></li>
                        <li><a href="listar_cliente?pag=0">Listar2</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Peliculas<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="resgistrar_pelicula.jsp">Registrar</a></li>
                        <li><a href="listar_peliculas?pag=0">Listar</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Prestamos<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="resgistrar_prestamo.jsp">Registrar</a></li>
                        <li><a href="listar_prestamos?pag=0">Listar</a></li>
                    </ul>
                </li>       
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Tablas<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="resgistrar_prestamo.jsp">Devoluciones</a></li>
                        <li><a href="resgistrar_prestamo.jsp">Liquidaciones</a></li>
                        <li><a href="resgistrar_prestamo.jsp">Reportes</a></li>
                        <li><a href="resgistrar_prestamo.jsp">Reservas</a></li>
                        <li><a href="resgistrar_prestamo.jsp">sanciones</a></li>
                        <li><a href="resgistrar_prestamo.jsp">Sugerencias</a></li>
                    </ul>
                </li>
                    <% } else if (rol.equals("2")) { %>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Peliculas<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="resgistrar_pelicula.jsp">Registrar</a></li>
                        <li><a href="listar_peliculas?pag=0">Listar</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Prestamos<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="resgistrar_prestamo.jsp">Registrar</a></li>
                    </ul>
                </li> 
                    <% } else if (rol.equals("3")) { %>
                <li><a href="resgistrar_pelicula.jsp">Peliculas</a></li>
                    <% }%>        
            </ul>
            <ul class="nav navbar-nav navbar-right">

                <% if (rol.equals("1") || rol.equals("2") || rol.equals("3")) {%>
                <li><a href="cerrar"><span class="glyphicon glyphicon-user"></span>Cerrar sesion</a></li>
                    <% } else { %>
                <li><a href="registrar_cliente.jsp">Registrarse</a></li>
                <li><a href="#" data-toggle="modal" data-target="#myModal">Ingresar</a></li>
                    <% }%>
            </ul> 
        </div>
    </nav>       
</div> 
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Ingresar</h4>
            </div>
            <div class="modal-body">
                <jsp:include page="login.jsp" flush="true"/>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
            
