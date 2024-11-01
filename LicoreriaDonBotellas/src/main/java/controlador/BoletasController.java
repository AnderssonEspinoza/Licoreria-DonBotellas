/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import facturacion.GeneradorBoletaPDF;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.ProductosDAO;
import modelo.dto.Productos;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author esola
 */
public class BoletasController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BoletasController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BoletasController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Leer el cuerpo de la solicitud
        StringBuilder sb = new StringBuilder();
        String line;
        try (BufferedReader reader = request.getReader()) {
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
        }

        // Convertir el cuerpo de la solicitud a JSON
        JSONObject json = new JSONObject(sb.toString());
        JSONArray productos = json.getJSONArray("productos");
        String fecha = json.getString("fecha");
        double total = json.getDouble("total");

        // Generar el PDF
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        PDDocument document = new PDDocument();
        PDPage page = new PDPage();
        document.addPage(page);

        // Crear contenido en el PDF
        PDPageContentStream contentStream = new PDPageContentStream(document, page);
        contentStream.beginText();
        contentStream.setFont(PDType1Font.HELVETICA_BOLD, 14);
        contentStream.newLineAtOffset(25, 700);
        contentStream.showText("Boleta de Venta");
        contentStream.newLineAtOffset(0, -20);
        contentStream.setFont(PDType1Font.HELVETICA, 12);
        contentStream.showText("Fecha de Venta: " + fecha);
        contentStream.newLineAtOffset(0, -20);
        

        // Agregar los productos al PDF
        for (int i = 0; i < productos.length(); i++) {
            JSONObject producto = productos.getJSONObject(i);
            String nombre = producto.getString("nombre");
            int cantidad = producto.getInt("cantidad");
            double precioTotal = producto.getDouble("precioTotal");

            contentStream.newLineAtOffset(0, -20);
            contentStream.showText("Producto: " + nombre + ", Cantidad: " + cantidad + ", Precio Total: S/" + precioTotal);
        }

        // Agregar el importe total al final
        contentStream.newLineAtOffset(0, -40); // Espacio adicional antes del importe total
        contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
        contentStream.showText("Importe Total: S/" + total);

        contentStream.endText();
        contentStream.close();

        // Guardar el documento PDF
        document.save(outputStream);
        document.close();

        // Enviar el PDF al cliente
        response.setContentType("application/pdf");
        response.setCharacterEncoding("UTF-8");
        response.setContentLength(outputStream.size());
        response.getOutputStream().write(outputStream.toByteArray());
        response.getOutputStream().flush();

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
