/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ficha1020611
 */
@WebServlet(name = "salir", urlPatterns = {"/salir"})
public class salir extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            System.out.println("ENTRA");
            /* TODO output your page here. You may use following sample code. */
            conectadb con = new conectadb();
            Connection cnn = con.conectar();
            Statement stm = cnn.createStatement();
            String query = "Select * from Users Where Nombre='" + request.getParameter("Nombre") + "' AND Contrasena='" + request.getParameter("Contrasena") + "';";
            System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            if (rs.next()) {
                HttpSession session = request.getSession(true);
                session.setMaxInactiveInterval(300); //600 secs = 10 mins
                session.setAttribute("user", (rs.getString(2)));
                session.setAttribute("rol", (rs.getString(3)));
                
                String userid = (String) session.getAttribute("user");
                if (userid == null) {
                    response.sendRedirect("sesion_expiro.jsp");
                    return; //the return is important; forces redirect to go now
                } else {
                    response.sendRedirect("indexLogin.jsp");
                }

            } else {
                response.sendRedirect("error.jsp");
                System.out.println("Esto es un error");
            }
            cnn.close();
        } catch (SQLException e) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
