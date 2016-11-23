<%-- 
    Document   : listar_peliculas.jsp
    Created on : 03-nov-2016, 21:54:38
    Author     : alejo
--%>

<%@page import="model.Generos"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Peliculas"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    ArrayList<Peliculas> lista = (ArrayList<Peliculas>) session.getAttribute("lista");

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
        <div class="container well">
            <div class="container" align="center">
                <div class="row">
                    <div class="col-sm-12">
                        <h1>Listar Empleado</h1>
                        <table id="peliculas" class="table">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Poster</th>
                                    <th>Genero</th>
                                    <th>Duracion</th>
                                    <th>Estado</th>
                                    <th>Ejemplar</th>                     
                                    <th>Descripcion</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>                            
                                <% 
                                    int id = 0;
                                    for (Peliculas c : lista) {
                                    id = c.getId();%>
                                <tr id="<%=id%>">
                                    <td><%= c.getId()%></td>
                                    <td class="nombre"><%= c.getNombre()%></td>
                                    <td class="poster"><img src="<%= c.getPoster()%>" alt="imagen" class="img-responsive"></td>
                                    <td class="genero"><%= c.getGeneroId().getNombre()%></td>
                                    <td class="duracion"><%= c.getDuracion()%></td>
                                    <td class="estado"><%= c.getEstado()%></td>
                                    <td class="ejemplar"><%= c.getEjemplar()%></td>
                                    <td class="descripcion"><%= c.getDescripcion()%></td>
                                    <td><a href="mostrar_pelicula.jsp?id=<%=id%>" type="button" class="btn btn-success" >Mostrar</a></td>
                                    <td><a href="editar_pelicula.jsp?id=<%=id%>" type="button" class="btn btn-warning" >Editar</a></td>
                                    <td><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Eliminar</button></td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                </div>
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

