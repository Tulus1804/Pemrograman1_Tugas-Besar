<?php 

    include '../../../koneksi.php';

    $iduser = $_POST['iduser'];
    $namauser = $_POST['namauser'];
    $pass = md5($_POST['pass']);

    $sql = mysqli_query($koneksi, "UPDATE tb_user SET nama_user = '$namauser', password = '$pass' WHERE id_user = '$iduser' ");

    if($sql){
        header('location: ../../index.php?page=user&create=success');
    } else{
        header('location: ../../index.php?page=user&create=fail');
    }

?>