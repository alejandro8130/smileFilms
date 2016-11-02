package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class prueba2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Prueba 2</title>\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css\" rel=\"stylesheet\"> \n");
      out.write("        <link href=\"//oss.maxcdn.com/jquery.bootstrapvalidator/0.5.2/css/bootstrapValidator.min.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"//oss.maxcdn.com/jquery/1.11.1/jquery.min.js\"></script> \n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//oss.maxcdn.com/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/validator.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form id=\"registrationForm\" method=\"post\" class=\"form-horizontal mitad\" action=\"#\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <h2>Formulario de Registro</h2>\n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                <label class=\"col-lg-3 control-label\">Nombres</label>\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-3\">\n");
      out.write("\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"nombre\" />\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                <label class=\"col-lg-3 control-label\">Apellidos</label>\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-3\">\n");
      out.write("\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"apellido\" />\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                <label class=\"col-lg-3 control-label\">Correo Electrónico</label>\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-3\">\n");
      out.write("\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"email\" />\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                <label class=\"col-lg-3 control-label\">Password</label>\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-3\">\n");
      out.write("\n");
      out.write("                    <input type=\"password\" class=\"form-control\" name=\"password\" />\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                <label class=\"col-lg-3 control-label\">Fecha de Nacimiento</label>\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-3\">\n");
      out.write("\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"datetimepicker\" id=\"datetimepicker\" data-date-format=\"YYYY-MM-DD\" />\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                <label class=\"col-lg-3 control-label\">Sexo</label>\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-9\">\n");
      out.write("\n");
      out.write("                    <div class=\"radio\">\n");
      out.write("\n");
      out.write("                        <label>\n");
      out.write("\n");
      out.write("                            <input type=\"radio\" name=\"sexo\" value=\"M\" /> Masculino\n");
      out.write("\n");
      out.write("                        </label>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"radio\">\n");
      out.write("\n");
      out.write("                        <label>\n");
      out.write("\n");
      out.write("                            <input type=\"radio\" name=\"sexo\" value=\"F\" /> Femenino\n");
      out.write("\n");
      out.write("                        </label>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                <label class=\"col-lg-3 control-label\">Teléfono</label>\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-3\">\n");
      out.write("\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"telefono\" />\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                <label class=\"col-lg-3 control-label\">Teléfono Celular</label>\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-3\">\n");
      out.write("\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"telefono_cel\" />\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\t\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-9 col-lg-offset-3\">\n");
      out.write("\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-success left\">Registrarse</button>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </form>\n");
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
