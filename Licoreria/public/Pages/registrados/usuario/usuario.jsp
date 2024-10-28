<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Mi Perfil</title>
	<link rel="stylesheet" href="../../../assets/style/sass/main.css">
	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<style>
body {
    color: #333;
    background-color: #f8f9fa;
    font-family: 'Open Sans', sans-serif;
    line-height: 1.6;
  }

  /* Mejoras responsivas */
  @media (max-width: 768px) {
    .profile-info, .profile-nav {
      margin-top: 20px;
    }
  }
</style>
</head>

<body>
    <jsp:include page="../../components/header_registrado.jsp"/>
	<section class="container cuerpo">
		<div class="row">
			<div class="menu row">
				<div class="menu-icon active par">
					<span class="icono"><i class="bi bi-person"></i></span>
					<span class="text">Mi perfil</span>
				</div>
				<div class="menu-icon">
					<span class="icono"><i class="bi bi-box-seam"></i></span>
					<span class="text">Mis compras</span>
				</div>
				<div class="menu-icon">
					<span class="icono"><i class="bi bi-question-circle"></i></span>
					<span class="text">Ayuda</span>
				</div>
			</div>
			
			<div class="row">
				<!-- Panel de Navegación -->
				<div class="profile-nav col-md-3">
					<div class="panel">
						<div class="list-group">
							<button type="button" class="list-group-item list-group-item-action active">Datos
								personales</button>
							<button type="button" class="list-group-item list-group-item-action">Direcciones</button>
							<button type="button" class="list-group-item list-group-item-action">Medios de pago</button>
							<button type="button" class="list-group-item list-group-item-action">Datos para
								reembolso</button>
							<button type="button" class="list-group-item list-group-item-action">Mis listas</button>
							<button type="button" class="list-group-item list-group-item-action">Configurar mi
								cuenta</button>
							<button type="button" class="list-group-item list-group-item-action">Cerrar sesión</button>
						</div>
					</div>
				</div>
				<!-- Panel de Información -->
				<div class="profile-info col-md-9">
					<div class="panel">
						<div class="bio-graph-info">
							<h1>Datos personales</h1>
							<div class="row">
								<div class="col-md-6">
									<p><strong>Nombre :</strong> Don Botella</p>
								</div>
								<div class="col-md-6">
									<p><strong>Primer Apellido :</strong> Barril</p>
								</div>
								<div class="col-md-6">
									<p><strong>Segundo Apellido :</strong> Añejo</p>
								</div>
								<div class="col-md-6">
									<p><strong>Celular :</strong> +51 904831832</p>
								</div>
								<div class="col-md-6">
									<p><strong>Correo electrónico :</strong> DonBotella@gmail.com</p>
								</div>
								<div class="col-md-6">
									<p><strong>Documento :</strong> DNI 777777777</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
    <jsp:include page="../../components/footer.jsp"/>
</body>
</html>
