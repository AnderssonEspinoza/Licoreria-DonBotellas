package modelo.dao;

import com.mysql.cj.xdevapi.PreparableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.dto.Categoria;
import servicios.ConectorDB;

public class CategoriaDAO {
    private Connection cnx;
    
    public CategoriaDAO() throws SQLException{
        cnx = new ConectorDB().getConexion();
    }
    
    public List<Categoria> getList(){
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select idCategoria, nombre from categoria";
        List<Categoria> lista = null;
        
        try{
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()){
                Categoria c = new Categoria(
                        rs.getInt("idCategoria"),                       
                        rs.getString("nombre"));
                lista.add(c);
                
            }
            rs.close();
        }catch(SQLException ex){
            
        }
        
        return lista;
    }
}
