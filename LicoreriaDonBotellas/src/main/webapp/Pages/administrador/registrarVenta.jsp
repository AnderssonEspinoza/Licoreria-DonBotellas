<%-- 
    Document   : registrarVenta
    Created on : 29 oct. 2024, 01:06:50
    Author     : esola
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Registrar Venta Física</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <!-- DataTables -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

        <!-- CSS -->
        <link rel="stylesheet" href="../../assets/style/sass/main.css">
        <link rel="stylesheet" href="../../assets/style/registrarVentas.css"/>
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

        <script src="../../assets/js/registroVentas.js"></script>


    </head>

    <body class="body__registroVentas">
        <%@include file="../components/header_registrado.jsp" %>

        <div class="main-container">
            <!-- Formulario de Registro de Venta -->
            <div class="form-container">
                <h2>Registrar Venta Física</h2>
                <form id="registro-venta-form">
                    <!-- Campo de búsqueda de producto -->
                    <div class="form-field">
                        <label for="producto">Buscar Producto</label>
                        <input type="text" id="producto" name="producto" placeholder="Nombre o ID del producto" oninput="buscarProducto()">
                        <div id="resultadoBusqueda" class="resultado-busqueda"></div> 
                    </div>
                    <!-- Mostrar el ID del producto seleccionado -->
                    <input type="hidden" id="productoId" name="productoId">

                    <!-- Cantidad -->
                    <div class="form-field">
                        <label for="cantidad">Cantidad</label>
                        <input type="number" id="cantidad" name="cantidad" min="1" required oninput="actualizarPrecioTotal()">
                    </div>

                    <!-- Precio Total -->
                    <div class="form-field">
                        <label for="precioTotal">Precio Total</label>
                        <input type="text" id="precioTotal" name="precioTotal" readonly>
                    </div>

                    <!-- Fecha de la venta -->
                    <div class="form-field">
                        <label for="fecha">Fecha de Venta</label>
                        <input type="date" id="fecha" name="fecha" required>
                    </div>

                    <button type="button" onclick="agregarProductoATabla()" class="submit-button">Agregar Producto</button>
                </form>
            </div>

            <!-- Tabla de Productos Vendidos -->
            <div class="table-container">
                <table id="tablaProductos" class="display">
                    <thead>
                        <tr>
                            <th>Producto</th>
                            <th>Cantidad</th>
                            <th>Precio Unitario</th>
                            <th>Precio Total</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                <div>
                    <h3>Importe Total: S/<span id="importeTotal">0.00</span></h3>
                </div>

                <button onclick="generarBoleta()">Generar Boleta</button>
            </div>
        </div>




        <!-- Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <!-- jQuery -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- DataTables -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js" integrity="sha512-BkpSL20WETFylMrcirBahHfSnY++H2O1W+UnEEO4yNIl+jI2+zowyoGJpbtk6bx97fBXf++WJHSSK2MV4ghPcg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>




    </body>
</html>
