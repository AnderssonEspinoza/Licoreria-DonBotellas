<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Filtro de Categorías y Precio</title>
	<!-- CSS -->
	<link rel="stylesheet" href="../style/style.css">
	<!-- Cloudflare -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
	<header id="header" class="header">
		<!--Segundo menu navegacion-->
		<header class="main-header">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
				<div class="container-fluid">
					<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbarMenu"
						aria-controls="navbarMenu">
						<span class="navbar-toggler-icon"></span>
					</button>
					<a class="navbar-brand" href="index.html"></a>
					<img src="/img/3.png" alt="Logo" style="width: 120px;">
					</a>

					<div class="offcanvas offcanvas-end pt-lg-0 text-bg-dark" tabindex="-1" id="navbarMenu"
						aria-labelledby="offcanvasNavbarLabel">
						<div class="offcanvas-header">
							<button class="btn-close" type="button" aria-label="close"
								data-bs-dismiss="offcanvas"></button>
						</div>
						<div class="offcanvas-body">
							<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button"
										data-bs-toggle="dropdown">
										Cerveza
									</a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="/cerveza/pilsen.html">Pilsen</a></li>
										<li><a class="dropdown-item" href="/cerveza/Cusqueña.html">Cusqueña</a></li>
										<li><a class="dropdown-item" href="/cerveza/cistral.html">Cristal</a></li>
										<li><a class="dropdown-item" href="/cerveza/heineken.html">Heineken</a></li>
										<li><a class="dropdown-item" href="/cerveza/godlen.html">Godlen </a></li>
									</ul>
								</li>

								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button"
										data-bs-toggle="dropdown">
										Bebidas Alcohólicas
									</a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="/bebidas_alcoholicas/vino.html">Vino</a></li>
										<li><a class="dropdown-item" href="/bebidas_alcoholicas/ron.html">Ron</a></li>
										<li><a class="dropdown-item" href="/bebidas_alcoholicas/whisky.html">Whisky</a>
										</li>
										<li><a class="dropdown-item"
												href="/bebidas_alcoholicas/espumante.html">Espumante</a></li>
										<li><a class="dropdown-item" href="/bebidas_alcoholicas/vodka.html">Vodka</a>
										</li>
										<li><a class="dropdown-item" href="/bebidas_alcoholicas/Pisco.html">Pisco</a>
										</li>
									</ul>
								</li>

								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button"
										data-bs-toggle="dropdown">
										Listos para Tomar
									</a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="/listo_para_tomar/smirnoff.html">Smirnoff</a>
										</li>
										<li><a class="dropdown-item" href="/listo_para_tomar/four_loko.html">Four
												Loko</a>
										</li>
										<li><a class="dropdown-item" href="/listo_para_tomar/tabernero.html">Tabernero
											</a>
										</li>
										<li><a class="dropdown-item" href="/listo_para_tomar/mikes.html">Mikes</a></li>
										<li><a class="dropdown-item" href="/listo_para_tomar/piscano.html">Piscano </a>
										</li>
									</ul>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button"
										data-bs-toggle="dropdown">
										Bebidas No Alcohólicas
									</a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="/bebidas_no_alcoholicas/gaseosas.html">Gaseosa</a>
										</li>
										<li><a class="dropdown-item" href="/bebidas_no_alcoholicas/agua.html">Aguas</a>
										</li>
										<li><a class="dropdown-item" href="/bebidas_no_alcoholicas/energizante.html">Energizante </a>
										</li>
										<li><a class="dropdown-item" href="/bebidas_no_alcoholicas/jugo.html">Jugos</a></li>
										<li><a class="dropdown-item" href="/bebidas_no_alcoholicas/Rehidratante.html">Rehidratante </a></li>
									</ul>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button"
										data-bs-toggle="dropdown">
										Cigarros y Vapes
									</a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item"
												href="/cigarros_y_vapes/cigarros_regulare.html">Cigarros Regulares</a>
										</li>
										<li><a class="dropdown-item"
												href="/cigarros_y_vapes/cigarros_electricos.html">Cigarros
												Electronicos</a>
										</li>
										<li><a class="dropdown-item"
												href="/cigarros_y_vapes/complementos.html">Complementos</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" role="button"
										data-bs-toggle="dropdown">
										Piqueos y Snacks
									</a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="/Piqueos_y_Snacks/papa.html">Papas</a></li>
										<li><a class="dropdown-item" href="/Piqueos_y_Snacks/piqueos.html">Piqueos</a>
										</li>
										<li><a class="dropdown-item" href="/Piqueos_y_Snacks/habas_y_mani.html">Habas y
												Mani</a></li>
										<li><a class="dropdown-item" href="/Piqueos_y_Snacks/frutos_secos.html">Frutos
												Secos</a></li>
										<li><a class="dropdown-item"
												href="/Piqueos_y_Snacks/chifles_camotes_yukas.html">Chifles/Camotes/Yucas</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>

					<ul class="nav justify-content-end">
						<li class="nav-item">
							<a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#modalLogin"><i
									class="fas fa-user"></i></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#offcanvasCart" data-bs-toggle="offcanvas"
								aria-controls="offcanvasScrolling"><i class="fas fa-shopping-bag"></i>
							</a>
						</li>
					</ul>
				</div>
			</nav>
		</header>
	</header>
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
								<img class="gif"
									src="/img/Logo Animado Academia Creación Diseño Marketing Publicidad Moderno Profesional Blanco y Negro.gif"
									alt="">
								<div class="price-filter">
									<h5>Filtrar por precio</h5>
									<input type="range" id="filtro-precio" min="0" max="300" step="5" value="300"
										oninput="actualizarPrecio(this.value)">
									<p>Precio máximo: S/<span id="precio-actual">300</span></p>
								</div>

								<ul class="list-group">
									<h5>Filtrar por Marcas</h5>
									<div class="form-check activePage">
										<a class="form-check-label" href="gaseosas.html"
											for="flexCheckChecked">
											Gaseosa
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="agua.html"
											for="flexCheckDefault">
											Aguas
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="energizante.html"
											for="flexCheckDefault">
											Energizante
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="jugo.html"
											for="flexCheckDefault">
											Jugos
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="Rehidratante.html"
											for="flexCheckDefault">
											Rehidratante
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

					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="25">
						<img src="/img/riccadonnaAsti.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Riccardonna Asti</p>
								<p>750ml</p>
								<p>S/58</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="40">
						<img src="/img/riccadonnaRuby.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Riccardonna Ruby</p>
								<p>750ml</p>
								<p>S/58</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="50">
						<img src="/img/riccadonnaProsecco.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Riccardonna Prosecco</p>
								<p>750ml</p>
								<p>S/58</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="65">
						<img src="/img/riccadonnaRose.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Riccardonna Rose</p>
								<p>750ml</p>
								<p>S/18</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>
					<div class="card product-item g-col-3" style="width: 11rem;" data-precio="75">
						<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" class="card-img-top" alt="...">
						<div class="card-body">
							<div class="separacion">
								<p href="#">Riccardonna Espumante</p>
								<p>750ml</p>
								<p>S/750</p>
							</div>
							<a href="#">AÑADIR</a>
						</div>
					</div>

				</section>
			</div>
		</div>
	</div>
	<footer id="footer" class="overflow-hidden">
		<div class="container">
			<div class="row">
				<div class="footer-top-area">
					<div class="row d-flex flex-wrap justify-content-between">
						<div class="col-lg-3 col-sm-6 pb-3">
							<div class="footer-menu">
								<img src="" alt="logo">
								<p>"Calidad y variedad en licores a un clic de distancia. ¡Haz tu pedido hoy y
									disfruta
									en casa!"</p>
								<div class="social-links">
									<ul class="d-flex list-unstyled">
										<li><a href="#"><i class="fab fa-facebook"></i></a></li>
										<li><a href="#"><i class="fab fa-instagram"></i></a></li>
										<li><a href="#"><i class="fab fa-twitter"></i></a></li>
										<li><a href="#"><i class="fab fa-linkedin"></i></a></li>
										<li><a href="#"><i class="fab fa-youtube"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-lg-2 col-sm-6 pb-3">
							<div class="footer-menu text-uppercase">
								<h5 class="widget-title pb-2">Enlaces rápidos</h5>
								<ul class="menu-list list-unstyled text-uppercase">
									<li class="menu-item pb-2"><a href="#">Home</a></li>
									<li class="menu-item pb-2"><a href="#">About</a></li>
									<li class="menu-item pb-2"><a href="#">Shop</a></li>
									<li class="menu-item pb-2"><a href="#">Blogs</a></li>
									<li class="menu-item pb-2"><a href="#">Contact</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 pb-3">
							<div class="footer-menu text-uppercase">
								<h5 class="widget-title pb-2">Ayuda e información</h5>
								<ul class="menu-list list-unstyled">
									<li class="menu-item pb-2"><a href="#">Seguimiento de Pedido</a></li>
									<li class="menu-item pb-2"><a href="#">Politica de Retorno</a></li>
									<li class="menu-item pb-2"><a href="#">Envío + Entrega</a></li>
									<li class="menu-item pb-2"><a href="#">Faqs</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 pb-3">
							<div class="footer-menu contact-item">
								<h5 class="widget-title text-uppercase pb-2">Contactanos</h5>
								<p>Tienes alguna sugerncia o pregunta? <a
										href="mailto:yourinfo@gmail.com">yourinfo@gmail.com</a></p>
								<p>necesita ayuda? solo llamanos. <a href="">+55 111 222 333 44</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script src="/javaScript.js"></script>
</body>

</html>