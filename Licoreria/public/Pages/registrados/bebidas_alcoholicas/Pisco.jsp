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
	<div class="cuerpo">
		<!-- Filtro de categorÃ­as -->
		<div class="col-lg-2 category_list">
			<!-- Filtro de precios -->
			<nav class="navbar navbar-expand-lg ">
				<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
					data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar"
					aria-label="Toggle navigation">
					<i class="bi bi-filter-left">Filtrar</i>
				</button>
				<div class="col">
					<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasDarkNavbar"
						aria-labelledby="offcanvasDarkNavbarLabel">
						<div class="offcanvas-header">
							<br>
							<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
							</button>
						</div>
						<div class="price-filter">
							<h5>Filtrar por precio</h5>
							<input type="range" id="filtro-precio" min="0" max="300" step="5" value="300"
								oninput="actualizarPrecio(this.value)">
							<p>Precio mÃ¡ximo: S/<span id="precio-actual">300</span></p>
						</div>

						<ul class="list-group">
							<h5>Pages</h5>
							<li>
                                                            <a href="vino.jsp">Vino</a>
							</li>
							<li>
                                                            <a href="ron.jsp">Ron</a>
							</li>
							<li>
                                                            <a href="whisky.jsp">whisky</a>
							</li>
							<li>
                                                            <a href="espumante.jsp">Espumante</a>
							</li>
							<li>
                                                            <a href="vodka.jsp">Vodka</a>
							</li>
							<li>
                                                            <a class="palabra-color" href="Pisco.jsp">Pisco</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<!--Lista de Pages-->
		<section class="products-list grid text-center">
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/pisco_img/cuantro_gallos_acholado.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cuatro Gallos Acholado 750ml</p>
						<p>S/44</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="200"
							data-producto-name="Cuatro Gallos Acholado 750ml" data-producto-price="44.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/cuantro_gallos_acholado.png">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/pisco_img/pisco_cuatro_gallos_quebranta.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cuatro Gallos Quebranta 750ml</p>
						<p>S/44</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="201"
							data-producto-name="Cuatro Gallos Quebranta 750ml" data-producto-price="44.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/pisco_cuatro_gallos_quebranta.webp">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="120">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/pisco_img/pisco_porton.jpg">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Pisco Porton 750ml</p>
						<p>S/120</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="202"
							data-producto-name="Pisco Porton 750ml" data-producto-price="120.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/pisco_porton.jpg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="29">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/pisco_img/santiago_queirolo_acholado.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Santigo Queirolo Acholado 750ml</p>
						<p>S/29</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="203"
							data-producto-name="Santigo Queirolo Acholado 750ml" data-producto-price="29.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/santiago_queirolo_acholado.webp">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="29">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/pisco_img/santiago_queirolo_quebranta.jpg"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Santiago Queirolo Quebranta 750ml</p>
						<p>S/29</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="204"
							data-producto-name="Santiago Queirolo Quebranta 750ml" data-producto-price="29.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/santiago_queirolo_quebranta.jpg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="34">
				<div class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_acholado.jpg" alt="...">
				</div>
				<section class="card-body">
					<div class="card-text">
						<p >Tabernero Acholado 750ml</p>
						<p>S/34</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="205"
							data-producto-name="Tabernero Acholado 750ml" data-producto-price="34.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_acholado.jpg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="34">
				<div class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">
				</div>
				<section class="card-body">
					<div class="card-text">
						<p>Tabernero Quebranta 750ml</p>
						<p>S/34</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="206"
							data-producto-name="Tabernero Quebranta 750ml" data-producto-price="34.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="29">
				<div class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/pisco_img/santiago_queirolo_quebranta.jpg"
						alt="...">
				</div>
				<section class="card-body">
					<div class="card-text">
						<p >Santiago Queirolo Quebranta 750ml</p>
						<p>S/29</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="207"
							data-producto-name="Santiago Queirolo Quebranta 750ml" data-producto-price="29.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/santiago_queirolo_quebranta.jpg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="26">
				<div class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/pisco_img/vargas_acholado.webp" alt="...">
				</div>
				<section class="card-body">
					<div class="card-text">
						<p>Pisco Vargas Acholado 750ml</p>
						<p>S/26</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="208"
							data-producto-name="Pisco Vargas Acholado 750ml" data-producto-price="26.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/vargas_acholado.webp">AÑADIR</button>
					</div>
				</section>
			</div>
		</section>
	</div>
    
    <jsp:include page="../../components/footer.jsp"/>
</body>

</html>