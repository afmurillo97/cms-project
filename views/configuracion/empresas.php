<?php
	session_start();
	if (!isset($_SESSION['idUsuario']) || $_SESSION['idUsuario'] == NULL) {
		print "<script>alert(\"Acceso invalido!\"); window.location='../../index.php';</script>";
	}
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ElectroniTECH | Empresa</title>
	<?php include_once "../layouts/header.php"; ?>	
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<?php include_once "../layouts/navbar.php" ?>
		<?php include_once "../layouts/menu.php" ?>
		
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6"><h1 class="m-0">Empresa</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="../../views/dashboard">Inicio</a></li>
							<li class="breadcrumb-item active">Empresa</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		
		<section class="content">
			<div class="col-md-12">
				<?php
					include '../../controllers/empresasController.php';
					
					if(getEmpresas()) {
						foreach(getEmpresas() as $fila){
							echo '
								<form>
									<input type="hidden" id="idEmpresa" value="'.$fila['id'].'">
									<div class="card card-danger">
										<div class="card-header">
											<h3 class="card-title">Datos de la Empresa</h3>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label>Nombre de la Empresa:</label>
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text"><i class="fas fa-city"></i></span>
													</div>
													<input type="text" class="form-control" id="nombre" value="'.$fila['nombre'].'">
												</div>
											</div>
											
											<div class="form-group">
												<label>Nit:</label>
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text"><i class="fas fa-file-contract"></i></span>
													</div>
													<input type="text" class="form-control" id="nit" value="'.$fila['nit'].'">
												</div>
											</div>
											
											<div class="form-group">
												<label>Dirección:</label>
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text"><i class="fas fa-map-marker-alt"></i></span>
													</div>
													<input type="text" class="form-control" id="direccion" value="'.$fila['direccion'].'">
												</div>
											</div>
											
											<div class="form-group">
												<label>Telefono:</label>
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text"><i class="fas fa-phone"></i></span>
													</div>
													<input type="text" class="form-control" id="telefono" value="'.$fila['telefono'].'">
												</div>
											</div>
											
											<div class="form-group">
												<label>E-mail:</label>
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text"><i class="fas fa-envelope-open-text"></i></span>
													</div>
													<input type="text" class="form-control" id="email" value="'.$fila['email'].'">
												</div>
											</div>
											
											<div class="form-group">
												<label>Resolución:</label>
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text"><i class="fas fa-file-prescription"></i></span>
													</div>
													<input type="text" class="form-control" id="resolucion" value="'.$fila['resolucion'].'">
												</div>
											</div>
											
											<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#modalEditSuccess" id="editarEmpresa" '.permisosItem($_SESSION['idUsuario'], 'editar empresa').'>Editar</button>
											<button type="button" class="btn btn-outline-danger" onClick="history.back()">Cancelar</button>
											
										</div>
									</div>
								</form>
							';
						}
					}else{
						echo 'NO EXISTEN EMPRESAS CREADAS';
					}
				?>
			</div>
		</section>
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
    	<!-- Control sidebar content goes here -->
    	</aside>
		
  		<!-- /.control-sidebar -->
	</div>

    <!-- MODAL -->
    <?php include_once "empresasUtils/modalNotify.php" ?>
	<!-- END MODAL -->

    <!-- FOOTER -->
    <?php include_once "../layouts/footer.php" ?>
    <!-- END FOOTER -->
	<?php include_once "../layouts/scripts.php" ?>
	<script src="empresasUtils/functions.js"></script>	
</body>
</html>