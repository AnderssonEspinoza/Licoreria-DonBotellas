
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body>
     
<header class="main-header grid">
    <nav class="navbar navbar-expand-lg navbar-black bg-black">
            <div class="container-fluid">
                    <!-- Logo -->
                    <div> </div>
                    <div class="image-container col">
                            <div class="grid text-center" style="row-gap: 0;">
                                    <div class="imagen">
                                            <a href="../../generales/index-registrados.jsp" class="logo-superior">
                                                    <img src="../../../assets/img/logos/logo-superior.png" id="imagen-ocultar">
                                            </a>
                                    </div>
                                    <div class="imagen">
                                            <a href="../../generales/index-registrados.jsp" class="logo-inferior">
                                                    <img src="../../../assets/img/logos/logo-inferior.png">
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
                                                    data-bs-toggle="dropdown"><img src="../../../assets/img/logos/img_login.png" alt=""></a>
                                            <ul class="dropdown-menu ">
                                                    <li><a class="dropdown-item"></a>Mi Cuenta</li>
                                                    <li><a class="dropdown-item"></a>Mis Compras</li>
                                                    <li><a class="dropdown-item"></a>Cerrar Sesión</li>
                                            </ul>
                                    </li>
                                    <li class="nav-item">
                                            <a class="nav-link " href="../../../Pages/registrados/carritoCliente.html">
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
                                            <a class="nav-link dropdown-toggle palabra-color" href="#" role="button"
                                                    data-bs-toggle="dropdown">Bebidas Alcoholicas</a>
                                            <ul class="dropdown-menu ">
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_alcoholicas/vino.html">Vino</a></li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_alcoholicas/ron.html">Ron</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_alcoholicas/whisky.html">Whisky</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_alcoholicas/espumante.html">Espumante</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_alcoholicas/vodka.html">Vodka</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_alcoholicas/Pisco.html">Pisco</a>
                                                    </li>
                                            </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Bebidas
                                                    No Alcoholicas</a>
                                            <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_no_alcoholicas/gaseosas.html">Gaseosa</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_no_alcoholicas/agua.html">Aguas</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_no_alcoholicas/energizante.html">Energizante
                                                            </a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_no_alcoholicas/jugo.html">Jugos</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/bebidas_no_alcoholicas/Rehidratante.html">Rehidratante
                                                            </a></li>
                                            </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" role="button"
                                                    data-bs-toggle="dropdown">Cerveza</a>
                                            <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/cerveza/pilsen.html">Pilsen</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/cerveza/Cusqueña.html">Cusqueña</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/cerveza/cistral.html">Cristal</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/cerveza/heineken.html">Heineken</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/cerveza/godlen.html">Godlen </a>
                                                    </li>
                                            </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" role="button"
                                                    data-bs-toggle="dropdown">Cigarros y Vapes</a>
                                            <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/cigarros_y_vapes/cigarros_regulare.html">Cigarros
                                                                    Regulares</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/cigarros_y_vapes/cigarros_electricos.html">Cigarros
                                                                    Electronicos</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/cigarros_y_vapes/complementos.html">Complementos</a>
                                                    </li>
                                            </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Listos
                                                    Para Tomar</a>
                                            <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/listo_para_tomar/smirnoff.html">Smirnoff</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/listo_para_tomar/four_loko.html">Four
                                                                    Loko</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/listo_para_tomar/tabernero.html">Tabernero</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/listo_para_tomar/mikes.html">Mikes</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/listo_para_tomar/piscano.html">Piscano
                                                            </a>
                                                    </li>
                                            </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Piqueos
                                                    y Snacks</a>
                                            <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item"
                                                           href="../../../Pages/sin-registrados/Piqueos_y_Snacks/papa.html">Papas</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/Piqueos_y_Snacks/piqueos.html">Piqueos</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/Piqueos_y_Snacks/habas_y_mani.html">Habas y
                                                                    Mani</a></li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/Piqueos_y_Snacks/frutos_secos.html">Frutos
                                                                    Secos</a></li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/registrados/Piqueos_y_Snacks/chifles_camotes_yukas.html">Chifles/Camotes/Yucas</a>
                                                    </li>
                                            </ul>
                                    </li>
                            </ul>
                    </section>
            </div>
    </nav>
</header>
