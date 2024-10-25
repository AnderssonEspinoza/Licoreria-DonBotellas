<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Filtro de Categorías y Precio</title>
	<link rel="stylesheet" href="/style.css">
	<link rel="stylesheet" href="/styleNavbar.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">
</head>

<body>
	<header id="header" class="header">
        <!--Segundo menu navegacion-->
        <nav>
			<ul class="nav-links-second">
				<li><a class="nav-link dropdown-toggle"  role="button" data-bs-toggle="dropdown">Cerveza</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/cerveza/pilsen.html">Pilsen</a></li>
						<li><a class="dropdown-item" href="/cerveza/Cusqueña.html">Cusqueña</a></li>
						<li><a class="dropdown-item" href="/cerveza/cistral.html">Cristal</a></li>
						<li><a class="dropdown-item" href="/cerveza/heineken.html">Heineken</a></li>
						<li><a class="dropdown-item" href="/cerveza/godlen.html">Godlen </a></li>
					</ul>
				</li>
				<li><a class="nav-link ">Pack y Licores</a></li>
	
				<li><a class="nav-link dropdown-toggle " role="button" data-bs-toggle="dropdown">Bebidas Alcohólicas</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/bebidas_alcoholicas/vino.html">Vino</a></li>
						<li><a class="dropdown-item" href="/bebidas_alcoholicas/ron.html">Ron</a></li>
						<li><a class="dropdown-item" href="/bebidas_alcoholicas/whisky.html">Whisky</a></li>
						<li><a class="dropdown-item" href="/bebidas_alcoholicas/espumante.html">Espumante</a></li>
						<li><a class="dropdown-item" href="/bebidas_alcoholicas/vodka.html">Vodka</a></li>
						<li><a class="dropdown-item" href="/bebidas_alcoholicas/Pisco.html">Pisco</a></li>
					</ul>
				</li>
				<li><a class="nav-link dropdown-toggle " role="button" data-bs-toggle="dropdown">Listos para Tomar</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/listo_para_tomar/smirnoff.html">Smirnoff</a></li>
						<li><a class="dropdown-item" href="/listo_para_tomar/four_loko.html">Four Loko</a></li>
						<li><a class="dropdown-item" href="/listo_para_tomar/tabernero.html">Tabernero </a></li>
						<li><a class="dropdown-item" href="/listo_para_tomar/mikes.html">Mikes</a></li>
						<li><a class="dropdown-item" href="/listo_para_tomar/piscano.html">Piscano </a></li>
					</ul>
				</li>
				<li><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Bebidas No Alcohólicas</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/bebidas_no_alcoholicas/gaseosas.html">Gaseosas</a></li>
						<li><a class="dropdown-item" href="/bebidas_no_alcoholicas/agua.html">Agua</a></li>
						<li><a class="dropdown-item" href="/bebidas_no_alcoholicas/energizante.html">Energizante</a></li>
						<li><a class="dropdown-item" href="/bebidas_no_alcoholicas/jugo.html">Jugo</a></li>
						<li><a class="dropdown-item" href="/bebidas_no_alcoholicas/Rehidratante.html">Rehidratante</a></li>
					</ul>
				</li>
				<li><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Cigarros y Vapes</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/cigarros_y_vapes/cigarros_regulare.html">Cigarros Regulares</a></li>
						<li><a class="dropdown-item" href="/cigarros_y_vapes/cigarros_electricos.html">Cigarros Electronicos</a></li>
						<li><a class="dropdown-item" href="/cigarros_y_vapes/complementos.html">Complementos</a></li>
					</ul>
				</li>
				<li><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Piqueos y Snacks</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/Piqueos_y_Snacks/papa.html">Papas</a></li>
						<li><a class="dropdown-item" href="/Piqueos_y_Snacks/piqueos.html">Piqueos</a></li>
						<li><a class="dropdown-item" href="/Piqueos_y_Snacks/habas_y_mani.html">Habas y Mani</a></li>
						<li><a class="dropdown-item" href="/Piqueos_y_Snacks/frutos_secos.html">Frutos Secos</a></li>
						<li><a class="dropdown-item" href="/Piqueos_y_Snacks/chifles_camotes_yukas.html">Chifles/Camotes/Yucas</a></li>
					</ul>
				</li>
			</ul>
		</nav>
    </header>
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
										<a class="form-check-label" href="/cerveza/pilsen.html" for="flexCheckChecked">
											Pilsen
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="/cerveza/Cusqueña.html"
											for="flexCheckDefault">
											Cusqueña
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="/cerveza/cistral.html" for="flexCheckDefault">
											Cristal
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="/cerveza/heineken.html"
											for="flexCheckDefault">
											Heineken
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="/cerveza/godlen.html" for="flexCheckDefault">
											Godlen
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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script src="/javaScript.js"></script>
</body>

</html>