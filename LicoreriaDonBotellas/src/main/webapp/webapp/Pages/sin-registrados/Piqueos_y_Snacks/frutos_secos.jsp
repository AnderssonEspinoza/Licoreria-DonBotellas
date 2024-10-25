<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../../components/head.jsp" %>
<%@include file="../../components/header.jsp" %>
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
                                    <img src="../../../assets/img/frutos-secos/frutas-villa-natura.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Frutos Secos VILLA NATURA Cocktail Premium Bolsa 150gl</p>
						<p>S/8.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn add-to-cart" data-producto-id="9"
							data-producto-name="Cuatro Gallos Acholado 750ml" data-producto-price="44.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/cuantro_gallos_acholado.png">AÃADIR</button>
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
						<button class="btn btn-primary add-to-cart" data-producto-id="9"
							data-producto-name="475 SUPERVILLAIN" data-producto-price="70.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">AÃADIR</button>
					</div>
				</section>
			</div>
                    
			<div class="card product-item" data-precio="120">
				<section class="card-img-top">
                                    <img src="../../../assets/img/frutos-secos/mix-nueces-bells.webp">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Mix de Nueces y Frutas BELL'S TÃ¡per 200g</p>
						<p>S/ 9.99</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="9"
							data-producto-name="475 SUPERVILLAIN" data-producto-price="70.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">AÃADIR</button>
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
						<p href="#">Pasas Morenas BELL'S Bolsa 180g</p>
						<p>S/ 4.50</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="9"
							data-producto-name="475 SUPERVILLAIN" data-producto-price="70.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">AÃADIR</button>
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
						<p href="#">Pecana Pelada VILLA NATURA Bolsa 60g</p>
						<p>S/ 7.90</p>
					</div>
					<div class="card-inferior">
						<button class="btn btn-primary add-to-cart" data-producto-id="9"
							data-producto-name="475 SUPERVILLAIN" data-producto-price="70.00"
							data-producto-image="../../../assets/img/bebidas_alcoholicas/pisco_img/tabernero_quebranta.jpg">AÃADIR</button>
					</div>
				</section>
			</div>
			
			
		</section>
	</div>
<%@include file="../../components/footer.jsp" %>    
