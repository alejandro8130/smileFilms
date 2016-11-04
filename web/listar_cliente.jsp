<%-- 
    Document   : listar
    Created on : 21/09/2016, 08:21:31 AM
    Author     : ficha1020611
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Clientes"%>
<%@page import="java.util.ArrayList"%>
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
                                </tr>
                            </thead>
                            <tbody>                            
                                <% for (Clientes c : lista) {%>
                                <% int id = c.getId();%>
                                <tr id="<%=id%>">
                                    <td><%= c.getId()%></td>
                                    <td class="nombre"><%= c.getNombre()%></td>
                                    <td class="apellido"><%= c.getApellido()%></td>
                                    <td class="fecha"><%= c.getFechaNacimiento()%></td>
                                    <td class="telefono"><%= c.getTel()%></td>
                                    <td class="email"><%= c.getEmail()%></td>
                                    <td class="documento"><%= c.getDocumento()%></td>
                                    <td class="ciudad"><%= c.getCiudad()%></td>
                                    <td class="direccion"><%= c.getDireccion()%></td>
                                    <td><button type="button" class="btn btn-warning" onclick="Act(<%=id%>);">Editar</button></td>
                                    <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                                </tr>
                                <% }%>

                            </tbody>
                        </table>
                    </div>
                </div>
                <script type="text/javascript">

//Los dos archivos se suben a un servidor para que el ajax trabaje bien

// Funcion para cargar los datos con un formulario externo
                    function Act(Id) {

                        var nombre = $("#" + Id + " .nombre").html();
                        var telefono = $("#" + Id + " .telefono").html();
                        var apellido = $("#" + Id + " .apellido").html();
                        var fecha = $("#" + Id + " .fecha").html();
                        var fecha = $("#" + Id + " .fecha").html();
                        var email = $("#" + Id + " .email").html();
                        var documento = $("#" + Id + " .documento").html();
                        var ciudad = $("#" + Id + " .ciudad").html();
                        var direccion = $("#" + Id + " .direccion").html();

                        $("#" + Id).hide();

                        $.get("ing-form.html", function (response) {
                            $("#" + Id).html("<td colspan='12'>" + response + "</td>");
                            $("#n").val(nombre);
                            $("#a").val(apellido);
                            $("#f").val(fecha);
                            $("#t").val(telefono);
                            $("#e").val(email);
                            $("#d").val(documento);
                            $("#c").val(ciudad);
                            $("#di").val(direccion);
                            $("#idi").val(Id);
                            $("#" + Id).show("blind");
                            $(".btnact").attr("disabled", true);
                        });

                    }

                    function Guarda() {

                        var Id = $("#idi").val();
                        var nombre = $("#n").val();
                        var apellido = $("#a").val();
                        var fecha = $("#f").val();
                        var telefono = $("#t").val();
                        var email = $("#e").val();
                        var documento = $("#d").val();
                        var ciudad = $("#c").val();
                        var direccion = $("#di").val();
                        var Content;

//Acá se puede incluir función ajax para guardar en el servidor


                        Content += "<td>" + Id + "</td>";
                        Content += "<td class='nombre'>" + nombre + "</td>";
                        Content += "<td class='apellido'>" + apellido + "</td>";
                        Content += "<td class='fecha'>" + fecha + "</td>";
                        Content += "<td class='telefono'>" + telefono + "</td>";
                        Content += "<td class='email'>" + email + "</td>";
                        Content += "<td class='documento'>" + documento + "</td>";
                        Content += "<td class='ciudad'>" + ciudad + "</td>";
                        Content += "<td class='direccion'>" + direccion + "</td>";                        
                        Content += "<td><button type='button' class='btn btn-warning' onclick='Act(" + Id + ");'>Editar</button></td>";
                        Content += "<td><button type='button' class='btn btn-danger'>Eliminar</button></td>";

                        $("#" + Id).html(Content);
                        $(".btnact").attr("disabled", false);
                        $("form").remove();

                        toastr.success('Guardado correctamente')
                    }

                </script>
            </div>
        </div>




    </body>
</html>
