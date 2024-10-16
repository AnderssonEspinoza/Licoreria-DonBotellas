<%-- 
    Document   : login
    Created on : 3 oct. 2024, 18:25:00
    Author     : esola
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../css/styleLogin2.css">

    <link rel="stylesheet" href="./css/styleLogin2.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title></title>
</head>
<body class="body__login">
    <div class="container" id="container">
      <div class="form-container sign-up">
            <form method="POST" action="../LoginController" autocomplete="off" id="loginFom">
                <h1>Registrarse</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                </div>
                <span>O</span>
                <div class="col">
                    <div>
                        <input type="text" placeholder="Usuario" name="NombreUsuario" id="NombreUsuario" autocomplete="off" required autofocus>
                        <input type="email" placeholder="Correo electrónico" name="CorreoElectronico" id="CorreoElectronico" autocomplete="off" required>
                    </div>
                    <div class="row">
                        <div class="col">
                            <input type="password" placeholder="Contraseña" name="Contrasena" id="Contrasena" autocomplete="off" required>
                            <input type="password" placeholder="Confirmar contraseña" required>
                        </div>
                        <div class="col">
                            <input type="text" placeholder="Nombre" name="Nombre" required>
                            <input type="text" placeholder="Apellido" name="Apellido" required>
                        </div>
                    </div>
                    <div>
                        <label for="gender">Género</label>
                        <select id="gender" name="Sexo" required>
                            <option value="" disabled selected>Seleccionar</option>
                            <option value="male">Masculino</option>
                            <option value="female">Femenino</option>
                            <option value="other">Otro</option>
                        </select>
                    </div>
                    <div>
                        <label for="birthdate">Fecha de nacimiento</label>
                        <input type="date" id="birthdate" name="FechaNacimiento" required>
                    </div>
                    <div>
                        <input type="tel" placeholder="Número de celular" name="Telefono" required>
                    </div>
                    <div>
                        <input type="text" placeholder="DNI" name="Dni" required>
                    </div>
                    <div class="row">
                        <div class="col">
                            <select id="department" name="Departamento" required>
                                <option value="" disabled selected>Departamento</option>
                                <option value="Amazonas">Amazonas</option>
                                <option value="Áncash">Áncash</option>
                                <option value="Apurímac">Apurímac</option>
                                <option value="Arequipa">Arequipa</option>
                                <option value="Ayacucho">Ayacucho</option>
                                <option value="Cajamarca">Cajamarca</option>
                                <option value="Callao">Callao</option>
                                <option value="Cusco">Cusco</option>
                                <option value="Huancavelica">Huancavelica</option>
                                <option value="Huánuco">Huánuco</option>
                                <option value="Ica">Ica</option>
                                <option value="Junín">Junín</option>
                                <option value="La Libertad">La Libertad</option>
                                <option value="Lambayeque">Lambayeque</option>
                                <option value="Lima">Lima</option>
                                <option value="Loreto">Loreto</option>
                                <option value="Madre de Dios">Madre de Dios</option>
                                <option value="Moquegua">Moquegua</option>
                                <option value="Pasco">Pasco</option>
                                <option value="Piura">Piura</option>
                                <option value="Puno">Puno</option>
                                <option value="San Martín">San Martín</option>
                                <option value="Tacna">Tacna</option>
                                <option value="Tumbes">Tumbes</option>
                                <option value="Ucayali">Ucayali</option>
                                
                            </select>
                        </div>
                        <div class="col">
                            <input type="text" placeholder="Provincia" name="Provincia" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <input type="text" placeholder="Distrito" name="Distrito" required>
                        </div>
                        <div class="col">
                            <input type="text" placeholder="Dirección" name="Direccion" required>
                        </div>
                    </div>
                </div>
                <button name="btnRegistrar">Registrarse</button>
            </form>
        </div> -->
        <div class="form-container sign-in">
            <form method="POST" action="../LoginController">
                <h1>Iniciar sesión</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                </div>
                <span>O</span>
               
                <input type="text" placeholder="Usuario" name="NombreUsuario" id="NombreUsuario" autocomplete="off" required autofocus>
                <input type="password" placeholder="Contraseña" name="Contrasena" id="Contrasena" autocomplete="off" required>
                <a href="#">¿Olvidaste tu contraseña?</a>
                <button name="btnLogin">Iniciar sesión</button>
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>¡Bienvenido de nuevo!</h1>
                    <p>Ingrese su cuenta si ya tiene una para utilizar todas las funciones del sitio</p>
                    <button class="hidden" id="login">Iniciar sesión</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>¡Hola, amigo!</h1>
                    <p>Regístrese con sus datos personales para utilizar todas las funciones del sitio</p>
                    <button class="hidden" id="register">Registrarse</button>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="./js/login.js"></script>
</body>
</html>
