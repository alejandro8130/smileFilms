<%-- 
    Document   : empleado
    Created on : 31/08/2016, 08:32:11 AM
    Author     : ficha1020611
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smile Fimls</title>
        <link href="style/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="style/css/styles.css" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid">       
            <jsp:include page="banner.jsp" flush="true"/>
            <div class="container well">       

                <form method="GET" action="login1">                  
                    <h1>Registrar Empleado</h1>
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text" name="nombre" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Apellido</label>
                        <input type="text" name="apellido" class="form-control">
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
                        <label>Cargo</label>
                        <input type="text" name="carnet" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Documento</label>
                        <input type="text" name="documento" class="form-control">
                    </div>               
                    <button type="submit" class="btn btn-default">Registrar</button>
                </form>
            </div>
        </div>
    </body>
</html>

