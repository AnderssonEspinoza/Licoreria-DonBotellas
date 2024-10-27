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
							<p>Precio maximo: S/<span id="precio-actual">300</span></p>
						</div>

						<ul class="list-group">
							<h5>Paginas</h5>
							<li>
                                                            <a  href="cigarros_electricos.jsp">Cigarro Electrico</a>
							</li>
							<li>
                                                            <a  href="cigarros_regulare.jsp">Cigarro Normal</a>
							</li>
							<li>
                                                            <a class="palabra-color" href="complementos.jsp">Complemento</a>
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
                                    <img src="../../../assets/img/cigarros/complemento/cenicero.jpeg"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cenicero</p>
						<p>S/79.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="503"
							data-producto-name="Cenicero" data-producto-price="79.90"
							data-producto-image="../../../assets/img/cigarros/complemento/cenicero.jpeg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/cigarros/complemento/cenicero.jpeg"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cenicero</p>
						<p>S/79.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="503"
							data-producto-name="Cenicero" data-producto-price="79.90"
							data-producto-image="../../../assets/img/cigarros/complemento/cenicero.jpeg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/cigarros/complemento/cenicero.jpeg"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cenicero</p>
						<p>S/79.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="503"
							data-producto-name="Cenicero" data-producto-price="79.90"
							data-producto-image="../../../assets/img/cigarros/complemento/cenicero.jpeg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/cigarros/complemento/cenicero.jpeg"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cenicero</p>
						<p>S/79.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="503"
							data-producto-name="Cenicero" data-producto-price="79.90"
							data-producto-image="../../../assets/img/cigarros/complemento/cenicero.jpeg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/cigarros/complemento/cenicero.jpeg"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cenicero</p>
						<p>S/79.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="503"
							data-producto-name="Cenicero" data-producto-price="79.90"
							data-producto-image="../../../assets/img/cigarros/complemento/cenicero.jpeg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/cigarros/complemento/cenicero.jpeg"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cenicero</p>
						<p>S/79.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="503"
							data-producto-name="Cenicero" data-producto-price="79.90"
							data-producto-image="../../../assets/img/cigarros/complemento/cenicero.jpeg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/cigarros/complemento/cenicero.jpeg"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cenicero</p>
						<p>S/79.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="503"
							data-producto-name="Cenicero" data-producto-price="79.90"
							data-producto-image="../../../assets/img/cigarros/complemento/cenicero.jpeg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/cigarros/complemento/cenicero.jpeg"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cenicero</p>
						<p>S/79.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="503"
							data-producto-name="Cenicero" data-producto-price="79.90"
							data-producto-image="../../../assets/img/cigarros/complemento/cenicero.jpeg">AÑADIR</button>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/cigarros/complemento/cenicero.jpeg"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Cenicero</p>
						<p>S/79.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="503"
							data-producto-name="Cenicero" data-producto-price="79.90"
							data-producto-image="../../../assets/img/cigarros/complemento/cenicero.jpeg">AÑADIR</button>
					</div>
				</section>
			</div> 
		</section>
	</div>
	<jsp:include page="../../components/footer.jsp"/>
</body>

</html>	