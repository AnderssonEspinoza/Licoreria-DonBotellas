/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


fetch("http://localhost:8080/LicoreriaDonBotellas-1.0/UsuarioController")
    .then(response => response.json())
    .then(data => {
        console.log(data);
        const tabla = document.getElementById('TablaUsuarioz');
        tabla.innerHTML = ''; // Limpiar la tabla antes de actualizar

        // Crear y agregar el encabezado
        const thead = document.createElement('thead');
        thead.innerHTML = `
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Email</th>
                <th>Password</th>
                <th>Direccion</th>
                <th>Telefono</th>
                <th>Rol</th>
                <th>F.Creacion</th>
            </tr>
        `;
        tabla.appendChild(thead);

        // Crear el cuerpo de la tabla
        const tbody = document.createElement('tbody');
        data.forEach(usuario => {
            const fila = document.createElement('tr');
            fila.innerHTML =
                `<td>${usuario.userId}</td>` +
                `<td>${usuario.nombre}</td>` +
                `<td>${usuario.email}</td>` +
                `<td>${usuario.password}</td>` +
                `<td>${usuario.direccion}</td>` +
                `<td>${usuario.telefono}</td>` +
                `<td>${usuario.rol}</td>` +
                `<td>${usuario.fecha_creacion || 'N/A'}</td>`; // Agregar fecha_caducidad si existe
            tbody.appendChild(fila); // Añadir la fila a tbody
        });
        tabla.appendChild(tbody); // Añadir el cuerpo a la tabla
    })
    .catch(error => console.error('Error:', error));
