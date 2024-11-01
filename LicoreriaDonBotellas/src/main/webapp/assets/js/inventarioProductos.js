$(document).ready(function () {
    $('#tablaProductos').DataTable({
        ajax: {
            url: 'http://localhost:8081/InventariadoController?accion=listarProductosJSON',
           // url: '<%= request.getContextPath() %>/ControladorPrincipal?accion=listarMaterialesJSON',
            dataSrc:function(data){
                //Manejar la fecha de caducidad, que solo algunos prodcutos tienen, asegurandonos que todos tengan, ya sea solo un valor null en caso no tengan caducidad
                data.forEach(function(producto){
                    if(!producto.hasOwnProperty('fecha_caducidad')){
                        producto['fecha_caducidad'] = null;
                    }
                });
                return data;
            } 
             
        },
        columns: [
            { data: 'producto_id' },
            { data: 'nombre' },
            { data: 'descripcion' },
            { data: 'precio' },
            { data: 'stock' },
            { data: 'categoria_id' },
            { data: 'fecha_caducidad',
                
              render: function(data, type, row) {
                return data ? data : 'N/A'; // Devuelve 'N/A' si 'fecha_caducidad' no está presente
               }           
            },
            {
                data: null,
                render: function (data, type, row) {
                    return '<button class="btn btn-primary btn-edit" data-id="' + row.producto_id + '">Editar</button>' +
                           ' <button class="btn btn-danger btn-delete" data-id="' + row.producto_id + '">Eliminar</button>';
                },
                orderable: false,
                searchable: false
            }
        ],
        error: function (xhr, error, code) {
            console.error('Error fetching productos:', error);
            alert('Error fetching productos: ' + error);
        }
    });

    // Manejar clics en los botones de editar y eliminar
    $('#tablaProductos').on('click', '.btn-edit', function (event) {
        event.preventDefault();
        var id = $(this).data('id');
        window.location.href = '<%= request.getContextPath()%>/InventariadoController?accion=editarMaterial&id=' + id;
    });

    $('#tablaProductos').on('click', '.btn-delete', function (event) {
        event.preventDefault();
        var id = $(this).data('id');
        
        if (confirm("¿Estás seguro de que deseas eliminar este material?")) {
            $.ajax({
                url: '<%= request.getContextPath()%>/Inventariado?accion=eliminarMaterial&id=' + id,
                type: 'POST',
                success: function (response) {
                    alert("Producto eliminado correctamente.");
                    $('#tablaProductos').DataTable().ajax.reload(); // Recargar la tabla
                },
                error: function (error) {
                    console.error("Error al eliminar el producto:", error);
                    alert("Ocurrió un error al intentar eliminar el producto.");
                }
            });
        }
    });
});


