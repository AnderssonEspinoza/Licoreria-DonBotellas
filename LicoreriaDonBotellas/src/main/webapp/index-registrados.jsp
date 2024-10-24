<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Don Botellas</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">

        <link rel="stylesheet" href="css/style.css">

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/styleIndex.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <!-- script
          ================================================== -->
        <script src="js/modernizr.js"></script>
    </head>

    <body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true"
          tabindex="0">
        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="search" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
        <title>Search</title>
        <path fill="#FFFFFF"
              d="M19 3C13.488 3 9 7.488 9 13c0 2.395.84 4.59 2.25 6.313L3.281 27.28l1.439 1.44l7.968-7.969A9.922 9.922 0 0 0 19 23c5.512 0 10-4.488 10-10S24.512 3 19 3zm0 2c4.43 0 8 3.57 8 8s-3.57 8-8 8s-8-3.57-8-8s3.57-8 8-8z" />
    </symbol>

    <symbol xmlns="http://www.w3.org/2000/svg" id="user" viewBox="0 0 16 16">
        <path fill="#FFFFFF" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="cart" viewBox="0 0 16 16">
        <path fill="#FFFFFF"
              d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
    </symbol>
    <svg xmlns="http://www.w3.org/2000/svg" id="chevron-left" viewBox="0 0 16 16">
    <path fill-rule="evenodd"
          d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
    </svg>
    <symbol xmlns="http://www.w3.org/2000/svg" id="chevron-right" viewBox="0 0 16 16">
        <path fill-rule="evenodd"
              d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="cart-outline" viewBox="0 0 16 16">
        <path
            d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="quality" viewBox="0 0 16 16">
        <path
            d="M9.669.864 8 0 6.331.864l-1.858.282-.842 1.68-1.337 1.32L2.6 6l-.306 1.854 1.337 1.32.842 1.68 1.858.282L8 12l1.669-.864 1.858-.282.842-1.68 1.337-1.32L13.4 6l.306-1.854-1.337-1.32-.842-1.68L9.669.864zm1.196 1.193.684 1.365 1.086 1.072L12.387 6l.248 1.506-1.086 1.072-.684 1.365-1.51.229L8 10.874l-1.355-.702-1.51-.229-.684-1.365-1.086-1.072L3.614 6l-.25-1.506 1.087-1.072.684-1.365 1.51-.229L8 1.126l1.356.702 1.509.229z" />
        <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1 4 11.794z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="price-tag" viewBox="0 0 16 16">
        <path d="M6 4.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm-1 0a.5.5 0 1 0-1 0 .5.5 0 0 0 1 0z" />
        <path
            d="M2 1h4.586a1 1 0 0 1 .707.293l7 7a1 1 0 0 1 0 1.414l-4.586 4.586a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 1 6.586V2a1 1 0 0 1 1-1zm0 5.586 7 7L13.586 9l-7-7H2v4.586z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="shield-plus" viewBox="0 0 16 16">
        <path
            d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z" />
        <path
            d="M8 4.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V9a.5.5 0 0 1-1 0V7.5H6a.5.5 0 0 1 0-1h1.5V5a.5.5 0 0 1 .5-.5z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="star-fill" viewBox="0 0 16 16">
        <path
            d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="star-empty" viewBox="0 0 16 16">
        <path
            d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="star-half" viewBox="0 0 16 16">
        <path
            d="M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="quote" viewBox="0 0 24 24">
        <path fill="currentColor" d="m15 17l2-4h-4V6h7v7l-2 4h-3Zm-9 0l2-4H4V6h7v7l-2 4H6Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="facebook" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M9.198 21.5h4v-8.01h3.604l.396-3.98h-4V7.5a1 1 0 0 1 1-1h3v-4h-3a5 5 0 0 0-5 5v2.01h-2l-.396 3.98h2.396v8.01Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="youtube" viewBox="0 0 32 32">
        <path fill="currentColor"
              d="M29.41 9.26a3.5 3.5 0 0 0-2.47-2.47C24.76 6.2 16 6.2 16 6.2s-8.76 0-10.94.59a3.5 3.5 0 0 0-2.47 2.47A36.13 36.13 0 0 0 2 16a36.13 36.13 0 0 0 .59 6.74a3.5 3.5 0 0 0 2.47 2.47c2.18.59 10.94.59 10.94.59s8.76 0 10.94-.59a3.5 3.5 0 0 0 2.47-2.47A36.13 36.13 0 0 0 30 16a36.13 36.13 0 0 0-.59-6.74ZM13.2 20.2v-8.4l7.27 4.2Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="twitter" viewBox="0 0 256 256">
        <path fill="currentColor"
              d="m245.66 77.66l-29.9 29.9C209.72 177.58 150.67 232 80 232c-14.52 0-26.49-2.3-35.58-6.84c-7.33-3.67-10.33-7.6-11.08-8.72a8 8 0 0 1 3.85-11.93c.26-.1 24.24-9.31 39.47-26.84a110.93 110.93 0 0 1-21.88-24.2c-12.4-18.41-26.28-50.39-22-98.18a8 8 0 0 1 13.65-4.92c.35.35 33.28 33.1 73.54 43.72V88a47.87 47.87 0 0 1 14.36-34.3A46.87 46.87 0 0 1 168.1 40a48.66 48.66 0 0 1 41.47 24H240a8 8 0 0 1 5.66 13.66Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="instagram" viewBox="0 0 256 256">
        <path fill="currentColor"
              d="M128 80a48 48 0 1 0 48 48a48.05 48.05 0 0 0-48-48Zm0 80a32 32 0 1 1 32-32a32 32 0 0 1-32 32Zm48-136H80a56.06 56.06 0 0 0-56 56v96a56.06 56.06 0 0 0 56 56h96a56.06 56.06 0 0 0 56-56V80a56.06 56.06 0 0 0-56-56Zm40 152a40 40 0 0 1-40 40H80a40 40 0 0 1-40-40V80a40 40 0 0 1 40-40h96a40 40 0 0 1 40 40ZM192 76a12 12 0 1 1-12-12a12 12 0 0 1 12 12Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="linkedin" viewBox="0 0 24 24">
        <path fill="currentColor"
              d="M6.94 5a2 2 0 1 1-4-.002a2 2 0 0 1 4 .002zM7 8.48H3V21h4V8.48zm6.32 0H9.34V21h3.94v-6.57c0-3.66 4.77-4 4.77 0V21H22v-7.93c0-6.17-7.06-5.94-8.72-2.91l.04-1.68z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="nav-icon" viewBox="0 0 16 16">
        <path
            d="M14 10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0 0 1h7a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0 0 1h11a.5.5 0 0 0 .5-.5z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="close" viewBox="0 0 16 16">
        <path
            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z" />
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="navbar-icon" viewBox="0 0 16 16">
        <path
            d="M14 10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0 0 1h7a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0 0 1h11a.5.5 0 0 0 .5-.5z" />
    </symbol>
    </svg>



    <header class="main-header grid">
        <nav class="navbar navbar-expand-lg navbar-black bg-black">
            <div class="container-fluid">
                <!-- Logo -->

                <div class="image-container col">
                    <div class="grid text-center" style="row-gap: 0;">
                        <div> 
                            <a href="index-registrados.jsp">
                                <img src="img/logo.png" class="logo-superior" id="imagen-ocultar">
                            </a>
                        </div>
                        <div>
                            <a href="index-registrados.jsp">
                                <img src="img/Logo Moda Femenina Minimalista Negro y Rosa (1).png" class="logo-inferior">
                            </a>
                        </div>

                    </div>
                </div>

                <!-- Hamburger Menu (and other icons like search, profile, cart) -->
                <div class="d-flex align-items-center">
                    <ul class="nav justify-content-end me-3">
                        <li class="search-item  nav-item ">
                            <a href="#" class="search-button nav-link ">
                                <i class="bi bi-search"></i>
                            </a>
                        </li>
                        <li class=" nav-item">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle palabra-color img-login" href="#" role="button" data-bs-toggle="dropdown"><img src="img/img_login.png" alt=""></a>
                            <ul class="dropdown-menu ">
                                <li><a class="dropdown-item"></a>Mi Cuenta</li>
                                <li><a class="dropdown-item"></a>Mis Compras</li>
                                <li><a class="dropdown-item"></a>Cerrar Sesion</li>
                            </ul>
                        </li>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Pages/registrados/carritoCliente.html">
                                <i class="bi bi-cart-fill"></i>
                            </a>
                        </li>
                    </ul>

                    <!-- Hamburger button in the same row -->
                    <button class="boton-superior navbar-toggler nav-link" type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#menuLateral">
                        <i class="bi bi-list"></i>
                    </button>
                </div>
                <%
                    String nombreUsuario = (String) session.getAttribute("nombreUsuario");
                    if (nombreUsuario != null) {
                %>
                <a class="nav-link" href="#">Bienvenido, <%= nombreUsuario%></a>
                <% } else {%>
                <a class="nav-link" href="login.jsp">
                    <i class="fas fa-user fa-2x"></i>
                </a>
                <% } %>
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
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_alcoholicas/vino.html">Vino</a></li>
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_alcoholicas/ron.html">Ron</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_alcoholicas/whisky.html">Whisky</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_alcoholicas/espumante.html">Espumante</a></li>
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_alcoholicas/vodka.html">Vodka</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_alcoholicas/Pisco.html">Pisco</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Bebidas
                                No Alcoholicas</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_no_alcoholicas/gaseosas.html">Gaseosa</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_no_alcoholicas/agua.html">Aguas</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_no_alcoholicas/energizante.html">Energizante
                                    </a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_no_alcoholicas/jugo.html">Jugos</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/bebidas_no_alcoholicas/Rehidratante.html">Rehidratante
                                    </a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Cerveza</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="Pages/registrados/cerveza/pilsen.html">Pilsen</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/cerveza/CusqueÃ±a.html">CusqueÃ±a</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/cerveza/cistral.html">Cristal</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/cerveza/heineken.html">Heineken</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/cerveza/godlen.html">Godlen </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Cigarros y Vapes</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="Pages/registrados/cigarros_y_vapes/cigarros_regulare.html">Cigarros
                                        Regulares</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/cigarros_y_vapes/cigarros_electricos.html">Cigarros
                                        Electronicos</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/cigarros_y_vapes/complementos.html">Complementos</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Listos
                                Para Tomar</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="Pages/registrados/listo_para_tomar/smirnoff.html">Smirnoff</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/listo_para_tomar/four_loko.html">Four
                                        Loko</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/listo_para_tomar/tabernero.html">Tabernero</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/listo_para_tomar/mikes.html">Mikes</a></li>
                                <li><a class="dropdown-item" href="Pages/registrados/listo_para_tomar/piscano.html">Piscano </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Piqueos
                                y Snacks</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="Pages/registrados/Piqueos_y_Snacks/papa.html">Papas</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/Piqueos_y_Snacks/piqueos.html">Piqueos</a>
                                </li>
                                <li><a class="dropdown-item" href="Pages/registrados/Piqueos_y_Snacks/habas_y_mani.html">Habas y
                                        Mani</a></li>
                                <li><a class="dropdown-item" href="Pages/registrados/Piqueos_y_Snacks/frutos_secos.html">Frutos
                                        Secos</a></li>
                                <li><a class="dropdown-item"
                                       href="Pages/registrados/Piqueos_y_Snacks/chifles_camotes_yukas.html">Chifles/Camotes/Yucas</a>
                                </li>
                            </ul>
                        </li>

                    </ul>
                </section>
            </div>
        </nav>
    </header>
    <!--Secccion del carrusel de promociones-->
    <section id="billboard" class="position-relative overflow-hidden bg-light-blue">

        <div class="swiper main-swiper">

            <div class="swiper-wrapper">

                <div class="swiper-slide">

                    <div class="container">
                        <div class="row d-flex align-items-center">
                            <div class="col-md-6">

                                <div class="banner-content">
                                    <h1 class="display-2 text-uppercase text-white pb-5">Licores al por mayor</h1>
                                    <a class="btn btn-medium btn-dark text-uppercase btn-rounded-none">contactar</a>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <div class="image-holder">
                                    <img src="img/index/banne-jagger.png" style="opacity: 0.1;" alt="banner">
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

                <div class="swiper-slide">

                    <div class="container">
                        <div class="row d-flex flex-wrap align-items-center">
                            <div class="col-md-6">
                                <div class="banner-content">
                                    <h1 class="display-2 text-uppercase text-white pb-5 ">Los mejores wisikies</h1>
                                    <a class="btn btn-medium btn-dark text-uppercase btn-rounded-none">Shop Product</a>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="image-holder">
                                    <img src="img/index/banne-jagger.png" style="opacity: 0.1;" alt="banner">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="swiper-icon swiper-arrow swiper-arrow-prev">
            <svg class="chevron-left">
            <use xlink:href="#chevron-left" />
            </svg>
        </div>
        <div class="swiper-icon swiper-arrow swiper-arrow-next">
            <svg class="chevron-right">
            <use xlink:href="#chevron-right" />
            </svg>
        </div>
    </section>
    <!--Section de info de la empresa-->
    <section id="company-services" class="padding-large">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 pb-3">
                    <div class="icon-box d-flex">
                        <div class="icon-box-icon pe-3 pb-3">
                            <svg class="cart-outline">
                            <use xlink:href="#cart-outline" />
                            </svg>
                        </div>
                        <div class="icon-box-content">
                            <h3 class="card-title text-uppercase text-dark">Delivery gratuito</h3>
                            <p>Ãnete a nuestro programa de fidelidad y obtÃ©n envÃ­o gratuito
                                en todas tus compras.
                                Â¡Porque valoramos tu lealtad!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 pb-3">
                    <div class="icon-box d-flex">
                        <div class="icon-box-icon pe-3 pb-3">
                            <svg class="quality">
                            <use xlink:href="#quality" />
                            </svg>
                        </div>
                        <div class="icon-box-content">
                            <h3 class="card-title text-uppercase text-dark">Descubre nuestros licores premium</h3>
                            <p>Destilados Ãºnicos hasta vinos exquisitos, ofrecemos lo mejor en
                                licores para cada ocasiÃ³n
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 pb-3">
                    <div class="icon-box d-flex">
                        <div class="icon-box-icon pe-3 pb-3">
                            <svg class="price-tag">
                            <use xlink:href="#price-tag" />
                            </svg>
                        </div>
                        <div class="icon-box-content">
                            <h3 class="card-title text-uppercase text-dark">Ofertas especiales en licores seleccionados </h3>
                            <p>Cada semana, destacamos Pages seleccionados para que puedas disfrutar
                                de precios especiales en tus bebidas favoritas.
                                Â¡No te pierdas la oportunidad de ahorrar en lo que mÃ¡s te gusta!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 pb-3">
                    <div class="icon-box d-flex">
                        <div class="icon-box-icon pe-3 pb-3">
                            <svg class="shield-plus">
                            <use xlink:href="#shield-plus" />
                            </svg>
                        </div>
                        <div class="icon-box-content">
                            <h3 class="card-title text-uppercase text-dark">100% de seguridad en tu compra</h3>
                            <p>Realiza tus compras con total confianza. Utilizamos tecnologÃ­as de encriptaciÃ³n
                                avanzadas para proteger tu informaciÃ³n personal y de pago.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Secciton de carrusel de Pages Wiskies-->
    <section id="mobile-products" class="product-store position-relative padding-large no-padding-top">
        <div class="container">
            <div class="row">

                <div class="display-header d-flex justify-content-between pb-3">
                    <h2 class="display-7 text-dark text-uppercase">Wiskies</h2>
                    <div class="btn-right">
                        <a href="Pages/registrados/bebidas_alcoholicas/whisky.html" class="btn btn-medium btn-normal text-uppercase">Ir a comprar</a>
                    </div>
                </div>

                <div class="swiper product-swiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="product-card position-relative">
                                <div class="image-holder">
                                    <img src="img/index/blueLabel.webp" alt="product-item" class="img-fluid">
                                </div>
                                <div class="cart-concern position-absolute">
                                    <div class="cart-button d-flex">
                                        <a href="#" class="btn btn-medium btn-black">Añadir al carrito<svg class="cart-outline">
                                            <use xlink:href="#cart-outline"></use>
                                            </svg></a>
                                    </div>
                                </div>
                                <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                    <h3 class="card-title text-uppercase">
                                        <a href="#">Blue Label</a>
                                    </h3>
                                    <span class="item-price text-primary">precio</span>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card position-relative">
                                <div class="image-holder">
                                    <img src="img/index/blueLabel.webp" alt="product-item" class="img-fluid">
                                </div>
                                <div class="cart-concern position-absolute">
                                    <div class="cart-button d-flex">
                                        <a href="#" class="btn btn-medium btn-black">Añadir al carrito<svg class="cart-outline">
                                            <use xlink:href="#cart-outline"></use>
                                            </svg></a>
                                    </div>
                                </div>
                                <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                    <h3 class="card-title text-uppercase">
                                        <a href="#">Blue Label</a>
                                    </h3>
                                    <span class="item-price text-primary">precio</span>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card position-relative">
                                <div class="image-holder">
                                    <img src="img/index/blueLabel.webp" alt="product-item" class="img-fluid">
                                </div>
                                <div class="cart-concern position-absolute">
                                    <div class="cart-button d-flex">
                                        <a href="#" class="btn btn-medium btn-black">Añadir al carrito<svg class="cart-outline">
                                            <use xlink:href="#cart-outline"></use>
                                            </svg></a>
                                    </div>
                                </div>
                                <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                    <h3 class="card-title text-uppercase">
                                        <a href="#">Blue label</a>
                                    </h3>
                                    <span class="item-price text-primary">precio</span>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card position-relative">
                                <div class="image-holder">
                                    <img src="img/index/blueLabel.webp" alt="product-item" class="img-fluid">
                                </div>
                                <div class="cart-concern position-absolute">
                                    <div class="cart-button d-flex">
                                        <a href="#" class="btn btn-medium btn-black">Añadir al carrito<svg class="cart-outline">
                                            <use xlink:href="#cart-outline"></use>
                                            </svg></a>
                                    </div>
                                </div>
                                <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                    <h3 class="card-title text-uppercase">
                                        <a href="#">Blue label</a>
                                    </h3>
                                    <span class="item-price text-primary">precio</span>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card position-relative">
                                <div class="image-holder">
                                    <img src="img/index/blueLabel.webp" alt="product-item" class="img-fluid">
                                </div>
                                <div class="cart-concern position-absolute">
                                    <div class="cart-button d-flex">
                                        <a href="#" class="btn btn-medium btn-black">Añadir al carrito<svg class="cart-outline">
                                            <use xlink:href="#cart-outline"></use>
                                            </svg></a>
                                    </div>
                                </div>
                                <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                    <h3 class="card-title text-uppercase">
                                        <a href="#">Blue label</a>
                                    </h3>
                                    <span class="item-price text-primary">precio</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="swiper-pagination position-absolute text-center"></div>
    </section>
    <!--Secction of carrusel de Vinos -->
    <section id="smart-watches" class="product-store padding-large position-relative">
        <div class="container">
            <div class="row">
                <div class="display-header d-flex justify-content-between pb-3">
                    <h2 class="display-7 text-dark text-uppercase">Vinos</h2>
                    <div class="btn-right">
                        <a href="Pages/registrados/bebidas_alcoholicas/vino.html" class="btn btn-medium btn-normal text-uppercase">Ir a comprar</a>
                    </div>
                </div>
                <div class="swiper product-watch-swiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="product-card position-relative">
                                <div class="image-holder">
                                    <img src="img/index/vino.webp" alt="product-item" class="img-fluid">
                                </div>
                                <div class="cart-concern position-absolute">
                                    <div class="cart-button d-flex">
                                        <a href="#" class="btn btn-medium btn-black">Añadir al carrito<svg class="cart-outline">
                                            <use xlink:href="#cart-outline"></use>
                                            </svg></a>
                                    </div>
                                </div>
                                <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                    <h3 class="card-title text-uppercase">
                                        <a href="#">vino</a>
                                    </h3>
                                    <span class="item-price text-primary">precio</span>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card position-relative">
                                <div class="image-holder">
                                    <img src="img/index/vino.webp" alt="product-item" class="img-fluid">
                                </div>
                                <div class="cart-concern position-absolute">
                                    <div class="cart-button d-flex">
                                        <a href="#" class="btn btn-medium btn-black">Añadir al carrito<svg class="cart-outline">
                                            <use xlink:href="#cart-outline"></use>
                                            </svg></a>
                                    </div>
                                </div>
                                <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                    <h3 class="card-title text-uppercase">
                                        <a href="#">vino</a>
                                    </h3>
                                    <span class="item-price text-primary">precio</span>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card position-relative">
                                <div class="image-holder">
                                    <img src="img/index/vino.webp" alt="product-item" class="img-fluid">
                                </div>
                                <div class="cart-concern position-absolute">
                                    <div class="cart-button d-flex">
                                        <a href="#" class="btn btn-medium btn-black">Añadir al carrito<svg class="cart-outline">
                                            <use xlink:href="#cart-outline"></use>
                                            </svg></a>
                                    </div>
                                </div>
                                <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                    <h3 class="card-title text-uppercase">
                                        <a href="#">vino</a>
                                    </h3>
                                    <span class="item-price text-primary">precio</span>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card position-relative">
                                <div class="image-holder">
                                    <img src="img/index/vino.webp" alt="product-item" class="img-fluid">
                                </div>
                                <div class="cart-concern position-absolute">
                                    <div class="cart-button d-flex">
                                        <a href="#" class="btn btn-medium btn-black">Añadir al carrito<svg class="cart-outline">
                                            <use xlink:href="#cart-outline"></use>
                                            </svg></a>
                                    </div>
                                </div>
                                <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                    <h3 class="card-title text-uppercase">
                                        <a href="#">vino</a>
                                    </h3>
                                    <span class="item-price text-primary">precio</span>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card position-relative">
                                <div class="image-holder">
                                    <img src="img/index/vino.webp" alt="product-item" class="img-fluid">
                                </div>
                                <div class="cart-concern position-absolute">
                                    <div class="cart-button d-flex">
                                        <a href="#" class="btn btn-medium btn-black">Añadir al carrito<svg class="cart-outline">
                                            <use xlink:href="#cart-outline"></use>
                                            </svg></a>
                                    </div>
                                </div>
                                <div class="card-detail d-flex justify-content-between pt-3">
                                    <h3 class="card-title text-uppercase">
                                        <a href="#">black watch</a>
                                    </h3>
                                    <span class="item-price text-primary">$750</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="swiper-pagination position-absolute text-center"></div>
    </section>
    <!--Section of notice-->
    <section id="latest-blog" class="padding-large">
        <div class="container">
            <div class="row">
                <div class="display-header d-flex justify-content-between pb-3">
                    <h2 class="display-7 text-dark text-uppercase">LO ÃLTIMO DE LOS LICORES DEL MUNDO</h2>
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
                                <a href="#">El Macallan: Un Viaje por la Excelencia del Whisky EscocÃ©s</a>
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
                                <a href="#">JÃ¤germeister: Un Viaje por el Mundo de un Licor Legendario</a>
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
                                <a href="#">CÃ³mo un Buen Calzado Mejora Tu Experiencia de Cata</a>
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--Testimonios de los clientes -->
    <section id="testimonials" class="position-relative">
        <div class="container">
            <div class="row">
                <div class="review-content position-relative">
                    <div class="swiper-icon swiper-arrow swiper-arrow-prev position-absolute d-flex align-items-center">
                        <svg class="chevron-left">
                        <use xlink:href="#chevron-left" />
                        </svg>
                    </div>
                    <div class="swiper testimonial-swiper">
                        <div class="quotation text-center">
                            <svg class="quote">
                            <use xlink:href="#quote" />
                            </svg>
                        </div>
                        <div class="swiper-wrapper">
                            <div class="swiper-slide text-center d-flex justify-content-center">
                                <div class="review-item col-md-10">
                                    <i class="icon icon-review"></i>
                                    <blockquote>"Â¡Estoy muy satisfecho con mi compra en DonBotella!
                                        La selecciÃ³n de licores es excelente y el proceso de compra
                                        fue fÃ¡cil. Mi pedido llegÃ³ rÃ¡pidamente y en perfectas condiciones.
                                        Sin duda, volverÃ© a comprar aquÃ­. Â¡Altamente recomendado!"
                                    </blockquote>
                                    <div class="rating">
                                        <svg class="star star-fill">
                                        <use xlink:href="#star-fill"></use>
                                        </svg>
                                        <svg class="star star-fill">
                                        <use xlink:href="#star-fill"></use>
                                        </svg>
                                        <svg class="star star-fill">
                                        <use xlink:href="#star-fill"></use>
                                        </svg>
                                        <svg class="star star-half">
                                        <use xlink:href="#star-half"></use>
                                        </svg>
                                        <svg class="star star-empty">
                                        <use xlink:href="#star-empty"></use>
                                        </svg>
                                    </div>
                                    <div class="author-detail">
                                        <div class="name text-dark text-uppercase pt-2">Emma Chamberlin</div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide text-center d-flex justify-content-center">
                                <div class="review-item col-md-10">
                                    <i class="icon icon-review"></i>
                                    <blockquote>
                                        "Â¡Excelente experiencia de compra! EncontrÃ©
                                        licores Ãºnicos que no habÃ­a visto en otros sitios. La entrega
                                        fue rÃ¡pida y todo llegÃ³ en perfectas condiciones.
                                        Definitivamente volverÃ© a comprar. Â¡Lo recomiendo a todos!"
                                    </blockquote>
                                    <div class="rating">
                                        <svg class="star star-fill">
                                        <use xlink:href="#star-fill"></use>
                                        </svg>
                                        <svg class="star star-fill">
                                        <use xlink:href="#star-fill"></use>
                                        </svg>
                                        <svg class="star star-fill">
                                        <use xlink:href="#star-fill"></use>
                                        </svg>
                                        <svg class="star star-half">
                                        <use xlink:href="#star-half"></use>
                                        </svg>
                                        <svg class="star star-empty">
                                        <use xlink:href="#star-empty"></use>
                                        </svg>
                                    </div>
                                    <div class="author-detail">
                                        <div class="name text-dark text-uppercase pt-2">Jennie Rose</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-icon swiper-arrow swiper-arrow-next position-absolute d-flex align-items-center">
                        <svg class="chevron-right">
                        <use xlink:href="#chevron-right" />
                        </svg>
                    </div>
                </div>
            </div>
        </div>
        <div class="swiper-pagination"></div>
    </section>
    <!--Section formulario de registro de cliente-->
    <section id="subscribe" class="container-grid padding-large position-relative overflow-hidden">
        <div class="container">
            <div class="row">
                <div
                    class="subscribe-content bg-dark d-flex flex-wrap justify-content-center align-items-center padding-medium">
                    <div class="col-md-6 col-sm-12">
                        <div class="display-header pe-3">
                            <h2 class="display-7 text-uppercase text-light">Subscrite </h2>
                            <p>"Â¡SuscrÃ­bete y recibe las Ãºltimas novedades, promociones exclusivas y recomendaciones de
                                licores directamente en tu bandeja de entrada!"</p>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-12">
                        <form class="subscription-form validate">
                            <div class="input-group flex-wrap">
                                <input class="form-control btn-rounded-none" type="email" name="EMAIL"
                                       placeholder="Your email address here" required="">
                                <button class="btn btn-medium btn-primary text-uppercase btn-rounded-none" type="submit"
                                        name="subscribe">Subscribirse</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--Secction footer-->
    <footer id="footer" class="overflow-hidden bg-black" style="padding-top: 25px;">
        <div class="container">
            <div class="row">
                <div class="footer-top-area">
                    <div class="row d-flex flex-wrap justify-content-between">
                        <div class="col-lg-3 col-sm-6 pb-3">
                            <div class="footer-menu">
                                <img src="img/logo.png" style="width: 50%;" alt="logo">
                                <p>"Calidad y variedad en licores a un clic de distancia. Â¡Haz tu pedido hoy y
                                    disfruta
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
                                        <a href="#">Â¿Por que? La Canasteri?a?</a>
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
                                <p><a href="mailto:">yourinfo@gmail.com</a>
                                </p>
                                <p>necesita ayuda? solo llamanos. <a href="">+55 111 222 333 44</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </footer>


    <script src="js/ocultacionDeLogo.js"></script>
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
</body>

</html>