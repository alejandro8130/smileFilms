<%-- 
    Document   : indexLogin
    Created on : 26/08/2016, 07:41:27 AM
    Author     : ficha1020611
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="librerias.jsp" flush="true"/>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="banner.jsp" flush="true"/>
            <jsp:include page="navbar.jsp" flush="true"/>
            <div class="container well">
                <% HttpSession rs = request.getSession();
                    String rol;
                    if (rs.getAttribute("rol") == null) {
                        rol = "Vacio";
                    } else {
                        rol = (String) rs.getAttribute("rol");
                    }
                %>
                <h1>Bienvenido <%= rol%></h1>
                <jsp:include page="gerente.jsp" flush="true"/>
            </div>
        </div>
    </body>
</html>
