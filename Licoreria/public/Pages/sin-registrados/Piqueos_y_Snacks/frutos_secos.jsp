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
<%@include file="../../components/header_sin_registrar.jsp" %>
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
                                                            <a href="papa.jsp">Papas</a>
							</li>
							<li>
                                                            <a href="piqueos.jsp">Piqueos</a>
							</li>
							<li>
                                                            <a href="habas_y_mani.jsp">Habas y mani</a>
							</li>
							<li>
                                                            <a class="palabra-color" href="frutos_secos.jsp">Frutos Secos</a>
							</li>
							<li>
                                                            <a href="chifles_camotes_yukas.jsp">Chifles/Camotes/Yucas</a>
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
                                    <img src="../../../assets/img/frutos-secos/frutas-villa-natura.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Frutos Secos VILLA NATURA Cocktail Premium Bolsa 150gl</p>
						<p>S/8.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="120"
							data-producto-name="Frutos Secos VILLA NATURA Cocktail Premium Bolsa 150gl" data-producto-price="8.90"
							data-producto-image="../../../assets/img/frutos-secos/frutas-villa-natura.webp">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/frutos-secos/guindones.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Guindones sin Pepa VILLA NATURA Bolsa 150g</p>
						<p>S/7.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="121"
							data-producto-name="Guindones sin Pepa VILLA NATURA Bolsa 150g" data-producto-price="7.90"
							data-producto-image="../../../assets/img/frutos-secos/guindones.webp">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="120">
				<section class="card-img-top">
                                    <img src="../../../assets/img/frutos-secos/mix-nueces-bells.webp">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Mix de Nueces y Frutas BELL'S Taper 200g</p>
						<p>S/ 9.99</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="122"
							data-producto-name="Mix de Nueces y Frutas BELL'S Taper 200g" data-producto-price="9.99"
							data-producto-image="../../../assets/img/frutos-secos/mix-nueces-bells.webp">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="29">
				<section class="card-img-top">
                                    <img src="../../../assets/img/frutos-secos/pasas-morena.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Pasas Morenas BELL'S Bolsa 180g</p>
						<p>S/ 4.50</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="123"
							data-producto-name="Pasas Morenas BELL'S Bolsa 180g" data-producto-price="4.50"
							data-producto-image="../../../assets/img/frutos-secos/pasas-morena.webp">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="29">
				<section class="card-img-top">
                                    <img src="../../../assets/img/frutos-secos/pecana-pelada.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Pecana Pelada VILLA NATURA Bolsa 60g</p>
						<p>S/ 7.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="124"
							data-producto-name="Pecana Pelada VILLA NATURA Bolsa 60g" data-producto-price="7.90"
							data-producto-image="./../../assets/img/frutos-secos/pecana-pelada.webp">AÑADIR</button>
					</div>
				</section>
			</div>
			
			
		</section>
	</div>
    <jsp:include page="../../components/footer.jsp"/>
</body>

</html>
