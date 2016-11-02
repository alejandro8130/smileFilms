package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import model.Clientes;
import java.util.ArrayList;

public final class listar_005fcliente_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


    ArrayList<Clientes> lista = (ArrayList<Clientes>) session.getAttribute("lista");


      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "librerias.jsp", out, true);
      out.write("     \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#empleados').DataTable({\n");
      out.write("                    Language: {\n");
      out.write("                        \"search\": \"Buscar:\",\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "banner.jsp", out, true);
      out.write("\n");
      out.write("        <div class=\"container well\">\n");
      out.write("            <div class=\"container\" align=\"center\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-12\">\n");
      out.write("                        <h1>Listar Empleado</h1>\n");
      out.write("                        <table id=\"empleados\" class=\"table\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>Id</th>\n");
      out.write("                                    <th>Nombre</th>\n");
      out.write("                                    <th>Apellido</th>\n");
      out.write("                                    <th>Fecha de Nacimiento</th>\n");
      out.write("                                    <th>Telefono</th>\n");
      out.write("                                    <th>Email</th>                     \n");
      out.write("                                    <th>Documento</th>\n");
      out.write("                                    <th>Ciudad</th>\n");
      out.write("                                    <th>Dirección</th>\n");
      out.write("                                    <th></th>\n");
      out.write("                                    <th></th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>                            \n");
      out.write("                                ");
 for (Clientes c : lista) {
      out.write("\n");
      out.write("                                ");
 int id = c.getId();
      out.write("\n");
      out.write("                                <tr id=\"");
      out.print(id);
      out.write("\">\n");
      out.write("                                    <td>");
      out.print( c.getId());
      out.write("</td>\n");
      out.write("                                    <td class=\"nombre\">");
      out.print( c.getNombre());
      out.write("</td>\n");
      out.write("                                    <td class=\"apellido\">");
      out.print( c.getApellido());
      out.write("</td>\n");
      out.write("                                    <td class=\"fecha\">");
      out.print( c.getFechaNacimiento());
      out.write("</td>\n");
      out.write("                                    <td class=\"telefono\">");
      out.print( c.getTel());
      out.write("</td>\n");
      out.write("                                    <td class=\"email\">");
      out.print( c.getEmail());
      out.write("</td>\n");
      out.write("                                    <td class=\"documento\">");
      out.print( c.getDocumento());
      out.write("</td>\n");
      out.write("                                    <td class=\"ciudad\">");
      out.print( c.getCiudad());
      out.write("</td>\n");
      out.write("                                    <td class=\"direccion\">");
      out.print( c.getDireccion());
      out.write("</td>\n");
      out.write("                                    <td><button type=\"button\" class=\"btn btn-warning\" onclick=\"Act(");
      out.print(id);
      out.write(");\">Editar</button></td>\n");
      out.write("                                    <td><button type=\"button\" class=\"btn btn-danger\">Eliminar</button></td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");
 }
      out.write("\n");
      out.write("                                                        \n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("//Los dos archivos se suben a un servidor para que el ajax trabaje bien\n");
      out.write("\n");
      out.write("// Funcion para cargar los datos con un formulario externo\n");
      out.write("                    function Act(Id) {\n");
      out.write("\n");
      out.write("                        var nombre = $(\"#\" + Id + \" .nombre\").html();\n");
      out.write("                        var telefono = $(\"#\" + Id + \" .telefono\").html();\n");
      out.write("                        var apellido = $(\"#\" + Id + \" .apellido\").html();\n");
      out.write("                        var fecha = $(\"#\" + Id + \" .fecha\").html();\n");
      out.write("\n");
      out.write("                        $(\"#\" + Id).hide();\n");
      out.write("\n");
      out.write("                        $.get(\"ing-form.html\", function (response) {\n");
      out.write("                            $(\"#\" + Id).html(\"<td colspan='11'>\" + response + \"</td>\");\n");
      out.write("                            $(\"#n\").val(nombre);\n");
      out.write("                                                        $(\"#a\").val(apellido);\n");
      out.write("\n");
      out.write("                            $(\"#t\").val(telefono);\n");
      out.write("                            $(\"#f\").val(fecha);\n");
      out.write("                            $(\"#idi\").val(Id);\n");
      out.write("                            $(\"#\" + Id).show(\"blind\");\n");
      out.write("                            $(\".btnact\").attr(\"disabled\", true);\n");
      out.write("                        });\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    function Guarda() {\n");
      out.write("\n");
      out.write("                        var Id = $(\"#idi\").val();\n");
      out.write("                        var nombre = $(\"#n\").val();\n");
      out.write("                        var apellido = $(\"#a\").val();\n");
      out.write("                        var telefono = $(\"#t\").val();\n");
      out.write("                        var Content;\n");
      out.write("\n");
      out.write("//Acá se puede incluir función ajax para guardar en el servidor\n");
      out.write("\n");
      out.write("\n");
      out.write("                        Content += \"<td>\" + Id + \"</td>\";\n");
      out.write("                        Content += \"<td class='nombre'>\" + nombre + \"</td>\";\n");
      out.write("                        Content += \"<td class='apellido'>\" + apellido + \"</td>\";\n");
      out.write("                        Content += \"<td class='nombre'>\" + nombre + \"</td>\";\n");
      out.write("                        Content += \"<td class='nombre'>\" + nombre + \"</td>\";\n");
      out.write("                        Content += \"<td class='nombre'>\" + nombre + \"</td>\";\n");
      out.write("                        Content += \"<td class='nombre'>\" + nombre + \"</td>\";\n");
      out.write("                        Content += \"<td class='nombre'>\" + nombre + \"</td>\";\n");
      out.write("                        Content += \"<td class='telefono'>\" + telefono + \"</td>\";\n");
      out.write("                        Content += \"<td class='text-right'>\";\n");
      out.write("                        Content += \"<button type='button' class='btn btn-warning' onclick='Act(\"+ Id +\");'>Editar</button>\";\n");
      out.write("                        Content += \"</td>\";\n");
      out.write("\n");
      out.write("                        $(\"#\" + Id).html(Content);\n");
      out.write("                        $(\".btnact\").attr(\"disabled\", false);\n");
      out.write("                        $(\"form\").remove();\n");
      out.write("\n");
      out.write("                        toastr.success('Guardado correctamente')\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                </script>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
