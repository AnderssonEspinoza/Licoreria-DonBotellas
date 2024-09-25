$(document).ready(function () {

    // ACTUALIZAR PRECIO MÁXIMO
    $('#filtro-precio').on('input', function () {
        $('#precio-actual').text($(this).val()); // Actualizar el valor del precio máximo visualmente
        var precioMax = parseInt($(this).val());

        // Mostrar/ocultar productos según el precio
        $('.product-item').each(function () {
            var precioProducto = parseInt($(this).attr('data-precio')); // Obtener el precio del producto
            if (precioProducto <= precioMax) {
                $(this).show(); // Mostrar productos cuyo precio es menor o igual al precio máximo
            } else {
                $(this).hide(); // Ocultar productos cuyo precio es mayor al precio máximo
            }
        });
    });

});
