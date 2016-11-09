<%-- 
    Document   : barcode
    Created on : 9/11/2016, 10:13:34 AM
    Author     : ficha1020611
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Barcodes"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    ArrayList<Barcodes> lista = (ArrayList<Barcodes>) session.getAttribute("lista");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smile Fimls</title>
        <jsp:include page="librerias.jsp" flush="true"/>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="banner.jsp" flush="true"/>
            <jsp:include page="navbar.jsp" flush="true"/>
            <div class="container peliculas">
                <form method="Get" action="barcode" class="form-inline">
                    Ingrese código de barras:
                    <div class="form-group">
                        <input type="text" name="barcode" id="barcode" class="form-control">
                    </div>
                    <input type="submit" class="btn btn-default" value="Buscar">
                </form>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                            <th>Barcode</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>                            
                        <% for (Barcodes c : lista) {%>
                        <% int id = c.getId();%>
                        <tr id="<%=id%>">
                            <td><%= c.getId()%></td>
                            <td class="nombre"><%= c.getNombre()%></td>
                            <td class="apellido"><%= c.getDescripcion()%></td>
                            <td class="fecha"><%= c.getBarcode()%></td>
                            <td><button type="button" class="btn btn-warning" onclick="Act(<%=id%>);">Editar</button></td>
                            <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                        </tr>
                        <% }%>

                    </tbody>
                </table>
            </div>
        </div>    
    </body>
</html>
