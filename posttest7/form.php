<?php

    date_default_timezone_set("Asia/Singapore");
    
    require 'koneksi.php';

    if(isset($_POST['submit']))
    {
        $no = $_POST['no'];
        $nama = $_POST['merk_tas'];
        $size = $_POST['size'];
        $warna = $_POST['warna'];
        $stok = $_POST['jumlah_tas'];
        $tanggal_stok = date("d-m-y H:i:s a");
        $harga = $_POST['harga'];

        $gambar = $_FILES['gambar']['name'];
        $x = explode('.', $gambar);
        
        $ekstensi = strtolower(end($x));
        $gambar_baru = "$nama.$ekstensi";

        $tmp = $_FILES['gambar']['tmp_name'];
        
        if(move_uploaded_file($tmp, "Gambar/".$gambar_baru))
        {
            $query =  "INSERT INTO fmb (gambar, merk_tas, size, warna, jumlah_tas, tanggal_stok, harga) 
                       VALUES ('$gambar_baru', '$nama', '$size', '$warna', '$stok', '$tanggal_stok','$harga')";
            $result = $db->query($query);

            if($result){
                echo "
                    <script>
                        alert('Data Berhasil Ditambahkan');
                    </script>";
            }else {
                echo "
                    <script>
                        alert('Data Gagal Ditambahkan');
                    </script>";
            }
        }
    }
?>

<!DOCTYPE html>
<html lang = "en" dir = "ltr">
    <head>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <title>Feel My Bag</title>
        <link rel = "stylesheet" href = "style_register.css">
    </head>

    <body>
    <h2>Pendataan Produk Feel My Bag</h2>
    <a href="hasil.php" style="padding:0.4% 0.8%; background-color:#009900;color:#fff;border-radius:2px;text-decoration:none;">Data Feel My Bag</a><br>
    <form action="" method="POST" enctype = "multipart/form-data">
        <table style="text-align:center;widht:100%;background-color:#f2d6f2">
            <!-- <tr>   
                <td>No</td>
                <td><input type="text" name="no" placeholder="No" required></td>
            </tr> -->
            <tr>   
                <td>Merk Tas</td>
                <td><input type="text" name="merk_tas" placeholder="Merk Tas" required></td>
            </tr>
            <tr>
                <td>Size</td>
                <td><input type="radio" name="size" value="S">S
                <input type="radio" name="size" value="M">M</td>
            </tr>
            <tr>   
                <td>Warna</td>
                <td><input type="text" name="warna" placeholder="Warna" required></td>
            </tr>
            <tr>
                <td>Jumlah Stok</td>
                <td><input type="number" name="jumlah_tas" placeholder="Jumlah Stok" required></td>
            </tr>
            <tr>
                <td>Tanggal Produksi</td>
                <td><input type="date" name="tanggal_stok" required ></td>
            </tr>
            <tr>
                <td>Harga</td>
                <td><input type="number" name="harga" placeholder="Harga" required></td>
            </tr>
            <tr>
                <td>Gambar</td>
                <td><input type="file" name="gambar" required ></td>
            </tr>
            <br>
                <td><button type="submit" name="submit" value="submit">Submit </button></td>
        </table>
    </form>
    </body>
</html>