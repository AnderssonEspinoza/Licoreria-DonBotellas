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

    private final Connection cnx;

    public ProductosDAO() throws SQLException {
        cnx = new ConectorDB().getConexion();
    }

    // Metodo para capturar los datos de los productos en una lista
    public List<Productos> getList() {
        List<Productos> lista = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select producto_id, nombre, descripcion, precio, stock, categoria_id, fecha_caducidad from productos";

        try {
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();

            while (rs.next()) {
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
        } catch (SQLException ex) {

        }

        return lista;
    }

    // Metodo para capturar un producto usando como argumento su nombre
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

    public List<Productos> buscarProductos(String termino) {
        List<Productos> lista = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "SELECT producto_id, nombre, descripcion, precio, stock, categoria_id, fecha_caducidad FROM productos WHERE nombre LIKE ?";

        try {
            ps = cnx.prepareStatement(cadSQL);
            ps.setString(1, "%" + termino + "%");  // Para buscar coincidencias parciales
            rs = ps.executeQuery();

            while (rs.next()) {
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
        } catch (SQLException ex) {
            // Manejar error, por ejemplo, imprimir la excepción
            ex.printStackTrace();
        }

        return lista;
    }
    
    
    
    public List<Productos> obtenerProductosPorVenta(int ventaId) {
        List<Productos> productosVendidos = new ArrayList<>();
        try  {
            String sql = "SELECT p.producto_id, p.nombre, p.descripcion, p.precio, pv.cantidad " +
                         "FROM productos p JOIN venta_productos pv ON p.producto_id = pv.producto_id " +
                         "WHERE pv.venta_id = ?";
            try (PreparedStatement ps = cnx.prepareStatement(sql)) {
                ps.setInt(1, ventaId);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        Productos producto = new Productos();
                        producto.setProducto_id(rs.getInt("producto_id"));
                        producto.setNombre(rs.getString("nombre"));
                        producto.setDescripcion(rs.getString("descripcion"));
                        producto.setPrecio(rs.getDouble("precio"));
                        producto.setStock(rs.getInt("cantidad"));  // Cantidad vendida en la venta
                        productosVendidos.add(producto);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productosVendidos;
    }

}


// Si se llega a observar algun error por favor avisar o corregir si pueden
