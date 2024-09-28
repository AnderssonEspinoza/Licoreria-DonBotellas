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
import modelo.dto.Productos;
import servicios.ConectorDB;

/**
 *
 * @author Zephyr
 */
public class ProductosDAO {
    private final  Connection cnx;
    
    public ProductosDAO() throws SQLException{
        cnx = new ConectorDB().getConexion();
    }
    
    
    // Metodo para capturar los datos de los productos en una lista
    public List<Productos> getList(){
        List<Productos> lista = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select producto_id, nombre, descripcion, precio, stock, categoria_id, fecha_caducidad from productos";
        
        
        try{
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()){
                Productos p = new Productos(
                        rs.getInt("producto_id"),                       
                        rs.getString("nombre"),
                        rs.getString("descripcion"),
                        rs.getDouble("precio"),
                        rs.getInt("stock"),
                        rs.getInt("categoria_id"),
                        rs.getString("fecha_caducidad")
                );
                lista.add(p);                
            }
            rs.close();
        }catch(SQLException ex){
            
        }
        
        return lista;
    }
    
    
    
    // MÃ©todo para capturar un producto usando como argumento su nombre
    public Productos getProductoByUsername(String username) {
        Productos producto = null;
        String consulSql = "SELECT * FROM productos WHERE nombre = ?";

        try (PreparedStatement ps = cnx.prepareStatement(consulSql)) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    producto = new Productos(
                            rs.getInt("producto_id"),                       
                            rs.getString("nombre"),
                            rs.getString("descripcion"),
                            rs.getDouble("precio"),
                            rs.getInt("stock"),
                            rs.getInt("categoria_id"),
                            rs.getString("fecha_caducidad")
                    );
                }
            }
        } catch (SQLException ex) {
        }

        return producto;
    }

}
