<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Página de Pago</title>
        <link rel="stylesheet" href="../../assets/style/sass/main.css">
        <link rel="stylesheet" href="../../assets/style/pasarelaPago.css">
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    </head>
    <body>
        <jsp:include page="../components/header_registrado.jsp"/>
        <div class="container">
            <div class="payment-form">
                <h2>Método de Pago</h2>
                <form id="paymentForm" action="${pageContext.request.contextPath}/ProcesarPago" method="post">
                    <div class="mb-3">
                        <label for="cardNumber" class="form-label">Número de Tarjeta</label>
                        <input type="text" class="form-control" id="cardNumber" name="cardNumber" required>
                    </div>
                    <div class="mb-3">
                        <label for="cardName" class="form-label">Nombre del titular</label>
                        <input type="text" class="form-control" id="cardName" name="cardName" required>
                    </div>
                    <div class="mb-3">
                        <label for="expiryDate" class="form-label">Fecha de Expiración</label>
                        <input type="month" class="form-control" id="expiryDate" name="expiryDate" required>
                    </div>
                    <div class="mb-3">
                        <label for="cvv" class="form-label">CVV</label>
                        <input type="password" class="form-control" id="cvv" name="cvv" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Pagar</button>
                </form>

                <a href="#" class="back-link">Retroceder</a>
            </div>

            <div class="order-summary">
                <h2>Resumen</h2>
                <div id="order-items">
                    <!-- Aquí se cargarán los productos del carrito -->
                </div>
                <div class="summary-item"><label>Envío:</label><span id="shipping">$0.00</span></div>
                <div class="summary-item"><label>IGV:</label><span id="tax">$0.00</span></div>

                <div class="total-summary"><label>Total:</label><span id="total">$0.00</span></div>
            </div>
        </div>
        <jsp:include page="../components/footer.jsp"/>
        <!-- Mercado Pago SDK -->
        <script src="https://sdk.mercadopago.com/js/v2"></script>
        
    </body>
</html>

