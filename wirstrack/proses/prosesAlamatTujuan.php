<?php 

include "koneksi.php";

$alamat_tujuan1 = $_POST['alamat_tujuan1'];
$alamat_tujuan2 = $_POST['alamat_tujuan2'];
$alamat_tujuan3 = $_POST['alamat_tujuan3'];

mysqli_query($conn, "UPDATE kurir SET 
    alamat_tujuan1='$alamat_tujuan1', 
    alamat_tujuan2='$alamat_tujuan2',
    alamat_tujuan3='$alamat_tujuan3'
    ORDER BY id DESC LIMIT 1");

header('Location: ../rute.php');
exit;

?>