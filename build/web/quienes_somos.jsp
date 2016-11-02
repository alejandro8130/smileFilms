<%-- 
    Document   : quienes_somos
    Created on : 9/09/2016, 07:43:59 AM
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
                <div class="row">
                    <h1>Quienes somos</h1>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h2>Misión</h2></div>
                            <div class="panel-body"><p>Satisfacer las necesidades
                                    de las personas interesadas en lo último en peliculas, 
                                    prestandoles el mejor servicio por parte de todo el
                                    personal de la empresa, y manteniendo siempre actualizado
                                    nuestro catálogo de juegos y articulos para las 
                                    diferentes plataformas.</p></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h2>Visión</h2></div>
                            <div class="panel-body">Llegar a más lugares en el
                                departamento de Antioquia e incluso a diferentes
                                partes del mundo, con el mejor servicio a clientes,
                                con las peliculas y artículos más nuevos y actualizados
                                y principalmente con la mejor comodidad y seguridad
                                del mundo.</div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div>
                        <div class="panel panel-default">
                            <div class="panel-heading"><h2>Como llegar</h2></div>
                            <div class="panel-body text-center"> 
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2358.622733571111!2d-75.61344615368668!3d6.1689309939765335!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e4428ef4e52dddb%3A0x722fd6c39270ac72!2sMedell%C3%ADn%2C+Antioquia!5e0!3m2!1ses!2sco!4v1473425778231" width="1000" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><br><br><br><br><br>
            <jsp:include page="footer.jsp" flush="true"/> 
        </div>   
    </body>
</html>
