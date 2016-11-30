/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ficha1020611
 */
@WebServlet(name = "editar_empleado", urlPatterns = {"/editar_empleado"})
public class editar_empleado extends HttpServlet {

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
        PreparedStatement query = null;
        try {
            conectadb con = new conectadb();
            Connection cnn = con.conectar();
            query = cnn.prepareStatement("Update Empleados set nombre=?, apellido=?, tel=?,email=?, Rol_id=?,documento=?, fecha_inicio=? where id=?;");
            query.setString(1, request.getParameter("nombre"));
            query.setString(2, request.getParameter("apellido"));            
            query.setString(3, request.getParameter("tel"));
            query.setString(4, request.getParameter("email"));
            query.setString(5, request.getParameter("rol"));
            query.setString(6, request.getParameter("documento"));
            query.setString(7, request.getParameter("fecha"));
            query.setString(8, request.getParameter("id"));
            query.executeUpdate();

            request.getRequestDispatcher("listar_empleados").forward(request, response);
            System.out.println(query);
            cnn.close();
        } catch (SQLException e) {
            System.out.println(query);
            e.printStackTrace();
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
