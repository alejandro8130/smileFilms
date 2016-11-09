<%-- 
    Document   : index_barcode
    Created on : 9/11/2016, 08:38:16 AM
    Author     : ficha1020611
--%>

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
            <div class="container peliculas">
                <form method="Get" action="barcode" class="form-inline">
                    Ingrese código de barras:
                    <div class="form-group">
                        <input type="text" name="barcode" id="barcode" class="form-control">
                    </div>
                    <input type="submit" class="btn btn-default" value="Buscar">
                </form>
                <div id="resultados"></div>
            </div>
        </div>    
    </body>
</html>
