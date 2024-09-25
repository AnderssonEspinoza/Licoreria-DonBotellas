package modelo.dto;
public class ProductosProximosAVencer {
    private int id;
    private int producto_id;
    private int cantidad;

    public ProductosProximosAVencer() {
    }

    public ProductosProximosAVencer(int id, int producto_id, int cantidad) {
        this.id = id;
        this.producto_id = producto_id;
        this.cantidad = cantidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProducto_id() {
        return producto_id;
    }

    public void setProducto_id(int producto_id) {
        this.producto_id = producto_id;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    
}
