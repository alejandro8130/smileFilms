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
                                <% for (Peliculas c : lista) {%>
                                <% int id = c.getId();%>
                                <tr id="<%=id%>">
                                    <td><%= c.getId()%></td>
                                    <td class="nombre"><%= c.getNombre()%></td>
                                    <td class="poster"><img src="<%= c.getPoster()%>" alt="imagen" class="img-responsive"></td>
                                    <td class="genero"><%= c.getGeneroId().getNombre()%></td>
                                    <td class="duracion"><%= c.getDuracion()%></td>
                                    <td class="estado"><%= c.getEstado()%></td>
                                    <td class="ejemplar"><%= c.getEjemplar()%></td>
                                    <td class="descripcion"><%= c.getDescripcion()%></td>
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

