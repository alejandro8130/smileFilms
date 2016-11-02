package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Clientes;
import java.util.ArrayList;

public final class listar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "banner.jsp", out, true);
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <h1>Clientes</h1>\n");
      out.write("            <table id=\"table\" class=\"table\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Id</th>\n");
      out.write("                        <th>Nombre</th>\n");
      out.write("                        <th>Apellido</th>\n");
      out.write("                        <th>Fecha de Nacimiento</th>\n");
      out.write("                        <th>Telefono</th>\n");
      out.write("                        <th>Email</th>                     \n");
      out.write("                        <th>Documento</th>\n");
      out.write("                        <th>Ciudad</th>\n");
      out.write("                        <th>Dirección</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    ");

                        ArrayList lista = (ArrayList) session.getAttribute("lista");

                        for (Object c : lista) {
                            out.println("<tr>");
                            out.println("<td>" + ((Clientes) c).getId() + "</td>");
                            out.println("<td>" + ((Clientes) c).getNombre() + "</td>");
                            out.println("<td>" + ((Clientes) c).getApellido() + "</td>");
                            out.println("<td>" + ((Clientes) c).getFechaNacimiento() + "</td>");
                            out.println("<td>" + ((Clientes) c).getTel() + "</td>");
                            out.println("<td>" + ((Clientes) c).getEmail() + "</td>");
                            out.println("<td>" + ((Clientes) c).getDocumento() + "</td>");
                            out.println("<td>" + ((Clientes) c).getCiudad() + "</td>");
                            out.println("<td>" + ((Clientes) c).getDireccion() + "</td>");

                    
      out.write("     \n");
      out.write("                <td><button type=\"button\" class=\"btn btn-warning\">Editar</button></td>\n");
      out.write("                <td><button type=\"button\" class=\"btn btn-danger\">Eliminar</button></td>                        \n");
      out.write("                </tr>\n");
      out.write("                ");
                        }
                
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("            ");
 int pg = 0;
                if (request.getParameter("pag") == null) {
                    pg = 0;
                } else {
                    pg = Integer.parseInt(request.getParameter("pag"));
                }
                for (int j = 0; j < 10; j++) {

            
      out.write("\n");
      out.write("            <a href=\"listar?pag=");
      out.print(j);
      out.write('"');
      out.write('>');
      out.print(j + 1);
      out.write("</a>\n");
      out.write("            ");
                }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, true);
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
