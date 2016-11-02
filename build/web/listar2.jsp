<%-- 
    Document   : listar
    Created on : 21/09/2016, 08:21:31 AM
    Author     : ficha1020611
--%>

<%@page import="model.Clientes"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smile Fimls</title>
        <jsp:include page="librerias.jsp" flush="true"/>
    </head>
    <body>

        <jsp:include page="banner.jsp" flush="true"/>
        <div class="container">

            <h1>Listar Clientes</h1>
            <table id="table" class="table">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Fecha de Nacimiento</th>
                        <th>Telefono</th>
                        <th>Email</th>                     
                        <th>Documento</th>
                        <th>Ciudad</th>
                        <th>Dirección</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList lista = (ArrayList) session.getAttribute("lista");

                        for (Object c : lista) {
                            out.println("<tr>");
                            out.println("<td>" + ((Clientes) c).getId() + "</td>");
                            out.println("<td>" + ((Clientes) c).getNombre() + "</td>");
                            out.println("<td>" + ((Clientes) c).getApellido() + "</td>");
                            out.println("<td>" + ((Clientes) c).getFechaNacimiento() + "</td>");
                            out.println("<td>" + ((Clientes) c).getTel() + "</td>");
                            out.println("<td>" + ((Clientes) c).getEmail() + "</td>");
                            out.println("<td>" + ((Clientes) c).getDocumento() + "</td>");
                            out.println("<td>" + ((Clientes) c).getCiudad() + "</td>");
                            out.println("<td>" + ((Clientes) c).getDireccion() + "</td>");

                    %>     
                <td><button type="button" class="btn btn-warning">Editar</button></td>
                <td><button type="button" class="btn btn-danger">Eliminar</button></td>                        
                </tr>
                <%                        }
                %>
                </tbody>
            </table>
            <% int pg = 0;
                if (request.getParameter("pag") == null) {
                    pg = 0;
                } else {
                    pg = Integer.parseInt(request.getParameter("pag"));
                }
                for (int j = 0; j < 10; j++) {

            %>
            <a href="listar?pag=<%=j%>"><%=j + 1%></a>
            <%                }
            %>
        </div>
    </body>
</html>
