<%-- 
    Document   : contactenos
    Created on : 9/09/2016, 07:34:45 AM
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
            <div class="container">
                <form method="Get" action="">
                    <h1>Contactenos</h1> 
                    <div class="form-group">
                        <label>Asunto</label>
                        <input type="text" name="asunto" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Descripción</label>
                        <textarea name="descripcion" class="form-control"></textarea>
                    </div>
                    <input type="submit" class="btn btn-default" value="Enviar">
                </form>
            </div>
            <jsp:include page="footer.jsp" flush="true"/> 
        </div>   
    </body>
</html>
