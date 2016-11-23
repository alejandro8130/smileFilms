<%-- 
    Document   : editar_cliente
    Created on : 18/11/2016, 08:00:23 AM
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
    String ids = "";
    String nombre = "";
    String apellido = "";
    String tel = "";
    String email = "";
    String documento = "";
    String ciudad = "";
    String direccion = "";
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
                String query = "SELECT * FROM Clientes WHERE id="+ids+";";
                System.out.println(query);
                ResultSet rs = stm.executeQuery(query);
                while (rs.next()) {
                    nombre = rs.getString(2);
                    apellido = rs.getString(3);
                    fecha = rs.getString(4);
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
            <h1>Editar Empleado</h1>
            <form method="POST" action="editar_cliente" id="registrationForm">                  
                <div class="form-group col-md-6">
                    <label>Nombre</label>
                    <input type="text" name="nombre" class="form-control" value="<%= nombre%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Apellido</label>
                    <input type="text" name="apellido" class="form-control" value="<%= apellido%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Fecha de Nacimiento</label>
                    <input type="date" class="form-control" name="fecha" value="<%= fecha%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Telefono</label>
                    <input type="text" name="tel" class="form-control" value="<%= tel%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Email</label>
                    <input type="text" name="email" class="form-control" value="<%= email%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Documento</label>
                    <input type="text" name="documento" class="form-control" value="<%= documento%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Ciudad</label>
                    <input type="text" name="ciudad" class="form-control" value="<%= ciudad%>">
                </div>
                <div class="form-group col-md-6">
                    <label>Dirección</label>
                    <input type="text" name="direccion" class="form-control" value=" <%= direccion%>">
                </div> 
                <div class="form-group col-md-6">
                    <label>Foto</label>
                    <input type="file" name="foto" class="file">
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
