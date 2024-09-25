package modelo.dto;
public class ProductosPromocionados {
    private int id;
    private int producto_id;
    private int promocion_id;
    
    public ProductosPromocionados() {}

    public ProductosPromocionados(int id, int producto_id, int promocion_id) {
        this.id = id;
        this.producto_id = producto_id;
        this.promocion_id = promocion_id;
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

    public int getPromocion_id() {
        return promocion_id;
    }

    public void setPromocion_id(int promocion_id) {
        this.promocion_id = promocion_id;
    }
    
    
    
}
