-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 02, 2024 lúc 07:15 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `init` varchar(255) DEFAULT '0',
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`, `init`, `createAt`, `updateAt`) VALUES
('admin', '$2y$10$opTajGLvTMMvmFh2jrHU5.lPhuoaSI1VcBhVrKbezA6GnRgigo6D6', '1', NULL, '2024-05-02 12:13:58'),
('cac_admin', '$2y$10$BY8sE7paHyaquMkcLxbgo.OrirPRElHzYozVqEBqjhlcOQ0i4XPUq', '0', '2024-05-02 11:52:28', '2024-05-02 11:52:28'),
('duyanh_admin', '$2y$10$bZuC3fDrH.0B02E2J0Ga7Ogo/PQSMbL6/ZAKvsNl2M/.e4/fp6IJa', '0', '2024-05-02 11:55:58', '2024-05-02 11:55:58'),
('ngoc_admin', '$2y$10$KsFYCZDTGvLbU6RUdIja9eCVo4S1IKZxbJa4ykK5yFqamoLD6TMnC', '0', '2024-05-02 11:55:38', '2024-05-02 11:55:38'),
('thao_admin', '$2y$10$PSO.j4HwtRWuwlT6SSH0auVDbveBUDpM.vGjLBvBdB2J0SfrWXqIi', '0', '2024-05-02 11:52:47', '2024-05-02 11:52:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `date`, `approved`, `content`, `news_id`, `user_id`, `parent`) VALUES
(1, '2024-05-02 12:01:18', 1, 'Tour vui lắm ạ :3', 2, 'doanthao@gmail.com', NULL),
(2, '2024-05-02 12:02:05', 1, 'Gian hàng KMS năm nào cũng tưng bừng hết >.<', 1, 'doanthao@gmail.com', NULL),
(3, '2024-05-02 12:08:08', 1, 'Chất lượng quá ạ', 1, 'cacle@gmail.com', NULL),
(4, '2024-05-02 12:09:28', 1, '10 điểm không có nhưng', 1, 'baongoc@gmail.com', 2),
(5, '2024-05-02 12:09:57', 1, 'Năm sau bên mình tổ chức tiếp đi ạ', 2, 'baongoc@gmail.com', NULL),
(6, '2024-05-02 12:10:57', 1, 'Iu KMS nhiều ạ', 2, 'duyanh@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `createAt`, `updateAt`) VALUES
(1, 'Chi nhánh TPHCM', '268 Lý Thường Kiệt, Phường 14, Quận 10, TPHCM', NULL, NULL),
(2, 'Chi nhánh Đà Nẵng', 'Số 346, đường 2/9,\nQuận Hải Châu,\nThành phố Đà Nẵng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `status`, `date`, `description`, `content`, `title`) VALUES
(1, 1, '2024-03-30 17:00:00', 'Chuyên nghiệp, nhiệt huyết, và cháy hết mình là những điều KMS nhận được từ các bạn sinh viên Bách Khoa trong Job Fair Chủ Nhật vừa qua.\nCùng nhìn lại những khoảnh khắc đáng nhớ qua album này nhé.', 'Chuyên nghiệp, nhiệt huyết, và cháy hết mình là những điều KMS nhận được từ các bạn sinh viên Bách Khoa trong Job Fair Chủ Nhật vừa qua.\n\n\n\n\n\n\nCùng nhìn lại những khoảnh khắc đáng nhớ qua album này nhé.', 'KMS x CSE Job Fair 2022 💙'),
(2, 1, '2023-11-11 00:00:00', 'Cùng khởi động lại hành trình khám phá 360 độ về KMS Technology Vietnam với 80+ bạn sinh viên HCMUS và UIT trong KMS Tour 10/5 này', '⭐ KMS Fresher Program: Giải mã chi tiết chương trình tuyển dụng Fresher- cơ hội “cất cánh” sự nghiệp tại một trong những môi trường làm việc tốt nhất tại Việt Nam và châu Á.\n\n⭐ Alumni Talks: Chia sẻ đầy cảm hứng từ các KMSers là cựu sinh viên HCMUS và UIT.\n\n⭐ Office Tour & Project Visits: Tham quan văn phòng và tận mắt quan sát, tìm hiểu về các dự án.\n\n⭐ CV Clinic: Được tư vấn hoàn thiện và nâng cấp CV theo hình thức 1-1.\n\n⭐ Acoustic Show: Thưởng thức trà bánh, hòa mình vào show nhạc Acoustic tại coffee lounge.\n\nCác anh chị KMSers vô cùng háo hức và mong chờ vào cuộc hẹn này. Còn các bạn sinh viên thì sao? 😆', '[HCMC] KMS TOUR OFFLINE chính thức trở lại!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `price`, `name`, `description`, `content`, `img`) VALUES
(1, 0, 'Katalon', 'Katalon Studio là một giải pháp kiểm thử tự động được phát triển bởi Katalon LLC.', 'Phần mềm này được xây dựng dựa trên các khung tự động hóa nguồn mở Selenium, Appium với giao diện IDE chuyên dụng để kiểm thử ứng dụng web, API, di động và máy tính để bàn. Bản phát hành đầu tiên để sử dụng nội bộ là vào tháng 1 năm 2015. Bản phát hành công khai đầu tiên là vào tháng 9 năm 2016. Năm 2018, phần mềm đã giành được 9% thâm nhập thị trường trong lĩnh vực kiểm thử tự động giao diện người dùng, theo Báo cáo về tình hình kiểm thử năm 2018 của SmartBear.\r\n\r\nKatalon được công nhận là Sự lựa chọn của khách hàng trong lĩnh vực kiểm thử tự động phần mềm của Gartner Peer Insights tháng 3 năm 2019 và tháng 3 năm 2020.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Katalon-logo-vector.svg/1200px-Katalon-logo-vector.svg.png'),
(2, 50000, 'Kobiton', '“Kobiton là công ty duy nhất trên thị trường có khả năng kết hợp việc kiểm thử trên các thiết bị thực với giải pháp tự động hóa”', 'Kobiton là startup phần mềm được sáng lập năm 2016 từ đội ngũ lãnh đạo và kỹ sư người Việt thuộc KMS Technology, và đang có hơn 120 nhân viên tại Việt Nam và Atlanta (Mỹ). Họ phát triển giải pháp kiểm thử phần mềm trên thiết bị di động duy nhất cung cấp đầy đủ điều kiện cần thiết để doanh nghiệp có thể phát hành ứng dụng di động ra thị trường nhanh chóng.\nQuá trình kiểm thử phần mềm được thực hiện trên các thiết bị di động thực, hỗ trợ khách hàng trên toàn cầu ở nhiều quy mô, từ các doanh nghiệp “kỳ lân” cho đến các công ty blue-chip, đáp ứng yêu cầu của nhiều lĩnh vực như bán lẻ, giải trí, dịch vụ tài chính, sáng tạo và ngành du lịch.\n\nĐến đầu năm nay, Kobiton đã đạt mốc hơn 50.000 người dùng trên toàn cầu. Nhờ vào việc ứng dụng công nghệ AI và việc sáp nhập gần đây cùng Mobile Labs, Kobiton đã đạt mức tăng trưởng 250% so với cùng kỳ năm trước.\n\n', 'https://theme.zdassets.com/theme_assets/292254/86844d094285d4818cfd9bbb1c0c1bedea95b65d.png'),
(3, 25000, 'Grove', 'Bạn đang quản lý nhân sự hay quản lý giấy tờ?', 'Trải nghiệm FREE phần mềm quản trị nhân sự toàn diện trong 2 tháng\nBạn dành phần lớn thời gian để tìm kiếm, sắp xếp, tổng hợp dữ liệu trên các tập tin Excel, spreadsheet khác nhau. Hay bạn dành thời gian để lên kế hoạch, trình bày báo cáo, đưa ra những quyết định chiến lược và xây dựng đội ngũ làm việc gắn kết, hiệu quả cao.\n\nGrove HR tin rằng với một giải pháp nhân sự hiện đại và đồng bộ hoá, quản lý giấy tờ sẽ không còn là gánh nặng. Bạn sẽ có thời gian để tập trung vào việc quan trọng nhất - phát triển nguồn nhân lực! Trải nghiệm ngay giải pháp nhân sự toàn diện Grove HR.\nGrove HR là sản phẩm HR được phát triển và xây dựng bởi công ty công nghệ hàng đầu - KMS Technology. Với mục tiêu giúp các doanh nghiệp tại Việt Nam phát triển tối ưu, Grove HR “số hoá\" các bài toán nhân sự.', 'https://c.smartrecruiters.com/sr-company-images-prod/58cbb8d5e4b0867c17f57588/699da839-5f7d-45c3-8810-8c86dca65287_social_logo/300x300?r=s3&_1621408203503'),
(4, 25000, 'Visily', 'Visily là một phần mềm thiết kế giao diện sản phẩm (UI – user interface)', 'Visily là một phần mềm thiết kế giao diện sản phẩm (UI – user interface) dành cho người dùng không chuyên, tập trung vào câu chuyện hỗ trợ người dùng thiết kế dễ dàng với các tính năng sử dụng sức mạnh của trí thông minh nhân tạo (AI – artificial intelligence). Sau 6 tháng ở giai đoạn thử nghiệm, Visily cũng đã cho ra mắt phiên bản chính thức đầu tiên của mình vào tháng 5/2022.\n\nVới một giao diện trực quan, cùng với thư viện thiết kế phong phú và các tính năng sử dụng sức mạnh của trí thông minh nhân tạo, Visily đã giúp hàng nghìn người dùng ở các vị trí khác nhau trong các đội ngũ xây dựng và phát triển sản phẩm tạo nên những mockup giao diện ứng dụng một cách dễ dàng.', 'https://prices.vn/photos/banner/1639114098-ma-giam-gia-visily.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`email`, `profile_photo`, `fname`, `lname`, `gender`, `age`, `phone`, `createAt`, `updateAt`, `password`) VALUES
('baongoc@gmail.com', 'public/img/user/default.png', 'Nguyễn Trần Bảo', 'Ngọc', 0, 21, '0123456789', '2024-05-02 12:08:52', '2024-05-02 12:08:52', '$2y$10$pwgcYgO3G4sY/U4wJ2lE5eP5U56G0WCL9s4bw082rwahxGHLQ.mCm'),
('cacle@gmail.com', 'public/img/user/default.png', 'Lê Phương', 'Các', 1, 21, '0123456789', '2024-05-02 12:06:35', '2024-05-02 12:06:35', '$2y$10$BsRXOIbsKNKFcyHxcsUPeORQ72HOA03WyeS7ReEC88ZWyImbIvsd2'),
('doanthao@gmail.com', 'public/img/user/2024_05_02_07_00_48am.jpg', 'Võ Nguyễn Đoan', 'Thảo', 0, 21, '0123456789', '2024-05-02 11:58:45', '2024-05-02 12:00:48', '$2y$10$P7Cjpf6tnbV4OX44mMaGWOuBKeHypVk8faLovZyGIBBAfSox/lwc6'),
('duyanh@gmail.com', 'public/img/user/default.png', 'Lê Duy', 'Anh', 1, 21, '0123456789', '2024-05-02 12:10:21', '2024-05-02 12:10:21', '$2y$10$790eBNXFWVxsrUbAO5seHewRYtNVBAuyWlZkEn5q6LglU0IYrZnYi');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent` (`parent`);

--
-- Chỉ mục cho bảng `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`parent`) REFERENCES `comment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
