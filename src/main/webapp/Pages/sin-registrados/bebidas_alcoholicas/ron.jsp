<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="../../components/head.jsp" %>    
<%@include file="../../components/header.jsp" %>
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
							<p>Precio mÃ¡ximo: S/<span id="precio-actual">300</span></p>
						</div>

						<ul class="list-group">
							<h5>Pages</h5>
							<li>
								<a href="../bebidas_alcoholicas/vino.html">Vino</a>
							</li>
							<li>
								<a class="palabra-color" href="../bebidas_alcoholicas/ron.html">Ron</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/whisky.html">whisky</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/espumante.html">Espumante</a>
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

		<!--Lista de Pages-->
		<section class="products-list grid text-center">
			<div class="card product-item" data-precio="48">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/ron_img/bacardi-blanca-1lt.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Bacardi Blanco</p>
						<p>1Lt</p>
						<p>S/48</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="40">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/ron_img/bacardi-blanca-x-750-ml-superior4121.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Bacardi Blanco</p>
						<p>750ml</p>
						<p>S/40</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="48">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/ron_img/bacardi-oro-1lt.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Bacardi oro</p>
						<p>1Lt</p>
						<p>S/48</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="40">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/ron_img/bacardi-oro-750ml.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Bacardi oro</p>
						<p>750ml</p>
						<p>S/40</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/ron_img/barcelo-aÃ±ejo-750ml.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Barcelo AÃ±ejo</p>
						<p>750ml</p>
						<p>S/44</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="58">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/ron_img/barcelo-gran-aÃ±ejo-750ml.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Barcelo Gran AÃ±ejo</p>
						<p>750ml</p>
						<p>S/58</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="120">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/ron_img/bacardi-imperial-750ml.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Barcelo Imperial</p>
						<p>750ml</p>
						<p>S/120</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="44">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/ron_img/Captain-morgan.jpg" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Capitan Morgan</p>
						<p>750ml</p>
						<p>S/44</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="33">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/ron_img/cartavio-black-1lt.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Black</p>
						<p>1Lt</p>
						<p>S/33</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="10">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/ron_img/cartavio-black-250ml.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Black</p>
						<p>250ml</p>
						<p>S/10</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="18">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Black</p>
						<p>500ml</p>
						<p>S/18</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="10">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Black</p>
						<p>750ml</p>
						<p>S/10</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="6.50">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Black</p>
						<p>125ml</p>
						<p>S/6.50</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="33">
				<section class="card-img-top">
					<img src="/img/riccadonnaRuby.jpg" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Superior</p>
						<p>1Lt</p>
						<p>S/33</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="10">
				<section class="card-img-top">
					<img src="/img/riccadonnaProsecco.jpg" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Superior</p>
						<p>250ml</p>
						<p>S/10</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="18">
				<section class="card-img-top">
					<img src="/img/riccadonnaRose.jpg" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Superior</p>
						<p>500ml</p>
						<p>S/18</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="10">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Superior</p>
						<p>750ml</p>
						<p>S/10</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="6.50">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Superior</p>
						<p>125ml</p>
						<p>S/6.50</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="6.50">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Blanco</p>
						<p>125ml</p>
						<p>S/6.50</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="10">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Blanco</p>
						<p>250ml</p>
						<p>S/10</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="18">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" class="card-img-top" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Blanco</p>
						<p>500ml</p>
						<p>S/18</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="10">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" class="card-img-top" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Blanco</p>
						<p>750ml</p>
						<p>S/10</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="33">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" class="card-img-top" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Cartavio Blanco</p>
						<p>1Lt</p>
						<p>S/33</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="95">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" class="card-img-top" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Disarono</p>
						<p>700ml</p>
						<p>S/95</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="50">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" class="card-img-top" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Flor de CaÃ±a 4 aÃ±os</p>
						<p>700ml</p>
						<p>S/50</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="60">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" class="card-img-top" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Flor de CaÃ±a 5 aÃ±os 700ml</p>
						<p>S/60</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>

			<div class="card product-item" data-precio="84">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Flor de CaÃ±a 7 aÃ±os</p>
						<p>700ml</p>
						<p>S/84</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="40">
				<section class="card-img-top">
					<img src="/img/SIX-PACK-RICCADONNA-ASTI.png" class="card-img-top" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Habana Club</p>
						<p>700ml</p>
						<p>S/40</p>
					</div class="card-inferior">
					<a href="#">AÃADIR</a>
				</section>
			</div>
		</section>
	</div>
<%@include file="../../components/footer.jsp" %>
        