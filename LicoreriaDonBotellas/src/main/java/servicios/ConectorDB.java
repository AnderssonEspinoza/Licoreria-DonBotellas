package servicios;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConectorDB {
    public Connection getConexion() throws SQLException{
        Connection cnx =null;
        
        //useTimeZone=true:
        // Este parámetro indica que se debe utilizar la zona horaria del servidor de la base de datos.
        
        //serverTimezone=UTC
        //Configura la conexión para que interprete las fechas y horas en la zona horaria UTC (Tiempo Universal Coordinado).
        
        //autoReconnect=true
        //Habilita la reconexión automática en caso de que la conexión se pierda
        String url = "jdbc:mysql://localhost:3306/licoreria_db?useTimeZone=true&"
                + "serverTimezone=UTC&autoReconnect=true";
        String usuario = "root";
        String clave = "root";
        
        
        //Especificando el driver JDBC que se utilizará para la conexión a Mysql
        String Driver = "com.mysql.cj.jdbc.Driver";
        
        try {
            Class.forName(Driver);
            cnx = DriverManager.getConnection(url, usuario, clave);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConectorDB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ConectorDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cnx;
        
    }
    
    
    
    public static void main(String[] args) {
        //probando la conexion a la base de datos (salida en consola) 
        ConectorDB conector = new ConectorDB();
        try (Connection cnx = conector.getConexion()) {
            if (cnx != null) {
                System.out.println("Conexión exitosa a la base de datos: " + cnx.getCatalog());
            } else {
                System.out.println("Fallo en la conexión a la base de datos.");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConectorDB.class.getName()).log(Level.SEVERE, null, ex);
        }         
    }
}
