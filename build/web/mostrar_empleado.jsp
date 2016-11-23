<%-- 
    Document   : mostrar_empleado
    Created on : 23/11/2016, 10:37:26 AM
    Author     : ficha1020611
--%>

<%@page import="model.Roles"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="controller.listar_cliente"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Clientes"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="controller.conectadb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String ids = "";
    String nombre = "";
    String apellido = "";
    String tel = "";
    String email = "";
    Roles rolid = new Roles();
    String documento = "";
    String fecha = "";
%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="librerias.jsp" flush="true"/>
    </head>
    <body>     
        <jsp:include page="banner.jsp" flush="true"/>
        <jsp:include page="navbar.jsp" flush="true"/>
        <%
            try {
                conectadb con = new conectadb();
                Connection cnn = con.conectar();
                Statement stm = cnn.createStatement();
                ids = request.getParameter("id");
                String query = "SELECT * FROM Empleados WHERE id=" + ids + ";";
                System.out.println(query);
                ResultSet rs = stm.executeQuery(query);
                while (rs.next()) {
                    nombre = rs.getString(2);
                    apellido = rs.getString(3);
                    tel = rs.getString(4);
                    email = rs.getString(5);
                    rolid.setNombre(rs.getString(6));
                    documento = rs.getString(7);
                    fecha = rs.getString(8);

                    System.out.println(query);
                    rs.close();
                    cnn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();

            }
        %>
        <div class="container well">
            <h1>Mostrar Cliente</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Telefono</th>
                        <th>Email</th>                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%= nombre%></td>
                        <td><%= apellido%></td>
                        <td><%= tel%></td>
                        <td><%= email%></td>
                </tbody>
            </table>
            <table class="table">
                <thead>
                    <tr>
                        <th>Cargo</th>
                        <th>Documento</th>
                        <th>Fecha de Incio</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%= rolid%></td>
                        <td><%= documento%></td>
                        <td><%= fecha%></td>
                    </tr>
                </tbody>
            </table>
            <div class="row">
                <div class="col-md-12">
                    <a href="listar_empleado" type="button" class="btn btn-danger" >Atras</a>
                </div>
            </div>
        </div>
    </body>
</html>
