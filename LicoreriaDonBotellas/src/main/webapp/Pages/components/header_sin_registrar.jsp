
<%@page contentType="text/html" pageEncoding="UTF-8"%>
     
<header class="main-header grid">
    <nav class="navbar navbar-expand-lg navbar-black bg-black">
            <div class="container-fluid">
                    <!-- Logo -->
                    <div> </div>
                    <div class="image-container col">
                            <div class="grid text-center" style="row-gap: 0;">
                                    <div class="imagen">
                                        <a href="../../../Pages/generales/index-sin-registrados.jsp" class="logo-superior">
                                                    <img src="../../../assets/img/logos/logo-superior.png" id="imagen-ocultar">
                                            </a>
                                    </div>
                                    <div class="imagen">
                                        <a href="../../../Pages/generales/index-sin-registrados.jsp" class="logo-inferior">
                                                    <img src="../../../assets/img/logos/logo-inferior.png">
                                            </a>
                                    </div>

                            </div>
                    </div>

                    <!-- Hamburger Menu (and other icons like search, profile, cart) -->
                    <div class="d-flex align-items-center">
                            <ul class="nav justify-content-end me-3">
                                    <li class="nav-item search-item">
                                            <a href="#" class="search-button nav-link">
                                                    <i class="bi bi-search"></i>
                                            </a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link " href="../../../Pages/generales/LoginDonBotella/login.jsp">
                                                <i class="bi bi-person-fill"></i>
                                            </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " href="../../../Pages/sin-registrados/carrito.jsp">
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
                                                                    href="../../../Pages/sin-registrados/bebidas_alcoholicas/vino.jsp">Vino</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/bebidas_alcoholicas/ron.jsp">Ron</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/bebidas_alcoholicas/whisky.jsp">Whisky</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/bebidas_alcoholicas/espumante.jsp">Espumante</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/bebidas_alcoholicas/vodka.jsp">Vodka</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/bebidas_alcoholicas/Pisco.jsp">Pisco</a>
                                                    </li>
                                            </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Bebidas
                                                    No Alcoholicas</a>
                                            <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/bebidas_no_alcoholicas/gaseosas.jsp">Gaseosa</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/bebidas_no_alcoholicas/agua.jsp">Aguas</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/bebidas_no_alcoholicas/energizante.jsp">Energizante
                                                            </a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/bebidas_no_alcoholicas/jugo.jsp">Jugos</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/bebidas_no_alcoholicas/Rehidratante.jsp">Rehidratante
                                                            </a></li>
                                            </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" role="button"
                                                    data-bs-toggle="dropdown">Cerveza</a>
                                            <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/cerveza/pilsen.jsp">Pilsen</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/cerveza/Cusqueña.jsp">Cusqueña</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/cerveza/cistral.jsp">Cristal</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/cerveza/heineken.jsp">Heineken</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/cerveza/godlen.jsp">Godlen </a>
                                                    </li>
                                            </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" role="button"
                                                    data-bs-toggle="dropdown">Cigarros y Vapes</a>
                                            <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/cigarros_y_vapes/cigarros_regulare.jsp">Cigarros
                                                                    Regulares</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/cigarros_y_vapes/cigarros_electricos.jsp">Cigarros
                                                                    Electronicos</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/cigarros_y_vapes/complementos.jsp">Complementos</a>
                                                    </li>
                                            </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Listos
                                                    Para Tomar</a>
                                            <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/listo_para_tomar/smirnoff.jsp">Smirnoff</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/listo_para_tomar/four_loko.jsp">Four
                                                                    Loko</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/listo_para_tomar/tabernero.jsp">Tabernero</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/listo_para_tomar/mikes.jsp">Mikes</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/listo_para_tomar/piscano.jsp">Piscano
                                                            </a>
                                                    </li>
                                            </ul>
                                    </li>
                                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Piqueos
                                                    y Snacks</a>
                                            <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item"
                                                           href="../../../Pages/sin-registrados/Piqueos_y_Snacks/papa.jsp">Papas</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/Piqueos_y_Snacks/piqueos.jsp">Piqueos</a>
                                                    </li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/Piqueos_y_Snacks/habas_y_mani.jsp">Habas y
                                                                    Mani</a></li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/Piqueos_y_Snacks/frutos_secos.jsp">Frutos
                                                                    Secos</a></li>
                                                    <li><a class="dropdown-item"
                                                                    href="../../../Pages/sin-registrados/Piqueos_y_Snacks/salados.jsp">Salado</a>
                                                    </li>
                                            </ul>
                                    </li>
                            </ul>
                    </section>
            </div>
    </nav>
</header>
