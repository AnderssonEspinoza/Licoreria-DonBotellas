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
							<h5>Productos</h5>
							<li>
                                                            <a href="../Piqueos_y_Snacks/papa.html">Papas</a>
							</li>
							<li>
                                                            <a href="../Piqueos_y_Snacks/piqueos.html">Piqueos</a>
							</li>
							<li>
                                                            <a href="../Piqueos_y_Snacks/habas_y_mani.html">Habas y mani</a>
							</li>
							<li>
                                                            <a href="../Piqueos_y_Snacks/frutos_secos.html">Frutos Secos</a>
							</li>
							<li>
                                                            <a href="../Piqueos_y_Snacks/chifles_camotes_yukas.html">Chifles/Camotes/Yucas</a>
							</li>
							<li>
                                                            <a href="../Piqueos_y_Snacks/dulce.html">Dulce</a>
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
                                    <img src="../../../assets/img/mani-habas/habas-taper.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Habas Saladas BELL'S TÃ¡per 140g</p>
						<p>S/4.40</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="9"
							data-producto-name="Cuatro Gallos Acholado 750ml" data-producto-price="44.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/cuantro_gallos_acholado.png">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/mani-habas/habas.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Habas Saladas VILLA NATURA Bolsas 150g</p>
						<p>S/5.00</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="9"
							data-producto-name="475 SUPERVILLAIN" data-producto-price="70.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="120">
				<section class="card-img-top">
                                    <img src="../../../assets/img/mani-habas/mani-celeste.webp">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">ManÃ­ KARINTO Engalletado Salado Bolsa 200g</p>
						<p>S/7.99</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="9"
							data-producto-name="475 SUPERVILLAIN" data-producto-price="70.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="29">
				<section class="card-img-top">
                                    <img src="../../../assets/img/mani-habas/mani-pink.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">ManÃ­ KARINTO Engalletado Picante Bolsa 200g</p>
						<p>S/7.99</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="9"
							data-producto-name="475 SUPERVILLAIN" data-producto-price="70.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="29">
				<section class="card-img-top">
                                    <img src="../../../assets/img/mani-habas/mani-tonia.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">ManÃ­ Tostado y Pelado TOÃA Bolsa 98g</p>
						<p>S/4.80</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="9"
							data-producto-name="475 SUPERVILLAIN" data-producto-price="70.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="34">
				<div class="card-img-top">
                                    <img src="../../../assets/img/mani-habas/mani.webp" alt="...">
				</div>
				<section class="card-body">
					<div class="card-text">
						<p href="#">ManÃ­ KARINTO Engalletado Salado Bolsa 200g</p>
						<p>S/7.99</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="9"
							data-producto-name="475 SUPERVILLAIN" data-producto-price="70.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">AÑADIR</button>
					</div>
				</section>
			</div>
			
		</section>
	</div>
	<jsp:include pag="../../components/footer.jsp" %>
	</body>
	
	</html>
		