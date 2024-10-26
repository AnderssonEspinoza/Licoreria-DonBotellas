<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
								<a class="palabra-color" href="../bebidas_alcoholicas/vino.html">Vino</a>
							</li>
							<li>
								<a href="../bebidas_alcoholicas/ron.html">Ron</a>
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

			<div class="card product-item" data-precio="42">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Casillero del Diablo.jpeg" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Casillero del Diablo</p>
						<p>700ml</p>
						<p>S/42</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="42">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Casillero del Diablo.jpeg" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Casillero del Diablo</p>
						<p>700ml</p>
						<p>S/42</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="42">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Casillero del Diablo.jpeg" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Casillero del Diablo</p>
						<p>700ml</p>
						<p>S/42</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="42">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Casillero del Diablo.jpeg" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Casillero del Diablo</p>
						<p>700ml</p>
						<p>S/42</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="60">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Navarro Correa.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Navarro Correa</p>
						<p>700ml</p>
						<p>S/60</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="60">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Navarro Correa.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Navarro Correa</p>
						<p>700ml</p>
						<p>S/60</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="16">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Santiago Queirolo.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Santiago Queirolo</p>
						<p>700ml</p>
						<p>S/16</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="16">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Santiago Queirolo.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Santiago Queirolo</p>
						<p>700ml</p>
						<p>S/16</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="16">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Santiago Queirolo.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Santiago Queirolo</p>
						<p>700ml</p>
						<p>S/16</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="16">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Santiago Queirolo.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Santiago Queirolo</p>
						<p>700ml</p>
						<p>S/16</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="17">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Tabernero Blanco.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Tabernero Blanco</p>
						<p>700ml</p>
						<p>S/17</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="17">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Tabernero BorgoÃ±a.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Tabernero BorgoÃ±a</p>
						<p>700ml</p>
						<p>S/17</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="17">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Tabernero Rose.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Tabernero Rose</p>
						<p>700ml</p>
						<p>S/17</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="22">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Tabernero Gran Rose.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Tabernero Gran Rose</p>
						<p>750ml</p>
						<p>S/22</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="22">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Tabernero Gran Blanco.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Tabernero Gran Blanco</p>
						<p>750ml</p>
						<p>S/22</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="38">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Tacama BorgoÃ±o.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Tabernero Pasa</p>
						<p>750ml</p>
						<p>S/38</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="26">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Tacama Rose.webp" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Tacama Rose</p>
						<p>700ml</p>
						<p>S/26</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="26">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Tacama BorgoÃ±o.png" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Tacama BorgoÃ±o</p>
						<p>700ml</p>
						<p>S/26</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
			<div class="card product-item" data-precio="29">
				<section class="card-img-top">
					<img src="../../../img/bebidas_alcoholicas/vino_img/Tacama Tres cepas.jpeg" alt="...">
				</section>
				<section class="card-body">
					<div class="card-text">
						<p href="#">Tacama Tres Sepas</p>
						<p>700ml</p>
						<p>S/29</p>
					</div>
					<div class="card-inferior">
						<a href="#">AÃADIR</a>
					</div>
				</section>
			</div>
		</section>
	</div>
<%@include file="../../components/footer.jsp" %>     