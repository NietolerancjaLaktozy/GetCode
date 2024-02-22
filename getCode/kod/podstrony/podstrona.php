<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<title>Strona glowna</title>
	<link rel="stylesheet" href="../../css/Style.css">
	<link rel="stylesheet" href="../../css/bootstrap.min.css" type="text/css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	</div>
</head>
<body id="bootstrap-overrides">
	
		<nav class="navbar navbar-expand-lg bg-light">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#"><img id="logo" src="../../img/Logo.png"></a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarNavDropdown">
		      <ul class="navbar-nav">
		        <li class="nav-item">
		          <a class="nav-link" aria-current="page" href="../../home.php">Strona glowna</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="../../pojecia/pojecia.php">Pojecia</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="../kod.php">Kod</a>
		        </li>
				<li class="nav-item">
		          <a class="nav-link" href="../../jezyki/jezyki.php">Jezyki</a>
		        </li>
		      </ul>
		    </div>
		  </div>
		</nav>
		
		<div id="content">
			<div class="zwezenie">
			<?php
				require_once "zawartosc.php";
			?>
			</div>
		<div class="powrot"><a class="" href="../kod.php">Powrót</a></div>
		</div>
		<div id="footer"> Autor strony: Kamil Goluch</div>
		
</body>
</html>