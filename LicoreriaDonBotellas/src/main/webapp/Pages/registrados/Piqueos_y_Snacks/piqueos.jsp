<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Piqueos</title>
        <link rel="stylesheet" href="../../../assets/style/sass/main.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">
</head>

<body>
<%@include file="../../components/header_registrado.jsp" %>
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
							<p>Precio maximo: S/<span id="precio-actual">300</span></p>
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
                                    <img src="../../../assets/img/piqueos/cheetos-mega-queso.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Piqueos CHEETOS Mega Queso Bolsa 90g</p>
						<p>S/5.00</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="9"
							data-producto-name="Cuatro Gallos Acholado 750ml" data-producto-price="44.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/cuantro_gallos_acholado.png">AÑADIR</button>
					</div>
				</section>
			</div>
                   
                    
			<div class="card product-item" data-precio="120">
				<section class="card-img-top">
                                    <img src="../../../assets/img/piqueos/cheetos.webp">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Piqueos CHEETOS Queso Picante Bolsa 180g</p>
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
                                    <img src="../../../assets/img/piqueos/doritos.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Tortillas de MaÃ­z DORITOS Queso Atrevido Bolsa 90g</p>
						<p>S/4.99</p>
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
                                    <img src="../../../assets/img/piqueos/piqueos.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Snacks de Papa MaÃ­z y Trigo PIQUEO SNAX Bolsa 260g</p>
						<p>S/11.10</p>
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
                                    <img src="../../../assets/img/piqueos/pringles.webp" alt="...">
				</div>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Snacks de Papa MaÃ­z y Trigo PIQUEO SNAX Bolsa 260g</p>
						<p>S/8.90</p>
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
                                    <img src="../../../assets/img/piqueos/tor-tees.webp">
				</div>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Piqueos TORTEES Picante Bolsa 71g</p>
						<p>S/2.50</p>
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
<%@include file="../../components/footer.jsp" %>
</body>

</html>