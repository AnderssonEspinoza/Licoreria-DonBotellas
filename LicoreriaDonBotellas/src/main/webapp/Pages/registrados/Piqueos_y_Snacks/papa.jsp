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
							<h5>Productos</h5>
							<li>
                                                            <a class="palabra-color" href="papa.jsp">Papas</a>
							</li>
							<li>
                                                            <a href="piqueos.jsp">Piqueos</a>
							</li>
							<li>
                                                            <a href="habas_y_mani.jsp">Habas y mani</a>
							</li>
							<li>
                                                            <a href="frutos_secos.jsp">Frutos Secos</a>
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
                                    <img src="../../../assets/img/papas/papa-lays-artenasal-bbq.webp" alt="...">
				</section>
                            
				<section class="card-body">
					<div class="card-text">
						<p>Papas Artesanales LAYS BBQ Bolsa 34g</p>
						<p>S/2.40</p>
					</div>
                                    
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="140"
							data-producto-name="Papas Artesanales LAYS BBQ Bolsa 34g" data-producto-price="2.40"
							data-producto-image="../../../assets/img/papas/papa-lays-artenasal-bbq.webp">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
                                    <img src="../../../assets/img/papas/papa-lays-artenasal.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Papas Artesanales LAYS Sal Marina Bolsa 34g</p>
						<p>S/2.49</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="141"
							data-producto-name="Papas Artesanales LAYS Sal Marina Bolsa 34g" data-producto-price="2.40"
							data-producto-image="../../../assets/img/papas/papa-lays-artenasal.webp">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="120">
				<section class="card-img-top">
                                    <img src="../../../assets/img/papas/papa-lays-clasicas.webp">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Papas LAY'S Clasicas Bolsa 150g</p>
						<p>S/5.50</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="142"
							data-producto-name="Papas LAY'S Clasicas Bolsa 150g" data-producto-price="5.50"
							data-producto-image="../../../assets/img/papas/papa-lays-clasicas.webp">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="29">
				<section class="card-img-top">
                                    <img src="../../../assets/img/papas/papa-lays-mayonesa.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Papas Ondas LAYS Mayonesa Bolsa 105g</p>
						<p>S/5.99</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="143"
							data-producto-name="Papas Ondas LAYS Mayonesa Bolsa 105g" data-producto-price="5.99"
							data-producto-image="../../../assets/img/papas/papa-lays-mayonesa.webp">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="29">
				<section class="card-img-top">
                                    <img src="../../../assets/img/papas/papa-lays-onda-normal.webp"
						alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p>Papas LAY'S Ondas Clasicas Bolsa 140g</p>
						<p>S/5.50</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="144"
							data-producto-name="Papas LAY'S Ondas Clasicas Bolsa 140g" data-producto-price="5.50"
							data-producto-image="../../../assets/img/papas/papa-lays-onda-normal.webp">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="34">
				<div class="card-img-top">
                                    <img src="../../../assets/img/papas/papa-lays-onda-picante.webp" alt="...">
				</div>
				<section class="card-body">
					<div class="card-text">
						<p>Papas LAY'S Ondas Picante Bolsa 140g</p>
						<p>S/5.50</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="145"
							data-producto-name="Papas LAY'S Ondas Picante Bolsa 140g" data-producto-price="5.50"
							data-producto-image="../../../assets/img/papas/papa-lays-onda-picante.webp">AÑADIR</button>
					</div>
				</section>
			</div>
                    
			
		</section>
	</div>
	<jsp:include page="../../components/footer.jsp" />
	</body>
	
	</html>
		