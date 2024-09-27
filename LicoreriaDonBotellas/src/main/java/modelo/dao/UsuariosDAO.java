package modelo.dao;


import controlador.LoginController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    
    public UsuariosDAO() throws SQLException{
        cnx = new ConectorDB().getConexion();
    }
    
    
    // Metodo para capturar los datos de los usuarios en una lista
    public List<Usuarios> getList(){
        List<Usuarios> lista = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select user_id, nombre, email, password, direccion, telefono, rol, fecha_creacion from usuarios";
        
        
        try{
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()){
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
            rs.close();
        }catch(SQLException ex){
            
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

}
