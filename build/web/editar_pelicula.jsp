
<%@page import="model.Generos"%>
<%-- 
    Document   : editar_pelicula
    Created on : 23/11/2016, 11:11:22 AM
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
<%@page import="model.Empleados"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="controller.conectadb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
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
            ArrayList<Generos> listarroles = new ArrayList<>();
            try {
                conectadb con = new conectadb();
                Connection cnn = con.conectar();
                Statement stm = cnn.createStatement();
                String query = "SELECT * FROM Roles;";
                System.out.println(query);
                ResultSet rs = stm.executeQuery(query);
                while (rs.next()) {
                    Generos rol = new Generos();
                    int id = Integer.parseInt(rs.getString(1));
                    String nombre_rol = rs.getString(2);

                    rol.setId(id);
                    rol.setNombre(nombre_rol);

                    listarroles.add(rol);
                }
                rs.close();
                cnn.close();
            } catch (Exception e) {
                System.out.println("error");
                e.printStackTrace();
            }
            try {
                conectadb con = new conectadb();
                Connection cnn = con.conectar();
                Statement stm = cnn.createStatement();
                ids = request.getParameter("id");
                String query = "SELECT * FROM Peliculas WHERE id=" + ids + ";";
                System.out.println(query);
                ResultSet rs = stm.executeQuery(query);
                while (rs.next()) {
                    ids = rs.getString(1);
                    nombre = rs.getString(2);
                    poster = rs.getString(3);
                    generoid.setNombre(rs.getString(4));
                    duracion = rs.getString(5);
                    estado = rs.getString(6);
                    ejemplar = rs.getString(7);
                    descripcion = rs.getString(8);

                    System.out.println(query);
                    System.out.println(descripcion);
                    rs.close();
                    cnn.close();
                }
            } catch (SQLException e) {
                System.out.println(e);
                e.printStackTrace();

            }
        %>
        <div class="container well">
            <h1>Editar Empleado</h1>
            <form method="POST" action="editar_empleado" id="registrationForm">                  
                <div class="form-group col-md-6">
                    <label>Nombre</label>
                    <input type="text" name="nombre" class="form-control" value="<%= nombre%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Poster</label>
                    <input type="text" name="poster" class="form-control" value="<%= poster%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Genero</label>
                    <select class="form-control" id="select" name="genero">
                        <option value="0">Selecionar</option> 
                        <% for (Generos r : listarroles) {%>                    
                        <option value="<%= r.getId()%>"><%= r.getNombre()%></option>                    
                        <% }%>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label>Duración</label>
                    <input type="text" name="duracion" class="form-control" value="<%= duracion%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Estado</label>
                    <input type="text" name="estado" class="form-control" value="<%= estado%>">
                </div>              
                <div class="form-group col-md-6">
                    <label>Ejemplar</label>
                    <input type="text" name="ejemplar" class="form-control" value="<%= ejemplar%>">
                </div>                
                <div class="form-group col-md-6">
                    <label>Descripcion</label>
                    <textarea name="descripcion" class="form-control" rows="3" id="textArea" value="<%= descripcion%>"></textarea>
                </div>
                <div class="form-group col-md-6">
                    <label>Id</label>
                    <input type="text" name="id" class="form-control" value="<%= ids%>">
                </div>
                <div class="col-md-12 center">
                    <button type="submit" class="btn btn-default">Registrar</button>
                </div>    
            </form>        
        </div>
    </body>
</html>
