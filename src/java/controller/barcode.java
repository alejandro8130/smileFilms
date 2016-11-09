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
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Barcodes;

/**
 *
 * @author ficha1020611
 */
@WebServlet(name = "barcode", urlPatterns = {"/barcode"})
public class barcode extends HttpServlet {

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
            HttpSession session = request.getSession(false);       
            conectadb con = new conectadb();
            Connection cnn = con.conectar();
            Statement stm = cnn.createStatement();
            String query = "SELECT * FROM Barcodes Where barcode='" + request.getParameter("barcode") + "';";
            ArrayList<Barcodes> listarbarcode = new ArrayList<>();
            System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Barcodes barcode = new Barcodes();
                int id = Integer.parseInt(rs.getString(1));
                String nombre = rs.getString(2);
                String descripcion = rs.getString(3);
                String barcodes = rs.getString(4);

                barcode.setId(id);
                barcode.setNombre(nombre);
                barcode.setDescripcion(descripcion);
                barcode.setBarcode(barcodes);

                listarbarcode.add(barcode);

            }

            session.setAttribute("lista", listarbarcode);
            request.getRequestDispatcher("barcode.jsp").forward(request, response);
            rs.close();
            cnn.close();
        } catch (SQLException e) {
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
