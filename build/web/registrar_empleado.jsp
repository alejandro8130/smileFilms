<%-- 
    Document   : empleado
    Created on : 31/08/2016, 08:32:11 AM
    Author     : ficha1020611
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="controller.conectadb"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Roles"%>
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
            ArrayList<Roles> listarroles = new ArrayList<>();
            try {
                conectadb con = new conectadb();
                Connection cnn = con.conectar();
                Statement stm = cnn.createStatement();
                String query = "SELECT * FROM Roles;";
                System.out.println(query);
                ResultSet rs = stm.executeQuery(query);
                while (rs.next()) {
                    Roles rol = new Roles();
                    int id = Integer.parseInt(rs.getString(1));
                    String nombre = rs.getString(2);

                    rol.setId(id);
                    rol.setNombre(nombre);

                    listarroles.add(rol);
                }
                rs.close();
                cnn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <div class="container well">
            <form method="POST" action="login1">                  
                <h1>Registrar Empleado</h1>
                <div class="form-group col-md-6">
                    <label>Nombre</label>
                    <input type="text" name="nombre" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Apellido</label>
                    <input type="text" name="apellido" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Telefono</label>
                    <input type="text" name="tel" class="form-control">
                </div> 
                <div class="form-group col-md-6">
                    <label>Email</label>
                    <input type="text" name="email" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Cargo</label>
                    <label>Genero</label>
                    <select class="form-control" id="select" name="rol">
                        <option value="0">Selecionar</option> 
                    <% for (Roles r : listarroles) {%>                    
                        <option value="<%= r.getId()%>"><%= r.getNombre()%></option>                    
                    <% }%>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label>Documento</label>
                    <input type="text" name="documento" class="form-control">
                </div>    
                <div class="form-group col-md-6">
                    <label>Fecha de Nacimiento</label>
                    <input type="date" class="form-control" name="fecha">
                </div>
                <div class="col-md-12">
                    <button type="submit" class="btn btn-default">Registrar</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>

