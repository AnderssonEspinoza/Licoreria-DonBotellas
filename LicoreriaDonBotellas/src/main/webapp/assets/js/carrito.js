document.addEventListener('DOMContentLoaded', function() {
    const cartItemsContainer = document.getElementById('cart-items');
    const subtotalElement = document.getElementById('subtotal');
    const igvElement = document.getElementById('IGV');
    const totalElement = document.getElementById('total');
    const IGVRate = 0.18; // 18% IGV


    // Función para cargar los productos del carrito desde localStorage
    function loadCartItems() {
        let cart = JSON.parse(localStorage.getItem('cart')) || [];
        console.log(cartItemsContainer); 
        cartItemsContainer.innerHTML = ''; // Limpiar el contenedor de items

        if (cart.length === 0) {
            cartItemsContainer.innerHTML = '<p>Tu carrito está vacío.</p>';
            subtotalElement.textContent = 'S/0.00';
            igvElement.textContent = 'S/0.00';
            totalElement.textContent = 'S/0.00';
            return;
        }

        let subtotal = 0;

        // Normalizamos los productos que usen 'cantidad' para que usen 'quantity'
        cart = cart.map(product => {
            if (product.cantidad !== undefined) {
                product.quantity = product.cantidad;
                delete product.cantidad; // Elimina 'cantidad' para evitar duplicaciones
            }
            return product;
        });

        // Actualizamos el localStorage con los productos normalizados
        localStorage.setItem('cart', JSON.stringify(cart));

        // Recorrer los productos del carrito y mostrarlos en la página
        cart.forEach(function(product) {
            const productQuantity = product.quantity ? product.quantity : 1;
            const productTotal = parseFloat(product.price) * productQuantity;
            subtotal += productTotal;

            const productRow = document.createElement('div');
            productRow.className = 'row mb-3';
            productRow.setAttribute('data-product-id', product.id);

            productRow.innerHTML = `
                <div class="col-md-4 d-flex align-items-center">
                    <img src="${product.image}" alt="${product.name}" class="product-img me-3 img-thumbnail" />
                    <div class="product-name">${product.name}</div>
                </div>
                <div class="col-md-4 d-flex align-items-center justify-content-center">
                    <button class="btn btn-outline-secondary decrease-cantidad"><i class="bi bi-dash"></i></button>
                    <span class="product-quantity mx-2">${productQuantity}</span>
                    <button class="btn btn-outline-secondary increase-cantidad"><i class="bi bi-plus"></i></button>
                </div>
                <div class="col-md-2 text-end product-total">S/${productTotal.toFixed(2)}</div>
                <div class="col-md-2 text-end">
                    <button class="btn btn-outline-danger remove-product">Eliminar</button>
                </div>
            `;

            cartItemsContainer.appendChild(productRow);
        });
        
        

        // Calcular el IGV y el total
        const igv = subtotal * IGVRate;
        const total = subtotal + igv;

        // Mostrar los totales en la página
        subtotalElement.textContent = `S/${subtotal.toFixed(2)}`;
        igvElement.textContent = `S/${igv.toFixed(2)}`;
        totalElement.textContent = `S/${total.toFixed(2)}`;

        // Añadir eventos a los botones de incrementar, decrementar y eliminar
        attachQuantityChangeEvents();
        attachRemoveProductEvents();
    }

    // Función para agregar eventos de incrementar y decrementar
    function attachQuantityChangeEvents() {
        document.querySelectorAll('.increase-cantidad').forEach(function(button) {
            button.addEventListener('click', function() {
                const productRow = this.closest('.row');
                const productId = productRow.getAttribute('data-product-id');
                updateQuantity(productId, 1);
            });
        });

        document.querySelectorAll('.decrease-cantidad').forEach(function(button) {
            button.addEventListener('click', function() {
                const productRow = this.closest('.row');
                const productId = productRow.getAttribute('data-product-id');
                updateQuantity(productId, -1);
            });
        });
    }

    // Función para actualizar la cantidad de un producto
    function updateQuantity(productId, delta) {
        let cart = JSON.parse(localStorage.getItem('cart')) || [];
        let product = cart.find(p => p.id === productId);

        if (product) {
            product.quantity = Math.max(1, product.quantity + delta); // Evitar que la cantidad sea menor que 1
            localStorage.setItem('cart', JSON.stringify(cart));
            loadCartItems(); // Recargar los items del carrito
        }
    }

    // Función para agregar eventos de eliminar producto
    function attachRemoveProductEvents() {
        document.querySelectorAll('.remove-product').forEach(function(button) {
            button.addEventListener('click', function() {
                const productRow = this.closest('.row');
                const productId = productRow.getAttribute('data-product-id');
                removeProduct(productId);
            });
        });
    }

    // Función para eliminar un producto del carrito
    function removeProduct(productId) {
        let cart = JSON.parse(localStorage.getItem('cart')) || [];
        cart = cart.filter(product => product.id !== productId); // Filtra los productos y elimina el seleccionado
        localStorage.setItem('cart', JSON.stringify(cart));
        loadCartItems(); // Recargar los items del carrito
    }

    // Cargar los items del carrito cuando se cargue la página
    loadCartItems();
});