package modelo.dto;
public class MetodoPago {
    private int metodo_id;
    private String nombre;
    private String detalles;
    
    public MetodoPago(){}

    public MetodoPago(int metodo_id, String nombre, String detalles) {
        this.metodo_id = metodo_id;
        this.nombre = nombre;
        this.detalles = detalles;
    }

    public int getMetodo_id() {
        return metodo_id;
    }

    public void setMetodo_id(int metodo_id) {
        this.metodo_id = metodo_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDetalles() {
        return detalles;
    }

    public void setDetalles(String detalles) {
        this.detalles = detalles;
    }
    
    @Override
    public String toString(){
        return nombre;
    }
    
    
}
