/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

fetch(<%= request.getContextPath()%>/../controlador?accion=InventarioController")
.then(response => response.json())
    .then(data => {
        const tabla = document.getElementById('TablaProductoz');
        tabla.innerHTML = ''; // Limpiar la tabla antes de actualizar

        // Generar las filas para cada material
        data.forEach(material => {
            const fila = document.createElement('tr');
            fila.innerHTML = `
                <td>${material.producto_id}</td>
                <td>${material.nombre}</td>
                <td>${material.descripcion}</td>
                <td>${material.precio}</td>
                <td>${material.stock}</td>
                <td>${material.categoria_id}</td>
                <td>${material.fecha_caducidad}</td>
            `;
            tabla.appendChild(fila); // Añadir la fila a la tabla
        });
    })
    .catch(error => console.error('Error:', error));