<%-- 
    Document   : cliente
    Created on : 31/08/2016, 08:15:33 AM
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
            <div class="row">
                <form method="POST" action="cliente" id="registrationForm">                  
                    <h1>Registrar Cliente</h1>
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text" name="nombre" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Apellido</label>
                        <input type="text" name="apellido" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Fecha de Nacimiento</label>
                        <input type="date" class="form-control" name="fecha">
                    </div>
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" name="tel" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" name="email" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Carnet</label>
                        <input type="text" name="carnet" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Documento</label>
                        <input type="text" name="documento" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Ciudad</label>
                        <input type="text" name="ciudad" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Dirección</label>
                        <input type="text" name="direccion" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Foto</label>
                        <input type="file" name="foto" class="file">
                    </div>    
                    <button type="submit" class="btn btn-default">Registrar</button>
                </form>
            </div>
        </div>
    </body>
</html>
