<%-- 
    Document   : listar_prestamos
    Created on : 30/11/2016, 07:35:44 AM
    Author     : ficha1020611
--%>

<%@page import="model.Generos"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Prestamos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    ArrayList<Prestamos> lista = (ArrayList<Prestamos>) session.getAttribute("lista");

%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="librerias.jsp" flush="true"/>     
        <script type="text/javascript">
            $(document).ready(function () {
                $('#peliculas').DataTable({
                    Language: {
                        "search": "Buscar:",
                    }
                });
            });
        </script>
    </head>
    <body>

        <jsp:include page="banner.jsp" flush="true"/>
        <jsp:include page="navbar.jsp" flush="true"/>
        <div class="container well" align="center">
            <div class="row">
                <h1>Listar Prestamos</h1>
                <table id="peliculas" class="table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Cliente</th>
                            <th>Pelicula</th>
                            <th>Fecha Devolución</th>
                            <th>Pago</th>
                            <th>Empleado</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>                            
                        <%                                    int id = 0;
                            for (Prestamos c : lista) {
                                id = c.getId();%>
                        <tr id="<%=id%>">
                            <td><%= c.getId()%></td>
                            <td class="nombre"><%= c.getClienteid().getNombre()%></td>
                            <td class="poster"><%= c.getPeliculaid().getNombre()%></td>
                            <td class="duracion"><%= c.getFechaDevolucion()%></td>
                            <td class="estado"><%= c.getPago()%></td>
                            <td class="ejemplar"><%= c.getEmpleadoid().getNombre()%></td>
                            <td><a href="mostrar_prestamo.jsp?id=<%=id%>" type="button" class="btn btn-success" >Mostrar</a></td>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
            </div>
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Eliminar Pelicula</h4>
                        </div>
                        <div class="modal-body">
                            <p>Estas seguro?</p>
                        </div>
                        <div class="modal-footer">
                            <a href="eliminar_pelicula?id=<%=id%>" type="button" class="btn btn-danger">Aceptar</a>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
