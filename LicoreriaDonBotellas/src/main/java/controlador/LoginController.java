package controlador;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.mindrot.jbcrypt.BCrypt; // Importa la librería bcrypt
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
        String password = request.getParameter("Contrasena");

        // Obtener el usuario de la base de datos
        Usuarios usuario = usuariosDAO.getUsuarioByUsername(username);

        // Verificar las credenciales
        if (usuario != null && BCrypt.checkpw(password, usuario.getPassword()) && "Administrador".equals(usuario.getRol())) {
            logger.info("Inicio de sesión exitoso para el usuario: {}", username);
            response.getWriter().write("{\"success\": true}");
            response.sendRedirect(request.getContextPath() + "/index-registrados.jsp");
        } else {
            logger.warn("Inicio de sesión fallido para el usuario: {}", username);
            response.getWriter().write("{\"success\": false}");
        }
    }

    /**
     * Retorna una breve descripción del servlet.
     *
     * @return una cadena que contiene la descripción del servlet
     */
    @Override
    public String getServletInfo() {
        return "Controlador de login que utiliza bcrypt para la autenticación.";
    }
}
