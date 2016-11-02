<%-- 
    Document   : about
    Created on : 9/09/2016, 08:25:14 AM
    Author     : ficha1020611
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smile Films</title>
        <link href="style/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="style/css/styles.css" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="banner.jsp" flush="true"/>
            <h1>About</h1>
            <div class="row">
                <div class="col-md-12">
                    <div class="thumbnail">
                        <img src="imagenes/MCS.jpg" alt="imagen">
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp" flush="true"/> 
        </div>
    </body>
</html>
