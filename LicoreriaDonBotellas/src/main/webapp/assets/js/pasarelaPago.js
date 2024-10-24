document.addEventListener('DOMContentLoaded', function() {
    const orderItemsContainer = document.getElementById('order-items');
    const shippingElement = document.getElementById('shipping');
    const taxElement = document.getElementById('tax');
    const totalElement = document.getElementById('total');
    const differentAddressRadio = document.getElementById('different-address');
    const sameAddressRadio = document.getElementById('same-address');
    const addressForm = document.getElementById('address-form');

    const IGVRate = 0.18;
    let shippingCost = 5.00; // Valor del envío

    function loadCartItems() {
        let cart = JSON.parse(localStorage.getItem('cart')) || [];
        if (cart.length === 0) {
            orderItemsContainer.innerHTML = '<p>Tu carrito está vacío.</p>';
            return;
        }

        let subtotal = 0;
        cart.forEach(function(product) {
            const productQuantity = product.quantity || 1;
            const productTotal = product.price * productQuantity;
            subtotal += productTotal;

            const productRow = document.createElement('div');
            productRow.className = 'summary-item';
            productRow.innerHTML = `<label>${product.name} (x${productQuantity})</label><span>S/${productTotal.toFixed(2)}</span>`;
            orderItemsContainer.appendChild(productRow);
        });

        const igv = subtotal * IGVRate;
        const total = subtotal + igv + shippingCost;

        // Actualizar los valores
        shippingElement.textContent = `S/${shippingCost.toFixed(2)}`;
        taxElement.textContent = `S/${igv.toFixed(2)}`;
        totalElement.textContent = `S/${total.toFixed(2)}`;
    }
    // Escuchar cambios en la selección de la dirección
    differentAddressRadio.addEventListener('click', function() {
        addressForm.style.display = 'block';
    });

    sameAddressRadio.addEventListener('click', function() {
        addressForm.style.display = 'none';
    });
    loadCartItems();
});