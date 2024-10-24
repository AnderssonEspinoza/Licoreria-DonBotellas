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
                        rs.getDate("fecha_creacion")
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
//'username' es la variable que captura al nombre de usuario ingresado en la web por el usuario (ver login.js)
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
                            rs.getDate("fecha_creacion")
                    );
                }
            }
        } catch (SQLException ex) {
            logger.error("Error al obtener el usuario por nombre de usuario", ex);
        }

        return usuario;
    }

    
    //Metodo para capturar un usuario usando el correo como argumento
    public Usuarios getUsuarioByCorreo(String correo){
        Usuarios usuario = null;
        String consultaSql = "Select * from usuarios where email = ?";
        
        try (PreparedStatement ps = cnx.prepareStatement(consultaSql)) {
            ps.setString(1, correo);
            try(ResultSet rs = ps.executeQuery()) {
                if(rs.next()){
                    usuario = new Usuarios(
                            rs.getInt("user_id"),
                            rs.getString("nombre"),
                            rs.getString("email"),
                            rs.getString("password"),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("rol"),
                            rs.getDate("fecha_creacion")
                    );
                }
            }
        } catch (Exception e) {
            logger.error("Error al obtener el usuario por correo", e);
        }
        return usuario;
    }
    
    
    //Metodo para insertar (registrar) un nuevo usuario en la tabla usuario de la base de datos
    public boolean registrarUsuario(Usuarios usuario){
        String sql = "INSERT INTO usuarios (nombre, email, password, direccion, telefono, rol) values (?, ?, ?, ?, ?, ?)";
        try(PreparedStatement ps = cnx.prepareStatement(sql)) {
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getEmail());
            ps.setString(3, usuario.getPassword());
            ps.setString(4, usuario.getDireccion());
            ps.setString(5, usuario.getTelefono());
            ps.setString(6, usuario.getRol());
           
            
            ps.executeUpdate();
            return true;
        } catch(SQLException ex){
            ex.printStackTrace();
            return false;
        }
    }
    
    
    //Metodo para verificar si ya existe un usuario registrado con el mismo correo en la tabla usuario de la db
    public boolean existByCorreo(String correo){
        String consulSql = "Select count(*) from usuarios where email = ?";
        try(PreparedStatement ps = cnx.prepareStatement(consulSql)) {
            ps.setString(1, correo);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return rs.getInt(1)>0;
            }
        } catch(SQLException e){
            e.printStackTrace();           
        }
        return false;
    }

}
