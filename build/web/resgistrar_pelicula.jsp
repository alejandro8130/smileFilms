<%-- 
    Document   : resgistrar_pelicula
    Created on : 02-nov-2016, 19:17:16
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
            <form method="POST" action="registrar_pelicula">                  
                <h1>Registrar Pelicula</h1>
                <div class="form-group col-md-6">
                    <label>Nombre</label>
                    <input type="text" name="nombre" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Poster</label>
                    <input type="text" name="poster" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Genero</label>
                    <select class="form-control" id="select" name="genero">
                        <option value="1">Terror</option>
                        <option value="2">Infantil</option>
                        <option value="3">Drama</option>
                        <option value="4">Acción</option>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label>Duracion</label>
                    <input type="text" name="duracion" class="form-control">
                </div> 
                <div class="form-group col-md-6">
                    <label>Estado</label>
                    <input type="text" name="estado" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Ejemplar</label>
                    <input type="text" name="ejemplar" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Descripcion</label>
                    <textarea name="descripcion" class="form-control" rows="3" id="textArea"></textarea>
                </div>
                <div class="col-md-12">
                    <button type="submit" class="btn btn-default">Registrar</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>

