document.addEventListener('DOMContentLoaded', function () {
    const orderItemsContainer = document.getElementById('order-items');
    const shippingElement = document.getElementById('shipping');
    const taxElement = document.getElementById('tax');
    const totalElement = document.getElementById('total');
    const IGVRate = 0.18;
    let shippingCost = 5.00; // Valor del envío



    function loadCartItems() {
        let cart = JSON.parse(localStorage.getItem('cart')) || [];
        if (cart.length === 0) {
            orderItemsContainer.innerHTML = '<p>Tu carrito está vacío.</p>';
            return;
        }

        let subtotal = 0;
        cart.forEach(function (product) {
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



    loadCartItems();
});


// Inicializa Mercado Pago
const mp = new MercadoPago('APP_USR-05522a11-974b-4190-9887-f2c50d6ac628', {
    locale: 'es-PE'
});

document.getElementById("checkout-btn").addEventListener("click", async() => {
    try {
        let cart = JSON.parse(localStorage.getItem('cart')) || [];
        if (cart.length === 0) {
            alert("Tu carrito está vacío.");
            return;
        }
        // Crear un arreglo orderData con los detalles de cada producto
        const orderData = cart.map(product => ({
                title: product.name,
                quanty: product.quantity || 1,
                price: product.price
            }));
        console.log(orderData);

        const response = await fetch("http://localhost:8081/PaymentController", {
            method: "POST",
            headers: {
                "Content-type": "application/json",
            },
            body: JSON.stringify(orderData),
        });

        const preference = await response.json();
        //window.location.href = preference.init_point;
        createCheckoutButton(preference.id);

    } catch (e) {
        alert("error:(");

    }
});

const createCheckoutButton = (preferenceId) => {
    const bricksBuilder = mp.bricks();
    const walletContainer = document.getElementById("wallet_container");

    const renderComponent = async () => {
        
        //Limpiar el contenedor antes de crear un nuevo boton
        walletContainer.innerHTML="";
        if(window.checkoutButton) {
            window.checkoutButton.unmount();
        }
        
        window.checkoutButton= await bricksBuilder.create("wallet", "wallet_container", {
            initialization: {
                preferenceId: preferenceId,
            },
            customization: {
                texts: {
                    valueProp: 'smart_option',
                },
            },
        });
    }
    
    renderComponent();
}
