package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;
import modelo.dao.UsuariosDAO;
import modelo.dto.Usuarios;
import org.mindrot.jbcrypt.BCrypt;

@WebServlet("/UsuarioController")
public class UsuarioController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setHeader("Access-Control-Allow-Origin", "*"); // Permitir todos los orígenes
        response.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS, PUT, DELETE");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");

        UsuariosDAO dao;
        try {
            dao = new UsuariosDAO();
            List<Usuarios> listaUsuarios = dao.getList();
            Gson gson = new Gson();
            String json = gson.toJson(listaUsuarios);

            // Establecer el tipo de contenido como JSON
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

            // Escribir el JSON en la respuesta
            PrintWriter out = response.getWriter();
            out.print(json);
            out.flush();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioController.class.getName()).log(Level.SEVERE, null, ex);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error en la base de datos");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS, PUT, DELETE");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");

        UsuariosDAO dao;
        try {
            dao = new UsuariosDAO();

            // Obtener datos del usuario desde la solicitud
            String nombreUsuario = request.getParameter("NombreUsuario");
            String contrasena = request.getParameter("Contrasena");
            String nombre = request.getParameter("Nombre");
            String apellido = request.getParameter("Apellido");
            String rol = request.getParameter("Rol"); // Por ejemplo: Administrador o Usuario

            // Encriptar la contraseña con bcrypt
            String hashedPassword = BCrypt.hashpw(contrasena, BCrypt.gensalt());

            // Crear el objeto Usuario
            Usuarios nuevoUsuario = new Usuarios();
            nuevoUsuario.setNombreUsuario(nombreUsuario);
            nuevoUsuario.setPassword(hashedPassword); // Guardar la contraseña encriptada
            nuevoUsuario.setNombre(nombre);
            nuevoUsuario.setApellido(apellido);
            nuevoUsuario.setRol(rol);

            // Guardar el usuario en la base de datos
            boolean exito = dao.insertUsuario(nuevoUsuario);

            // Respuesta según el resultado
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            if (exito) {
                out.print("{\"success\": true, \"message\": \"Usuario registrado con éxito.\"}");
            } else {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                out.print("{\"success\": false, \"message\": \"Error al registrar el usuario.\"}");
            }
            out.flush();

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioController.class.getName()).log(Level.SEVERE, null, ex);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error en la base de datos");
        }
    }
}
