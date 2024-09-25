package pruebaexcepciones;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import javax.swing.JOptionPane;

public class PruebaExcepciones {
    public void leerArchivo() throws FileNotFoundException, IOException {
        File archivo = new File("C:\\Users\\esola\\Downloads\\scripts-db-licoreria-donBotellas.txt");
        FileReader fr = new FileReader(archivo);
        BufferedReader bf = new BufferedReader(fr);
        String linea;
        
        while ((linea = bf.readLine()) != null){
            System.out.println(linea);
        }       
    }
    
    
    public void leeArchivo2() {
        try {
            leerArchivo();
        } catch (FileNotFoundException ex) {
            JOptionPane.showMessageDialog(null, "Por favor verifica la ruta");
        } catch (IOException e){
            JOptionPane.showMessageDialog(null, "Ha ocurrido una exepcion verificada");
        }
        
    }
    
    
    
    public static void main(String[] args) {
        PruebaExcepciones prueba = new PruebaExcepciones();
        prueba.leeArchivo2();
        
    }
    
}
