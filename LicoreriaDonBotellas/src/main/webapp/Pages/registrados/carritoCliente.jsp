

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <title>Carro de la compra</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- CSS -->
    <link rel="stylesheet" href="../../assets/style/sass/main.css">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body>
	<jsp:include page="../components/header_registrado.jsp"/>
    <main>
        <div class="container my-4">
            <h1 class="mb-4">Carrito de compras</h1>
            <div class="row">
                <div class="col-md-8">
                    <div class="bg-white rounded shadow p-4 mb-4">
                        <div class="row mb-3">
                            <div class="col-md-4 font-weight-bold">Productos</div>
                            <div class="col-md-4 font-weight-bold">Cantidad</div>
                            <div class="col-md-4 font-weight-bold text-end">Total</div>
                        </div>
                        <div class="border-top pt-3" id="cart-items">
                            <!-- Cart items will be dynamically injected here -->
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="bg-white rounded shadow p-4">
                        <div class="row mb-2">
                            <div class="col">Subtotal:</div>
                            <div class="col text-end" id="subtotal">S/0.00</div>
                        </div>
                        <div class="row mb-2">
                            <div class="col">IGV:</div>
                            <div class="col text-end" id="IGV">S/0.00</div>
                        </div>
                        <div class="row font-weight-bold">
                            <div class="col">Total:</div>
                            <div class="col text-end" id="total">S/0.00</div>
                        </div>
                        <div class="mt-4 d-flex justify-content-between">
                            <button class="btn btn-outline-secondary"><a href="../generales/index-sin-registrados.jsp">Seguir comprando</a></button>
                            <button class="btn "><a href="pasarela_de_pago.jsp">Procesar compra</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <jsp:include page="../components/footer.jsp"/>
</body>
</html>

