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
import model.Clientes;

/**
 *
 * @author ficha1020611
 */
@WebServlet(name = "listar", urlPatterns = {"/listar"})
public class listar extends HttpServlet {

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
            String query = "SELECT * FROM Clientes;";
            ArrayList<Clientes> listarclientes = new ArrayList<>();
            System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Clientes clien = new Clientes();
                int id = Integer.parseInt(rs.getString(1));
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String tel = rs.getString(5);
                String email = rs.getString(6);
                int carnet = Integer.parseInt(rs.getString(7));
                String documento = rs.getString(8);
                String ciudad = rs.getString(9);
                String direccion = rs.getString(10);

                clien.setId(rs.getInt(1));
                clien.setNombre(nombre);
                clien.setApellido(apellido);
                clien.setFechaNacimiento(rs.getDate(4));
                clien.setTel(tel);
                clien.setEmail(email);
                clien.setDocumento(documento);
                clien.setCiudad(ciudad);
                clien.setDireccion(direccion);

                listarclientes.add(clien);

            }

            session.setAttribute("lista", listarclientes);
            request.getRequestDispatcher("listar_cliente.jsp").forward(request, response);
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
