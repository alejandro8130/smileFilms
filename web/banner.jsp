<%-- 
    Document   : banner.jsp
    Created on : 24/08/2016, 08:15:34 AM
    Author     : ficha1020611
--%>

<div class="row banner-smile">
    <div class="col-md-1">
        <img src="imagenes/video-camera.png" alt="imagen" class="img-responsive img-banner">
    </div>
    <div class="col-md-5">
        <h1>Smile Films</h1>
    </div>
    <div class="col-md-6 login">
        <% HttpSession rs = request.getSession();
            String rol;
            if (rs.getAttribute("rol") == null) {
                rol = "Vacio";
            } else {
                rol = (String) rs.getAttribute("rol");
            }
        %>  
        <% if (rol.equals("1") || rol.equals("2") || rol.equals("3")) { %>
        <ul class="breadcrumb">
            <li class="active"><%= rol %></li>
            <li><a href="cerrar"><span class="glyphicon glyphicon-user"></span> Salir</a></li>
        </ul>
        
        <% } else { %>
        <jsp:include page="login.jsp" flush="true"/>
        <% }%>
    </div>    
</div>
  

