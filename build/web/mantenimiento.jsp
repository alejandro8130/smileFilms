<%-- 
    Document   : mantenimiento
    Created on : 02-nov-2016, 18:02:28
    Author     : alejo
--%>

@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <h1>Advertencia!</h1>
                        <h3>Esta página esta en mantenimiento.</h3>
                        <a href="index.jsp" class="btn btn-warning">Volver al inicio.</a>
                    </div>
                    <div class="col-lg-4">
                        <img src="imagenes/hourglass.png" class="img-error">
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

