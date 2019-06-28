<?php

    error_reporting(0);

    if($_GET['page'] == "user"){
        include 'tabel.php';
    } else if($_GET['page'] == "menu"){
        include 'tabel.php';
    } else if($_GET['page'] == "guru"){
        include 'tabel.php';
    } else if($_GET['page'] == "siswa"){
        include 'tabel.php';
    } else if($_GET['page'] == "katberita"){
        include 'tabel.php';
    } else if($_GET['page'] == "berita"){
        include 'tabel.php';
    } else if($_GET['page'] == "slider"){
        include 'tabel.php';
    } else if($_GET['page'] == "tambahuser"){
        include 'form.php';
    } else if($_GET['page'] == "ubahuser"){
        include 'form.php';
    } else if($_GET['page'] == "tambahmenu"){
        include 'form.php';
    } else if($_GET['page'] == "ubahmenu"){
        include 'form.php';
    } else if($_GET['page'] == "tambahdetailmenu"){
        include 'form.php';
    } else if($_GET['page'] == "ubahdetailmenu"){
        include 'form.php';
    } else if($_GET['page'] == "tambahguru"){
        include 'form.php';
    } else if($_GET['page'] == "ubahguru"){
        include 'form.php';
    } else if($_GET['page'] == "tambahsiswa"){
        include 'form.php';
    } else if($_GET['page'] == "ubahsiswa"){
        include 'form.php';
    } else if($_GET['page'] == "tambahkatberita"){
        include 'form.php';
    } else if($_GET['page'] == "ubahkatberita"){
        include 'form.php';
    } else if($_GET['page'] == "tambahberita"){
        include 'form.php';
    } else if($_GET['page'] == "ubahberita"){
        include 'form.php';
    } else if($_GET['page'] == "tambahslider"){
        include 'form.php';
    } else if($_GET['page'] == "ubahslider"){
        include 'form.php';
    } else if($_GET[""] == ""){
        include 'box.php';
    }

?>