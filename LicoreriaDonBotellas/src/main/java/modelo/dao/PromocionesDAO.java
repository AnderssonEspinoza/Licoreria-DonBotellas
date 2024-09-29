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
import modelo.dto.Promociones;
import servicios.ConectorDB;

/**
 *
 * @author Zephyr
 */
public class PromocionesDAO {
    private final  Connection cnx;
    
    public PromocionesDAO() throws SQLException{
        cnx = new ConectorDB().getConexion();
    }
    
    
    // Metodo para capturar los datos de las promociones en una lista
    public List<Promociones> getList(){
        List<Promociones> lista = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select promocion_id, nombre, descripcion, descuento, fecha_inicio, fecha_fin from promociones";
        
        
        try{
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()){
                Promociones pro = new Promociones(
                        rs.getInt("promocion_id"),                       
                        rs.getString("nombre"),
                        rs.getString("descripcion"),
                        rs.getDouble("descuento"),
                        rs.getString("fecha_inicio"),
                        rs.getString("fecha_fin")
                );
                lista.add(pro);                
            }
            rs.close();
        }catch(SQLException ex){
            
        }
        
        return lista;
    }
    
    
    
    // Metodo para capturar una promocion usando como argumento su nombre
    public Promociones getPromocionByUsername(String username) {
        Promociones promocion = null;
        String consulSql = "SELECT * FROM promociones WHERE nombre = ?";

        try (PreparedStatement ps = cnx.prepareStatement(consulSql)) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    promocion = new Promociones(
                            rs.getInt("promocion_id"),                       
                            rs.getString("nombre"),
                            rs.getString("descripcion"),
                            rs.getDouble("descuento"),
                            rs.getString("fecha_inicio"),
                            rs.getString("fecha_fin")
                    );
                }
            }
        } catch (SQLException ex) {
        }

        return promocion;
    }

}

// Si se llega a observar algun error por favor avisar o corregir si pueden