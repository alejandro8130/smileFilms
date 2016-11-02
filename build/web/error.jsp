<%-- 
    Document   : error
    Created on : 26/08/2016, 09:31:43 AM
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
        <div class="container-fluid error">
            <jsp:include page="banner.jsp" flush="true"/>
            <jsp:include page="navbar.jsp" flush="true"/>
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h1>Error</h1>
                        <h3>Debe estar registrado para ver esta informacion.</h3>
                        <a href="index.jsp" class="btn btn-warning">Volver al inicio.</a>
                    </div>
                    <div class="col-lg-4">
                        <img src="imagenes/cancel.png" class="img-error">
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
