package modelo.dto;
public class Pedidos {
    private int pedido_id;
    private int user_id;
    private String fecha;
    private String estado;
    private double total;
    
    public Pedidos(){}

    public Pedidos(int pedido_id, int user_id, String fecha, String estado, double total) {
        this.pedido_id = pedido_id;
        this.user_id = user_id;
        this.fecha = fecha;
        this.estado = estado;
        this.total = total;
    }

    public int getPedido_id() {
        return pedido_id;
    }

    public void setPedido_id(int pedido_id) {
        this.pedido_id = pedido_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
    
}
