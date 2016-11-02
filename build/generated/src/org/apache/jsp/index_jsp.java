package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Smile Fimls</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "librerias.jsp", out, true);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "banner.jsp", out, true);
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, true);
      out.write("\n");
      out.write("            <div class=\"container well\">\n");
      out.write("                <h1>Bienvenido a Smile Films</h1>   \n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-8\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-6 col-md-3\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\">\n");
      out.write("                                    <div class=\"caption\">\n");
      out.write("                                        <h3>Thumbnail label</h3>\n");
      out.write("                                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.\n");
      out.write("                                            Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n");
      out.write("                                        <p class=\"text-center\"><a href=\"#\" class=\"btn btn-default\" role=\"button\">Reservar</a></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-sm-6 col-md-3\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\">\n");
      out.write("                                    <div class=\"caption\">\n");
      out.write("                                        <h3>Thumbnail label</h3>\n");
      out.write("                                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.\n");
      out.write("                                            Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n");
      out.write("                                        <p class=\"text-center\"><a href=\"#\" class=\"btn btn-default\" role=\"button\">Reservar</a></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-sm-6 col-md-3\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\">\n");
      out.write("                                    <div class=\"caption\">\n");
      out.write("                                        <h3>Thumbnail label</h3>\n");
      out.write("                                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.\n");
      out.write("                                            Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n");
      out.write("                                        <p class=\"text-center\"><a href=\"#\" class=\"btn btn-default\" role=\"button\">Reservar</a></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-sm-6 col-md-3\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\">\n");
      out.write("                                    <div class=\"caption\">\n");
      out.write("                                        <h3>Thumbnail label</h3>\n");
      out.write("                                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.\n");
      out.write("                                            Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n");
      out.write("                                        <p class=\"text-center\"><a href=\"#\" class=\"btn btn-default\" role=\"button\">Reservar</a></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-sm-6 col-md-3\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\">\n");
      out.write("                                    <div class=\"caption\">\n");
      out.write("                                        <h3>Thumbnail label</h3>\n");
      out.write("                                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.\n");
      out.write("                                            Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n");
      out.write("                                        <p class=\"text-center\"><a href=\"#\" class=\"btn btn-default\" role=\"button\">Reservar</a></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-sm-6 col-md-3\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\">\n");
      out.write("                                    <div class=\"caption\">\n");
      out.write("                                        <h3>Thumbnail label</h3>\n");
      out.write("                                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.\n");
      out.write("                                            Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n");
      out.write("                                        <p class=\"text-center\"><a href=\"#\" class=\"btn btn-default\" role=\"button\">Reservar</a></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-sm-6 col-md-3\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\">\n");
      out.write("                                    <div class=\"caption\">\n");
      out.write("                                        <h3>Thumbnail label</h3>\n");
      out.write("                                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.\n");
      out.write("                                            Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n");
      out.write("                                        <p class=\"text-center\"><a href=\"#\" class=\"btn btn-default\" role=\"button\">Reservar</a></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-sm-6 col-md-3\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\">\n");
      out.write("                                    <div class=\"caption\">\n");
      out.write("                                        <h3>Thumbnail label</h3>\n");
      out.write("                                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.\n");
      out.write("                                            Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n");
      out.write("                                        <p class=\"text-center\"><a href=\"#\" class=\"btn btn-default\" role=\"button\">Reservar</a></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <div class=\"panel panel-primary\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <h3 class=\"panel-title\">Películas de calidad</h3>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"panel-body\">\n");
      out.write("                                <p>\n");
      out.write("                                    Películas en excelente calidad Bluray Full HD (1080p),\n");
      out.write("                                    audio latino y con toda la información.\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>                        \n");
      out.write("                        <div class=\"list-group\">\n");
      out.write("                            <a href=\"#\" class=\"list-group-item active\">\n");
      out.write("                                Destacadas\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <a href=\"#\" class=\"list-group-item\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\" class=\"img-responsive\">\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <a href=\"#\" class=\"list-group-item\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\" class=\"img-responsive\">\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <a href=\"#\" class=\"list-group-item\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\" class=\"img-responsive\">\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <a href=\"#\" class=\"list-group-item\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\" class=\"img-responsive\">\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <a href=\"#\" class=\"list-group-item\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\" class=\"img-responsive\">\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <a href=\"#\" class=\"list-group-item\">\n");
      out.write("                                    <img src=\"imagenes/MCS.jpg\" alt=\"imagen\" class=\"img-responsive\">\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>    \n");
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
