package modelo.dto;
public class Categorias {
    private int categoria_id;
    private String nombre;
    private String descripcion;
    
    public Categorias (){
        
    }
    
    public Categorias (int categoria_id, String nombre, String descripcion){
        this.categoria_id = categoria_id;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public int getCategoria_id() {
        return categoria_id;
    }

    public void setCategoria_id(int categoria_id) {
        this.categoria_id = categoria_id;
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
    
    @Override
    public String toString(){
        return nombre;
    }
    
    
    
    
}
