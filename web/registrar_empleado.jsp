<%-- 
    Document   : empleado
    Created on : 31/08/2016, 08:32:11 AM
    Author     : ficha1020611
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
                    <input type="text" name="carnet" class="form-control">
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

