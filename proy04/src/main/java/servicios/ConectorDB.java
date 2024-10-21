
package servicios;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConectorDB {
   public Connection getConexion() throws SQLException{
       Connection cnx = null;

        String url = "jdbc:mysql://localhost:3306/negocios?useTimeZone=true&"
                + "serverTimezone=UTC&autoReconnect=true";

        String user = "root";
        String clave = "kepler1321";

        String Driver = "com.mysql.cj.jdbc.Driver";

        
       try {
           Class.forName(Driver);
           cnx = DriverManager.getConnection(url, user, clave);
       } catch (ClassNotFoundException ex) {
           Logger.getLogger(ConectorDB.class.getName()).log(Level.SEVERE, null, ex);
       }
       return cnx;
      
    }    
   
    public static void main(String[] args) throws SQLException {
        Connection cnx = new ConectorDB().getConexion();
        System.out.println(""+cnx.getCatalog());
    }

    
   
}
