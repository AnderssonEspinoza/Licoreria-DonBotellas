/* global id, nombre, cantidad, precio, totalVenta */

//variables globales
let precioUnitario;
// Array para almacenar los productos seleccionados
let productosVendidos = [];

function buscarProducto() {
    const termino = document.getElementById('producto').value;

    fetch(`http://localhost:8081/BuscarProducto?termino=${termino}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok: ' + response.statusText);
                }
                return response.text(); // Obtener la respuesta como texto
            })
            .then(data => {
                console.log(data); // Muestra el contenido de la respuesta en la consola
                try {
                    const jsonData = JSON.parse(data); // Intenta convertirlo a JSON
                    let resultados = '';
                    jsonData.forEach(producto => {
                        resultados += `<div onclick="seleccionarProducto(${producto.id}, '${producto.nombre}', ${producto.precio})">${producto.nombre} - $${producto.precio}</div>`;
                    });
                    document.getElementById('resultadoBusqueda').innerHTML = resultados;
                } catch (e) {
                    console.error('Error al parsear JSON:', e);
                    console.error('Respuesta del servidor:', data); // Muestra la respuesta del servidor
                }
            })
            .catch(error => {
                console.error('Error en la búsqueda del producto:', error);
            });
}



function seleccionarProducto(id, nombre, precio) {
    document.getElementById('productoId').value = id;
    document.getElementById('producto').value = nombre;
    document.getElementById('precioTotal').value = precio.toFixed(2);
    precioUnitario = precio; // Guarda el precio unitario
    document.getElementById('cantidad').value = 1; // Cantidad inicial en 1
    actualizarPrecioTotal(); // Calcula el precio total inicialmente

    // Limpiar el campo de búsqueda
    document.getElementById('resultadoBusqueda').innerHTML = '';

}

// Función para actualizar el precio total automáticamente según la cantidad
function actualizarPrecioTotal() {
    const cantidad = parseInt(document.getElementById('cantidad').value) || 1;
    const precioTotal = precioUnitario * cantidad;

    document.getElementById('precioTotal').value = precioTotal.toFixed(2);
}



function agregarProductoATabla() {
    const id = document.getElementById('productoId').value;
    const nombre = document.getElementById('producto').value;
    const cantidad = parseInt(document.getElementById('cantidad').value);
    const precioUnitario = parseFloat(document.getElementById('precioTotal').value) / cantidad;
    const precioTotal = precioUnitario * cantidad;

    if (!id || !nombre || cantidad <= 0) {
        alert("Por favor, selecciona un producto y una cantidad válida.");
        return;
    }

    // Agregar el producto al array productosVendidos
    productosVendidos.push({id, nombre, cantidad, precioUnitario, precioTotal});

    // Usar DataTables para añadir la nueva fila con botones de edición/eliminación
    const tabla = $('#tablaProductos').DataTable();
    tabla.row.add([
        nombre,
        cantidad,
        precioUnitario.toFixed(2),
        precioTotal.toFixed(2),
        `<button onclick="editarProducto('${id}')" class="btn-editar">Editar</button>
         <button onclick="eliminarProducto('${id}')" class="btn-eliminar">Eliminar</button>`
    ]).draw(false);


    // Limpiar los campos del formulario después de agregar el producto
    document.getElementById('productoId').value = '';
    document.getElementById('producto').value = '';
    document.getElementById('cantidad').value = 1;
    document.getElementById('precioTotal').value = '';


    actualizarImporteTotal();

}

function actualizarImporteTotal() {
    let totalGeneral = 0;

    // Sumar los precios totales de cada producto vendido
    productosVendidos.forEach(prod => {
        totalGeneral += prod.precioTotal; // Usar precioTotal de cada producto
    });

    // Actualizar el importe total en el HTML
    document.getElementById('importeTotal').innerText = totalGeneral.toFixed(2);
}


function editarProducto(id) {
    // Lógica para editar el producto seleccionado
}

function eliminarProducto(id) {
    const tabla = $('#tablaProductos').DataTable();
    const index = productosVendidos.findIndex(prod => prod.id === id);

    if (index !== -1) {
        productosVendidos.splice(index, 1); // Elimina del array
        tabla.row($(`#tablaProductos button[onclick="eliminarProducto('${id}')"]`).parents('tr')).remove().draw(); // Elimina de la tabla
        // Actualizar el importe total
        actualizarImporteTotal();
    }
}


$(document).ready(function () {
    $('#tablaProductos').DataTable();
});


function generarBoleta() {
    // Verificar si hay productos vendidos
    if (productosVendidos.length === 0) {
        alert("No hay productos vendidos para generar la boleta.");
        return;
    }

    // Obtener la fecha de la venta
    const fechaVenta = document.getElementById('fecha').value;
    // Calcular el importe total usando el mismo proceso que en actualizarImporteTotal
    let totalVenta = 0;
    productosVendidos.forEach(prod => {
        totalVenta += prod.precioTotal;
    });

    // Preparar los datos para enviar
    const boletaData = {
        productos: productosVendidos,
        fecha: fechaVenta,
        total: totalVenta.toFixed(2)


    };

    // Enviar datos al servidor para generar la boleta
    fetch('http://localhost:8081/BoletasController', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8'
        },
        body: JSON.stringify(boletaData) // Convertir objeto a JSON
    })
            .then(response => {
                // Verificar si la respuesta es exitosa
                if (!response.ok) {
                    throw new Error('Error al generar la boleta: ' + response.statusText);
                }
                return response.blob(); // Obtener el PDF como un blob
            })
            .then(blob => {
                // Crear un enlace temporal para descargar el PDF
                const url = window.URL.createObjectURL(blob);
                const a = document.createElement('a');
                a.href = url;
                a.download = 'boleta.pdf'; // Nombre del archivo a descargar
                document.body.appendChild(a);
                a.click();
                a.remove(); // Remover el enlace del DOM
                window.URL.revokeObjectURL(url); // Liberar el objeto URL
            })
            .catch(error => {
                console.error('Error al generar la boleta:', error);
                alert('Ocurrió un error al generar la boleta.'); // Notificar al usuario
            });
}










