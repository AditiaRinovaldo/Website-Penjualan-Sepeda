<?php
    session_start();
    include 'database.php';
    if($_SESSION['status_login'] != true){
        echo '<script>window.location="login.php"</script>';
        exit; // Ensure script stops execution after redirection
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
    <script>
        function printReport() {
            window.print();
        }
    </script>
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

    <div class="section">
        <div class="container">
            <h2>Laporan Transaksi Harian</h2>
            <div class="box">
                <table border="1" cellspacing="0" class="table">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kategori</th>
                            <th>Nama Produk</th>
                            <th>Biaya</th>
                            <th>Jumlah Barang</th>
                            <th>Total Biaya</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $no = 1;
                            $produk = mysqli_query($conn, "SELECT * FROM tb_report LEFT JOIN tb_product USING (product_name, product_price) ORDER BY category_id DESC");
                            if(mysqli_num_rows($produk) > 0){
                            while($row = mysqli_fetch_array($produk)){
                        ?>
                        <tr>
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $row['category_name'] ?></td>
                            <td><?php echo $row['product_name'] ?></td>
                            <td>Rp. <?php echo number_format($row['product_price']) ?></td>
                            <td><?php echo $row['product_count'] ?></td>
                            <td>Rp. <?php echo number_format($row['total_price']) ?></td>
                        </tr>
                        <?php 
                                }
                            } else { ?>
                            <tr>
                                <td colspan="6">Tidak ada laporan harian</td>
                            </tr>
                        <?php } ?>

                        <form method="get" id="form-input">
                            <label for="tanggal">Pilih Tanggal:                 </label>
                            <input type="date" id="tanggal" name="tanggal" value="<?php echo isset($_GET['tanggal']) ? $_GET['tanggal'] : date('Y-m-d'); ?>">
                            <br><br>
                            <label for="pimpinan">Nama Pimpinan:                </label>
                            <input type="text" id="pimpinan" name="pimpinan" value="<?php echo isset($_GET['pimpinan']) ? $_GET['pimpinan'] : ''; ?>">
                            <br><br>
                            <button type="submit">Tampilkan</button>
                        </form>
                        <br><br>
                        <button onclick="printReport()">Cetak Laporan</button>
                        <br><br>
                    </tbody>
                </table>
                <br></br>
                <?php
                    $bulan = isset($_GET['bulan']) ? $_GET['bulan'] : date('Y-m-d');
                    $pimpinan = isset($_GET['pimpinan']) ? $_GET['pimpinan'] : '';

                    if ($pimpinan) {
                        echo "<div class='signature'>";
                        echo "<h3>Disetujui oleh:</h3>";
                        echo "<p><strong>$pimpinan</strong></p>";
                        echo "<br><br>";
                        echo "<br><br>";
                        echo "<p>_______________________</p>";
                        echo "<p>Tanda Tangan</p>";
                        echo "</div>";
                    }
                ?>
            </div>
        </div>
    </div>
</body>
</html>
