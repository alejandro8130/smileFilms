<%-- 
    Document   : index.jsp
    Created on : 24/08/2016, 08:18:47 AM
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
                <div class="row">
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="imagenes/cuando-las-luces-se-apagan.jpg" alt="imagen" class="img-pelicula">
                                    <div class="caption">
                                        <p class="text-center"><a href="#" class="btn btn-default" role="button">Reservar</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="imagenes/buscando-a-dory.jpg" alt="imagen" class="img-pelicula">
                                    <div class="caption">
                                        <p class="text-center"><a href="#" class="btn btn-default" role="button">Reservar</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="imagenes/the-infiltrator.jpg" alt="imagen" class="img-pelicula">
                                    <div class="caption">
                                        <p class="text-center"><a href="#" class="btn btn-default" role="button">Reservar</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="imagenes/race.jpg" alt="imagen" class="img-pelicula">
                                    <div class="caption">
                                        <p class="text-center"><a href="#" class="btn btn-default" role="button">Reservar</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="imagenes/del-otro-lado-de-la-puerta.jpg" alt="imagen" class="img-pelicula">
                                    <div class="caption">
                                        <p class="text-center"><a href="#" class="btn btn-default" role="button">Reservar</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="imagenes/12-horas-para-sobrevivir-el-ano-de-la-eleccion.jpg" alt="imagen" class="img-pelicula">
                                    <div class="caption">
                                        <p class="text-center"><a href="#" class="btn btn-default" role="button">Reservar</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="imagenes/capitan-america-civil-war.jpg" alt="imagen" class="img-pelicula">
                                    <div class="caption">
                                        <p class="text-center"><a href="#" class="btn btn-default" role="button">Reservar</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Películas de calidad</h3>
                            </div>
                            <div class="panel-body">
                                <p>
                                    Películas en excelente calidad Bluray Full HD (1080p),
                                    audio latino y con toda la información.
                                </p>
                            </div>
                        </div>    
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Destacadas</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <a href="#" class="list-group-item">
                                            <img src="imagenes/cuando-las-luces-se-apagan.jpg" alt="imagen" class="img-responsive img-destacados">
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <a href="#" class="list-group-item">
                                            <img src="imagenes/buscando-a-dory.jpg" alt="imagen" class="img-responsive img-destacados">
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <a href="#" class="list-group-item">
                                            <img src="imagenes/the-infiltrator.jpg" alt="imagen" class="img-responsive img-destacados">
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <a href="#" class="list-group-item">
                                            <img src="imagenes/race.jpg" alt="imagen" class="img-responsive img-destacados">
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <a href="#" class="list-group-item">
                                            <img src="imagenes/del-otro-lado-de-la-puerta.jpg" alt="imagen" class="img-responsive img-destacados">
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <a href="#" class="list-group-item">
                                            <img src="imagenes/12-horas-para-sobrevivir-el-ano-de-la-eleccion.jpg" alt="imagen" class="img-responsive img-destacados">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list-group">


                        </div>
                    </div>
                </div>

            </div>
        </div>    
    </body>
</html>
