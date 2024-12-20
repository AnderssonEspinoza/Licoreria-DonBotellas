<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  
</head>

<body>

   <!--Secccion del header-->
   <%@include file="../components/header_registrado.jsp" %>
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
            <h5>TOMAR BEBIDAS ALCOHOLICAS EN EXCESO ES DAï¿½INO</h5>
        </div>
      </div>
      <div class="carousel-item">
        <img src="../../assets/img/index/flayer-one.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
            <h5>TOMAR BEBIDAS ALCOHOLICAS EN EXCESO ES DAï¿½INO</h5>
        </div>
      </div>
      <div class="carousel-item">
        <img src="../../assets/img/index/flayer-one.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>TOMAR BEBIDAS ALCOHOLICAS EN EXCESO ES DAï¿½INO</h5>
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
  <!--Seccion servicios -->
  <section id="company-services">
    <div class="container mt-5">
      <div class="row">
          
        
       <div class="col-lg-3 col-md-6 pb-3">
            <div class="icon-box d-flex align-items-start">
                <div class="me-3" > <!-- Ajuste manual con margin-top -->
                    <i class="bi bi-cart3" style="font-size: 2rem; color: black;"></i>
                </div>
                <div>
                    <h5 class="mb-2" style="margin-top: 10px;">DELIVERY GRATUITO</h5>
                    <p class="text-muted">Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                </div>
            </div>
        </div>

       <div class="col-lg-3 col-md-6 pb-3">
            <div class="icon-box d-flex align-items-start">
                <div class="me-3" > <!-- Ajuste manual con margin-top -->
                    <i class="bi bi-shield-plus" style="font-size: 2rem; color: black;"></i>
                </div>
                <div>
                    <h5 class="mb-2" style="margin-top: 10px;">SEGURIDAD</h5>
                    <p class="text-muted">Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                </div>
            </div>
        </div>
          
       <div class="col-lg-3 col-md-6 pb-3">
        <div class="icon-box d-flex align-items-start">
            <div class="me-3" > <!-- Ajuste manual con margin-top -->
                <i class="bi bi-bookmark-check" style="font-size: 2rem; color: black;"></i>
            </div>
            <div>
                <h5 class="mb-2" style="margin-top: 10px;">CALIDAD DE PRODUCTOS</h5>
                <p class="text-muted">Consectetur adipi elit lorem ipsum dolor sit amet.</p>
            </div>
        </div>
    </div>
       
       <div class="col-lg-3 col-md-6 pb-3">
        <div class="icon-box d-flex align-items-start">
            <div class="me-3" > <!-- Ajuste manual con margin-top -->
                <i  class="bi bi-fire" style="font-size: 2rem; color: black;"></i>
            </div>
            <div>
                <h5 class="mb-2" style="margin-top: 10px;">OFERTAS EXCLUSIVAS</h5>
                <p class="text-muted">Consectetur adipi elit lorem ipsum dolor sit amet.</p>
            </div>
        </div>
    </div>      
      </div>
    </div>
  </section>
  
<!--Seccion de carrusel Pages whiskies-->
 <section id="mobile-products" class="product-store position-relative padding-large no-padding-top">
    <div class="container" style="padding-top: 20px">
        
      <div class="row">
          
        <div class="display-header d-flex justify-content-between pb-">
          <h2 class="display-7 text-dark text-uppercase">Wiskies</h2>
          <div class="btn-right">
              <a href="../../Pages/sin-registrados/bebidas_alcoholicas/whisky.jsp"
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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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


 
<!--Seccion de carrusel Pages Cervezas-->
   <section id="mobile-products" class="product-store position-relative padding-large no-padding-top">
    <div class="container" style="padding-top: 20px">
        
      <div class="row">
          
        <div class="display-header d-flex justify-content-between pb-">
          <h2 class="display-7 text-dark text-uppercase">Wiskies</h2>
          <div class="btn-right">
              <a href="../../Pages/sin-registrados/bebidas_alcoholicas/whisky.jsp"
              class="btn btn-medium btn-normal text-uppercase">Ir a comprar</a>
          </div>
        </div>
          
        <section class="container related-products">
          <div id="relatedProductsCarouselDos" class="carousel slide carousel_prod_rel" data-bs-ride="carousel">
            
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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

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
                        <h3 style="font-size: 15px;font-weight: bold">Whisky JOHNNIE WALKER Blue Label Botella 750ml</h3>
                        <p class="card-text">S/. 950.00</p>

                      </div>
                    </div>
                  </div>
                  
                  
                  <!-- Añade más productos aquí -->
                </div>
              </div>
            </div>

            <!-- Controles de navegación -->
            <button class="carousel-control-prev" type="button" data-bs-target="#relatedProductsCarouselDos"
              data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#relatedProductsCarouselDos"
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
  
  
<!--Seccion of notice-->
  <section id="latest-blog" class="padding-large">
    <div class="container" style="padding-top: 100px;padding-bottom: 80px">
      <div class="row">
          
        <div class="display-header d-flex justify-content-between pb-3">
          <h2 class="display-7 text-dark text-uppercase">LO ÚLTIMO DE LOS LICORES DEL MUNDO</h2>
          <div class="btn-right">
            <a href="blog.html" class="btn btn-medium btn-normal text-uppercase">Leer blog</a>
          </div>
          
        </div>
          
        <div class="post-grid d-flex flex-wrap justify-content-between" style="padding-top: 30px">
          
          <div class="col-lg-4 col-sm-12">

            <div class="card border-none me-3">

              <div class="card-image">
                  <img src="../../assets/img/index/img-notice-one.webp" alt="" class="img-fluid">
              </div>
            </div>

            <div class="card-body text-uppercase" style="padding-top: 20px">
              <div class="card-meta text-muted">
                <span class="meta-date"></span>
                <span class="meta-category"></span>
              </div>

              <h3 class="card-title" >
                <a href="#" style="color: black;">El Macallan: Un Viaje por la Excelencia del Whisky Escoces</a>

              </h3>
            </div>
          </div>

          <div class="col-lg-4 col-sm-12">
            <div class="card border-none me-3">
              <div class="card-image">
                  <img src="../../assets/img/index/img-notice-two.webp" alt="" class="img-fluid">
              </div>
            </div>
            <div class="card-body text-uppercase">
              <div class="card-meta text-muted">
                <span class="meta-date"></span>
                <span class="meta-category"></span>
              </div>
              <h3 class="card-title">

                <a href="#" style="color: black">Jagermeister: Un Viaje por el Mundo de un Licor Legendario</a>

              </h3>
            </div>
          </div>
            
          <div class="col-lg-4 col-sm-12">
            <div class="card border-none me-3">
              <div class="card-image">
                  <img src="../../assets/img/index/img-notice-thre.webp" alt="" class="img-fluid">
              </div>
            </div>
            <div class="card-body text-uppercase">
              <div class="card-meta text-muted">
                <span class="meta-date"></span>
                <span class="meta-category"></span>
              </div>
              <h3 class="card-title">

                <a href="#" style="color:black">Como un Buen Calzado Mejora Tu Experiencia de Cata</a>
              </h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

 <jsp:include page="../components/footer.jsp"/>


</body>

</html>