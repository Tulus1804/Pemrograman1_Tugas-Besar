<?php 

    include '../../../koneksi.php';

    $id = $_GET['id'];
    $sql = mysqli_query($koneksi, "DELETE FROM tb_kategoripost WHERE id_kat = '$id'");

    if($sql){
        header('location: ../../index.php?page=katberita&delete=success');
    } else{
        header('location: ../../index.php?page=katberita&delete=fail');
    }

?>