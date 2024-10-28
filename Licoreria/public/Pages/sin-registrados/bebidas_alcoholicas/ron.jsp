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
    <jsp:include page="../../components/header_sin_registrar.jsp"/>
	<div class="cuerpo">
		<!-- Filtro de categorÃ­as-->
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
							<p>Precio maximo: S/<span id="precio-actual">300</span></p>
						</div>

						<ul class="list-group">
							<h5>Pages</h5>
							<li>
                                                            <a href="vino.jsp">Vino</a>
							</li>
							<li>
                                                            <a class="palabra-color" href="ron.jsp">Ron</a>
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
                                                            <a href="Pisco.jsp">Pisco</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>

		<!--Lista de Pages-->
		<section class="products-list grid text-center">
			<div class="card product-item" data-precio="48">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/ron_img/bacardi-blanca-1lt.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Bacardi Blanco 1Lt</p>
						<p>S/48</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="220"
							data-producto-name="Bacardi Blanco 1LT" data-producto-price="10.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/ron_img/bacardi-blanca-1lt.webp">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="40">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/ron_img/bacardi-blanca-x-750-ml-superior4121.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Bacardi Blanco 750ml</p>
						<p>S/40</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="221"
							data-producto-name="Cartavio Black 250ml" data-producto-price="40.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/ron_img/bacardi-blanca-x-750-ml-superior4121.png">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="48">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/ron_img/bacardi-oro-1lt.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Bacardi oro 1Lt</p>
						<p>S/48</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="222"
							data-producto-name="Bacardi oro 1Lt" data-producto-price="48.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/ron_img/bacardi-oro-1lt.webp">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="40">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/ron_img/bacardi-oro-750ml.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Bacardi oro 750ml</p>
						<p>S/40</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="223"
							data-producto-name="Bacardi oro 750ml" data-producto-price="40.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/ron_img/bacardi-oro-750ml.webp">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/bebidas_alcoholicas/ron_img/barcelo-añejo-750ml.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Barcelo Añejo 750ml</p>
						<p>S/44</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="224"
							data-producto-name="Barcelo Añejo 750ml" data-producto-price="44.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/ron_img/barcelo-añejo-750ml.webp">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="58">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/ron_img/barcelo-gran-añejo-750ml.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Barcelo Gran Añejo 750ml</p>
						<p>S/58</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="225"
							data-producto-name="Barcelo Gran Añejo 750ml" data-producto-price="58.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/ron_img/barcelo-gran-añejo-750ml.webp">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="120">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/ron_img/bacardi-imperial-750ml.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Barcelo Imperial 750ml</p>
						<p>S/120</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="226"
							data-producto-name="Barcelo Imperial 750ml" data-producto-price="120.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/ron_img/bacardi-imperial-750ml.webp">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
					<img src="../../../assets/img/bebidas_alcoholicas/ron_img/Captain-morgan.jpg" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Capitan Morgan 750ml</p>
						<p>S/44</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="227"
							data-producto-name="Capitan Morgan 750ml" data-producto-price="44.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/ron_img/Captain-morgan.jpg">AÑADIR</button>
					</div>
				</section>
			</div>			
		</section>
	</div>
<jsp:include page="../../components/footer.jsp"/>
</body>

</html>