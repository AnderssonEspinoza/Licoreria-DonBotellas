/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.UsuariosDAO;
import modelo.dto.Usuarios;
import org.slf4j.LoggerFactory;

/**
 *
 * @author esola
 */
public class LoginController extends HttpServlet {

    private static final Logger logger = (Logger) LoggerFactory.getLogger(LoginController.class);
    private UsuariosDAO usuariosDAO;
    
    @Override
    public void init() {
        try {
            usuariosDAO = new UsuariosDAO();
        } catch (SQLException e) {
            logger.error("Error al inicializar UsuariosDAO", e);
        }
    }

    
   
   

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("NombreUsuario");
        String password = request.getParameter("Contrasena");

        Usuarios usuario = usuariosDAO.getUsuarioByUsername(NombreUsuario);

        if (usuario != null && usuario.getPassword().equals(password) && "administrador".equals(usuario.getRol())) {
            response.getWriter().write("{\"success\": true}");
        } else {
            response.getWriter().write("{\"success\": false}");
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
