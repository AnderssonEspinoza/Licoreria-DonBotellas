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
import modelo.dto.Carrito;
import servicios.ConectorDB;

/**
 *
 * @author Zephyr
 */

public class CarritoDAO {
    private final  Connection cnx;
    
    public CarritoDAO() throws SQLException{
        cnx = new ConectorDB().getConexion();
    }
    
    
    // Metodo para capturar los datos de los carritos en una lista
    public List<Carrito> getList(){
        List<Carrito> lista = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select cart_id, user_id, fecha_creacion from carrito";
        
        
        try{
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()){
                Carrito carri = new Carrito(
                        rs.getInt("cart_id"),                       
                        rs.getInt("user_id"),
                        rs.getString("fecha_creacion")
                );
                lista.add(carri);                
            }
            rs.close();
        }catch(SQLException ex){
            
        }
        
        return lista;
    }
    
    
    
    // MÃ©todo para capturar un carrito usando como argumento su id del carrito
    public Carrito getCarritoByUsername(String username) {
        Carrito carrit = null;
        String consulSql = "SELECT * FROM carrito WHERE cart_id = ?";

        try (PreparedStatement ps = cnx.prepareStatement(consulSql)) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    carrit = new Carrito(
                            rs.getInt("cart_id"),                       
                            rs.getInt("user_id"),
                            rs.getString("fecha_creacion")
                    );
                }
            }
        } catch (SQLException ex) {
        }

        return carrit;
    }

}

