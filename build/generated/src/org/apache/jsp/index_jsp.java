package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Peliculas;
import java.sql.Statement;
import java.sql.Connection;
import controller.conectadb;

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("            ");

                ArrayList<Peliculas> listarpeliculas = new ArrayList<>();
                try {
                    conectadb con = new conectadb();
                    Connection cnn = con.conectar();
                    Statement stm = cnn.createStatement();
                    String query = "SELECT * FROM Peliculas;";
                    System.out.println(query);
                    ResultSet rs = stm.executeQuery(query);
                    while (rs.next()) {
                        Peliculas pelicula = new Peliculas();
                        int id = Integer.parseInt(rs.getString(1));
                        String nombre = rs.getString(2);
                        String poster = rs.getString(3);
                        //Generos generoId = (Generos) rs.getObject(4);
                        int duracion = Integer.parseInt(rs.getString(5));
                        String estado = rs.getString(6);
                        int ejemplar = Integer.parseInt(rs.getString(7));
                        String descripcion = rs.getString(8);

                        //System.out.println(generoId);
                        pelicula.setId(id);
                        pelicula.setNombre(nombre);
                        pelicula.setPoster(poster);
                        //pelicula.setGeneroId(generoId);
                        pelicula.setDuracion(duracion);
                        pelicula.setEstado(estado);
                        pelicula.setEjemplar(ejemplar);
                        pelicula.setDescripcion(descripcion);

                        listarpeliculas.add(pelicula);

                    }

                    rs.close();
                    cnn.close();
                } catch (Exception e) {
                    e.printStackTrace();

                }

            
      out.write("\n");
      out.write("            <div class=\"container peliculas\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-8\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            ");
 for (Peliculas c : listarpeliculas) {
      out.write("\n");
      out.write("                            <div class=\"col-sm-6 col-md-4\">\n");
      out.write("                                ");
 int id = c.getId();
      out.write("\n");
      out.write("                                <div class=\"thumbnail\" id=\"");
      out.print(id);
      out.write("\">                                  \n");
      out.write("                                    <img src=\"");
      out.print( c.getPoster());
      out.write("\" alt=\"imagen\" class=\"img-pelicula\">\n");
      out.write("                                    <div class=\"caption\">\n");
      out.write("                                        <p class=\"text-center\"><a href=\"#\" class=\"btn btn-default\" role=\"button\">Reservar</a></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            ");
 }
      out.write("\n");
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
      out.write("                        </div>    \n");
      out.write("                        <div class=\"panel panel-primary\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <h3 class=\"panel-title\">Destacadas</h3>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"panel-body\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    ");
 for (Peliculas c : listarpeliculas) {
      out.write("\n");
      out.write("                                    ");
 int id = c.getId();
      out.write("\n");
      out.write("                                    <div class=\"col-md-6\" id=\"");
      out.print(id);
      out.write("\">                                        \n");
      out.write("                                        <a href=\"mostrar_pelicula.jsp?id=");
      out.print(id);
      out.write("\">\n");
      out.write("                                            <img src=\"");
      out.print( c.getPoster());
      out.write("\" alt=\"imagen\" class=\"img-responsive img-destacados\">\n");
      out.write("                                        </a>\n");
      out.write("                                    </div>\n");
      out.write("                                    ");
 }
      out.write("                                  \n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
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
