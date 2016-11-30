<%-- 
    Document   : listar_empleados
    Created on : 22/11/2016, 07:47:31 AM
    Author     : ficha1020611
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Empleados"%>
<%@page import="model.Roles"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    ArrayList<Empleados> lista = (ArrayList<Empleados>) session.getAttribute("lista");

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
        <div class="container well" align="center">
            <div class="row">
                <h1>Listar Empleado</h1>
                <table id="empleados" class="table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Telefono</th>                                    
                            <th>Email</th>   
                            <th>Cargo</th>
                            <th>Documento</th>
                            <th>Fecha de Inicio</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>                            
                        <%                            
                            int id = 0;
                            for (Empleados e : lista) {
                                id = e.getId();%>
                        <tr id="<%=id%>">
                            <td><%= e.getId()%></td>
                            <td class="nombre"><%= e.getNombre()%></td>
                            <td class="apellido"><%= e.getApellido()%></td>
                            <td class="fecha"><%= e.getTel()%></td>
                            <td class="telefono"><%= e.getEmail()%></td>                                    
                            <td class="ciudad"><%= e.getRolid().getNombre()%></td>
                            <td class="email"><%= e.getDocumento()%></td>
                            <td class="documento"><%= e.getFechaInicio()%></td>        
                            <td><a href="mostrar_empleado.jsp?id=<%=id%>" type="button" class="btn btn-success" >Mostrar</a></td>
                            <td><a href="editar_empleado.jsp?id=<%=id%>" type="button" class="btn btn-warning" >Editar</a></td>
                            <td><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Eliminar</button></td>
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
                            <h4 class="modal-title">Eliminar Empleado</h4>
                        </div>
                        <div class="modal-body">
                            <p>Estas seguro?</p>
                        </div>
                        <div class="modal-footer">
                            <a href="eliminar_empleado?id=<%=id%>" type="button" class="btn btn-danger">Aceptar</a>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
