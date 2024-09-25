package modelo.dao;
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
    
    public UsuariosDAO() throws SQLException{
        cnx = new ConectorDB().getConexion();
    }
    
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
}
