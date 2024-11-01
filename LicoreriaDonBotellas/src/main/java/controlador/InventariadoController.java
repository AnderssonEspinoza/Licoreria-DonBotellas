/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import com.google.gson.Gson;
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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author esola
 */
public class InventariadoController extends HttpServlet {

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
            throws ServletException, IOException, SQLException {       
        String accion = request.getParameter("accion");
        
         // Acción para listar productos en JSON (usado en fetch del JSP)
        if ("listarProductosJSON".equals(accion)) {
            listarProductosJSON(response);
            return;
        }
        
         // Acción para listar productos en DataTables (usado en AJAX del JSP)
        if ("listarProductos".equals(accion)) {
            listarProductos(request, response);
            return;
        }
                
        else if (accion.equals("edit")) {

        } 
        else if (accion.equals("delete")) {

        }
    }
                        
    
    // Método para listar materiales en formato JSON
    private void listarProductosJSON(HttpServletResponse response) {
        try {
            ProductosDAO dao = new ProductosDAO();
            List<Productos> listaProductos = dao.getList();

            // Convertir la lista de materiales a JSON
            Gson gson = new Gson();
            String json = gson.toJson(listaProductos);

            // Enviar respuesta JSON
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.print(json);
            out.flush();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
}
    
    // Método para listar materiales en JSP (DataTables con AJAX)
    private void listarProductos(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        ProductosDAO dao = new ProductosDAO();
        List<Productos> listaProductos = dao.getList();
        request.setAttribute("listaProductos", listaProductos);
        request.getRequestDispatcher("/Pages/administrador/Inventario.jsp").forward(request, response);
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
        try{
            processRequest(request, response);
        }catch(SQLException ex){
            Logger.getLogger(InventariadoController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
       try{
            processRequest(request, response);
        }catch(SQLException ex){
            Logger.getLogger(InventariadoController.class.getName()).log(Level.SEVERE, null, ex);
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
