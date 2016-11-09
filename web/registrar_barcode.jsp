<%-- 
    Document   : registrar_barcode
    Created on : 9/11/2016, 07:41:15 AM
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
                <div class="container well">       
                    <form method="POST" action="cliente" id="registrationForm">                  
                        <h1>Registrar Cliente</h1>
                        <div class="form-group col-md-6">
                            <label>Nombre</label>
                            <input type="text" name="nombre" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Descripcion</label>
                            <input type="text" name="descripcion" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Barcode</label>
                            <input type="text" name="barcode" class="form-control">
                        </div>
                          
                        <div class="col-md-12 center">
                            <button type="submit" class="btn btn-default">Registrar</button>
                        </div>    
                    </form>
                </div>

            </div>
        </div>    
    </body>
</html>
