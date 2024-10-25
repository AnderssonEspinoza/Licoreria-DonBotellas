<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Don Botellas</title>
  <!-- CSS -->
  <link rel="stylesheet" href="../../assets/style/sass/main.css">
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  <style>
    .carousel {
      margin-top: 100px;
    }
    
    .related-products {
            margin-top: 40px;
        }
        .product-card {
            margin: 10px;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: white;
            transition: box-shadow 0.3s;
        }


        .product-card img {
            width: 100%; /* Hacer que la imagen ocupe todo el ancho del contenedor */
            height: 300px; /* Altura fija para todas las imágenes */
            object-fit: cover; /* Recortar la imagen para llenar el contenedor sin deformar */
        }

        .product-card:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        /* Estilos para botones de carrusel */
        .carousel_prod_rel .carousel-control-prev,
        .carousel_prod_rel .carousel-control-next {
            width: 40px;
            height: 40px;
            top: 50%;
            transform: translateY(-50%);
            background: rgb(0, 0, 0);
            border-radius: 50%;
            border: none;
        }
        
        .carousel_prod_rel .carousel-control-prev-icon,
        .carousel_prod_rel .carousel-control-next-icon {
            background-color: transparent;
        }

        .carousel_prod_rel .carousel-control-prev-icon:focus,
        .carousel_prod_rel .carousel-control-next-icon:focus {
            outline: none;
        }
  </style>
</head>

<body>
  <header class="main-header grid">
    <nav class="navbar navbar-expand-lg navbar-black bg-black">
      <div class="container-fluid">
        <!-- Logo -->
        <div> </div>
        <div class="image-container col">
          <div class="grid text-center" style="row-gap: 0;">
            <div class="imagen">
              <a href="index-registrados.html" class="logo-superior">
                <img src="../../assets/img/logos/logo-superior.png" id="imagen-ocultar">
              </a>
            </div>
            <div class="imagen">
              <a href="index-registrados.html" class="logo-inferior">
                <img src="../../assets/img/logos/logo-inferior.png">
              </a>
            </div>

          </div>
        </div>

        <!-- Hamburger Menu (and other icons like search, profile, cart) -->
        <div class="d-flex align-items-center">
          <ul class="nav justify-content-end me-3">
            <li class="nav-item search-item">
              <a href="#" class="search-button nav-link ">
                <i class="bi bi-search"></i>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle palabra-color img-login" href="#" role="button"
                data-bs-toggle="dropdown"><img src="../../assets/img/logos/img_login.png" alt=""></a>
              <ul class="dropdown-menu ">
                <li><a class="dropdown-item" href="../registrados/usuario/index.html">Mi Cuenta</a></li>
                <li><a class="dropdown-item">Mis Compras</a></li>
                <li><a class="dropdown-item">Cerrar Sesión</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="../../Pages/registrados/carritoCliente.html">
                <i class="bi bi-cart-fill"></i>
              </a>
            </li>
          </ul>
          <!-- Hamburger button in the same row palabra-color-->
          <button class="boton-superior navbar-toggler nav-link" type="button" data-bs-toggle="offcanvas"
            data-bs-target="#menuLateral">
            <i class="bi bi-list"></i>
          </button>
        </div>
      </div>
    </nav>

    <!-- Offcanvas Menu -->
    <nav class="navbar navbar-expand-lg navbar-white bg-black">
      <div class="container-fluid">
        <section class="offcanvas offcanvas-end pt-5 pt-lg-0" id="menuLateral" tabindex="-1">
          <div class="offcanvas-header">
            <button class="btn-close" type="button" aria-label="close" data-bs-dismiss="offcanvas"></button>
          </div>
          <ul class="navbar-nav justify-content mx-auto mb-2  mb-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Bebidas
                Alcoholicas</a>
              <ul class="dropdown-menu ">
                <li><a class="dropdown-item" href="../../Pages/registrados/bebidas_alcoholicas/vino.html">Vino</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/bebidas_alcoholicas/ron.html">Ron</a>
                </li>
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/bebidas_alcoholicas/whisky.html">Whisky</a>
                </li>
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/bebidas_alcoholicas/espumante.html">Espumante</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/bebidas_alcoholicas/vodka.html">Vodka</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/bebidas_alcoholicas/Pisco.html">Pisco</a>
                </li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Bebidas
                No Alcoholicas</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/bebidas_no_alcoholicas/gaseosas.html">Gaseosa</a>
                </li>
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/bebidas_no_alcoholicas/agua.html">Aguas</a>
                </li>
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/bebidas_no_alcoholicas/energizante.html">Energizante
                  </a>
                </li>
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/bebidas_no_alcoholicas/jugo.html">Jugos</a>
                </li>
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/bebidas_no_alcoholicas/Rehidratante.html">Rehidratante
                  </a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Cerveza</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="../../Pages/registrados/cerveza/pilsen.html">Pilsen</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/cerveza/Cusqueña.html">Cusqueña</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/cerveza/cistral.html">Cristal</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/cerveza/heineken.html">Heineken</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/cerveza/godlen.html">Godlen </a>
                </li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Cigarros y Vapes</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/cigarros_y_vapes/cigarros_regulare.html">Cigarros
                    Regulares</a>
                </li>
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/cigarros_y_vapes/cigarros_electricos.html">Cigarros
                    Electronicos</a>
                </li>
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/cigarros_y_vapes/complementos.html">Complementos</a>
                </li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Listos
                Para Tomar</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/listo_para_tomar/smirnoff.html">Smirnoff</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/listo_para_tomar/four_loko.html">Four
                    Loko</a>
                </li>
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/listo_para_tomar/tabernero.html">Tabernero</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/listo_para_tomar/mikes.html">Mikes</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/listo_para_tomar/piscano.html">Piscano
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Piqueos
                y Snacks</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="../../Pages/registrados/Piqueos_y_Snacks/papa.html">Papas</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/Piqueos_y_Snacks/piqueos.html">Piqueos</a>
                </li>
                <li><a class="dropdown-item" href="../../Pages/registrados/Piqueos_y_Snacks/habas_y_mani.html">Habas
                    y
                    Mani</a></li>
                <li><a class="dropdown-item" href="../../Pages/registrados/Piqueos_y_Snacks/frutos_secos.html">Frutos
                    Secos</a></li>
                <li><a class="dropdown-item"
                    href="../../Pages/registrados/Piqueos_y_Snacks/chifles_camotes_yukas.html">Chifles/Camotes/Yucas</a>
                </li>
              </ul>
            </li>
          </ul>
        </section>
      </div>
    </nav>
  </header>
  <!--Secccion del carrusel de promociones-->

  <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
        aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
        aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
        aria-label="Slide 3"></button>
    </div>
      
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="../../assets/img/index/flayer-one.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>First slide label</h5>
          <p>Some representative placeholder content for the first slide.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="../../assets/img/index/flayer-one.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>Second slide label</h5>
          <p>Some representative placeholder content for the second slide.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="../../assets/img/index/flayer-one.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>Third slide label</h5>
          <p>Some representative placeholder content for the third slide.</p>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  
  <section id="company-services">
    <div class="container">
      <div class="row">
          
        <div class="col-lg-3 col-md-6 pb-3">
            <div class="icon-box d-flex align-items-start">
                <div class="me-3">
                    <i class="bi bi-cart3" style="font-size: 2rem; color: #9bbcd0;"></i>
                </div>
                <div>
                    <h5 class="mb-2">FREE DELIVERY</h5>
                    <p class="text-muted">Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                </div>
            </div>
        </div>
          
        <div class="col-lg-3 col-md-6 pb-3">
                <div class="icon-box d-flex align-items-start">
                    <div class="me-3">
                        <i class="bi bi-cart3" style="font-size: 2rem; color: #9bbcd0;"></i>
                    </div>
                    <div>
                        <h5 class="mb-2">FREE DELIVERY</h5>
                        <p class="text-muted">Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                    </div>
                </div>
            </div>
          
          
        <div class="col-lg-3 col-md-6 pb-3">
            <div class="icon-box d-flex align-items-start">
                <div class="me-3">
                    <i class="bi bi-cart3" style="font-size: 2rem; color: #9bbcd0;"></i>
                </div>
                <div>
                    <h5 class="mb-2">FREE DELIVERY</h5>
                    <p class="text-muted">Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                </div>
            </div>
        </div>
          
          
       <div class="col-lg-3 col-md-6 pb-3">
            <div class="icon-box d-flex align-items-start">
                <div class="me-3">
                    <i class="bi bi-cart3" style="font-size: 2rem; color: #9bbcd0;"></i>
                </div>
                <div>
                    <h5 class="mb-2">FREE DELIVERY</h5>
                    <p class="text-muted">Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                </div>
            </div>
        </div>
          
        
      </div>
    </div>
  </section>
  
  <!--Secciton de carrusel Pages Vinos-->
  <section id="mobile-products" class="product-store position-relative padding-large no-padding-top">
    <div class="container">
        
      <div class="row">
          
        <div class="display-header d-flex justify-content-between pb-3">
          <h2 class="display-7 text-dark text-uppercase">Wiskies</h2>
          <div class="btn-right">
            <a href="../../Pages/registrados/bebidas_alcoholicas/whisky.html"
              class="btn btn-medium btn-normal text-uppercase">Ir a comprar</a>
          </div>
        </div>
          
        <section class="container related-products">
          <div id="relatedProductsCarousel" class="carousel slide carousel_prod_rel" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="row">
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>

                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                        
                    
                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                
              <div class="carousel-item">
                <div class="row">
                  
                   <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>

                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                        
                    
                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                      </div>
                    </div>
                  </div>
                  
                  
                  <!-- Añade más productos aquí -->
                </div>
              </div>
            </div>

            <!-- Controles de navegación -->
            <button class="carousel-control-prev" type="button" data-bs-target="#relatedProductsCarousel"
              data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#relatedProductsCarousel"
              data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Siguiente</span>
            </button>
          </div>

        </section>
      </div>
    </div>
      
    <div class="swiper-pagination position-absolute text-center"></div>
  </section>
 
  <!--Secciton de carrusel Pages Cervezas-->
  <section id="mobile-products" class="product-store position-relative  no-padding-top">
    <div class="container">
        
      <div class="row">
          
        <div class="display-header d-flex justify-content-between pb-3">
          <h2 class="display-7 text-dark text-uppercase">Cerveza</h2>
          <div class="btn-right">
            <a href="../../Pages/registrados/bebidas_alcoholicas/whisky.html"
              class="btn btn-medium btn-normal text-uppercase">Ir a comprar</a>
          </div>
        </div>
          
        <section class="container related-products">
          <div id="relatedProductsCarousel" class="carousel slide carousel_prod_rel" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="row">
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>

                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                        
                    
                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                
              <div class="carousel-item">
                <div class="row">
                  
                   <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>

                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                        
                    
                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12 col-sm-6 col-sm-4 col-lg-3">
                    <div class="product-card card">
                      <div class="image position-relative overflow-hidden clickeable">
                        <img src="../../assets/img/index/blueLabel.webp" alt="Essential Cropped Tees" class="img-fluid product-img"
                          data-id="4018">
                      </div>
                      <div class="product-info card-body">
                        <h3 class="card-title">Santiago Queirolo Quebranta 750ml</h3>
                        <p class="card-text">$35.00</p>
                      </div>
                    </div>
                  </div>
                  
                  
                  <!-- Añade más productos aquí -->
                </div>
              </div>
            </div>

            <!-- Controles de navegación -->
            <button class="carousel-control-prev" type="button" data-bs-target="#relatedProductsCarousel"
              data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#relatedProductsCarousel"
              data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Siguiente</span>
            </button>
          </div>

        </section>
      </div>
    </div>
      
    <div class="swiper-pagination position-absolute text-center"></div>
  </section>
  
  
  <!--Section of notice-->
  <!--<section id="latest-blog" class="padding-large">
    <div class="container">
      <div class="row">
        <div class="display-header d-flex justify-content-between pb-3">
          <h2 class="display-7 text-dark text-uppercase">LO ÚLTIMO DE LOS LICORES DEL MUNDO</h2>
          <div class="btn-right">
            <a href="blog.html" class="btn btn-medium btn-normal text-uppercase">Leer blog</a>
          </div>
        </div>
        <div class="post-grid d-flex flex-wrap justify-content-between">
          <div class="col-lg-4 col-sm-12">

            <div class="card border-none me-3">

              <div class="card-image">
                <img src="img/index/img-notice-one.webp" alt="" class="img-fluid">
              </div>
            </div>

            <div class="card-body text-uppercase">
              <div class="card-meta text-muted">
                <span class="meta-date"></span>
                <span class="meta-category"></span>
              </div>
              <h3 class="card-title">
                <a href="#">El Macallan: Un Viaje por la Excelencia del Whisky Escocés</a>
              </h3>
            </div>
          </div>

          <div class="col-lg-4 col-sm-12">
            <div class="card border-none me-3">
              <div class="card-image">
                <img src="img/index/img-notice-two.webp" alt="" class="img-fluid">
              </div>
            </div>
            <div class="card-body text-uppercase">
              <div class="card-meta text-muted">
                <span class="meta-date"></span>
                <span class="meta-category"></span>
              </div>
              <h3 class="card-title">
                <a href="#">Jägermeister: Un Viaje por el Mundo de un Licor Legendario</a>
              </h3>
            </div>
          </div>
          <div class="col-lg-4 col-sm-12">
            <div class="card border-none me-3">
              <div class="card-image">
                <img src="img/index/img-notice-thre.webp" alt="" class="img-fluid">
              </div>
            </div>
            <div class="card-body text-uppercase">
              <div class="card-meta text-muted">
                <span class="meta-date"></span>
                <span class="meta-category"></span>
              </div>
              <h3 class="card-title">
                <a href="#">Cómo un Buen Calzado Mejora Tu Experiencia de Cata</a>
              </h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> -->

  <!--Secction footer-->
  <footer class="overflow-hidden bg-black" id="footer">
		<div class="container">
			<div class="row">
				<div class="footer-top-area">
					<div class="row d-flex flex-wrap justify-content-between">
						<div class="col-lg-3 col-sm-6 pb-3">
							<div class="footer-menu">
								<img src="../../assets/img/logos/logo-superior.png" alt="logo">
								<p>"Calidad y variedad en licores a un clic de distancia. ¡Haz tu pedido hoy y disfruta
									en casa!"</p>
								<div class="social-links">
									<ul class="d-flex list-unstyled">
										<li>
											<a href="#">
												<i class="bi bi-facebook"></i>
											</a>
										</li>
										<li>
											<a href="#">
												<i class="bi bi-instagram"></i>
											</a>
										</li>
										<li>
											<a href="#">
												<i class="bi bi-youtube"></i>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 pb-3">
							<div class="footer-menu text-uppercase">
								<h5 class="widget-title pb-2">Informacion</h5>
								<ul class="menu-list list-unstyled">
									<li class="menu-item pb-2">
										<a href="#">¿Por que? La Canasteri?a?</a>
									</li>
									<li class="menu-item pb-2">
										<a href="#">Ventas Corporativas</a>
									</li>
									<li class="menu-item pb-2">
										<a href="#">Tiendas</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-2 col-sm-6 pb-3">
							<div class="footer-menu text-uppercase">
								<h5 class="widget-title pb-2">Ayuda</h5>
								<ul class="menu-list list-unstyled text-uppercase">
									<li class="menu-item pb-2">
										<a href="#">Medios de pago</a>
									</li>
									<li class="menu-item pb-2">
										<a href="#">Seguimiento de mi pedido</a>
									</li>
									<li class="menu-item pb-2">
										<a href="#">Libro de reclamaciones
										</a>
									</li>
									<li class="menu-item pb-2">
										<a href="#">Te?rminos y condiciones</a>
									</li>
									<li class="menu-item pb-2">
										<a href="#">Entregas y devoluciones</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 pb-3">
							<div class="footer-menu contact-item">
								<h5 class="widget-title text-uppercase pb-2">Contactanos</h5>
								<a href="">yourinfo@gmail.com</a>
								<p>¿Necesita ayuda? solo llamanos. <a href="">+55 111 222 333 44</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>
	</footer>


  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
  <script src="../../assets/js/javaScript.js"></script>
  <script src="../../assets/js/jquery-1.11.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
  <script type="text/javascript" src="../../assets/js/plugins.js"></script>
  <script type="text/javascript" src="../../assets/js/script.js"></script>
  <script src="../../assets/js/ocultacionDeLogo.js"></script>
  <script src="../../assets/js/carrito-common.js"></script>
  <script src="../../assets/js/carritoCliente.js"></script>
  <script src="../../assets/js/carrito.js"></script>
</body>

</html>