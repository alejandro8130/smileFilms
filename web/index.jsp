<%-- 
    Document   : index.jsp
    Created on : 24/08/2016, 08:18:47 AM
    Author     : ficha1020611
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Peliculas"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="controller.conectadb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <%
                ArrayList<Peliculas> listarpeliculas = new ArrayList<>();
                try {
                    conectadb con = new conectadb();
                    Connection cnn = con.conectar();
                    Statement stm = cnn.createStatement();
                    String query = "SELECT * FROM Peliculas;";
                    System.out.println(query);
                    ResultSet rs = stm.executeQuery(query);
                    while (rs.next()) {
                        Peliculas pelicula = new Peliculas();
                        int id = Integer.parseInt(rs.getString(1));
                        String nombre = rs.getString(2);
                        String poster = rs.getString(3);
                        //Generos generoId = (Generos) rs.getObject(4);
                        int duracion = Integer.parseInt(rs.getString(5));
                        String estado = rs.getString(6);
                        int ejemplar = Integer.parseInt(rs.getString(7));
                        String descripcion = rs.getString(8);

                        //System.out.println(generoId);
                        pelicula.setId(id);
                        pelicula.setNombre(nombre);
                        pelicula.setPoster(poster);
                        //pelicula.setGeneroId(generoId);
                        pelicula.setDuracion(duracion);
                        pelicula.setEstado(estado);
                        pelicula.setEjemplar(ejemplar);
                        pelicula.setDescripcion(descripcion);

                        listarpeliculas.add(pelicula);

                    }

                    rs.close();
                    cnn.close();
                } catch (Exception e) {
                    e.printStackTrace();

                }

            %>
            <div class="container peliculas">
                <div class="row">
                    <div class="col-md-8">
                        <div class="row">
                            <% for (Peliculas c : listarpeliculas) {%>
                            <div class="col-sm-6 col-md-4">
                                <% int id = c.getId();%>
                                <div class="thumbnail" id="<%=id%>">                                  
                                    <img src="<%= c.getPoster()%>" alt="imagen" class="img-pelicula">
                                    <div class="caption">
                                        <p class="text-center"><a href="#" class="btn btn-default" role="button">Reservar</a></p>
                                    </div>
                                </div>
                            </div>
                            <% }%>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Películas de calidad</h3>
                            </div>
                            <div class="panel-body">
                                <p>
                                    Películas en excelente calidad Bluray Full HD (1080p),
                                    audio latino y con toda la información.
                                </p>
                            </div>
                        </div>    
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Destacadas</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <% for (Peliculas c : listarpeliculas) {%>
                                    <% int id = c.getId();%>
                                    <div class="col-md-6" id="<%=id%>">                                        
                                        <img src="<%= c.getPoster()%>" alt="imagen" class="img-responsive img-destacados">
                                    </div>
                                    <% }%>                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </body>
</html>
