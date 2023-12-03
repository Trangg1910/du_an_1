<?php 
function loadAll_danhmuc(){
    $sql = "SELECT * FROM danhmuc ORDER BY id ASC";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}
function load_ten_danhmuc($iddm){
    $sql = "SELECT * FROM danhmuc WHERE id =".$iddm;
    $dm = pdo_query($sql);
    extract($dm);
    return $namel;
}
function add_danhmuc($tendm){
    $sql = "INSERT INTO danhmuc(`name`) VALUES ('$tendm')";
    pdo_execute($sql);
}
?>