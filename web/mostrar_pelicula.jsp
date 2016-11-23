<%-- 
    Document   : mostrar_pelicula
    Created on : 23/11/2016, 07:30:17 AM
    Author     : ficha1020611
--%>

<%@page import="model.Generos"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="controller.listar_cliente"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Peliculas"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="controller.conectadb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Peliculas> listarpelicula = new ArrayList<>();
    String ids = "";
    String nombre = "";
    String poster = "";
    Generos generoid = new Generos();
    String duracion = "";
    String estado = "";
    String ejemplar = "";
    String descripcion = "";
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
                String query = "SELECT * FROM Peliculas WHERE id=" + ids + ";";
                System.out.println(query);
                ResultSet rs = stm.executeQuery(query);
                while (rs.next()) {
                    //ids = Integer.parseInt(rs.getString(1));
                    nombre = rs.getString(2);
                    poster = rs.getString(3);
                    generoid.setNombre(rs.getString(4));
                    duracion = rs.getString(5);
                    estado = rs.getString(6);
                    ejemplar = rs.getString(7);
                    descripcion = rs.getString(8);

                    System.out.println(query);
                    rs.close();
                    cnn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();

            }
        %>
        <div class="container well">
            <div class="row">
                <div class="col-md-12">
                    <h2><%= nombre%></h2>
                </div>
                <div class="col-md-5">
                    <img src="<%= poster%>" alt="<%= nombre%>" class="img-responsive">
                </div>
                <div class="col-md-7">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td><strong>Título</strong></td>
                                <td><%= nombre%></td>
                            </tr>
                            <tr>
                                <td><strong>Descripción</strong></td>
                                <td><%= descripcion%></td>
                            </tr>
                            <tr>
                                <td><strong>Genero</strong></td>
                                <td><%= generoid%></td>
                            </tr>
                            <tr>
                                <td><strong>Duración</strong></td>
                                <td><%= duracion%></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>            
        </div>
    </body>
</html>