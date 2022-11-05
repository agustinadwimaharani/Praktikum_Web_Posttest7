<?php 
    require 'koneksi.php';

    $result = mysqli_query($db, "SELECT * FROM fmb");

    require 'koneksi.php';
                        $result = mysqli_query($db, "SELECT * FROM fmb");
                     
                     
                        if (isset($_GET['search'])){
                         $result = mysqli_query($db, "SELECT * FROM fmb WHERE merk_tas LIKE '%".
                             $_GET['search']."%'");
                        }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feel My Bag</title>
    <link rel = "stylesheet" href = "style.2.css">
</head>
<body>
    <h2>Pendataan Produk Feel My Bag</h2><br>
        <a href="form.php" style="padding:0.4% 0.8%; background-color:#009900;color:#fff;border-radius:2px;text-decoration:none;">Tambah Data</a><br><br>
        <form class="search" action="" method="get">
                <label for="search"></label>
                <input type="text" name="search">
        </form>
        <form action="hasil.php" method="POST">
            <table border="1" cellspacing="0" width="100%">
                <tr style="text-align:center;font-weight:bold;background-color:#f2d6f2">
                    <td>No</td>
                    <td>Merk Tas</td>
                    <td>Size</td>
                    <td>Warna</td>
                    <td>Jumlah Stok</td>
                    <td>Tanggal Stok</td>
                    <td>Harga</td>
                    <td>Gambar</td>               
                    <td>Opsi</td>
                    <td>Opsi</td>
                </tr>
                <?php 
                    $no = 1;
                    while($row = mysqli_fetch_array($result)){
                ?>
                <tr>
                    <td><center><?=$no; ?></center></td>
                    <td><center><?=$row['merk_tas']?></center></td>
                    <td><center><?=$row['size']?></center></td>
                    <td><center><?=$row['warna']?></center></td>
                    <td><center><?=$row['jumlah_tas']?></center></td>
                    <td><center><?=$row['tanggal_stok']?></center></td>
                    <td><center><?=$row['harga']?></center></td>
                    <td><center><img src="Gambar/<?=$row['gambar']?>" alt="" width = "100px"></center></td>
                 
                    <td><center><a class = "" a href="edit_form.php?no=<?=$row['no']?>">Edit</i></a></center></td>
                    <td><center><a class = "" a href="delete_form.php?no=<?=$row['no']?>">Hapus</a></center></td>
                </tr> 
                <?php 
                $no++;
                    }
                    ?>
            </table>
        </form>
</body>
</html>