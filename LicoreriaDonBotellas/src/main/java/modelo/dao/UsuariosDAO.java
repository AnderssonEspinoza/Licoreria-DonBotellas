package modelo.dao;

import controlador.LoginController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.mindrot.jbcrypt.BCrypt; // Importar bcrypt para la encriptación
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.dto.Usuarios;
import servicios.ConectorDB;

public class UsuariosDAO {
    private Connection cnx;
    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    public UsuariosDAO() throws SQLException {
        cnx = new ConectorDB().getConexion();
    }

    // Método para capturar los datos de los usuarios en una lista
    public List<Usuarios> getList() {
        List<Usuarios> lista = new ArrayList<>();
        String cadSQL = "SELECT user_id, nombre, email, password, direccion, telefono, rol, fecha_creacion FROM usuarios";

        try (PreparedStatement ps = cnx.prepareStatement(cadSQL);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Usuarios u = new Usuarios(
                        rs.getInt("user_id"),
                        rs.getString("nombre"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("direccion"),
                        rs.getString("telefono"),
                        rs.getString("rol"),
                        rs.getString("fecha_creacion")
                );
                lista.add(u);
            }
        } catch (SQLException ex) {
            logger.error("Error al obtener la lista de usuarios", ex);
        }

        return lista;
    }

    // Método para capturar un usuario usando como argumento su nombre
    public Usuarios getUsuarioByUsername(String username) {
        Usuarios usuario = null;
        String consulSql = "SELECT * FROM usuarios WHERE nombre = ?";

        try (PreparedStatement ps = cnx.prepareStatement(consulSql)) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    usuario = new Usuarios(
                            rs.getInt("user_id"),
                            rs.getString("nombre"),
                            rs.getString("email"),
                            rs.getString("password"),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("rol"),
                            rs.getString("fecha_creacion")
                    );
                }
            }
        } catch (SQLException ex) {
            logger.error("Error al obtener el usuario por nombre de usuario", ex);
        }

        return usuario;
    }

    // Método para insertar un nuevo usuario con contraseña encriptada
    public boolean insertUsuario(Usuarios usuario) {
        String sql = "INSERT INTO usuarios (nombre, email, password, direccion, telefono, rol, fecha_creacion) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement ps = cnx.prepareStatement(sql)) {
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getEmail());
            ps.setString(3, BCrypt.hashpw(usuario.getPassword(), BCrypt.gensalt())); // Encriptar contraseña
            ps.setString(4, usuario.getDireccion());
            ps.setString(5, usuario.getTelefono());
            ps.setString(6, usuario.getRol());
            ps.setString(7, usuario.getFechaCreacion());
            return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            logger.error("Error al insertar el usuario", ex);
            return false;
        }
    }

    // Método para verificar si un usuario existe por nombre
    public boolean usuarioExiste(String username) {
        String sql = "SELECT COUNT(*) AS total FROM usuarios WHERE nombre = ?";
        try (PreparedStatement ps = cnx.prepareStatement(sql)) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("total") > 0;
                }
            }
        } catch (SQLException ex) {
            logger.error("Error al verificar la existencia del usuario", ex);
        }
        return false;
    }
}
