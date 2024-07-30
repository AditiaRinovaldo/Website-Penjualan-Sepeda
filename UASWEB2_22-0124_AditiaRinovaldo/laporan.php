<?php
	session_start();
	if($_SESSION['status_login'] != true){
		echo '<script>window.location="login.php"</script>';
	}
?>	
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Toko Online Sepeda Adit</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
</head>
<body>
	<!-- Header -->
	<header>
		<div class="container">
			<h1><a href="dashboard.php">Toko Online Sepeda Adit</a></h1>
			<ul>
				<li><a href="dashboard.php">Dashboard</a></li>
				<li><a href="profile.php">Profil</a></li>
				<li><a href="data-kategori.php">Data Kategori</a></li>
				<li><a href="data-produk.php">Data Produk</a></li>
				<li><a href="laporan.php">Laporan</a></li>
				<li><a href="logout.php">Logout</a></li>
			</ul>
		</div>
	</header>

	<!-- content -->
	<div class="section">
		<div class="container">
			<h3>Silahkan pilih laporan yang ingin Anda lihat.</h3>
			<div class="box">
				<form action="" method="POST">
					<input type="submit" name="submit1" value="Laporan Harian" class="btn" a href="laporan-harian.php">
					<input type="submit" name="submit2" value="Laporan Bulanan" class="btn" a href="laporan-bulanan.php">
					<input type="submit" name="submit3" value="Laporan Stok" class="btn" a href="laporan-stok.php">
					<input type="submit" name="submit4" value="Laporan User" class="btn" a href="laporan-user.php">

					<?php
					if(isset($_POST['submit1'])){
							echo '<script>window.location="laporan-harian.php"</script>';
						}
					?>

					<?php
					if(isset($_POST['submit2'])){
							echo '<script>window.location="laporan-bulanan.php"</script>';
						}
					?>

					<?php
					if(isset($_POST['submit3'])){
							echo '<script>window.location="laporan-stok.php"</script>';
						}
					?>

					<?php
					if(isset($_POST['submit4'])){
							echo '<script>window.location="laporan-user.php"</script>';
						}
					?>
				</form>
			</div>
		</div>
	</div>

	<!-- footer -->
	<footer>
		<div class="container">
			<small>Copyright &copy; 2024 - Toko Online Sepeda Adit</small>
		</div>
	</footer>
</body>
</html>