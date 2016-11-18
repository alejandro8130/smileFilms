<%-- 
    Document   : editar_cliente
    Created on : 18/11/2016, 08:00:23 AM
    Author     : ficha1020611
--%>

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
    String nombre = "alejo";
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
                String query = "SELECT * FROM Clientes WHERE id=2;";
                System.out.println(query);
                ResultSet rs = stm.executeQuery(query);
                Clientes clien = new Clientes();
                int id = Integer.parseInt(rs.getString(1));
                nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String tel = rs.getString(5);
                String email = rs.getString(6);
                String documento = rs.getString(8);
                String ciudad = rs.getString(9);
                String direccion = rs.getString(10);

                System.out.println(query);

                session.setAttribute("lista", listarclientes);
                request.getRequestDispatcher("listar_cliente2.jsp").forward(request, response);
                rs.close();
                cnn.close();
            } catch (SQLException e) {
                e.printStackTrace();

            }
        %>
        <div class="container well">
            <form method="POST" action="cliente" id="registrationForm">                  
                <h1>Registrar Cliente</h1>
                <div class="form-group col-md-6">
                    <label>Nombre</label>
                    <input type="text" name="nombre" class="form-control" value="<%= nombre%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Apellido</label>
                    <input type="text" name="apellido" class="form-control" value="">
                </div>
                <div class="form-group col-md-6">
                    <label>Fecha de Nacimiento</label>
                    <input type="date" class="form-control" name="fecha" value="">
                </div>
                <div class="form-group col-md-6">
                    <label>Telefono</label>
                    <input type="text" name="tel" class="form-control" value="">
                </div>
                <div class="form-group col-md-6">
                    <label>Email</label>
                    <input type="text" name="email" class="form-control" value="">
                </div>
                <div class="form-group col-md-6">
                    <label>Documento</label>
                    <input type="text" name="documento" class="form-control" value="">
                </div>
                <div class="form-group col-md-6">
                    <label>Ciudad</label>
                    <input type="text" name="ciudad" class="form-control" value="">
                </div>
                <div class="form-group col-md-6">
                    <label>Dirección</label>
                    <input type="text" name="direccion" class="form-control" value="">
                </div> 
                <div class="form-group col-md-6">
                    <label>Foto</label>
                    <input type="file" name="foto" class="file">
                </div>    
                <div class="col-md-12 center">
                    <button type="submit" class="btn btn-default">Registrar</button>
                </div>    
            </form>        
        </div>
    </body>
</html>
