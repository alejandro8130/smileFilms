<%-- 
    Document   : resgistrar_prestamo
    Created on : 02-nov-2016, 19:26:45
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="librerias.jsp" flush="true"/>
    </head>
    <body>     
        <jsp:include page="banner.jsp" flush="true"/>
        <jsp:include page="navbar.jsp" flush="true"/>
        <div class="container well">
            <form method="POST" action="login1">                  
                <h1>Registrar Prestamo</h1>
                <div class="form-group col-md-6">
                    <label>Cliente</label>
                    <input type="text" name="cliente" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Pelicula</label>
                    <input type="text" name="pelicula" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Fecha devolucion</label>
                    <input type="date" name="duracion" class="form-control">
                </div> 
                <div class="form-group col-md-6">
                    <label>Pago</label>
                    <input type="text" name="estado" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Empleado</label>
                    <input type="text" name="carnet" class="form-control">
                </div>
                <div class="col-md-12">
                    <button type="submit" class="btn btn-default">Registrar</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
