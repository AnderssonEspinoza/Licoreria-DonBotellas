/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import com.google.gson.Gson;
import com.mercadopago.MercadoPago;
import com.mercadopago.exceptions.MPException;
import com.mercadopago.resources.Preference;
import com.mercadopago.resources.datastructures.preference.BackUrls;
import com.mercadopago.resources.datastructures.preference.Item;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author esola
 */
public class PaymentController extends HttpServlet {
    
    @Override
    public void init() throws ServletException {
        try {
            // Inicializar Mercado Pago con tu access token
            MercadoPago.SDK.setAccessToken("APP_USR-1493753907052928-102718-69594140db365201ea7ef259009b2e3f-2063110274");
        } catch (MPException e) {
            e.printStackTrace();
        }
    }

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
            out.println("<title>Servlet PaymentController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaymentController at " + request.getContextPath() + "</h1>");
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
        
         response.setContentType("application/json");
        
        // Leer los datos del carrito enviados en el cuerpo de la solicitud
        StringBuilder sb = new StringBuilder();
        BufferedReader reader = request.getReader();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        String jsonString = sb.toString();
        
        // Parsear JSON a una lista de productos
        Gson gson = new Gson();
        List<Map<String, Object>> orderData = gson.fromJson(jsonString, List.class);

        try {
            // Crear preferencia en Mercado Pago
            Preference preference = new Preference();
            ArrayList<Item> items = new ArrayList<>();

            // Agregar los productos a la preferencia
            for (Map<String, Object> product : orderData) {
                Item item = new Item();
                item.setTitle((String) product.get("title"))
                    .setQuantity(((Number) product.get("quanty")).intValue())
                    .setUnitPrice(((Number) product.get("price")).floatValue());
                items.add(item);
            }
            preference.setItems(items);

            // Configurar URLs de retorno
            preference.setBackUrls(new BackUrls()
                    .setSuccess("http://localhost:8081/success")
                    .setFailure("http://localhost:8081/failure")
                    .setPending("http://localhost:8081/pending")
            );

            // Guardar la preferencia en Mercado Pago
            preference.save();

            // Enviar el preferenceId como JSON
            response.getWriter().write(gson.toJson(Map.of("id", preference.getId())));

        } catch (MPException e) {
            e.printStackTrace();
            response.getWriter().write(gson.toJson(Map.of("error", "Hubo un problema al crear la preferencia")));
        }
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
