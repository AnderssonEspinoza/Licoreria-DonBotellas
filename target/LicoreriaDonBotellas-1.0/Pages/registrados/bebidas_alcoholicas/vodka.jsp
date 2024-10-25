<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Don Botellas</title>
    <!-- CSS -->
    <link rel="stylesheet" href="../../../css/style.css">
    <link rel="stylesheet" type="text/css" href="../../../css/styleIndex.css">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body>
	<!--Menu nav   -->
	<header class="main-header grid">
		<nav class="navbar navbar-expand-lg navbar-black bg-black">
			<div class="container-fluid">
				<!-- Logo -->
				<div> </div>
				<div class="image-container col">
					<div class="grid text-center" style="row-gap: 0;">
						<div> <a href="../../../index-registrados.jsp">
								<img src="../../../img/logo.png" class="logo-superior" id="imagen-ocultar">
							</a>
						</div>
						<div>
							<a href="../../../index-registrados.jsp">
								<img src="../../../img/Logo Moda Femenina Minimalista Negro y Rosa (1).png"
									class="logo-inferior">
							</a>
						</div>

					</div>
				</div>

				<!-- Hamburger Menu (and other icons like search, profile, cart) -->
				<div class="d-flex align-items-center">
					<ul class="nav justify-content-end me-3">
						<li class="search-item  nav-item ">
							<a href="#" class="search-button nav-link ">
								<i class="bi bi-search"></i>
							</a>
						</li>
						<li class=" nav-item">
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle palabra-color img-login" href="#" role="button"
									data-bs-toggle="dropdown"><img src="../../../img/img_login.png" alt=""></a>
								<ul class="dropdown-menu ">
									<li><a class="dropdown-item"></a>Mi Cuenta</li>
									<li><a class="dropdown-item"></a>Mis Compras</li>
									<li><a class="dropdown-item"></a>Cerrar Sesión</li>
								</ul>
							</li>
						</li>
						<li class="nav-item">
							<a class="nav-link " href="../../../Pages/registrados/carritoCliente.html">
								<i  class="bi bi-cart-fill"></i>
							</a>
						</li>
					</ul>

					<!-- Hamburger button in the same row -->
					<button class="boton-superior navbar-toggler nav-link" type="button" data-bs-toggle="offcanvas"
						data-bs-target="#menuLateral">
						<i class="bi bi-list"></i>
					</button>
				</div>
			</div>
		</nav>

		<!-- Offcanvas Menu -->
		<nav class="navbar navbar-expand-lg navbar-white bg-black">
			<div class="container-fluid">
				<section class="offcanvas offcanvas-end pt-5 pt-lg-0" id="menuLateral" tabindex="-1">
					<div class="offcanvas-header">
						<button class="btn-close" type="button" aria-label="close" data-bs-dismiss="offcanvas"></button>
					</div>
					<ul class="navbar-nav justify-content mx-auto mb-2  mb-lg-0">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle palabra-color" href="#" role="button"
								data-bs-toggle="dropdown">Bebidas Alcoholicas</a>
							<ul class="dropdown-menu ">
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/bebidas_alcoholicas/vino.html">Vino</a></li>
								<li><a class="dropdown-item" href="../../../Pages/registrados/bebidas_alcoholicas/ron.html">Ron</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/bebidas_alcoholicas/whisky.html">Whisky</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/bebidas_alcoholicas/espumante.html">Espumante</a></li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/bebidas_alcoholicas/vodka.html">Vodka</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/bebidas_alcoholicas/Pisco.html">Pisco</a>
								</li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Bebidas
								No Alcoholicas</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/bebidas_no_alcoholicas/gaseosas.html">Gaseosa</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/bebidas_no_alcoholicas/agua.html">Aguas</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/bebidas_no_alcoholicas/energizante.html">Energizante
									</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/bebidas_no_alcoholicas/jugo.html">Jugos</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/bebidas_no_alcoholicas/Rehidratante.html">Rehidratante
									</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button"
								data-bs-toggle="dropdown">Cerveza</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="../../../Pages/registrados/cerveza/pilsen.html">Pilsen</a>
								</li>
								<li><a class="dropdown-item" href="../../../Pages/registrados/cerveza/Cusqueña.html">Cusqueña</a>
								</li>
								<li><a class="dropdown-item" href="../../../Pages/registrados/cerveza/cistral.html">Cristal</a>
								</li>
								<li><a class="dropdown-item" href="../../../Pages/registrados/cerveza/heineken.html">Heineken</a>
								</li>
								<li><a class="dropdown-item" href="../../../Pages/registrados/cerveza/godlen.html">Godlen </a>
								</li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button"
								data-bs-toggle="dropdown">Cigarros y Vapes</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/cigarros_y_vapes/cigarros_regulare.html">Cigarros
										Regulares</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/cigarros_y_vapes/cigarros_electricos.html">Cigarros
										Electronicos</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/cigarros_y_vapes/complementos.html">Complementos</a>
								</li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Listos
								Para Tomar</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/listo_para_tomar/smirnoff.html">Smirnoff</a>
								</li>
								<li><a class="dropdown-item" href="../../../Pages/registrados/listo_para_tomar/four_loko.html">Four
										Loko</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/listo_para_tomar/tabernero.html">Tabernero</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/listo_para_tomar/mikes.html">Mikes</a></li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/listo_para_tomar/piscano.html">Piscano </a>
								</li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Piqueos
								y Snacks</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="../../../Pages/registrados/Piqueos_y_Snacks/papa.html">Papas</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/Piqueos_y_Snacks/piqueos.html">Piqueos</a>
								</li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/Piqueos_y_Snacks/habas_y_mani.html">Habas y
										Mani</a></li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/Piqueos_y_Snacks/frutos_secos.html">Frutos
										Secos</a></li>
								<li><a class="dropdown-item"
										href="../../../Pages/registrados/Piqueos_y_Snacks/chifles_camotes_yukas.html">Chifles/Camotes/Yucas</a>
								</li>
							</ul>
						</li>
					</ul>
				</section>
			</div>
		</nav>
	</header>

	<div class="cuerpo">
		<!-- Filtro de categorías-->
		<div class="col-lg-2 category_list">
			<!-- Filtro de precios -->
			<nav class="navbar navbar-expand-lg ">
				<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
					<i class="bi bi-filter-left">Filtrar</i>
				</button>
				<div class="col">
					<div class="offcanvas offcanvas-start" style="background-color: white;" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
						<div class="offcanvas-header">
							<br>
							<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
								aria-label="Close">
							</button>
						</div>
						<div class="price-filter">
							<h5>Filtrar por precio</h5>
							<input type="range" id="filtro-precio" min="0" max="300" step="5" value="300"
								oninput="actualizarPrecio(this.value)">
							<p>Precio máximo: S/<span id="precio-actual">300</span></p>
						</div>

						<ul class="list-group">
							<h5>Pages/registrados</h5>
							<li>
								<a href="../bebidas_alcoholicas/vino.html">Vino</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/ron.html">Ron</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/whisky.html">whisky</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/espumante.html">Espumante</a>
							</li>
							<li>
								<a class="palabra-color" href="../bebidas_alcoholicas/vodka.html">Vodka</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/Pisco.html">Pisco</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
			<!--Lista de Pages/registrados-->
			<section class="products-list grid text-center">
				<div class="card product-item g-col-3" data-precio="55">
					<section class="card-img-top">
						<img src="../../../img//bebidas_alcoholicas/vodka_img/Absolut.jpg" alt="...">
					</section>
					<section class="card-body">
						<div class="card-text">
							<p href="#">Absolut</p>
							<p>750ml</p>
							<p>S/55</p>
						</div>
						<div class="card-inferior">
							<a href="#">AÑADIR</a>
						</div>
					</section>
				</div>
				<div class="card product-item g-col-3" data-precio="25">
					<section class="card-img-top">
						<img src="../../../img//bebidas_alcoholicas/vodka_img/Russkaya.webp" alt="...">
					</section>
					<section class="card-body">
						<div class="card-text">
							<p href="#">Russkaya</p>
							<p>750ml</p>
							<p>S/25</p>
						</div>
						<div class="card-inferior">
							<a href="#">AÑADIR</a>
						</div>
					</section>
				</div>
			</section>
		</div>
		<footer id="footer" class="overflow-hidden bg-black" style="padding-top: 25px;">
			<div class="container">
				<div class="row">
					<div class="footer-top-area">
						<div class="row d-flex flex-wrap justify-content-between">
							<div class="col-lg-3 col-sm-6 pb-3">
								<div class="footer-menu">
									<img src="../../../img/logo.png" alt="logo">
									<p>"Calidad y variedad en licores a un clic de distancia. ¡Haz tu pedido hoy y
										disfruta
										en casa!"</p>
									<div class="social-links">
										<ul class="d-flex list-unstyled">
											<li>
												<a href="#">
													<i class="bi bi-facebook"></i>
												</a>
											</li>
											<li>
												<a href="#">
													<i class="bi bi-instagram"></i>
												</a>
											</li>
											<li>
												<a href="#">
													<i class="bi bi-youtube"></i>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6 pb-3">
								<div class="footer-menu text-uppercase">
									<h5 class="widget-title pb-2">Informacion</h5>
									<ul class="menu-list list-unstyled">
										<li class="menu-item pb-2">
											<a href="#">¿Por que? La Canasteri?a?</a>
										</li>
										<li class="menu-item pb-2">
											<a href="#">Ventas Corporativas</a>
										</li>
										<li class="menu-item pb-2">
											<a href="#">Tiendas</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-sm-6 pb-3">
								<div class="footer-menu text-uppercase">
									<h5 class="widget-title pb-2">Ayuda</h5>
									<ul class="menu-list list-unstyled text-uppercase">
										<li class="menu-item pb-2">
											<a href="#">Medios de pago</a>
										</li>
										<li class="menu-item pb-2">
											<a href="#">Seguimiento de mi pedido</a>
										</li>
										<li class="menu-item pb-2">
											<a href="#">Libro de reclamaciones
											</a>
										</li>
										<li class="menu-item pb-2">
											<a href="#">Te?rminos y condiciones</a>
										</li>
										<li class="menu-item pb-2">
											<a href="#">Entregas y devoluciones</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6 pb-3">
								<div class="footer-menu contact-item">
									<h5 class="widget-title text-uppercase pb-2">Contactanos</h5>
									<p><a href="mailto:">yourinfo@gmail.com</a>
									</p>
									<p>necesita ayuda? solo llamanos. <a href="">+55 111 222 333 44</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr>
		</footer>
		<script src="../../../js/ocultacionDeLogo.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
			crossorigin="anonymous"></script>
		<script src="../../../js/javaScript.js"></script>
		<script src="js/jquery-1.11.0.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
		<script type="text/javascript" src="../../../js/plugins.js"></script>
		<script type="text/javascript" src="../../../js/script.js"></script>
                <script src="../../../js/carrito.js"></script>
</body>

</html>