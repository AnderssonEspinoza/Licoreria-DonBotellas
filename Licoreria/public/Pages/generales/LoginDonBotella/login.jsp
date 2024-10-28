<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="../../../assets/style/styleLoginDB.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Licoreria Don Botellas - Iniciar Sesión / Registrarse</title>
    </head>
    <body>
        <div class="container" id="container">
            <form class="form-container sign-up" method="POST" action="${pageContext.request.contextPath}/ControladorRegistro" autocomplete="off" >
                <h1>Registrarse</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                </div>
                <span>O</span>
                <input type="text" placeholder="Nombre" name="nombreUsuario" required autofocus>
                <input type="email" placeholder="Correo electrónico" name="correoElectronico" required>
                <input type="password" placeholder="Contraseña" name="contrasena" required>
                <input type="password" placeholder="Confirmar contraseña" required>
                <input type="tel" placeholder="Número de celular" name="telefono" required>
                <input type="text" placeholder="Dirección" name="direccion" required>
                <button name="btnRegistrar" type="submit">Registrarse</button>
                
            </form>

            <form class="form-container sign-in" method="POST" action="${pageContext.request.contextPath}/LoginController" id="loginForm">
                <h1>Iniciar sesión</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                </div>
                <span>O</span>
                <input type="email" placeholder="Correo electrónico" name="correoElectronico" id="correoElectronico" required autofocus>
                <input type="password" placeholder="Contraseña" name="contrasena" id="contrasena" required>
                <a href="#">¿Olvidaste tu contraseña?</a>
                <button name="btnLogin">Iniciar sesión</button>
                <!-- Botón para mostrar el formulario de registro -->
                <button class="show-register" onclick="toggleRegister()">Registrarme</button>
            </form>
            
            <!-- Botón para mostrar el formulario de registro -->
            <button class="show-register" onclick="toggleRegister()">Registrarme</button>

            <div class="toggle-container">


                <div class="toggle">
                    <div class="toggle-panel toggle-left">
                        <h1>¡Bienvenido de nuevo!</h1>
                        <p>Ingrese su cuenta si ya tiene una para utilizar todas las funciones del sitio</p>
                        <button type="submit" class="hidden" id="login">Iniciar sesión</button>
                    </div>
                    <div class="toggle-panel toggle-right">
                        <h1>¿Amante de las bebidas?</h1>
                        <p>Haz tu próxima celebración inolvidable. Regístrate y descubre ofertas irresistibles.</p>
                        <button class="hidden" id="register">Registrarse</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="../../../assets/js/login.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
