package modelo.dto;
public class Carrito {
    private int cart_id;
    private int user_id;
    private String fecha_creacion;
    
    
    public Carrito() {}

    public Carrito(int cart_id, int user_id, String fecha_creacion) {
        this.cart_id = cart_id;
        this.user_id = user_id;
        this.fecha_creacion = fecha_creacion;
    }

    public int getCart_id() {
        return cart_id;
    }

    public void setCart_id(int cart_id) {
        this.cart_id = cart_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }
    
    
}
