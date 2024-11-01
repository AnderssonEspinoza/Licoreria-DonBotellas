package facturacion;

import java.io.FileNotFoundException;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import modelo.dto.ItemVenta;
import modelo.dto.Productos;

public class GenerarFacturaExcel {
/*
    public void crearFacturaExcel(List<Productos> productos, String archivo) throws FileNotFoundException, IOException {
        try (Workbook workbook = new XSSFWorkbook()) {
            Sheet sheet = workbook.createSheet("Factura");

            // Estilo para encabezado
            CellStyle headerStyle = workbook.createCellStyle();
            Font headerFont = workbook.createFont();
            headerFont.setBold(true);
            headerStyle.setFont(headerFont);

            // Crear encabezados de columna
            Row headerRow = sheet.createRow(0);
            String[] columns = {"ID Producto", "Nombre", "Cantidad", "Precio Unitario", "Precio Total"};
            for (int i = 0; i < columns.length; i++) {
                Cell cell = headerRow.createCell(i);
                cell.setCellValue(columns[i]);
                cell.setCellStyle(headerStyle);
            }

            // Rellenar los datos de los productos
            int rowNum = 1;
            double totalFactura = 0.0;
            for (ItemVenta item : productosVendidos) { // productosVendidos es una lista de ItemVenta
                Row row = sheet.createRow(rowNum++);

                // Datos del producto y cantidad vendida
                row.createCell(0).setCellValue(item.getProducto().getProducto_id());
                row.createCell(1).setCellValue(item.getProducto().getNombre());
                row.createCell(2).setCellValue(item.getCantidad()); // cantidad vendida
                row.createCell(3).setCellValue(item.getProducto().getPrecio());

                // Calcular precio total
                double precioTotal = item.getCantidad() * item.getProducto().getPrecio();
                row.createCell(4).setCellValue(precioTotal);

                // Sumar al total de la factura
                totalFactura += precioTotal;

                // Agregar total al final de la factura
                Row totalRow = sheet.createRow(rowNum);
                totalRow.createCell(3).setCellValue("Total");
                totalRow.createCell(4).setCellValue(totalFactura);

                // Ajustar tamaño de columnas
                for (int i = 0; i < columns.length; i++) {
                    sheet.autoSizeColumn(i);
                }

                // Guardar archivo
                try (FileOutputStream fileOut = new FileOutputStream(archivo)) {
                    workbook.write(fileOut);
                    System.out.println("Factura generada exitosamente en " + archivo);
                }

            }
        }
     }
*/
}
