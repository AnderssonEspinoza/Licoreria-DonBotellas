<%-- 
    Document   : formularioMateriales
    Created on : 27 ago. 2024, 09:39:46
    Author     : esola
--%>

<%@page import="modelo.dao.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="modelo.dao.MaterialesDAO"%>
<%@page import="modelo.dto.Categoria"%>

<% 
    CategoriaDAO dao = new CategoriaDAO();
    List<Categoria> categorias = dao.getList();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
    </head>
    <title>Formulario de Registro</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            
            align-items: center;
            height: 100vh;
            
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            text-align: start;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Formulario de Registro</h2>
        <form action="" method="POST">

            <label for="codigo">Código:</label>
            <input type="text" id="codigo" name="codigo" required>
            
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>
            
            <label for="cantidad">Cantidad:</label>
            <input type="number" id="cantidad" name="cantidad" required>
            
            <label for="categoria">Categoría:</label>
            <select id="categoria" name="categoria" required>               
                <% for (Categoria categoria : categorias){ %>
                <option value="<%= categoria.getIdCategoria() %>"<%= categoria.getNombre() %></option>
                <% } %>
            </select>
            
            <input type="submit" value="Enviar">
        </form>
    </div>
        
    </body>
</html>
