/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import modelo.dto.Productos;
import modelo.dto.Venta;
import servicios.ConectorDB;

public class VentaDAO {

    private final Connection cnx;

    public VentaDAO() throws SQLException {
        cnx = new ConectorDB().getConexion();
    }

    public void registrarProductoVenta(int ventaId, Productos producto, int cantidadVendida) throws SQLException {
        String sql = "INSERT INTO venta_productos (venta_id, producto_id, cantidad) VALUES (?, ?, ?)";
        try (PreparedStatement psProductoVenta = cnx.prepareStatement(sql)) {
            psProductoVenta.setInt(1, ventaId);
            psProductoVenta.setInt(2, producto.getProducto_id());
            psProductoVenta.setInt(3, cantidadVendida); // Aquí usas la cantidad vendida
            psProductoVenta.executeUpdate();
        }
    }

    // Método para registrar una venta
    public boolean registrarVenta(Venta venta, List<Productos> productosVendidos, List<Integer> cantidadesVendidas) {
        // Lógica para insertar la venta en la base de datos
        String sqlVenta = "INSERT INTO ventas (pedido_id, user_id, total, tipo_venta, fecha, estado) VALUES (?, ?, ?, ?, ?, ?)";
        try (
                PreparedStatement psVenta = cnx.prepareStatement(sqlVenta)) {
            psVenta.setInt(1, venta.getPedidoId());
            psVenta.setInt(2, venta.getUserId());
            psVenta.setDouble(3, venta.getTotal());
            psVenta.setString(4, venta.getTipoVenta());
            psVenta.setTimestamp(5, Timestamp.valueOf(venta.getFecha()));
            psVenta.setString(6, venta.getEstado());
            psVenta.executeUpdate();
            // Obtener el ID de la venta recién insertada
            ResultSet generatedKeys = psVenta.getGeneratedKeys();
            if (generatedKeys.next()) {
                int ventaId = generatedKeys.getInt(1);

                // Registrar productos vendidos
                String sqlProductoVenta = "INSERT INTO venta_productos (venta_id, producto_id, cantidad, precio_unitario) VALUES (?, ?, ?, ?)";
                try (PreparedStatement psProductoVenta = cnx.prepareStatement(sqlProductoVenta)) {
                    for (int i = 0; i < productosVendidos.size(); i++) {
                        Productos producto = productosVendidos.get(i);
                        int cantidadVendida = cantidadesVendidas.get(i); // Obtén la cantidad vendida desde el parámetro

                        psProductoVenta.setInt(1, ventaId);
                        psProductoVenta.setInt(2, producto.getProducto_id());
                        psProductoVenta.setInt(3, cantidadVendida); // Usa la cantidad vendida
                        psProductoVenta.setDouble(4, producto.getPrecio());
                        psProductoVenta.addBatch();
                    }
                    psProductoVenta.executeBatch();
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return false;
        
    }

    // Método para registrar cada producto vendido
    public boolean registrarVentaItem(int idProducto, int cantidad, double precioUnitario, double precioTotal, String fechaVenta) {
        // Lógica para insertar los detalles de cada producto vendido
        String sql = "INSERT INTO DetallesVenta (idProducto, cantidad, precioUnitario, precioTotal, fechaVenta) VALUES (?, ?, ?, ?, ?)";
        try (
                PreparedStatement ps = cnx.prepareStatement(sql)) {
            ps.setInt(1, idProducto);
            ps.setInt(2, cantidad);
            ps.setDouble(3, precioUnitario);
            ps.setDouble(4, precioTotal);
            ps.setString(5, fechaVenta);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

}
