<?php 

    include '../../../koneksi.php';

    $id_menu = $_POST['id_menu'];
    $menu = $_POST['menu'];

    $sql = mysqli_query($koneksi, "UPDATE tb_menu SET menu = '$menu' WHERE id_menu = '$id_menu' ");

    if($sql){
        header('location: ../../index.php?page=menu&update=success');
    } else{
        header('location: ../../index.php?page=menu&update=fail');
    }

?>