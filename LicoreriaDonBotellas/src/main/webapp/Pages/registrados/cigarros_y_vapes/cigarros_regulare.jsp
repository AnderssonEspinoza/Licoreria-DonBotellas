<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Don Botellas</title>
	<!-- CSS -->
        <link rel="stylesheet" href="../../../assets/style/sass/main.css">

	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
    <jsp:include page="../../components/header_registrado.jsp"/>
	<!-- Offcanvas del Carrito -->
	<div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasCart"
		aria-labelledby="offcanvasCartLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasCartLabel">Carrito</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">

			<!-- Encabezado de columnas -->
			<div class="row mb-2 px-4">
				<div class="col-8"><strong>Producto</strong></div>
				<div class="col-2 text-center"><strong>Cantidad</strong></div>
				<div class="col-2 text-end"><strong>Subtotal</strong></div>
			</div>

			<!-- Lista de productos en el carrito -->
			<ul class="list-group mb-3">
				<!-- Producto 1 -->
				<li class="list-group-item">
					<div class="row align-items-center">
						<!-- Columna Imagen -->
						<div class="col-3">
							<img src="assets/img/polos/IMG_0816.JPG" alt="Producto 1" class="img-fluid"
								style="width: 64px; height: 64px; object-fit: cover;">
						</div>
						<!-- Columna Nombre y Precio Unitario -->
						<div class="col-5">
							<h6 class="my-0">Producto 1</h6>
							<small class="text-muted">Precio unitario: $10.00</small>
						</div>
						<!-- Columna Cantidad -->
						<div class="col-2 text-center">
							<small class="text-muted">2</small>
						</div>
						<!-- Columna Subtotal -->
						<div class="col-2 text-end">
							<span class="text-muted">$20.00</span>
						</div>
					</div>
				</li>

				<!-- Producto 2 -->
				<li class="list-group-item">
					<div class="row align-items-center">
						<!-- Columna Imagen -->
						<div class="col-3">
							<img src="assets/img/polos/IMG_0817.JPG" alt="Producto 2" class="img-fluid"
								style="width: 64px; height: 64px; object-fit: cover;">
						</div>
						<!-- Columna Nombre y Precio Unitario -->
						<div class="col-5">
							<h6 class="my-0">Producto 2</h6>
							<small class="text-muted">Precio unitario: $15.00</small>
						</div>
						<!-- Columna Cantidad -->
						<div class="col-2 text-center">
							<small class="text-muted">1</small>
						</div>
						<!-- Columna Subtotal -->
						<div class="col-2 text-end">
							<span class="text-muted">$15.00</span>
						</div>
					</div>
				</li>

				<!-- Producto 3 -->
				<li class="list-group-item">
					<div class="row align-items-center">
						<!-- Columna Imagen -->
						<div class="col-3">
							<img src="assets/img/polos/IMG_0818.JPG" alt="Producto 3" class="img-fluid"
								style="width: 64px; height: 64px; object-fit: cover;">
						</div>
						<!-- Columna Nombre y Precio Unitario -->
						<div class="col-5">
							<h6 class="my-0">Producto 3</h6>
							<small class="text-muted">Precio unitario: $5.00</small>
						</div>
						<!-- Columna Cantidad -->
						<div class="col-2 text-center">
							<small class="text-muted">3</small>
						</div>
						<!-- Columna Subtotal -->
						<div class="col-2 text-end">
							<span class="text-muted">$15.00</span>
						</div>
					</div>
				</li>
			</ul>

			<!-- Total del Carrito -->
			<div class="d-flex justify-content-between mb-3">
				<h5>Total a Pagar</h5>
				<h5>$50.00</h5>
			</div>

			<!-- Botón para Continuar la Compra -->
			<button class="btn btn-dark w-100 mb-2">Continuar Compra</button>

			<!-- Enlace para Editar Carrito -->
			<a href="shopCar.html" class="text-center d-block text-decoration-none text-dark">Editar carrito</a>
		</div>
	</div>
	<div class="container-fluid">
		<div class="productos">
			<!-- Filtro de categorías-->
			<div class="col-lg-3 category_list">
				<!-- Filtro de precios -->
				<nav class="navbar navbar-expand-lg navbar-white bg-white">
					<div class="container-fluid">
						<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
							data-bs-target="#menuLateral">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="col">
							<section class="offcanvas offcanvas-start pt-5 pt-lg-0" id="menuLateral" tabindex="-1">
								<img class="gif" src="/img/Logo Animado Academia Creación Diseño Marketing Publicidad Moderno Profesional Blanco y Negro.gif" alt="">
								<div class="price-filter">
									<h5>Filtrar por precio</h5>
									<input type="range" id="filtro-precio" min="0" max="300" step="5" value="300"
										oninput="actualizarPrecio(this.value)">
									<p>Precio máximo: S/<span id="precio-actual">300</span></p>
								</div>

								<ul class="list-group">
									<h5>Filtrar por Marcas</h5>
									<div class="form-check">
										<a class="form-check-label" href="/cigarros_y_vapes/cigarros_regulare.html" for="flexCheckChecked">
											Cigarro Regulares
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="/cigarros_y_vapes/cigarros_electricos.html"
											for="flexCheckDefault">
											Cigarro Electronicos
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="/cigarros_y_vapes/complementos.html" for="flexCheckDefault">
											Complementos
										</a>
									</div>
								</ul>
							</section>
						</div>
					</div>
				</nav>
			</div>
			<!--Lista de Productos-->
			<div>
				<section class="products-list grid text-center">

					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="1.50">
						<img src="/img/riccadonnaAsti.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Lucky Strike Mora</p>
								<p>UNI</p>
								<p>S/1.50</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="1.50">
						<img src="/img/riccadonnaRuby.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Lucky Strike Sandia</p>
								<p>UNI</p>
								<p>S/1.50</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="1.50">
						<img src="/img/riccadonnaProsecco.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Lucky Strike Naranja</p>
								<p>UNI</p>
								<p>S/1.50</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="19">
						<img src="/img/riccadonnaRose.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Lucky Strike Mora</p>
								<p>PACK</p>
								<p>S/19</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="19">
						<img src="/img/riccadonnaRuby.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Lucky Strike Sandia</p>
								<p>PACK</p>
								<p>S/19</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="19">
						<img src="/img/riccadonnaProsecco.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Lucky Strike Naranja</p>
								<p>PACK</p>
								<p>S/19</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="1.50">
						<img src="/img/riccadonnaRuby.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Pall Mall Menta</p>
								<p>UNI</p>
								<p>S/1.50</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="1.50">
						<img src="/img/riccadonnaProsecco.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Pall Mall Original</p>
								<p>UNI</p>
								<p>S/1.50</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="19">
						<img src="/img/riccadonnaRuby.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Pall Mall Menta</p>
								<p>PACK</p>
								<p>S/19</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="19">
						<img src="/img/riccadonnaProsecco.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Pall Mall Original</p>
								<p>PACK</p>
								<p>S/19</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>

				</section>
			</div>
		</div>
	</div>
	<jsp:include page="../../components/footer.jsp"/>
</body>

</html>	