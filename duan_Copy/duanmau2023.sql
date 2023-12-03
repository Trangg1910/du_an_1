-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 03, 2023 at 10:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duanmau2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(1, 'Sản phẩm rất đang trải nghiệm', 2, 1, '2023-09-22'),
(2, 'Sản phẩm rất tốt', 3, 1, '2023-09-22'),
(6, 'Sản phẩm tốt', 2, 2, '2023-10-11'),
(7, 'hi', 2, 9, '2023-10-24'),
(8, 'Good', 2, 9, '2023-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `color_category`
--

CREATE TABLE `color_category` (
  `id_color` int(11) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `color_img` varchar(255) NOT NULL,
  `color_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `color_category`
--

INSERT INTO `color_category` (`id_color`, `color_code`, `color_img`, `color_name`) VALUES
(1, '000', '000.png', NULL),
(2, '007', '007.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` int(11) NOT NULL,
  `color` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `color`) VALUES
(1, 'ao_khoac_heavy_weight.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(1, 'Áo'),
(2, 'Quần');

-- --------------------------------------------------------

--
-- Table structure for table `img_product`
--

CREATE TABLE `img_product` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `id_sp` int(100) NOT NULL,
  `id_color` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `img_product`
--

INSERT INTO `img_product` (`id`, `img`, `id_sp`, `id_color`) VALUES
(1, 'ao_khoac_heavy_weight2.jpg', 1, 1),
(3, 'quan_jeans_dang_slim2.jpg', 2, 1),
(4, 'ao_so_mi_khaki_regular_fit2.jpg', 3, 2),
(5, 'long_sleeve_ao_thun_tay_dai2.jpg', 5, 2),
(6, 'ao_thun_tron_tay_dai2.jpg', 6, 1),
(7, 'quan_dai_khaki_slim.jpg', 7, 2),
(8, 'ao_khoac_heavy_weight.jpg', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(200) DEFAULT 10,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `soluong` int(100) NOT NULL,
  `iddm` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `color` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `mota`, `luotxem`, `soluong`, `iddm`, `image`, `color`) VALUES
(1, 'Áo khoác Heavy Weight', 300000, 'Áo khoác trần lông mịn, mang đến sự ấm áp và mềm mại, giữ bạn ấm trong thời tiết lạnh. Áo có cổ kéo khóa cao, tay dài kiểu raglan. Thiết kế áo nổi bật với 1 túi ngực phối màu đậm  cùng 2 túi sườn tiện lợi.\r\nÁo dễ phối với nhiều trang phục khác nhau, từ quần jeans, quần tây, quần thể thao. Áo cũng phù hợp cho nhiều hoàn cảnh, từ đi làm, dạo chơi cuối tuần hay các hoạt động ngoài trời.\r\nLưu ý: Màu sắc sản phẩm thực tế sẽ có sự chênh lệch nhỏ so với ảnh do điều kiện ánh sáng khi chụp và màu sắc hiển thị qua màn hình máy tính/ điện thoại.\r\n', 1010, 1230, 1, 'ao_khoac_heavy_weight.jpg', '048.png'),
(2, 'Quần Jeans dáng Slim', 140000, 'Quần Jeans là một item cơ bản và phổ biến trong tủ đồ của nhiều quý ông. Nó thể hiện vẻ ngoài tươi trẻ và thời trang, đồng thời đảm bảo sự thoải mái, tiện lợi trong mọi tình huống.\r\nThiết kế quần dáng Slim ôm, thêm 2 túi sườn và túi sau. Chất liệu Jeans mang đến sự bền bỉ, có co giãn nhẹ, giúp người mặc dễ dàng di chuyển.\r\nBên cạnh đó, quần còn sở hữu gam màu xanh than tính tối, tăng sự sang trọng và nam tính cho Quý anh. Gam màu này thường rất dễ phối đồ và phù hợp cho nhiều dịp khác nhau.\r\n', 910, 298, 2, 'quan_jeans_dang_slim.jpg', '048.png'),
(3, 'Áo sơ mi Khaki Regular fit', 180000, '- Áo sơ mi tay dài, dáng Regular fit trẻ trung, hiện đại. \r\n- Thiết kế áo cơ bản, cổ áo và cổ tay đứng form, cài bằng hàng khuy nhựa tinh tế.\r\n- Màu sắc basic dễ dàng mix&match với nhiều phong cách. \r\n- Chất liệu Khaki thoáng mát, ít nhăn, phù hợp diện trong nhiều hoàn cảnh khác nhau. \r\n', 985, 498, 1, 'ao_so_mi_khaki_regular_fit.jpg', '003.png'),
(5, 'Long sleeve - Áo thun tay dài', 300000, '- Áo thun nam cổ tròn, dáng Regular trẻ trung, hiện đại, bắt nhịp với mọi xu hướng thời trang.\r\n- Áo độ dài thường, tay dài suông, có thể sơ vin hoặc để buông đều đẹp. \r\n- Thiết kế sử dụng chất liệu thun mềm mại, thông thoáng và co giãn tối ưu, tạo cảm giác thoải mái khi mặc. Quý anh có thể mix cùng quần jean, quần short...để có set đồ năng động cho mùa này. \r\n', 1014, 759, 1, 'long_sleeve_ao_thun_tay_dai.jpg', '000.png'),
(6, 'Áo thun trơn tay dài', 140000, '- Áo thun nam cổ bo, tay áo dài, có bo ở gấu áo và cổ tay. Thiết kế dáng áo Regular, vừa vặn, thoải mái và phù hợp với đa số người. Áo có thể mix với nhiều item khác nhau để mang đến sự trẻ trung, năng động.\r\n- Với kiểu dáng cơ bản dễ phối đồ với quần jeans, quần sooc..cùng chất liệu vải thun cao cấp rất thích hợp cho những quý anh ưa vận động hay chơi thể thao, áo chắc chắn sẽ là một sự lựa chọn hoàn hảo trong BST Thu - Đông tới đây.  \r\n', 912, 856, 1, 'ao_thun_tron_tay_dai.jpg', '035.png'),
(7, 'Quần dài Khaki Slim', 180000, '- Quần lựa chọn kiểu dáng Slim, độ dài ngang mắt cá chân, màu sắc trơn basic trẻ trung, hiện đại. \r\n- Thiết kế tạo điểm nhấn túi hộp kết hợp túi sườn hai bên mang đến hình ảnh quý anh năng động. \r\n- Sử dụng chất liệu Khaki cao cấp, không những quần giữ form tốt mà còn thoải mái khi mặc. \r\n\r\n', 900, 456, 2, 'quan_dai_khaki_slim2.jpg', '049.png'),
(9, 'Resort Shirt - Áo sơ mi trơn cổ đức', 990000, '- Thiết kế áo sơ mi kiểu dáng Regular cổ đức khỏe khoắn, thời trang, hiện đại. \r\n\r\n- Lựa chọn gam màu basic dễ dàng phối với nhiều kiểu áo và quần khác nhau. \r\n\r\n- Sử dụng chất liệu thô cao cấp mang đến cảm giác mặc thoải mái nhất trong ngày hè oi nóng. ', 2004, 2000, 1, '', ''),
(10, 'Áo sơ mi Uri', 1290000, '- Thiết kế sơ mi nam cộc tay kiểu dáng Regular thời trang, phù hợp với quý anh yêu thích trẻ trung nhưng vẫn cần sự thanh lịch. \r\n\r\n- Áo cổ K hiện đại, tạo điểm nhấn qua chi tiết 2 túi ngực. \r\n\r\n- Với chất vải thô cao cấp, sản phẩm có độ bền cao. Quý anh có thể thoải mái diện áo trong nhiều hoàn cảnh khác nhau, từ đi chơi đến nơi công sở hay các sự kiện thường ngày. \r\n', 2035, 1910, 1, '', ''),
(11, 'Áo thun hoodie in logo', 1590000, '- Chất liệu: Sử dụng vải Interlock thành phần gồm 65%Cotton 30% Polyester 5%Spandex. Đây là sự kết hợp giữa sợi cotton và sợi chiết suất tổng hợp có độ co giãn đàn hồi cao. Tính năng chống gió, cách nhiệt giữ ấm cơ thể.\r\n\r\n- Thiết kế áo hoodie cơ bản, dáng oversize trẻ trung năng động: mũ có dây rút, ngực in logo T-Project.', 2904, 2355, 1, '', ''),
(12, 'Áo hoodie túi khóa kéo', 1290000, '- Áo hoodie dáng regular fit, độ dài ngang hông, tay áo và gấu may bo\r\n\r\n- Mũ có dây rút. Phần bụng phối túi áo có khóa kéo tiện lợi\r\n\r\n- Chất liệu vải thun trơn mềm mịn, giữ ấm tốt, màu sắc tươi sáng dễ dàng phối cùng nhiều kiểu quần khác nhau.', 0, 0, 1, '', '0'),
(13, 'Chino Jacket - Áo khoác nam kéo khóa', 1490000, 'Áo khoác nam form suông, giúp người mặc thoải mái trong từng cử động, nhưng đồng thời vẫn đảm bảo vừa vặn về số đo vai, độ dài tay áo.\r\n\r\nThiết kế tỉ mỉ đến từng chi tiết đem đến những trải nghiệm tuyệt vời nhất cho quý anh lịch lãm trong thời tiết vào thu. \r\n\r\nChino Jacket  là sản phẩm bền chắc, bền màu và có độ bóng sáng tự nhiên. Đặc biệt, vải nhẹ và thoáng, giữ nhiệt tốt, hạn chế bám bụi, dễ chăm sóc và bảo quản.', 0, 0, 1, '', ''),
(14, 'Suede Jacket - Áo khoác sơ mi da lộn', 2249000, '- Chất liệu da lộn mềm mại, đều màu, mịn như nhung, đem đến cho người mặc phong cách trẻ trung, cá tính và mang lại cảm giác ấm áp vào mùa đông\r\n\r\n- Thiết kế áo khoác kiểu dáng sơ mi: cổ đức, áo phối 2 túi hộp, cài bằng hàng khuy phía trước\r\n\r\n- Dáng regular fit phù hợp với vóc dáng người Việt.', 0, 0, 1, '', ''),
(15, 'Áo khoác sơ mi dạ', 2249000, '- Chất liệu dạ mềm nhẹ, giữ ấm tuyệt đối, khả năng giữ phom dáng và tuổi thọ cao\r\n\r\n- Thiết kế áo khoác kiểu dáng sơ mi: cổ đức, áo phối 2 túi hộp, cài bằng hàng khuy bấm phía trước\r\n\r\n- Dáng regular fit phù hợp với vóc dáng người Việt\r\n\r\n', 0, 0, 1, '', ''),
(16, 'Áo len Slim fit basic', 1390000, 'Áo len cổ tròn, viền cổ nổi, to bản 1cm. Thiết kế tay dài, kiểu dáng Slim fit trẻ trung, hiện đại. Gấu áo và cổ tay dệt kim cố định, tạo độ bo nhẹ.\r\n\r\nThiết kế basic dễ dàng mix cùng nhiều item khác nhau để tạo nên những Outfit thời thượng.\r\n\r\nChất áo len mịn, được thêu dệt tỉ mỉ đến từng chi tiết, giữ ấm tốt và mang đến cảm giác thoải mái khi mặc. ', 0, 0, 1, '', ''),
(17, 'Áo len dệt Jacquad', 1390000, 'Lấy cảm hứng từ sự kết hợp tinh tế giữa văn hoá đô thị và phong cách cá nhân, BST \"URBAN REFINED\" tôn vinh sự hiện đại và tối giản trong bản sắc thời trang của những quý anh thành thị.\r\n\r\nXuất hiện trong BST thời trang Thu Đông lần này, áo len dệt Jacquad tạo điểm nhấn qua cấu trúc dệt hoa văn độc đáo giúp nổi bật vẻ đẹp lịch lãm và phong cách thời trang cá nhân của quý anh. \r\n\r\nChất liệu len dày, giữ ấm tốt, tạo ra một cảm giác vững chãi và sang trọng. Đây quả thực là một sự lựa chọn đáng giá cho các sự kiện quan trọng. ', 0, 0, 1, '', ''),
(18, 'Zipped Polo', 790000, '- Thiết kế kiểu dáng Regular giúp người mặc thoải mái di chuyển và hoạt động, không bị hạn chế động tác.\r\n\r\n- Chất liệu thun mềm mại và mịn màng, mang đến cảm giác dễ chịu và thoải mái cho người mặc, đặc biệt là trong những ngày hè nóng bức.\r\n\r\n- Điểm nhấn của chiếc áo là khóa kéo ở cổ, giúp cho việc mặc và tháo áo trở nên nhanh chóng và tiện lợi hơn. Khoá kéo cổ áo cũng tạo thêm phần thời trang và sự sang trọng cho sản phẩm này.\r\n\r\n- Áo polo nam phối cổ khoá là một sản phẩm đa dạng phong cách và dễ dàng phối hợp với nhiều loại quần và giày khác nhau. ', 0, 0, 1, '', ''),
(19, 'Supima Polo - Áo Polo trơn thêu Logo', 990000, '- Áo polo Regular cổ đức với độ dài vừa phải kết hợp cùng tay ngắn sẽ là lựa chọn hoàn hảo cho những buổi đi chơi hoặc đi làm.\r\n\r\n- Thiết kế màu trơn trẻ trung năng động, ngực có thêu Logo nhỏ, tạo cảm giác mới lạ cho người mặc.\r\n\r\n- Bất kì trang phục nào đi kèm Supima Polo cũng mang đến cảm giác vừa lịch sự vừa thoải mái.\r\n\r\n- Áo sử dụng chất liệu Supima Cotton (Superior Pima Cotton), loại vải Cotton cao cấp được làm từ sợi của cây bông Pima. So với Cotton thông thường, sợi vải Supima Cotton dài gấp nhiều lần, cho phép các nhà thiết kế dệt nên những sản phẩm có chất lượng vượt trội hơn. Với quy trình sản xuất tiên tiến được quản lý nghiêm ngặt theo tiêu chuẩn Mỹ, Supima Cotton là một biểu tượng của thời trang cao cấp. Loại vải này không chỉ giữ màu lâu hơn, mềm mịn hơn, bền bỉ hơn, mà còn có khả năng chống co rút gấp 5 lần so với Cotton thông thường.\r\n\r\n- Quần áo sản xuất từ sợ Supima Cotton là lựa chọn tuyệt vời nâng cao sức khoẻ và chất lượng cuộc sống của bạn. Trải nghiệm ngay các sản phẩm Supima Cotton trên hệ thống cửa hàng và website chính thức của T-Project ngay hôm nay!', 0, 0, 1, '', ''),
(20, 'Áo Supima T-Project basic', 699000, '- Trong tủ đồ quý anh chắc chắn không thể thiếu những chiếc basic có thể đáp ứng mọi nhu cầu mặc, vừa đảm bảo tính thời trang vừa chỉn chu, tinh tế. \r\n\r\n- Thiết kế áo thun cổ tròn, tay ngắn, kiểu dáng Regular fit, hơi ôm nhẹ, độ dài vừa phải. \r\n\r\n- Áo sử dụng chất liệu Supima cotton 100% thành phần hoàn toàn tự nhiên với đặc tính mịn màng, dễ chịu, khả năng thấm hút mồ hôi, thoáng khí rất cao và đặc biệt, an toàn cho mọi loại da.\r\n\r\n- Hơn nữa, supima cotton còn giữ màu lâu, khiến cho các sản phẩm may mặc không bị sờn hay bay màu sau khoảng thời gian dài sử dụng.\r\n\r\n- Áo basic dễ dàng mix cùng nhiều kiểu quần khác nhau để tạo nên phong cách riêng cho mình. ', 0, 0, 1, '', ''),
(21, 'Áo thun dài tay T-Project', 890000, '- Áo thun Basic METAGENT dài tay với kiểu dáng Regular trẻ trung, hiện đại. Dáng áo suông, mặc thoải mái, thích hợp cả buông và sơ vin. Áo có thể mix với nhiều kiểu quần khác nhau như quần Tây, quần Short, quần Khaki...tất cả đều làm thay đổi tổng thể diện mạo Quý anh trở nên lịch lãm hơn.  \r\n\r\n- Thiết kế áo in chữ \"T-Project\" nổi bật, chất liệu in bóng, bền màu cao. Áo lựa chọn chất liệu vải cao cấp, mềm mại và thoáng mát, chắc chắn đây sẽ là sự lựa chọn tuyệt vời mùa Thu này. ', 0, 0, 1, '', ''),
(22, 'Quần Flow Tex trơn Regular fit', 1590000, '- Quần basic hiện đại, kiểu dáng Regular được giới trẻ ưu chuộng. \r\n\r\n- Item mang đến sự thoải mái tối đa cho người mặc, có thiết kế vừa vặn từ eo xuống đùi, phần ống được may không quá ôm khít vào chân gây khó chịu.\r\n\r\n- Thiết kế hướng tới sự thoải mái nhưng quần vẫn luôn giữ được sự trẻ trung, năng động và thể hiện được sự mạnh mẽ, cá tính vốn có của một Quý anh hiện đại. \r\n\r\n- Quần sử dụng chất liệu Meta Flow Tex, nổi bật với cấu trúc sợi tinh chỉnh cho trải nghiệm thời trang thoải mái, dễ chịu trong mọi hoạt động. Phù hợp mặc hàng ngày và cả khi vận động thể thao: \r\n\r\n- Khả năng co dãn & đàn hồi: mang lại sự linh hoạt tối đa trong những vận động hàng ngày\r\n\r\n- Bền & chống nhăn: sản phẩm giữ form tốt ngay cả khi giặt nhiều lần bằng máy giặt. Dễ dàng bảo quản, tuổi thọ cao\r\n\r\n- Điều hòa ẩm: khả năng hấp thụ và thoát ẩm tốt, giúp cơ thể luôn thoáng khí dễ chịu', 0, 0, 2, '', ''),
(23, 'Dalio Trouser - Quần Tây cúc lệch fit', 1290000, '- Quần âu dáng Regular dài ngang mắt cá chân lịch lãm, sang trọng giúp cơ thể trở lên cân đối hơn.\r\n\r\n- Form quần đơn giản dễ diện, dễ phối đồ và phù hợp cho nhiều sự kiện từ đi làm, đi họp, đi học đến đi chơi.\r\n\r\n- Chất liệu Tuysi co dãn tốt giúp người mặc thoải mái vận động.', 0, 0, 2, '', ''),
(24, 'Sleeze Short - Quần Tuysi ngang đùi', 790000, '- Thoải mái trải nghiệm các hoạt động mùa hè trong phiên bản quần Shorts cạp chun khỏe khoắn. \r\n\r\n- Thiết kế dáng Regular, có túi sườn, độ dài ngang gối giúp quý anh thoải mái vận động và di chuyển. \r\n\r\n- Sử dụng sợi vải Tuysi nổi bật với cấu trúc sợi tinh chỉnh cho trải nghiệm thời trang thoải mái, dễ chịu. Phù hợp mặc hàng ngày và khi vận động thể thao\r\n\r\nĐặc điểm:\r\n\r\nKhả năng co dãn & đàn hồi: mang lại sự linh hoạt tối đa trong những vận động hàng ngày\r\n\r\nBền & chống nhắn: sản phẩm giữ form tốt ngay cả khi giặt nhiều lần bằng máy giặt. Dễ dàng bảo quản, tuổi thọ cao\r\n\r\nĐiều hòa ẩm: khả năng hấp thụ và thoát ẩm tốt, giúp cơ thể luôn thoáng khí dễ chịu', 0, 0, 2, '', ''),
(25, 'Quần sooc thun cạp chun', 455000, 'Quần sooc lửng độ dài trên đầu gối. Cạp chun bản to co giãn thoải mái, có dây rút tạo kiểu. 2 túi chéo 2 bên tiện lợi. Quần in chữ tạo điểm nhấn.\r\n\r\nChất liệu vải thun mềm mịn, thoáng mát. Kiểu dáng trẻ trung phù hợp với vóc dáng người Việt.', 0, 0, 2, '', ''),
(26, 'Quần Flow Tex trơn Regular fit', 1590000, '- Quần basic hiện đại, kiểu dáng Regular được giới trẻ ưu chuộng. \r\n\r\n- Item mang đến sự thoải mái tối đa cho người mặc, có thiết kế vừa vặn từ eo xuống đùi, phần ống được may không quá ôm khít vào chân gây khó chịu.\r\n\r\n- Thiết kế hướng tới sự thoải mái nhưng quần vẫn luôn giữ được sự trẻ trung, năng động và thể hiện được sự mạnh mẽ, cá tính vốn có của một Quý anh hiện đại. \r\n\r\n- Quần sử dụng chất liệu Meta Flow Tex, nổi bật với cấu trúc sợi tinh chỉnh cho trải nghiệm thời trang thoải mái, dễ chịu trong mọi hoạt động. Phù hợp mặc hàng ngày và cả khi vận động thể thao: \r\n\r\n- Khả năng co dãn & đàn hồi: mang lại sự linh hoạt tối đa trong những vận động hàng ngày\r\n\r\n- Bền & chống nhăn: sản phẩm giữ form tốt ngay cả khi giặt nhiều lần bằng máy giặt. Dễ dàng bảo quản, tuổi thọ cao\r\n\r\n- Điều hòa ẩm: khả năng hấp thụ và thoát ẩm tốt, giúp cơ thể luôn thoáng khí dễ chịu', 0, 0, 2, '', ''),
(27, 'Quần Slim fit', 1190000, '- Quần âu dáng Slim fit dài ngang mắt cá chân lịch lãm, sang trọng giúp cơ thể trở lên cân đối hơn.\r\n\r\n- Form quần đơn giản dễ diện, dễ phối đồ và phù hợp cho nhiều sự kiện từ đi làm, đi họp, đi học đến đi chơi.\r\n\r\n- Chất liệu Khaki trơn co dãn giúp người mặc thoải mái vận động.', 0, 0, 2, '', ''),
(28, 'Quần Flow Tex trơn Regular fit', 1590000, '- Quần basic hiện đại, kiểu dáng Regular được giới trẻ ưu chuộng. \r\n\r\n- Item mang đến sự thoải mái tối đa cho người mặc, có thiết kế vừa vặn từ eo xuống đùi, phần ống được may không quá ôm khít vào chân gây khó chịu.\r\n\r\n- Thiết kế hướng tới sự thoải mái nhưng quần vẫn luôn giữ được sự trẻ trung, năng động và thể hiện được sự mạnh mẽ, cá tính vốn có của một Quý anh hiện đại. \r\n\r\n- Quần sử dụng chất liệu Meta Flow Tex, nổi bật với cấu trúc sợi tinh chỉnh cho trải nghiệm thời trang thoải mái, dễ chịu trong mọi hoạt động. Phù hợp mặc hàng ngày và cả khi vận động thể thao: \r\n\r\n- Khả năng co dãn & đàn hồi: mang lại sự linh hoạt tối đa trong những vận động hàng ngày\r\n\r\n- Bền & chống nhăn: sản phẩm giữ form tốt ngay cả khi giặt nhiều lần bằng máy giặt. Dễ dàng bảo quản, tuổi thọ cao\r\n\r\n- Điều hòa ẩm: khả năng hấp thụ và thoát ẩm tốt, giúp cơ thể luôn thoáng khí dễ chịu', 0, 0, 2, '', ''),
(29, 'Quần jeans dáng regular', 1190000, '- Dáng regular với form ôm vừa phải giúp cho người mặc cảm thấy thoải mái và tự tin khi di chuyển.\r\n\r\n- Chất liệu vải denim cao cấp được sử dụng mang lại sự bền chắc và độ bền cao cho quần bò, giúp sản phẩm đảm bảo sẽ luôn giữ form và màu sắc nguyên bản sau nhiều lần giặt và sử dụng.\r\n\r\n- Hoạ tiết trơn cổ điển cùng với màu xanh denim trang nhã và thanh lịch, dễ dàng kết hợp với nhiều kiểu áo và phụ kiện khác nhau để tạo nên những bộ trang phục đa dạng và phong phú.', 0, 0, 2, '', ''),
(30, 'Quần Jogger khaki eo chun co giãn', 1290000, '- Quần Jogger cạp chun bản to co giãn, gấu quần bo chun, 2 túi hộp 2 bên\r\n\r\n- Chất liệu khaki dày dặn, trẻ trung, giữ form dáng tốt', 0, 0, 2, '', ''),
(31, 'Chino Jacket - Áo khoác nam kéo khóa', 1490000, 'Áo khoác nam form suông, giúp người mặc thoải mái trong từng cử động, nhưng đồng thời vẫn đảm bảo vừa vặn về số đo vai, độ dài tay áo.\r\n\r\nThiết kế tỉ mỉ đến từng chi tiết đem đến những trải nghiệm tuyệt vời nhất cho quý anh lịch lãm trong thời tiết vào thu. \r\n\r\nChino Jacket  là sản phẩm bền chắc, bền màu và có độ bóng sáng tự nhiên. Đặc biệt, vải nhẹ và thoáng, giữ nhiệt tốt, hạn chế bám bụi, dễ chăm sóc và bảo quản.', 0, 0, 1, '', ''),
(32, 'Suede Jacket - Áo khoác sơ mi da lộn', 2249000, '- Chất liệu da lộn mềm mại, đều màu, mịn như nhung, đem đến cho người mặc phong cách trẻ trung, cá tính và mang lại cảm giác ấm áp vào mùa đông\r\n\r\n- Thiết kế áo khoác kiểu dáng sơ mi: cổ đức, áo phối 2 túi hộp, cài bằng hàng khuy phía trước\r\n\r\n- Dáng regular fit phù hợp với vóc dáng người Việt.', 0, 0, 1, '', ''),
(33, 'Áo khoác sơ mi dạ', 2249000, '- Chất liệu dạ mềm nhẹ, giữ ấm tuyệt đối, khả năng giữ phom dáng và tuổi thọ cao\r\n\r\n- Thiết kế áo khoác kiểu dáng sơ mi: cổ đức, áo phối 2 túi hộp, cài bằng hàng khuy bấm phía trước\r\n\r\n- Dáng regular fit phù hợp với vóc dáng người Việt\r\n\r\n', 0, 0, 1, '', ''),
(34, 'Áo len Slim fit basic', 1390000, 'Áo len cổ tròn, viền cổ nổi, to bản 1cm. Thiết kế tay dài, kiểu dáng Slim fit trẻ trung, hiện đại. Gấu áo và cổ tay dệt kim cố định, tạo độ bo nhẹ.\r\n\r\nThiết kế basic dễ dàng mix cùng nhiều item khác nhau để tạo nên những Outfit thời thượng.\r\n\r\nChất áo len mịn, được thêu dệt tỉ mỉ đến từng chi tiết, giữ ấm tốt và mang đến cảm giác thoải mái khi mặc. ', 0, 0, 1, '', ''),
(35, 'Áo len dệt Jacquad', 1390000, 'Lấy cảm hứng từ sự kết hợp tinh tế giữa văn hoá đô thị và phong cách cá nhân, BST \"URBAN REFINED\" tôn vinh sự hiện đại và tối giản trong bản sắc thời trang của những quý anh thành thị.\r\n\r\nXuất hiện trong BST thời trang Thu Đông lần này, áo len dệt Jacquad tạo điểm nhấn qua cấu trúc dệt hoa văn độc đáo giúp nổi bật vẻ đẹp lịch lãm và phong cách thời trang cá nhân của quý anh. \r\n\r\nChất liệu len dày, giữ ấm tốt, tạo ra một cảm giác vững chãi và sang trọng. Đây quả thực là một sự lựa chọn đáng giá cho các sự kiện quan trọng. ', 0, 0, 1, '', ''),
(36, 'Zipped Polo', 790000, '- Thiết kế kiểu dáng Regular giúp người mặc thoải mái di chuyển và hoạt động, không bị hạn chế động tác.\r\n\r\n- Chất liệu thun mềm mại và mịn màng, mang đến cảm giác dễ chịu và thoải mái cho người mặc, đặc biệt là trong những ngày hè nóng bức.\r\n\r\n- Điểm nhấn của chiếc áo là khóa kéo ở cổ, giúp cho việc mặc và tháo áo trở nên nhanh chóng và tiện lợi hơn. Khoá kéo cổ áo cũng tạo thêm phần thời trang và sự sang trọng cho sản phẩm này.\r\n\r\n- Áo polo nam phối cổ khoá là một sản phẩm đa dạng phong cách và dễ dàng phối hợp với nhiều loại quần và giày khác nhau. ', 0, 0, 1, '', ''),
(37, 'Supima Polo - Áo Polo trơn thêu Logo', 990000, '- Áo polo Regular cổ đức với độ dài vừa phải kết hợp cùng tay ngắn sẽ là lựa chọn hoàn hảo cho những buổi đi chơi hoặc đi làm.\r\n\r\n- Thiết kế màu trơn trẻ trung năng động, ngực có thêu Logo nhỏ, tạo cảm giác mới lạ cho người mặc.\r\n\r\n- Bất kì trang phục nào đi kèm Supima Polo cũng mang đến cảm giác vừa lịch sự vừa thoải mái.\r\n\r\n- Áo sử dụng chất liệu Supima Cotton (Superior Pima Cotton), loại vải Cotton cao cấp được làm từ sợi của cây bông Pima. So với Cotton thông thường, sợi vải Supima Cotton dài gấp nhiều lần, cho phép các nhà thiết kế dệt nên những sản phẩm có chất lượng vượt trội hơn. Với quy trình sản xuất tiên tiến được quản lý nghiêm ngặt theo tiêu chuẩn Mỹ, Supima Cotton là một biểu tượng của thời trang cao cấp. Loại vải này không chỉ giữ màu lâu hơn, mềm mịn hơn, bền bỉ hơn, mà còn có khả năng chống co rút gấp 5 lần so với Cotton thông thường.\r\n\r\n- Quần áo sản xuất từ sợ Supima Cotton là lựa chọn tuyệt vời nâng cao sức khoẻ và chất lượng cuộc sống của bạn. Trải nghiệm ngay các sản phẩm Supima Cotton trên hệ thống cửa hàng và website chính thức của T-Project ngay hôm nay!', 0, 0, 1, '', ''),
(38, 'Áo Supima T-Project basic', 699000, '- Trong tủ đồ quý anh chắc chắn không thể thiếu những chiếc basic có thể đáp ứng mọi nhu cầu mặc, vừa đảm bảo tính thời trang vừa chỉn chu, tinh tế. \r\n\r\n- Thiết kế áo thun cổ tròn, tay ngắn, kiểu dáng Regular fit, hơi ôm nhẹ, độ dài vừa phải. \r\n\r\n- Áo sử dụng chất liệu Supima cotton 100% thành phần hoàn toàn tự nhiên với đặc tính mịn màng, dễ chịu, khả năng thấm hút mồ hôi, thoáng khí rất cao và đặc biệt, an toàn cho mọi loại da.\r\n\r\n- Hơn nữa, supima cotton còn giữ màu lâu, khiến cho các sản phẩm may mặc không bị sờn hay bay màu sau khoảng thời gian dài sử dụng.\r\n\r\n- Áo basic dễ dàng mix cùng nhiều kiểu quần khác nhau để tạo nên phong cách riêng cho mình. ', 0, 0, 1, '', ''),
(39, 'Áo thun dài tay T-Project', 890000, '- Áo thun Basic METAGENT dài tay với kiểu dáng Regular trẻ trung, hiện đại. Dáng áo suông, mặc thoải mái, thích hợp cả buông và sơ vin. Áo có thể mix với nhiều kiểu quần khác nhau như quần Tây, quần Short, quần Khaki...tất cả đều làm thay đổi tổng thể diện mạo Quý anh trở nên lịch lãm hơn.  \r\n\r\n- Thiết kế áo in chữ \"T-Project\" nổi bật, chất liệu in bóng, bền màu cao. Áo lựa chọn chất liệu vải cao cấp, mềm mại và thoáng mát, chắc chắn đây sẽ là sự lựa chọn tuyệt vời mùa Thu này. ', 0, 0, 1, '', ''),
(40, 'Quần Flow Tex trơn Regular fit', 1590000, '- Quần basic hiện đại, kiểu dáng Regular được giới trẻ ưu chuộng. \r\n\r\n- Item mang đến sự thoải mái tối đa cho người mặc, có thiết kế vừa vặn từ eo xuống đùi, phần ống được may không quá ôm khít vào chân gây khó chịu.\r\n\r\n- Thiết kế hướng tới sự thoải mái nhưng quần vẫn luôn giữ được sự trẻ trung, năng động và thể hiện được sự mạnh mẽ, cá tính vốn có của một Quý anh hiện đại. \r\n\r\n- Quần sử dụng chất liệu Meta Flow Tex, nổi bật với cấu trúc sợi tinh chỉnh cho trải nghiệm thời trang thoải mái, dễ chịu trong mọi hoạt động. Phù hợp mặc hàng ngày và cả khi vận động thể thao: \r\n\r\n- Khả năng co dãn & đàn hồi: mang lại sự linh hoạt tối đa trong những vận động hàng ngày\r\n\r\n- Bền & chống nhăn: sản phẩm giữ form tốt ngay cả khi giặt nhiều lần bằng máy giặt. Dễ dàng bảo quản, tuổi thọ cao\r\n\r\n- Điều hòa ẩm: khả năng hấp thụ và thoát ẩm tốt, giúp cơ thể luôn thoáng khí dễ chịu', 0, 0, 2, '', ''),
(41, 'Dalio Trouser - Quần Tây cúc lệch fit', 1290000, '- Quần âu dáng Regular dài ngang mắt cá chân lịch lãm, sang trọng giúp cơ thể trở lên cân đối hơn.\r\n\r\n- Form quần đơn giản dễ diện, dễ phối đồ và phù hợp cho nhiều sự kiện từ đi làm, đi họp, đi học đến đi chơi.\r\n\r\n- Chất liệu Tuysi co dãn tốt giúp người mặc thoải mái vận động.', 0, 0, 2, '', ''),
(42, 'Sleeze Short - Quần Tuysi ngang đùi', 790000, '- Thoải mái trải nghiệm các hoạt động mùa hè trong phiên bản quần Shorts cạp chun khỏe khoắn. \r\n\r\n- Thiết kế dáng Regular, có túi sườn, độ dài ngang gối giúp quý anh thoải mái vận động và di chuyển. \r\n\r\n- Sử dụng sợi vải Tuysi nổi bật với cấu trúc sợi tinh chỉnh cho trải nghiệm thời trang thoải mái, dễ chịu. Phù hợp mặc hàng ngày và khi vận động thể thao\r\n\r\nĐặc điểm:\r\n\r\nKhả năng co dãn & đàn hồi: mang lại sự linh hoạt tối đa trong những vận động hàng ngày\r\n\r\nBền & chống nhắn: sản phẩm giữ form tốt ngay cả khi giặt nhiều lần bằng máy giặt. Dễ dàng bảo quản, tuổi thọ cao\r\n\r\nĐiều hòa ẩm: khả năng hấp thụ và thoát ẩm tốt, giúp cơ thể luôn thoáng khí dễ chịu', 0, 0, 2, '', ''),
(43, 'Quần sooc thun cạp chun', 455000, 'Quần sooc lửng độ dài trên đầu gối. Cạp chun bản to co giãn thoải mái, có dây rút tạo kiểu. 2 túi chéo 2 bên tiện lợi. Quần in chữ tạo điểm nhấn.\r\n\r\nChất liệu vải thun mềm mịn, thoáng mát. Kiểu dáng trẻ trung phù hợp với vóc dáng người Việt.', 0, 0, 2, '', ''),
(44, 'Quần Flow Tex trơn Regular fit', 1590000, '- Quần basic hiện đại, kiểu dáng Regular được giới trẻ ưu chuộng. \r\n\r\n- Item mang đến sự thoải mái tối đa cho người mặc, có thiết kế vừa vặn từ eo xuống đùi, phần ống được may không quá ôm khít vào chân gây khó chịu.\r\n\r\n- Thiết kế hướng tới sự thoải mái nhưng quần vẫn luôn giữ được sự trẻ trung, năng động và thể hiện được sự mạnh mẽ, cá tính vốn có của một Quý anh hiện đại. \r\n\r\n- Quần sử dụng chất liệu Meta Flow Tex, nổi bật với cấu trúc sợi tinh chỉnh cho trải nghiệm thời trang thoải mái, dễ chịu trong mọi hoạt động. Phù hợp mặc hàng ngày và cả khi vận động thể thao: \r\n\r\n- Khả năng co dãn & đàn hồi: mang lại sự linh hoạt tối đa trong những vận động hàng ngày\r\n\r\n- Bền & chống nhăn: sản phẩm giữ form tốt ngay cả khi giặt nhiều lần bằng máy giặt. Dễ dàng bảo quản, tuổi thọ cao\r\n\r\n- Điều hòa ẩm: khả năng hấp thụ và thoát ẩm tốt, giúp cơ thể luôn thoáng khí dễ chịu', 0, 0, 2, '', ''),
(45, 'Quần Slim fit', 1190000, '- Quần âu dáng Slim fit dài ngang mắt cá chân lịch lãm, sang trọng giúp cơ thể trở lên cân đối hơn.\r\n\r\n- Form quần đơn giản dễ diện, dễ phối đồ và phù hợp cho nhiều sự kiện từ đi làm, đi họp, đi học đến đi chơi.\r\n\r\n- Chất liệu Khaki trơn co dãn giúp người mặc thoải mái vận động.', 0, 0, 2, '', ''),
(46, 'Quần Flow Tex trơn Regular fit', 1590000, '- Quần basic hiện đại, kiểu dáng Regular được giới trẻ ưu chuộng. \r\n\r\n- Item mang đến sự thoải mái tối đa cho người mặc, có thiết kế vừa vặn từ eo xuống đùi, phần ống được may không quá ôm khít vào chân gây khó chịu.\r\n\r\n- Thiết kế hướng tới sự thoải mái nhưng quần vẫn luôn giữ được sự trẻ trung, năng động và thể hiện được sự mạnh mẽ, cá tính vốn có của một Quý anh hiện đại. \r\n\r\n- Quần sử dụng chất liệu Meta Flow Tex, nổi bật với cấu trúc sợi tinh chỉnh cho trải nghiệm thời trang thoải mái, dễ chịu trong mọi hoạt động. Phù hợp mặc hàng ngày và cả khi vận động thể thao: \r\n\r\n- Khả năng co dãn & đàn hồi: mang lại sự linh hoạt tối đa trong những vận động hàng ngày\r\n\r\n- Bền & chống nhăn: sản phẩm giữ form tốt ngay cả khi giặt nhiều lần bằng máy giặt. Dễ dàng bảo quản, tuổi thọ cao\r\n\r\n- Điều hòa ẩm: khả năng hấp thụ và thoát ẩm tốt, giúp cơ thể luôn thoáng khí dễ chịu', 0, 0, 2, '', ''),
(47, 'Quần jeans dáng regular', 1190000, '- Dáng regular với form ôm vừa phải giúp cho người mặc cảm thấy thoải mái và tự tin khi di chuyển.\r\n\r\n- Chất liệu vải denim cao cấp được sử dụng mang lại sự bền chắc và độ bền cao cho quần bò, giúp sản phẩm đảm bảo sẽ luôn giữ form và màu sắc nguyên bản sau nhiều lần giặt và sử dụng.\r\n\r\n- Hoạ tiết trơn cổ điển cùng với màu xanh denim trang nhã và thanh lịch, dễ dàng kết hợp với nhiều kiểu áo và phụ kiện khác nhau để tạo nên những bộ trang phục đa dạng và phong phú.', 0, 0, 2, '', ''),
(48, 'Quần Jogger khaki eo chun co giãn', 1290000, '- Quần Jogger cạp chun bản to co giãn, gấu quần bo chun, 2 túi hộp 2 bên\r\n\r\n- Chất liệu khaki dày dặn, trẻ trung, giữ form dáng tốt', 0, 0, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `size_product`
--

CREATE TABLE `size_product` (
  `id` int(11) NOT NULL,
  `id_sp` int(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `size_product`
--

INSERT INTO `size_product` (`id`, `id_sp`, `size`, `quantity`) VALUES
(1, 1, 'S', 10),
(2, 1, 'M', 10),
(3, 1, 'L', 10),
(4, 1, 'XL', 10);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'Admin', '123456', 'admin@fpt.edu.vn', NULL, NULL, 1),
(2, 'Trangg', '123456', '', NULL, NULL, 1),
(3, 'Lê Phương Nam', '1234565', '', 'Hà Nội', NULL, 0),
(5, 'trangg', 'trang_ph19102004', 'trangnhph44199@fpt.edu.vn', NULL, NULL, 0),
(6, 'trangggggg', '191004', 'Nhtrang191004@gmail.com', NULL, NULL, 0),
(7, 'trangg', '123', 'Nhtrang191004@gmail.com', NULL, NULL, 0),
(8, 'Nguyễn Phương Lam', '123', 'Lam0503@gmail.com', 'ngõ 55 Hoàng Hoa Thám, Ba Đình, Hà Nội', '0397183920', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `color_category`
--
ALTER TABLE `color_category`
  ADD PRIMARY KEY (`id_color`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `img_product_ibfk_1` (`id_sp`),
  ADD KEY `ten_khoa_ngoai1` (`id_color`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddm` (`iddm`);

--
-- Indexes for table `size_product`
--
ALTER TABLE `size_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `color_category`
--
ALTER TABLE `color_category`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `size_product`
--
ALTER TABLE `size_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `img_product`
--
ALTER TABLE `img_product`
  ADD CONSTRAINT `img_product_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `ten_khoa_ngoai1` FOREIGN KEY (`id_color`) REFERENCES `color_category` (`id_color`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);

--
-- Constraints for table `size_product`
--
ALTER TABLE `size_product`
  ADD CONSTRAINT `size_product_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
