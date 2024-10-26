<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../../components/head.jsp" %>    
<%@include file="../../components/header.jsp" %>
<div class="cuerpo">
		<!-- Filtro de categorÃ­as-->
		<div class="col-lg-2 category_list">
			<!-- Filtro de precios -->
			<nav class="navbar navbar-expand-lg ">
				<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
					data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar"
					aria-label="Toggle navigation">
					<i class="bi bi-filter-left">Filtrar</i>
				</button>
				<div class="col">
					<div class="offcanvas offcanvas-start" style="background-color: white;" tabindex="-1"
						id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
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
								<a href="../bebidas_alcoholicas/vino.html">Vino</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/ron.html">Ron</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/whisky.html">whisky</a>
							</li>
							<li>
								<a class="palabra-color" href="../bebidas_alcoholicas/espumante.html">Espumante</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/vodka.html">Vodka</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/Pisco.html">Pisco</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<!--Lista de Pages/sin-registrados-->
		<section class="products-list grid text-center">
			<div class="card product-item" data-precio="25">
				<selection class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/espumante_img/riccadonnaAsti.jpg" class="card-img-top"
						alt="...">
				</selection>
				<selection class="card-body">
					<div class="card-text">
						<p href="#">Riccardonna Asti 750ml</p>
						<p>S/58</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</selection>
			</div>
			<div class="card product-item" data-precio="40">
				<selection class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/espumante_img/riccadonnaRuby.jpg" class="card-img-top"
						alt="...">
				</selection>
				<selection class="card-body">
					<div class="card-text">
						<p href="#">Riccardonna Ruby 750ml</p>
						<p>S/58</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</selection>
			</div>
			<div class="card product-item" data-precio="50">
				<selection class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/espumante_img/riccadonnaProsecco.jpg" class="card-img-top"
						alt="...">
				</selection>
				<selection class="card-body">
					<div class="card-text">
						<p href="#">Riccardonna Prosecco 750ml</p>
						<p>S/58</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</selection>
			</div>
			<div class="card product-item" data-precio="65">
				<selection class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/espumante_img/riccadonnaRose.jpg" class="card-img-top"
						alt="...">
				</selection>
				<selection class="card-body">
					<div class="card-text">
						<p href="#">Riccardonna Rose 750ml</p>
						<p>S/18</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</selection>
			</div>
			<div class="card product-item" data-precio="75">
				<selection class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/espumante_img/SIX-PACK-RICCADONNA-ASTI.png"
						class="card-img-top" alt="...">
				</selection>
				<selection class="card-body">
					<div class="card-text">
						<p href="#">Riccardonna Espumante 750ml</p>
						<p>S/75</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</selection>
			</div>
		</section>
	</div>
<%@include file="../../components/footer.jsp" %>
        