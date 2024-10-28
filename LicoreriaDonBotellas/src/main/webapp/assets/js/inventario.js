/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


fetch("http://localhost:8080/LicoreriaDonBotellas-1.0/InventarioController")
    .then(response => response.json())
    .then(data => {
        console.log(data);
        const tabla = document.getElementById('TablaProductoz'); //Sample es la tabla
        tabla.innerHTML = ''; // Limpiar la tabla antes de actualizar

        // Crear y agregar el encabezado
        const thead = document.createElement('thead');
        thead.innerHTML = `
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Precio</th>
                <th>Stock</th>
                <th>Categoría</th>
                <th>Caducidad</th>
            </tr>
        `;
        tabla.appendChild(thead);

        // Crear el cuerpo de la tabla
        const tbody = document.createElement('tbody');
        data.forEach(producto => {
            const fila = document.createElement('tr');
            fila.innerHTML =
                `<td>${producto.producto_id}</td>` +
                `<td>${producto.nombre}</td>` +
                `<td>${producto.descripcion}</td>` +
                `<td>${producto.precio}</td>` +
                `<td>${producto.stock}</td>` +
                `<td>${producto.categoria_id}</td>` +
                `<td>${producto.fecha_caducidad || 'N/A'}</td>`; // Agregar fecha_caducidad si existe
            tbody.appendChild(fila); // Añadir la fila a tbody
        });
        tabla.appendChild(tbody); // Añadir el cuerpo a la tabla
    })
    .catch(error => console.error('Error:', error));
