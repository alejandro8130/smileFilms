<%-- 
    Document   : cliente2
    Created on : 14/09/2016, 09:22:52 AM
    Author     : ficha1020611
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="librerias.jsp" flush="true"/>

    </head>
    <body>
        <form id="registrationForm" method="post" class="form-horizontal mitad" action="#">



            <h2>Formulario de Registro</h2>

            <div class="form-group">

                <label class="col-lg-3 control-label">Nombres</label>

                <div class="col-lg-3">

                    <input type="text" class="form-control" name="nombre" />

                </div>

            </div>



            <div class="form-group">

                <label class="col-lg-3 control-label">Apellidos</label>

                <div class="col-lg-3">

                    <input type="text" class="form-control" name="apellido" />

                </div>

            </div>



            <div class="form-group">

                <label class="col-lg-3 control-label">Correo Electrónico</label>

                <div class="col-lg-3">

                    <input type="text" class="form-control" name="email" />

                </div>

            </div>



            <div class="form-group">

                <label class="col-lg-3 control-label">Password</label>

                <div class="col-lg-3">

                    <input type="password" class="form-control" name="password" />

                </div>

            </div>



            <div class="form-group">

                <label class="col-lg-3 control-label">Fecha de Nacimiento</label>

                <div class="col-lg-3">

                    <input type="date" class="form-control" name="datetimepicker" />

                </div>

            </div>



            <div class="form-group">

                <label class="col-lg-3 control-label">Sexo</label>

                <div class="col-lg-9">

                    <div class="radio">

                        <label>

                            <input type="radio" name="sexo" value="M" /> Masculino

                        </label>

                    </div>

                    <div class="radio">

                        <label>

                            <input type="radio" name="sexo" value="F" /> Femenino

                        </label>

                    </div>

                </div>

            </div>



            <div class="form-group">

                <label class="col-lg-3 control-label">Teléfono</label>

                <div class="col-lg-3">

                    <input type="text" class="form-control" name="telefono" />

                </div>

            </div>



            <div class="form-group">

                <label class="col-lg-3 control-label">Teléfono Celular</label>

                <div class="col-lg-3">

                    <input type="text" class="form-control" name="telefono_cel" />

                </div>

            </div>	



            <div class="form-group">

                <div class="col-lg-9 col-lg-offset-3">

                    <button type="submit" class="btn btn-success left">Registrarse</button>

                </div>

            </div>

        </form>
    </body>
</html>
