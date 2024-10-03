<%-- 
    Document   : index
    Created on : 27 ago. 2024, 08:59:52
    Author     : esola
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
    </head>
    <body>
        <!--<!-- comment 
        <a href="ControladorPrincipal?accion=paginaInicial">Servelet</a>
        -->
        <% response.sendRedirect("ControladorPrincipal?accion=paginaInicial"); %>
        
    </body>
</html>