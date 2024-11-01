/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dto;

import java.util.List;


import java.time.LocalDateTime;

public class Venta {
    private int ventaId;
    private int pedidoId;
    private int userId;
    private double total;
    private String tipoVenta; // Ejemplo: "online" o "in-person"
    private LocalDateTime fecha;
    private String estado; // Ejemplo: "completada", "pendiente", etc.

    public Venta() {}

    public Venta(int ventaId, int pedidoId, int userId, double total, String tipoVenta, LocalDateTime fecha, String estado) {
        this.ventaId = ventaId;
        this.pedidoId = pedidoId;
        this.userId = userId;
        this.total = total;
        this.tipoVenta = tipoVenta;
        this.fecha = fecha;
        this.estado = estado;
    }

    public int getVentaId() {
        return ventaId;
    }

    public void setVentaId(int ventaId) {
        this.ventaId = ventaId;
    }

    public int getPedidoId() {
        return pedidoId;
    }

    public void setPedidoId(int pedidoId) {
        this.pedidoId = pedidoId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getTipoVenta() {
        return tipoVenta;
    }

    public void setTipoVenta(String tipoVenta) {
        this.tipoVenta = tipoVenta;
    }

    public LocalDateTime getFecha() {
        return fecha;
    }

    public void setFecha(LocalDateTime fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Venta{" +
                "ventaId=" + ventaId +
                ", pedidoId=" + pedidoId +
                ", userId=" + userId +
                ", total=" + total +
                ", tipoVenta='" + tipoVenta + '\'' +
                ", fecha=" + fecha +
                ", estado='" + estado + '\'' +
                '}';
    }
}
