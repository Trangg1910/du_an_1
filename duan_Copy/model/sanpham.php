<?php

function loadAll_sanpham_home()
{ // anh, ten, gia, mau sp
    $sql = "SELECT sanpham.name, sanpham.price, img_product.img, sanpham.image , sanpham.id FROM sanpham
    LEFT JOIN img_product ON sanpham.id = img_product.id_sp 
    WHERE 1 ORDER BY id";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}


function loadAll_sanpham_top10()
{
    $sql = "SELECT sanpham.name, sanpham.price, img_product.img, sanpham.image, sanpham.id FROM sanpham
    LEFT JOIN img_product ON sanpham.id = img_product.id_sp 
    WHERE 1 order by luotxem desc";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function loadOne_sanpham($idsp)
{
    $sql = "SELECT *  
    FROM sanpham 
    WHERE sanpham.id = $idsp
    ";
    $listsanpham = pdo_query_one($sql);
    return $listsanpham;
}
function loadAnh_sanpham($idsp)
{
    $sql = "SELECT *  
    FROM img_product
    INNER JOIN color_category ON img_product.id_color=color_category.id_color
    WHERE id_sp = $idsp
    ";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function loadSize_sanpham($idsp)
{
    $sql = "SELECT *  
    FROM size_product 
    WHERE id_sp = $idsp AND quantity > 0
    ";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}


function load_sanpham_cungloai($iddm)
{
    $sql = "SELECT sanpham.name, sanpham.price, img_product.img, sanpham.image , sanpham.id FROM sanpham
    LEFT JOIN img_product ON sanpham.id = img_product.id_sp WHERE iddm = $iddm ";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function loadAll_sanpham($keyw = "", $iddm = 0)
{
    $sql = "SELECT sanpham.name, sanpham.price, img_product.img, sanpham.image , sanpham.id FROM sanpham
    LEFT JOIN img_product ON sanpham.id = img_product.id_sp WHERE 1";
    if ($keyw != "") {
        $sql .= " and name like '%" . $keyw . "%'";
    }
    if ($iddm > 0) {
        $sql .= " and iddm ='" . $iddm . "'";
    }
    $sql .= " order by id desc";
    $listsanpham = pdo_query($sql);
    return  $listsanpham;
}

function get_color($id){
    $sql="SELECT * FROM color_category WHERE id_color=$id";
    return pdo_query_one($sql);
}
function get_size($id){
    $sql="SELECT * FROM size_product WHERE id=$id";
    return pdo_query_one($sql);
}

