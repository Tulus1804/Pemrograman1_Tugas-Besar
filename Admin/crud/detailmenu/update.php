<?php 

    include '../../../koneksi.php';

    $id_md = $_POST['id_md'];
    $menu = $_POST['menu'];
    $isi_menu = $_POST['isi_menu'];
    $slug_menu = $_POST['slug'];

    $sql = mysqli_query($koneksi, "UPDATE tb_menudetail SET id_menu = '$menu', isi_menu= '$isi_menu', slug_menu = '$slug_menu' WHERE id_md = '$id_md' ");

    if($sql){
        header('location: ../../index.php?page=menu&create=success');
    } else{
        header('location: ../../index.php?page=menu&create=fail');
    }

?>