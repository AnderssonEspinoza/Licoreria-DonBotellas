/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.MaterialesDAO;
import modelo.dto.Material;

@WebServlet("/ControladorRegistro")
public class ControladorRegistro extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorRegistro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorRegistro at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        String nombre = request.getParameter("nombre");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        int categoria = Integer.parseInt(request.getParameter("categoria"));
        
        MaterialesDAO materialesDAO;
        try {
            materialesDAO = new MaterialesDAO();
        } catch (SQLException ex) {
            Logger.getLogger(ControladorRegistro.class.getName()).log(Level.SEVERE, null, ex);
        }
        Material material = new Material(codigo, nombre, cantidad, categoria);
        
        try {
            if (materialesDAO.existeMaterial(nombre)) {
                response.getWriter().write("<script>alert('El material ya existe en la base de datos');</script>");
            } else {
                materialesDAO.insertarMaterial(material);
                response.getWriter().write("<script>alert('Material registrado exitosamente');</script>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("<script>alert('Error al registrar el material');</script>");
        }
    }
        
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
