/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.dto.Categorias;
import servicios.ConectorDB;

/**
 *
 * @author Zephyr
 */

public class CategoriasDAO {
    private final  Connection cnx;
    
    public CategoriasDAO() throws SQLException{
        cnx = new ConectorDB().getConexion();
    }
    
    
    // Metodo para capturar los datos de las categorias en una lista
    public List<Categorias> getList(){
        List<Categorias> lista = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select categoria_id, nombre, descripcion from categorias";
        
        
        try{
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()){
                Categorias c = new Categorias(
                        rs.getInt("categoria_id"),                       
                        rs.getString("nombre"),
                        rs.getString("descripcion")
                );
                lista.add(c);                
            }
            rs.close();
        }catch(SQLException ex){
            
        }
        
        return lista;
    }
    
    
    
    // MÃ©todo para capturar una categoria usando como argumento su nombre
    public Categorias getCategoriaByUsername(String username) {
        Categorias categoria = null;
        String consulSql = "SELECT * FROM categorias WHERE nombre = ?";

        try (PreparedStatement ps = cnx.prepareStatement(consulSql)) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    categoria = new Categorias(
                            rs.getInt("categoria_id"),                       
                            rs.getString("nombre"),
                            rs.getString("descripcion")
                    );
                }
            }
        } catch (SQLException ex) {
        }

        return categoria;
    }

}