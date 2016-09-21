<?php 

require_once('html.php');
//require_once('mostrar.php');
session_start();
if (!isset($_SESSION["contador"])) {
	$_SESSION["contador"]=0;
}


echo htmlOpen('modificar'); ?>
	<?php echo pageHeader(''); ?>
	<form class="container" method="post" action="mostrar.php" enctype="multipart/form-data">

		<div class="form-group">
			<label for="exampleInputEmail1">Nombre</label>
			<input type="number" name="nombre" value="<?php echo ($_SESSION["contador"])?>" class="form-control" id="exampleInputEmail1" readonly="readonly" >
			
		</div>
		<div class="form-group">
			<button type="submit" name="reset" class="btn btn-default">Reset</button>
		</div>
		<div class="form-group">
			<button type="submit" name="incrementar" class="btn btn-default">Incrementar</button>
		</div>
	</form>


<?php echo htmlClose(); ?>