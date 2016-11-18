<%-- 
    Document   : resgistrar_pelicula
    Created on : 02-nov-2016, 19:17:16
    Author     : alejo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="controller.conectadb"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Generos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="librerias.jsp" flush="true"/>
    </head>
    <body>     
        <jsp:include page="banner.jsp" flush="true"/>
        <jsp:include page="navbar.jsp" flush="true"/>
        <%
            ArrayList<Generos> listargeneros = new ArrayList<>();
            try {
                conectadb con = new conectadb();
                Connection cnn = con.conectar();
                Statement stm = cnn.createStatement();
                String query = "SELECT * FROM Generos;";
                System.out.println(query);
                ResultSet rs = stm.executeQuery(query);
                while (rs.next()) {
                    Generos genero = new Generos();
                    int id = Integer.parseInt(rs.getString(1));
                    String nombre = rs.getString(2);

                    genero.setId(id);
                    genero.setNombre(nombre);

                    listargeneros.add(genero);
                }
                rs.close();
                cnn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <div class="container well">
            <form method="POST" action="registrar_pelicula">                  
                <h1>Registrar Pelicula</h1>
                <div class="form-group col-md-6">
                    <label>Nombre</label>
                    <input type="text" name="nombre" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Poster</label>
                    <input type="text" name="poster" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Genero</label>
                    <select class="form-control" id="select" name="genero">
                        <option value="0">Selecionar</option> 
                    <% for (Generos g : listargeneros) {%>                    
                        <option value="<%= g.getId()%>"><%= g.getNombre()%></option>                    
                    <% }%>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label>Duracion</label>
                    <input type="text" name="duracion" class="form-control">
                </div> 
                <div class="form-group col-md-6">
                    <label>Estado</label>
                    <input type="text" name="estado" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Ejemplar</label>
                    <input type="text" name="ejemplar" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Descripcion</label>
                    <textarea name="descripcion" class="form-control" rows="3" id="textArea"></textarea>
                </div>
                <div class="col-md-12">
                    <button type="submit" class="btn btn-default">Registrar</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>

