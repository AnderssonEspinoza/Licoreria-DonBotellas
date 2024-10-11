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
import modelo.dto.DetallePedido;
import servicios.ConectorDB;

/**
 *
 * @author Zephyr
 */

public class DetallePedidoDAO {
    private final  Connection cnx;
    
    public DetallePedidoDAO() throws SQLException{
        cnx = new ConectorDB().getConexion();
    }
    
    
    // Metodo para capturar los datos de los detalles de productos en una lista
    public List<DetallePedido> getList(){
        List<DetallePedido> lista = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select detalle_id, pedido_id, producto_id, cantidad, precio_unitario from detallepedido";
        
        
        try{
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()){
                DetallePedido dc = new DetallePedido(
                        rs.getInt("detalle_id"),                       
                        rs.getInt("cart_id"),
                        rs.getInt("producto_id"),
                        rs.getInt("cantidad"),
                        rs.getDouble("precio_unitario")
                );
                lista.add(dc);                
            }
            rs.close();
        }catch(SQLException ex){
            
        }
        
        return lista;
    }
    
    
    
    // Metodo para capturar un detalle de producto usando como argumento su nombre
    public DetallePedido getDetallePedidoByUsername(String username) {
        DetallePedido dpro = null;
        String consulSql = "SELECT * FROM detallepedido WHERE detalle_id = ?";

        try (PreparedStatement ps = cnx.prepareStatement(consulSql)) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    dpro = new DetallePedido(
                            rs.getInt("detalle_id"),                       
                            rs.getInt("cart_id"),
                            rs.getInt("producto_id"),
                            rs.getInt("cantidad"),
                            rs.getDouble("precio_unitario")
                    );
                }
            }
        } catch (SQLException ex) {
        }

        return dpro;
    }

}


// Si se llega a observar algun error por favor avisar o corregir si pueden