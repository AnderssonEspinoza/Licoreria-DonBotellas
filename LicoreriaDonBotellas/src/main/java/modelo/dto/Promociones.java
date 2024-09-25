
package modelo.dto;

public class Promociones {
    private int promocion_id;
    private String nombre;
    private String descripcion;
    private double descuento;
    private String fecha_inicio;
    private String fecha_fin;
    
    public Promociones(){
        
    }

    public Promociones(int promocion_id, String nombre, String descripcion, double descuento, String fecha_inicio, String fecha_fin) {
        this.promocion_id = promocion_id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.descuento = descuento;
        this.fecha_inicio = fecha_inicio;
        this.fecha_fin = fecha_fin;
    }

    public int getPromocion_id() {
        return promocion_id;
    }

    public void setPromocion_id(int promocion_id) {
        this.promocion_id = promocion_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getDescuento() {
        return descuento;
    }

    public void setDescuento(double descuento) {
        this.descuento = descuento;
    }

    public String getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(String fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public String getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(String fecha_fin) {
        this.fecha_fin = fecha_fin;
    }
    
    @Override
    public String toString(){
        return nombre;
    }
}
