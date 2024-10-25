document.addEventListener('DOMContentLoaded', function() {
    // Agrega el evento de click para los botones de "AÑADIR" en los productos
    document.querySelectorAll('.add-to-cart').forEach(function(button) {
        button.addEventListener('click', function() {
            // Obtener la información del producto a través de los atributos de los botones
            const productId = this.getAttribute('data-producto-id');
            const productName = this.getAttribute('data-producto-name');
            const productPrice = this.getAttribute('data-producto-price');
            const productImage = this.getAttribute('data-producto-image');

            // Obtener carrito existente o inicializar un carrito vacío
            let cart = JSON.parse(localStorage.getItem('cart')) || [];

            // Verificar si el producto ya existe en el carrito
            const existingProductIndex = cart.findIndex(product => product.id === productId);

            if (existingProductIndex !== -1) {
                // Si el producto ya existe en el carrito, incrementa la cantidad
                cart[existingProductIndex].quantity += 1;
            } else {
                // Si el producto no existe en el carrito, agregarlo
                const newProduct = {
                    id: productId,
                    name: productName,
                    price: parseFloat(productPrice),
                    image: productImage,
                    quantity: 1
                };
                cart.push(newProduct);
            }

            // Guardar el carrito actualizado en localStorage
            localStorage.setItem('cart', JSON.stringify(cart));

            // Mostrar mensaje al usuario
            alert(`${productName} ha sido añadido a tu carrito.`);
        });
    });
});