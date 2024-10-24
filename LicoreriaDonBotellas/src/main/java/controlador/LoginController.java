package controlador;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.dao.UsuariosDAO;
import modelo.dto.Usuarios;


public class LoginController extends HttpServlet {

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
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
        String correo = request.getParameter("correoElectronico");
        String password = request.getParameter("contrasena");
        
        /*

        Usuarios usuario = usuariosDAO.getUsuarioByUsername(username);

        if (usuario != null && usuario.getPassword().equals(password) && "Administrador".equals(usuario.getRol())) {
            response.getWriter().write("{\"success\": true}");
            response.sendRedirect(request.getContextPath()+"/index-registrados.jsp");
        } else {
            response.getWriter().write("{\"success\": false}");
        }*/
        
        Usuarios usuario = usuariosDAO.getUsuarioByCorreo(correo);
        if(usuario != null && usuario.getPassword().equals(password) && "Cliente".equals(usuario.getRol())){
            response.getWriter().write("{\"success\": true}");
            response.sendRedirect(request.getContextPath()+"/index-registrados.jsp");
        }else if(usuario != null && usuario.getPassword().equals(password) && "Administrador".equals(usuario.getRol())){
            response.getWriter().write("{\"success\": true}");
            HttpSession session = request.getSession();
            session.setAttribute("nombreUsuario", usuario.getNombre());
            response.sendRedirect(request.getContextPath()+"/index-registrados.jsp");
        }else {
            response.getWriter().write("{\"success\":false}");
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
