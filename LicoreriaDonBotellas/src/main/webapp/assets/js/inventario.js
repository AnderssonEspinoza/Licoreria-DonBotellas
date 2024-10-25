/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

fetch("/LicoreriaDonBotellas/src/main/java/controlador/InventarioController.java")
.then(response => response.json())
    .then(data => {
        const tabla = document.getElementById('TablaProductoz');
        tabla.innerHTML = ''; // Limpiar la tabla antes de actualizar

        // Generar las filas para cada material
        data.forEach(productos => {
            const fila = document.createElement('tr');
            fila.innerHTML = `
                <td>${productos.producto_id}</td>
                <td>${productos.nombre}</td>
                <td>${productos.descripcion}</td>
                <td>${productos.precio}</td>
                <td>${productos.stock}</td>
                <td>${productos.categoria_id}</td>
                <td>${productos.fecha_caducidad}</td>
            `;
            tabla.appendChild(fila); // Añadir la fila a la tabla
        });
    })
    .catch(error => console.error('Error:', error));
    