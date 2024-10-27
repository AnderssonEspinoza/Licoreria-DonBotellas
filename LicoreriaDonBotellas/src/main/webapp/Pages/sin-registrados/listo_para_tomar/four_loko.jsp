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
									<div class="form-check">
										<a class="form-check-label" href="/listo_para_tomar/smirnoff.html"
											for="flexCheckChecked">
											Smirnoff
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="/listo_para_tomar/four_loko.html"
											for="flexCheckDefault">
											Four Loko
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="/listo_para_tomar/tabernero.html"
											for="flexCheckDefault">
											Tabernero
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="/listo_para_tomar/mikes.html"
											for="flexCheckDefault">
											Mikes
										</a>
									</div>
									<div class="form-check">
										<a class="form-check-label" href="/listo_para_tomar/piscano.html"
											for="flexCheckDefault">
											Piscano
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
	<jsp:include page="../../components/footer.jsp"/>
</body>

</html>	