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
import model.Generos;
import model.Peliculas;

/**
 *
 * @author alejo
 */
@WebServlet(name = "listar_peliculas", urlPatterns = {"/listar_peliculas"})
public class listar_peliculas extends HttpServlet {

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
            String query = "SELECT * FROM Peliculas;";
            ArrayList<Peliculas> listarpeliculas = new ArrayList<>();
            System.out.println(query);
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Peliculas pelicula = new Peliculas();
                int id = Integer.parseInt(rs.getString(1));
                String nombre = rs.getString(2);
                //Generos generoId = (Generos) rs.getObject(3);
                int duracion = Integer.parseInt(rs.getString(4));
                String estado = rs.getString(5);
                int ejemplar = Integer.parseInt(rs.getString(6));
                String descripcion = rs.getString(7);

                pelicula.setId(id);
                pelicula.setNombre(nombre);
                //pelicula.setGeneroId(generoId);
                pelicula.setDuracion(duracion);
                pelicula.setEstado(estado);
                pelicula.setEjemplar(ejemplar);
                pelicula.setDescripcion(descripcion);

                listarpeliculas.add(pelicula);

            }

            session.setAttribute("lista", listarpeliculas);
            request.getRequestDispatcher("listar_peliculas.jsp").forward(request, response);
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
