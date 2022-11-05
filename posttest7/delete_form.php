<?php 

require 'koneksi.php';

if(isset($_GET['no'])){
    $no = $_GET['no'];

    $delete = mysqli_query($db,
                  "SELECT * FROM fmb WHERE no = '$no'");
    $row = mysqli_fetch_array($delete);

    $gambar = $row['gambar'];
    $hapus = "Gambar/$gambar";

    if(file_exists($hapus))
    {
        unlink($hapus);
    }

    $result = mysqli_query($db, 
        "DELETE FROM fmb WHERE no='$no'");

    if($result){
        echo "
            <script>
                alert('Data Berhasil Dihapus');
                document.location.href = 'hasil.php';
            </script>
        ";
    }else {
        echo "
            <script>
                alert('Data Gagal Dihapus');
            </script>
        ";
    }
}