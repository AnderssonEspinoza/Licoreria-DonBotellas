package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.dto.Categoria;
import modelo.dto.Material;
import servicios.ConectorDB;

public class MaterialesDAO {
    private Connection cnx;
    
    public MaterialesDAO() throws SQLException{
        cnx = new ConectorDB().getConexion();
    }
       
    public Material get(int idx){
        Material m = null;
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select m.idMaterial, m.nombre, m.cantidad, c.idCategoria, c.nombre as NombreCategoria " +  
                    "from material m inner join categoria c " + 
                    "on m.idCategoria = c.idCategoria where idMaterial=?";
           
        try{
            ps = cnx.prepareStatement(cadSQL);
            ps.setInt(1, idx);
            rs = ps.executeQuery();
            
            
            if (rs.next()){
                m = new Material();
                m.setIdMaterial(rs.getInt("idMaterial"));
                m.setNombre(rs.getString("nombre"));
                m.setCantidad(rs.getDouble("cantidad"));
                m.setCategoria(new Categoria(rs.getInt("idCategoria"), "NombreCategoria"));         
            }
            rs.close();
        }catch(SQLException ex){
            
        }
        
        return m;
    }
    
    
    public List<Material> getList(){
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select m.idMaterial, m.nombre, m.cantidad, c.idCategoria, c.nombre as NombreCategoria " + 
                        "from material m inner join categoria c "+ 
                        "on m.idCategoria = c.idCategoria;";                       
        List<Material> lista = null;
        try {
            
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()){
                
                Material m = new Material( 
                rs.getInt("idMaterial"),
                rs.getString("nombre"),
                rs.getDouble("cantidad"),
                new Categoria(rs.getInt("IdCategoria"), rs.getString("NombreCategoria")));
                lista.add(m);                        
            }
            rs.close();                     
        }catch (Exception e) { 
            }
        return lista;
    }
    
    public void insertarMaterial(Material material) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;
        
        String query = "INSERT INTO materiales (nombre, cantidad, categoria) VALUES (?, ?, ?)";
        

        try {
            ps =cnx.prepareStatement(query);
            rs = ps.executeQuery();
            ps.setString(1, material.getNombre());
            ps.setInt(2, (int) material.getCantidad());
            ps.setString(3, material.getCategoria());
            ps.executeUpdate();
        }catch{}


    }



}
