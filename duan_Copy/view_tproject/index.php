<?php
session_start();
include "../model/binhluan.php";
include "../model/pdo.php";
include "../model/sanpham.php";
include "global.php";


include "header.php";
$spnew = loadAll_sanpham_home();
$spbest = loadAll_sanpham_top10();
// $dsdm = loadAll_danhmuc();
if (isset($_GET['act']) && ($_GET['act'] != "")) {
    $act = $_GET['act'];
    switch ($act) {
        case 'gio_hang':
            if (isset($_GET['del'])) {
                array_splice($_SESSION['cart'], $_GET['del'], 1);
                $_SESSION['cart'] = array_values($_SESSION['cart']);
            }
            include "../metagent.vn/don-hang/gio_hang.php";
            break;
        case "chitietsanpham":
            if (!isset($_SESSION['cart'])) {
                $_SESSION['cart'] = [];
            }
            if (isset($_POST['cart'])) {
                if (count($_SESSION['cart']) == 0) {
                    $cartmini = ['img' => $_POST['img'], 'nameProduct' => $_POST['nameProduct'], 'price' => $_POST['price'], 'quantity' => $_POST['quantity'], 'total' => ($_POST['price'] * $_POST['quantity']), 'idsp' => $_GET['idsp'], 'color' => $_POST['color'], 'size' => $_POST['size']];
                    $_SESSION['cart'][] = $cartmini;
                } else {
                    $check = 0;
                    for ($i = 0; $i < count($_SESSION['cart']); $i++) {
                        $item = $_SESSION['cart'][$i];
                        if ($_GET['idsp'] == $item['idsp'] && $_POST['color'] == $item['color'] && $_POST['size'] == $item['size']) {
                            $_SESSION['cart'][$i]['quantity'] = $_POST['quantity'] + $item['quantity'];
                            $_SESSION['cart'][$i]['total'] = $_SESSION['cart'][$i]['quantity'] * $item['price'];
                            $check = 1;
                            break;
                        }
                    }
                    if ($check == 0) {
                        $cartmini = ['img' => $_POST['img'], 'nameProduct' => $_POST['nameProduct'], 'price' => $_POST['price'], 'quantity' => $_POST['quantity'], 'total' => ($_POST['price'] * $_POST['quantity']), 'idsp' => $_GET['idsp'], 'color' => $_POST['color'], 'size' => $_POST['size']];
                        $_SESSION['cart'][] = $cartmini;
                    }
                }
                echo "<script>alert('Đã thêm vào giỏ hàng')</script>";
            }
            if (isset($_POST['guibinhluan'])) {
                insert_binhluan($_POST['idpro'], $_POST['noidung']);
            }
            if (isset($_GET['idsp']) && $_GET['idsp'] > 0) {
                $sanpham = loadOne_sanpham($_GET['idsp']);
                $loadAnh_sanpham = loadAnh_sanpham($_GET['idsp']);
                $loadSize_sanpham = loadSize_sanpham($_GET['idsp']);
                $sanpham_cungloai = load_sanpham_cungloai($_GET['idsp'], $sanpham['iddm']);
                $binhluan = loadAll_binhluan($_GET['idsp']);
                include "chi_tiet_san_pham.php";
            } else {
                include "home.php";
            }
            break;


        case "sanpham":
            if (isset($_POST['keyword']) &&  $_POST['keyword'] != 0) {
                $kyw = $_POST['keyword'];
            } else {
                $kyw = "";
            }
            if (isset($_GET['iddm']) && ($_GET['iddm'] > 0)) {
                $iddm = $_GET['iddm'];
            } else {
                $iddm = 0;
            }
            $dssp = loadAll_sanpham("", $iddm);
            // $tendm = load_ten_danhmuc($iddm);
            include "danhsachsanpham/sanpham.php";
            break;

        case "dangnhap":
            if (isset($_POST['dangnhap']) && ($_POST['dangnhap'])) {
                $user = $_POST['user'];
                $pass = $_POST['pass'];
                $checkuser = checkuser($user, $pass);
                if (is_array($checkuser)) {
                    $_SESSION['user'] = $checkuser;
                    $_SESSION['pass'] = $checkuser;
                    header('Location: index.php');
                    // $thongbao = "bạn đã đăng nhập thành công ";
                } else {
                    $thongbao = "Tài khoản không tồn tại. Vui lòng đăng ký tài khoản";
                }
            }
            include "login/dangnhap.php";
            break;

        case "dangky":
            if (isset($_POST['dangky']) && ($_POST['dangky'])) {
                $email = $_POST['email'];
                $user = $_POST['user'];
                $pass = $_POST['pass'];
                $address = $_POST['address'];
                $pass = $_POST['pass'];
                insert_taikhoan($email, $user, $pass, $address, $tel);
                $thongbao = "Đã đăng ký thành công.Vui lòng đăng nhập để thực hiện chức năng bình luận hoặc đặt hàng ";
            }
            include "login/dangky.php";
            break;


        case "thoat":
            session_unset();
            header('Location: index.php');
            include "home.php";
            break;
    }
} else {
    include "home.php";
}
// include "danhsachsanpham.php";

include "footer.php";
