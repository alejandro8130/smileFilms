package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class prueba_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Prueba</title>\n");
      out.write("        <link href=\"style/bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"style/bootstrap-3.3.7-dist/css/bootstrapValidator.min.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"//oss.maxcdn.com/jquery/1.11.1/jquery.min.js\" type=\"text/javascript\"></script> \n");
      out.write("        <script src=\"style/bootstrap-3.3.7-dist/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"style/bootstrap-3.3.7-dist/js/bootstrapValidator.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/validator.js\" type=\"text/javascript\"></script>        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form method=\"GET\" action=\"cliente\" id=\"registrationForm\">             \n");
      out.write("            <h2>Formulario de Prueba</h2>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label>Nombre</label>\n");
      out.write("                <input type=\"text\" name=\"nombre\" class=\"form-control\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label>Apellido</label>\n");
      out.write("                <input type=\"text\" name=\"apellido\" class=\"form-control\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label>Fecha de Nacimiento</label>\n");
      out.write("                <input type=\"date\" name=\"fecha\" class=\"form-control\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label>Telefono</label>\n");
      out.write("                <input type=\"text\" name=\"tel\" class=\"form-control\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label>Email</label>\n");
      out.write("                <input type=\"text\" name=\"email\" class=\"form-control\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label>Carnet</label>\n");
      out.write("                <input type=\"text\" name=\"carnet\" class=\"form-control\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label>Documento</label>\n");
      out.write("                <input type=\"text\" name=\"documento\" class=\"form-control\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label>Ciudad</label>\n");
      out.write("                <input type=\"text\" name=\"ciudad\" class=\"form-control\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label>Dirección</label>\n");
      out.write("                <input type=\"text\" name=\"direccion\" class=\"form-control\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label>Foto</label>\n");
      out.write("                <input type=\"file\" name=\"foto\" class=\"file\">\n");
      out.write("            </div>    \n");
      out.write("            <button type=\"submit\" class=\"btn btn-default\">Registrar</button>\t\n");
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
