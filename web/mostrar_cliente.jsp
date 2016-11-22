<%-- 
    Document   : mostrar_cliente
    Created on : 22/11/2016, 08:14:00 AM
    Author     : ficha1020611
--%>

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
    ArrayList<Clientes> listarclientes = new ArrayList<>();
    String ids = "";
    String nombre = "";
    String apellido = "";
    String tel = "";
    String email = "";
    String documento = "";
    String ciudad = "";
    String direccion = "";
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
                String query = "SELECT * FROM Clientes WHERE id=" + ids + ";";
                System.out.println(query);
                ResultSet rs = stm.executeQuery(query);
                while (rs.next()) {
                    //ids = Integer.parseInt(rs.getString(1));
                    nombre = rs.getString(2);
                    apellido = rs.getString(3);
                    tel = rs.getString(5);
                    email = rs.getString(6);
                    documento = rs.getString(8);
                    ciudad = rs.getString(9);
                    direccion = rs.getString(10);

                    System.out.println(query);
                    rs.close();
                    cnn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();

            }
        %>
        <div class="container well">
            <h1>Mostar Cliente</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Fecha de Nacimiento</th>
                        <th>Telefono</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%= nombre%></td>
                        <td><%= apellido%></td>
                        <td>10/12/2016</td>
                        <td><%= tel%></td>
                </tbody>
            </table>
            <table class="table">
                <thead>
                    <tr>
                        <th>Email</th>
                        <th>Documento</th>
                        <th>Ciudad</th>
                        <th>Dirección</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%= email%></td>
                        <td><%= documento%></td>
                        <td><%= ciudad%></td>
                        <td><%= direccion%></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
