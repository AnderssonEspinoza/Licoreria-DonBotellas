package modelo.dto;

import java.sql.Date;

public class Usuarios {
    private int user_id;
    private String nombre;
    private String email;
    private String password;
    private String direccion;
    private String telefono;
    private String rol;
    private Date fecha_creacion;
    
    public Usuarios(){       
    }

    public Usuarios(int user_id, String nombre, String email, String password, String direccion, String telefono, String rol, Date fecha_creacion) {
        this.user_id = user_id;
        this.nombre = nombre;
        this.email = email;
        this.password = password;
        this.direccion = direccion;
        this.telefono = telefono;
        this.rol = rol;
        this.fecha_creacion = fecha_creacion;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int userId) {
        this.user_id = userId;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public Date getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(Date fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }
    
    @Override
    public String toString(){
        return nombre;
    }
    
}
