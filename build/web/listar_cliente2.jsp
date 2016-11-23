<%-- 
    Document   : listar_cliente2
    Created on : 18/11/2016, 10:11:14 AM
    Author     : ficha1020611
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    ArrayList<Clientes> lista = (ArrayList<Clientes>) session.getAttribute("lista");

%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="librerias.jsp" flush="true"/>     
        <script type="text/javascript">
            $(document).ready(function () {
                $('#empleados').DataTable({
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
                        <table id="empleados" class="table">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Fecha de Nacimiento</th>
                                    <th>Telefono</th>
                                    <th>Email</th>                     
                                    <th>Documento</th>
                                    <th>Ciudad</th>
                                    <th>Dirección</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>                            
                                <%                                    
                                    int id = 0;
                                    for (Clientes c : lista) {
                                        id = c.getId();%>
                                <tr>
                                    <td><%= c.getId()%></td>
                                    <td class="nombre"><%= c.getNombre()%></td>
                                    <td class="apellido"><%= c.getApellido()%></td>
                                    <td class="fecha"><%= c.getFechaNacimiento()%></td>
                                    <td class="telefono"><%= c.getTel()%></td>
                                    <td class="email"><%= c.getEmail()%></td>
                                    <td class="documento"><%= c.getDocumento()%></td>
                                    <td class="ciudad"><%= c.getCiudad()%></td>
                                    <td class="direccion"><%= c.getDireccion()%></td>
                                    <td><a href="mostrar_cliente.jsp?id=<%=id%>" type="button" class="btn btn-success" >Mostrar</a></td>
                                    <td><a href="editar_cliente.jsp?id=<%=id%>" type="button" class="btn btn-warning" >Editar</a></td>                                    
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
                            <h4 class="modal-title">Eliminar Cliente</h4>
                        </div>
                        <div class="modal-body">
                            <p>Estas seguro?</p>
                        </div>
                        <div class="modal-footer">
                            <a href="eliminar_cliente?id=<%=id%>" type="button" class="btn btn-danger">Aceptar</a>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
