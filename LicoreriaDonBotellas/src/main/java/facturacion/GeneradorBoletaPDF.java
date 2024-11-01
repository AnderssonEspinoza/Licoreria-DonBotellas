/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package facturacion;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType1Font;

import java.io.IOException;
import java.util.List;
import modelo.dto.Productos;

public class GeneradorBoletaPDF {

    public static void generarBoleta(String clienteNombre, String fecha, List<Productos> productosVendidos, List<Integer> cantidadesVendidas, double totalVenta) throws IOException {
        // Crear documento PDF
        try (PDDocument documento = new PDDocument()) {
            PDPage pagina = new PDPage();
            documento.addPage(pagina);

            try (PDPageContentStream contenido = new PDPageContentStream(documento, pagina)) {
                // Establecer fuente y tamaño
                contenido.setFont(PDType1Font.HELVETICA_BOLD, 16);
                contenido.beginText();
                contenido.setLeading(14.5f);
                contenido.newLineAtOffset(50, 750);

                // Encabezado de la boleta
                contenido.showText("Boleta de Venta");
                contenido.newLine();
                contenido.setFont(PDType1Font.HELVETICA, 12);
                contenido.newLine();
                contenido.showText("Cliente: " + clienteNombre);
                contenido.newLine();
                contenido.showText("Fecha: " + fecha);
                contenido.newLine();
                contenido.newLine();

                // Detalle de los productos
                contenido.setFont(PDType1Font.HELVETICA_BOLD, 12);
                contenido.showText("Productos:");
                contenido.newLine();
                contenido.setFont(PDType1Font.HELVETICA, 12);

                for (int i = 0; i < productosVendidos.size(); i++) {
                    Productos producto = productosVendidos.get(i);
                    int cantidadVendida = cantidadesVendidas.get(i); // Obtén la cantidad vendida

                    // Calcular total por producto
                    double totalProducto = producto.getPrecio() * cantidadVendida;

                    contenido.showText(String.format("%-20s - Cantidad: %-5d - Precio Unitario: S/%-8.2f - Total: S/%-8.2f",
                            producto.getNombre(), cantidadVendida, producto.getPrecio(), totalProducto));

                    contenido.newLine();
                }

                // Total de la venta
                contenido.newLine();
                contenido.setFont(PDType1Font.HELVETICA_BOLD, 12);
                contenido.showText("Total Venta: S/" + String.format("%.2f", totalVenta));

                contenido.endText();
            }

            // Guardar el archivo
            documento.save("boleta_venta.pdf");
        } catch (IOException e) {
            System.err.println("Error al generar el PDF: " + e.getMessage());
            e.printStackTrace(); // Esto te dará más detalles sobre el error
        }
    }

}
