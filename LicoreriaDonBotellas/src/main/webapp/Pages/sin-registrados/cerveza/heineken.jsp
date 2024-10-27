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

						<ul class="list-group" style="list-style: none">
							<h5>Cervezas</h5>
							<li>
                                                            <a href="cistral.jsp">Cristal</a>
							</li>
							<li>
                                                            <a href="cusqueña.jsp">Cusqueña</a>
							</li>
							<li>
                                                            <a href="godlen.jsp">Godlen</a>
							</li>
							<li>
                                                            <a class="palabra-color" href="heineken.jsp">Heineken</a>
							</li>
							<li>
                                                            <a href="pilsen.jsp">Pilsen</a>
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
                                    <img src="../../../assets/img/cerveza/heineken_img/heineken-botella.png"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Heineken</p>
						<p>S/ 8.00</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="430"
							data-producto-name="Heineken" data-producto-price="8.00"
							data-producto-image="../../../assets/img/cerveza/heineken_img/heineken-botella.png">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/cerveza/heineken_img/heineken-botella.png"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Heineken</p>
						<p>S/ 8.00</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="430"
							data-producto-name="Heineken" data-producto-price="8.00"
							data-producto-image="../../../assets/img/cerveza/heineken_img/heineken-botella.png">AÑADIR</button>
					</div>
				</section>
			</div>
                    <div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/cerveza/heineken_img/heineken-botella.png"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Heineken</p>
						<p>S/ 8.00</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="430"
							data-producto-name="Heineken" data-producto-price="8.00"
							data-producto-image="../../../assets/img/cerveza/heineken_img/heineken-botella.png">AÑADIR</button>
					</div>
				</section>
			</div>
		</section>
	</div>
    
    <jsp:include page="../../components/footer.jsp"/>
</body>

</html>	