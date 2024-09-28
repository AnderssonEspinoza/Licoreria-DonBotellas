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
import modelo.dto.Pedidos;
import servicios.ConectorDB;

/**
 *
 * @author Zephyr
 */

public class PedidosDAO {
    private final  Connection cnx;
    
    public PedidosDAO() throws SQLException{
        cnx = new ConectorDB().getConexion();
    }
    
    
    // Metodo para capturar los datos de los pedidos en una lista
    public List<Pedidos> getList(){
        List<Pedidos> lista = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select pedidos_id, user_id, fecha, estado, total from pedidos";
        
        
        try{
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()){
                Pedidos pe = new Pedidos(
                        rs.getInt("pedidos_id"),                       
                        rs.getInt("user_id"),
                        rs.getString("fecha"),
                        rs.getString("estado"),
                        rs.getDouble("total")
                );
                lista.add(pe);                
            }
            rs.close();
        }catch(SQLException ex){
            
        }
        
        return lista;
    }
    
    
    
    // Metodo para capturar un pedido usando como argumento el id de un usuario
    public Pedidos getProductoByUsername(String userid) {
        Pedidos pedido = null;
        String consulSql = "SELECT * FROM pedidos WHERE user_id = ?";

        try (PreparedStatement ps = cnx.prepareStatement(consulSql)) {
            ps.setString(1, userid);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    pedido = new Pedidos(
                            rs.getInt("pedidos_id"),                       
                            rs.getInt("user_id"),
                            rs.getString("fecha"),
                            rs.getString("estado"),
                            rs.getDouble("total")
                    );
                }
            }
        } catch (SQLException ex) {
        }

        return pedido;
    }

}

// Si se llega a observar algun error por favor avisar o corregir si pueden