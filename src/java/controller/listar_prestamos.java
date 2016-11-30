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
import model.Empleados;
import model.Generos;
import model.Peliculas;
import model.Prestamos;

/**
 *
 * @author ficha1020611
 */
@WebServlet(name = "listar_prestamos", urlPatterns = {"/listar_prestamos"})
public class listar_prestamos extends HttpServlet {

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
            String query = "SELECT Prestamos.id,Clientes.nombre,Peliculas.nombre,Prestamos.fecha_devolucion,Prestamos.pago,Empleados.nombre FROM Prestamos INNER JOIN Clientes ON Prestamos.Cliente_id=Clientes.id INNER JOIN Peliculas ON Prestamos.Pelicula_id=Peliculas.id INNER jOIN Empleados ON Prestamos.Empleado_id=Empleados.id;;";
            ArrayList<Prestamos> listarprestamos = new ArrayList<>();
            System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Prestamos prestamo = new Prestamos();
                Clientes cliente_id = new Clientes();
                Peliculas pelicula_id = new Peliculas();
                Empleados empleado_id = new Empleados();
                int id = Integer.parseInt(rs.getString(1));
                cliente_id.setNombre(rs.getString(2));
                pelicula_id.setNombre(rs.getString(3));
                int pago = Integer.parseInt(rs.getString(5));
                empleado_id.setNombre(rs.getString(6));
                                
                prestamo.setId(id);
                prestamo.setClienteid(cliente_id);
                prestamo.setPeliculaid(pelicula_id);
                prestamo.setFechaDevolucion(rs.getDate(4));
                prestamo.setPago(pago);
                prestamo.setEmpleadoid(empleado_id);

                listarprestamos.add(prestamo);

            }

            session.setAttribute("lista", listarprestamos);
            request.getRequestDispatcher("listar_prestamos.jsp").forward(request, response);
            rs.close();
            cnn.close();
        } catch (SQLException e) {
            request.getRequestDispatcher("error.jsp").forward(request, response);
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
