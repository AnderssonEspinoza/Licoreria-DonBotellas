package modelo.dto;
public class Material {
    private int idMaterial;
    private String nombre;
    private double cantidad;
    private Categoria categoria;
    
    public Material (){}
    
  
    

    public Material(int idMaterial, String nombre, double cantidad, Categoria categoria) {
        this.idMaterial= idMaterial;
        this.nombre = nombre;
        this.cantidad = cantidad;      
        this.categoria = categoria;
    }

    

    public int getIdMaterial() {
        return idMaterial;
    }

    public void setIdMaterial(int idMaterial) {
        this.idMaterial = idMaterial;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }


    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
    

    @Override
    public String toString(){
        return getNombre();
    }

   
    
    
    
    
    
}
