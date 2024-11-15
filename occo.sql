-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Nov 15, 2024 at 11:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `occo`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_logs`
--

CREATE TABLE `access_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `hour` int(11) NOT NULL,
  `visit_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_logs`
--

INSERT INTO `access_logs` (`id`, `date`, `hour`, `visit_count`, `created_at`, `updated_at`) VALUES
(1, '2024-10-04', 1, 1, '2024-10-03 18:44:53', '2024-10-03 18:44:53'),
(2, '2024-10-04', 8, 2, '2024-10-04 01:45:35', '2024-10-04 01:59:34'),
(3, '2024-11-15', 17, 14, '2024-11-15 10:11:48', '2024-11-15 10:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1731667810),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1731667810;', 1731667810);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_02_105533_create_site_settings_table', 2),
(5, '2024_10_03_013713_add_title_content_and_time_to_site_settings_table', 3),
(6, '2024_10_04_000126_add_fields_to_site_settings_table', 4),
(7, '2024_10_04_013553_add_themes_settings_to_users_table', 5),
(8, '2024_10_04_013829_create_access_logs_table', 6),
(9, '2024_10_04_014258_create_access_logs_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Vj0yIb8bzXKYillsWLe3lEY3ZGVSawqqYa4GGYab', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidExQZnBucGg1amkyUjYwS1RCUVVCa0tjNkhDaTZrMzhDYXF1MTBpWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9zaXRlLXNldHRpbmdzLzEvZWRpdCI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkLk9FeHhUSjVmN0ZNVGdzTnBZaGdZZUFTaDF6NHpER0JiVWdDN3dvOXMvUHFUR1FMaGROUnEiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1731668013);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'hoạt động',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `maintenance_time` timestamp NULL DEFAULT NULL,
  `about` text DEFAULT NULL,
  `privacy_policy_image` varchar(255) DEFAULT NULL,
  `privacy_policy_content` text DEFAULT NULL,
  `terms_image` varchar(255) DEFAULT NULL,
  `terms_content` text DEFAULT NULL,
  `enable_upgrade` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL DEFAULT 'image',
  `video` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `status`, `created_at`, `updated_at`, `title`, `content`, `maintenance_time`, `about`, `privacy_policy_image`, `privacy_policy_content`, `terms_image`, `terms_content`, `enable_upgrade`, `type`, `video`, `image`) VALUES
(1, 'bảo trì', '2024-10-02 03:57:37', '2024-11-15 10:49:20', 'Thông báo bảo trì', '<p>&nbsp;Website hiện đang trong chế độ bảo trì. Xin vui lòng quay lại sau!&nbsp;</p>', '2024-11-25 01:44:19', '<p>Occo là một ứng dụng \"Dịch vụ\" mạng xã hội Được phát triển và quản lý bởi CÔNG TY TNHH NPH DIGITAL.</p><p>Ứng dụng Occo cung cấp dịch vụ kết nối người dùng qua các nền tảng trực tuyến.</p><p>Occo cho phép người dùng tạo tài khoản và kết nối với các thành viên khác, nhằm mục đích tìm kiếm mối quan hệ xã hội có thể là tương tác hoặc giải trí. Occo cung cấp các tính năng như tạo hồ sơ cá nhân, nhắn tin, và các công cụ để tương tác và giao tiếp giữa các thành viên. Occo cũng đưa ra các chính sách bảo mật, an toàn và điều khoản sử dụng để bảo vệ quyền lợi và đảm bảo an toàn cho người dùng khi sử dụng dịch vụ.</p><p>Hãy tải ứng dụng, đăng ký &amp; trải nghiệm ngay hôm nay!</p>', 'privacy-policy-images/01J9ADKRYPN0BGCTXJGQME52XJ.png', '<p><strong>1. Thu Thập Thông Tin Cá Nhân</strong></p><p><strong>1.1 Thông tin đăng ký:</strong></p><p>• Khi bạn tạo tài khoản trên Occo, bạn sẽ cần cung cấp các thông tin cá nhân cơ bản như tên, email, địa chỉ, số điện thoại và ngày sinh.</p><p>• Nếu bạn chọn đăng nhập qua các mạng xã hội như Facebook, Google hoặc Apple, Occo sẽ truy cập vào một số thông tin công khai từ các tài khoản này như hồ sơ công khai, danh sách bạn bè và ảnh đại diện.</p><p><br></p><p><strong>1.2 Thông tin hồ sơ:</strong></p><p>• Bạn có thể tự nguyện bổ sung thêm thông tin vào hồ sơ cá nhân của mình bao gồm sở thích, mô tả cá nhân và ảnh.</p><p><br></p><p><strong>1.3 Dữ liệu hoạt động:</strong></p><p>• Occo ghi nhận các hoạt động của bạn trên nền tảng như các kết nối, tin nhắn, tìm kiếm và tương tác với các thành viên khác.</p><p><br></p><p><strong>1.4 Dữ liệu kỹ thuật:</strong></p><p>• Thông tin về thiết bị của bạn (như loại thiết bị, hệ điều hành), địa chỉ IP, dữ liệu cookies và các thông tin liên quan khác cũng được thu thập để đảm bảo tính bảo mật và cải thiện trải nghiệm người dùng.</p><p><strong>2. Sử Dụng Thông Tin Cá Nhân</strong></p><p><strong>2.1 Cung cấp và quản lý dịch vụ:</strong></p><p>• Thông tin cá nhân của bạn giúp chúng tôi tạo và quản lý tài khoản của bạn, hỗ trợ các tính năng tương tác và kết nối xã hội.</p><p>• Thông tin liên hệ của bạn giúp chúng tôi hỗ trợ bạn một cách hiệu quả khi bạn cần trợ giúp hoặc có thắc mắc.</p><p><br></p><p><strong>2.2 Cải thiện dịch vụ:</strong></p><p>• Dữ liệu hoạt động và phản hồi của bạn giúp chúng tôi hiểu rõ hơn về cách bạn tương tác với nền tảng, từ đó cải tiến các tính năng và dịch vụ.</p><p>• Thông tin thu thập được cũng giúp chúng tôi phát triển các tính năng mới.</p><p><br></p><p><strong>2.3 Bảo mật:</strong></p><p>• Dữ liệu kỹ thuật và hoạt động được sử dụng để phát hiện và ngăn chặn các hành vi gian lận, lạm dụng hoặc vi phạm chính sách.</p><p>• Chúng tôi sử dụng thông tin kỹ thuật để bảo vệ tài khoản của bạn.</p><p><br></p><p><strong>2.4 Quảng cáo và tiếp thị:</strong></p><p>• Thông tin của bạn có thể được sử dụng để cung cấp các sản phẩm, quảng cáo và thông báo cá nhân hóa.</p><p>• Chúng tôi có thể gửi cho bạn các thông báo về các tính năng mới, cập nhật dịch vụ hoặc các ưu đãi đặc biệt.</p><p><strong>3. Bảo Vệ Thông Tin Cá Nhân</strong></p><p><strong>3.1 Mã hóa:</strong></p><p>• Thông tin nhạy cảm được mã hóa cả khi truyền tải và khi lưu trữ để đảm bảo rằng dữ liệu luôn được bảo vệ khỏi truy cập trái phép.</p><p><br></p><p><strong>3.2 Kiểm soát truy cập:</strong></p><p>• Chỉ những nhân viên có thẩm quyền mới được phép truy cập vào thông tin cá nhân của bạn. Tất cả các nhân viên này đều phải tuân thủ các chính sách bảo mật nghiêm ngặt.</p><p><br></p><p><strong>3.3 Giám sát và phát hiện:</strong></p><p>• Hệ thống giám sát liên tục được triển khai để phát hiện và phản hồi kịp thời các mối đe dọa bảo mật.</p><p>• Occo thực hiện các kiểm tra bảo mật định kỳ và đánh giá rủi ro để phát hiện và khắc phục các lỗ hổng bảo mật tiềm ẩn.</p><p><strong>4. Quyền của Người Dùng</strong></p><p><br></p><p>Người dùng có quyền truy cập, chỉnh sửa và xóa thông tin cá nhân của mình trên Occo. Bạn có thể tùy chỉnh các tùy chọn bảo mật và quản lý cách thông tin của mình được sử dụng. Nếu có bất kỳ câu hỏi hoặc lo ngại nào về việc xử lý dữ liệu, bạn có thể liên hệ với bộ phận hỗ trợ khách hàng của Occo để được giải đáp và hỗ trợ.</p><p><strong>5. Cập Nhật Chính Sách Bảo Mật</strong></p><p><br></p><p>Occo có quyền thay đổi Chính sách Bảo mật này theo thời gian. Các thay đổi sẽ được đăng trên phần Chính sách trong mục Cài đặt và trên website Occo.vn. Nếu thay đổi ảnh hưởng trực tiếp đến quyền hoặc nghĩa vụ của bạn, Occo sẽ thông báo ít nhất 30 ngày trước khi thay đổi có hiệu lực. Việc tiếp tục sử dụng dịch vụ sau khi thay đổi đồng nghĩa với việc bạn chấp nhận Chính sách Bảo mật sửa đổi.</p><p><strong>6. Liên Hệ và Báo Cáo Vi Phạm</strong></p><p><br></p><p>Nếu có bất kỳ câu hỏi hoặc muốn báo cáo vi phạm, bạn có thể liên hệ với đội ngũ hỗ trợ của Occo qua các kênh sau:</p><p>• <strong>Chat trực tiếp tại Occo:</strong> UID 111</p><p>• <strong>Email Hỗ Trợ Khách Hàng:</strong> support@occo.vn</p><p>• <strong>Số Điện Thoại Hỗ Trợ Khách Hàng:</strong> 0399961368 (hoạt động 24/7)</p><p>• <strong>Địa Chỉ Văn Phòng:</strong> Số 838 Ấp Vĩnh Bình, Xã An Vĩnh Ngãi, Tp Tân An, Tỉnh Long An, Việt Nam</p><p><strong>7. Quy Trình Xử Lý Báo Cáo</strong></p><p><strong>7.1 Tiếp nhận báo cáo:</strong></p><p>• Đội ngũ hỗ trợ sẽ nhận và ghi nhận báo cáo của bạn vào hệ thống.</p><p><br></p><p><strong>7.2 Đánh giá báo cáo:</strong></p><p>• Các chuyên viên sẽ xem xét và đánh giá báo cáo dựa trên thông tin và bằng chứng bạn cung cấp.</p><p><br></p><p><strong>7.3 Điều tra:</strong></p><p>• Nếu cần, đội ngũ sẽ tiến hành điều tra thêm để xác minh vi phạm.</p><p><br></p><p><strong>7.4 Hành động:</strong></p><p>• Dựa trên kết quả điều tra, Occo sẽ thực hiện các biện pháp thích hợp bao gồm cảnh báo, đình chỉ hoặc chấm dứt tài khoản của người vi phạm.</p><p><br></p><p><strong>7.5 Thông báo kết quả:</strong></p><p>• Bạn sẽ nhận được thông báo về kết quả xử lý báo cáo qua email hoặc thông báo trên ứng dụng.</p><p><strong>8. Trách Nhiệm của Người Dùng</strong></p><p><br></p><p>Người dùng có trách nhiệm duy trì bảo mật thông tin đăng nhập của mình và chịu trách nhiệm cho tất cả các hoạt động diễn ra dưới tài khoản của mình. Nếu phát hiện bất kỳ hành vi truy cập trái phép nào, bạn nên liên hệ ngay với bộ phận hỗ trợ khách hàng của Occo.</p><p><strong>9. Các Biện Pháp Bảo Mật Khác Mà Occo Có Thể Áp Dụng</strong></p><p><strong>9.1 Kiểm Soát An Ninh Vật Lý:</strong></p><p>• <strong>An Ninh Trung Tâm Dữ Liệu:</strong> Các trung tâm dữ liệu của chúng tôi được bảo vệ bởi các biện pháp an ninh vật lý nghiêm ngặt như bảo vệ 24/7, hệ thống camera giám sát và kiểm soát ra vào.</p><p>• <strong>Bảo Vệ Khỏi Thảm Họa:</strong> Chúng tôi áp dụng các giải pháp bảo vệ khỏi thảm họa thiên nhiên và các sự cố không mong muốn để đảm bảo an toàn cho dữ liệu.</p><p><br></p><p><strong>9.2 Chính Sách và Quy Trình Bảo Mật:</strong></p><p>• <strong>Chính Sách Bảo Vệ Dữ Liệu:</strong> Chúng tôi duy trì các chính sách bảo mật chi tiết để bảo vệ thông tin cá nhân của bạn.</p><p>• <strong>Quy Trình Ứng Phó Sự Cố:</strong> Chúng tôi có các quy trình chi tiết để phản ứng và giải quyết nhanh chóng trong trường hợp xảy ra sự cố bảo mật.</p><p><br></p><p><strong>9.3 Hệ Thống Phòng Thủ Chủ Động:</strong></p><p>• <strong>Tường Lửa và Hệ Thống Phòng Thủ Mạng:</strong> Chúng tôi sử dụng hệ thống tường lửa và công nghệ phòng thủ tiên tiến để bảo vệ hệ thống khỏi các cuộc tấn công từ bên ngoài.</p><p>• <strong>Hệ Thống Phát Hiện và Chặn Xâm Nhập (IDS/IPS):</strong> Các hệ thống IDS/IPS giúp chúng tôi phát hiện và ngăn chặn các cuộc tấn công mạng trong thời gian thực.</p><p><br></p><p><strong>9.4 Bảo Vệ Ứng Dụng:</strong></p><p>• <strong>Kiểm Tra Bảo Mật Ứng Dụng:</strong> Các ứng dụng của chúng tôi được kiểm tra bảo mật định kỳ để phát hiện và vá các lỗ hổng bảo mật.</p><p>• <strong>Cập Nhật và Vá Lỗ Hổng:</strong> Chúng tôi liên tục cập nhật và vá các lỗ hổng bảo mật trong các phần mềm và hệ thống để bảo vệ khỏi mối đe dọa mới nhất.</p><p><strong>10. Kế Hoạch Cung Cấp Biện Pháp Bảo Mật Trong Tương Lai</strong></p><p><strong>10.1 Nâng Cấp Công Nghệ Bảo Mật:</strong></p><p>• <strong>Cải Tiến Mã Hóa Dữ Liệu:</strong> Sử dụng các thuật toán mã hóa tiên tiến hơn như mã hóa lượng tử để tăng cường bảo mật dữ liệu.</p><p>• <strong>Tăng Cường Hệ Thống Phòng Thủ Mạng:</strong> Ứng dụng trí tuệ nhân tạo (AI) và học máy (machine learning) vào các hệ thống phát hiện và ngăn chặn xâm nhập (IDS/IPS) để tự động nhận diện và phản ứng nhanh chóng với các mối đe dọa mới.</p><p><br></p><p><strong>10.2 Cải Thiện Quy Trình Bảo Mật:</strong></p><p>• <strong>Kiểm Tra Thâm Nhập:</strong> Tăng cường tần suất và phạm vi của các kiểm tra thâm nhập để phát hiện và giải quyết kịp thời các lỗ hổng bảo mật.</p><p>• <strong>Red Teaming:</strong> Tổ chức các hoạt động Red Teaming trong đó nhóm bảo vệ thực hiện mô phỏng các cuộc tấn công để kiểm tra khả năng phòng thủ của chúng tôi.</p><p><br></p><p><strong>10.3 Hợp Tác và Chứng Nhận Bảo Mật:</strong></p><p>• <strong>Hợp Tác Với Chuyên Gia Bảo Mật:</strong> Mở rộng chương trình Bug Bounty nhằm khuyến khích cộng đồng bảo mật đóng góp vào việc phát hiện và giải quyết các lỗi bảo mật.</p><p>• <strong>Chứng Nhận Bảo Mật:</strong> Theo đuổi các chứng nhận bảo mật quốc tế mới để đảm bảo rằng các biện pháp bảo mật của chúng tôi luôn đáp ứng các tiêu chuẩn cao nhất.</p><p><br></p><p><strong>10.4 Đào Tạo và Nhận Thức Bảo Mật:</strong></p><p>• <strong>Đào Tạo Nhân Viên:</strong> Tổ chức các chương trình đào tạo bảo mật liên tục cho nhân viên để nâng cao nhận thức và kỹ năng bảo mật.</p><p>• <strong>Hướng Dẫn Bảo Mật Cho Người Dùng:</strong> Cung cấp các hướng dẫn và tùy chọn bảo mật mới cho người dùng như xác thực hai yếu tố (2FA) nâng cao.</p><p><strong>11. Miễn Trừ Trách Nhiệm</strong></p><p><strong>11.1 Tính Chính Xác của Thông Tin:</strong></p><p>• Occo không đảm bảo tính chính xác, đầy đủ hoặc đáng tin cậy của mọi thông tin trên nền tảng của chúng tôi. Người dùng cần tự chịu trách nhiệm xác minh thông tin trước khi đưa ra quyết định hoặc hành động dựa trên thông tin này.</p><p><br></p><p><strong>11.2 Hành Vi của Người Dùng:</strong></p><p>• Occo không chịu trách nhiệm về hành vi hoặc hành động của người dùng trên nền tảng của chúng tôi. Mỗi người dùng phải tự chịu trách nhiệm về hành vi của mình và tuân thủ các quy định và nguyên tắc sử dụng dịch vụ.</p><p><br></p><p><strong>11.3 Nội Dung của Người Dùng:</strong></p><p>• Occo không kiểm soát hoặc chịu trách nhiệm về nội dung được tạo ra bởi người dùng trên nền tảng của chúng tôi. Mọi quyết định hoặc hành động dựa trên nội dung này là trách nhiệm của người dùng.</p><p><br></p><p><strong>11.4 Mối Quan Hệ Giữa Người Dùng:</strong></p><p>• Occo không can thiệp vào hoặc chịu trách nhiệm về mọi mối quan hệ phát sinh giữa các người dùng trên nền tảng của chúng tôi. Mọi quan hệ cá nhân hoặc chuyên môn là trách nhiệm của các bên liên quan.</p><p><br></p><p><strong>11.5 Thiệt Hại Trực Tiếp hoặc Gián Tiếp:</strong></p><p>• Occo không chịu trách nhiệm đối với bất kỳ thiệt hại trực tiếp, gián tiếp, ngẫu nhiên, đặc biệt hoặc phát sinh từ việc sử dụng hoặc không thể sử dụng dịch vụ của chúng tôi.</p><p><br></p><p><strong>11.6 Tấn Công Mạng và Các Rủi Ro Liên Quan:</strong></p><p>• Occo cam kết áp dụng các biện pháp bảo mật hàng đầu và các công nghệ tiên tiến nhất để bảo vệ thông tin cá nhân của người dùng. Tuy nhiên, trong một môi trường mạng không ngừng biến đổi, không có hệ thống bảo mật nào có thể đảm bảo hoàn toàn an toàn. Các loại tấn công mạng có thể phát sinh bất cứ lúc nào và có thể bao gồm nhưng không giới hạn: tấn công từ chối dịch vụ (DDoS), tấn công malware, vi rút, hack và các mã độc khác.</p><p>• Trong trường hợp dữ liệu cá nhân của người dùng bị lộ do các tấn công mạng hoặc các yếu tố bất khả kháng khác, người dùng đồng ý miễn trừ Occo khỏi mọi trách nhiệm liên quan. Người dùng chấp nhận rằng họ sẽ không đòi hỏi bồi thường từ phía Occo và tự chịu trách nhiệm khi tiếp tục sử dụng dịch vụ của nền tảng.</p><p><br></p><p><strong>11.7 Chấp Nhận Miễn Trừ Trách Nhiệm:</strong></p><p>• Bằng cách sử dụng dịch vụ của chúng tôi, người dùng hiểu và chấp nhận rằng một số trách nhiệm có thể được miễn trừ như đã nêu trên. Điều này cũng áp dụng cho việc sử dụng thông tin, sản phẩm hoặc dịch vụ có liên quan đến Occo.</p>', 'terms-images/01J9ADKRZ8T7PAJE15ZZMYH65F.png', '<p><strong style=\"text-decoration: underline;\">I. Giới thiệu</strong></p><p><br></p><p>1. Thỏa thuận sử dụng dịch vụ Occo thông qua bất kì phương tiện nào, bạn đồng ý bị ràng buộc bởi các Điều khoản Sử dụng, Chính sách Quyền riêng tư, Chính sách Cookie, Thủ tục Trọng tài (nếu áp dụng), Lời khuyên An toàn và Nguyên tắc Cộng đồng cùng với bất kỳ điều khoản bổ sung nào cho các tính năng, sản phẩm hoặc dịch vụ bổ sung mà Occo cung cấp.</p><p>2. Để sử dụng bất kỳ dịch vụ thuộc Occo, người dùng cần đồng ý với toàn bộ các điều khoản và điều kiện của Thỏa thuận này; trường hợp người dùng không đồng ý với bất kỳ điều khoản nào của Thỏa thuận này thì người dùng cần ngay lập tức chấm dứt việc sử dụng các dịch vụ.</p><p>3. Người dùng đồng ý đã đọc, hiểu và cam kết tuân thủ toàn bộ nguyên tắc được quy định trong thỏa thuận này và quy định hoặc quy chế liên kết tích hợp. Trong trường hợp xảy ra mâu thuẫn giữa các điều khoản của thỏa thuận này với quy chế liên kết, thì các điều khoản của thỏa thuận này có hiệu lực chi phối.</p><p>4. Thỏa thuận này có thể thay đổi theo thời gian và phiên bản mới nhất sẽ được đăng trên phần Chính sách trong mục Cài đặt và trên website Occo.vn. Nếu thay đổi ảnh hưởng trực tiếp đến quyền hoặc nghĩa vụ của bạn, chúng tôi sẽ thông báo ít nhất 30 ngày trước khi thay đổi có hiệu lực. Việc tiếp tục sử dụng Dịch vụ sau khi thay đổi đồng nghĩa với việc bạn chấp nhận Thỏa thuận sửa đổi.</p><p><br></p><p><strong style=\"text-decoration: underline;\">II. Định nghĩa</strong></p><p><br></p><p>1. <strong>Occo:</strong> Occo là một ứng dụng \"Dịch vụ\" mạng xã hội được phát triển và quản lý bởi <strong>CÔNG TY TNHH NPH DIGITAL</strong>.</p><p>2. Ứng dụng Occo cung cấp dịch vụ kết nối người dùng qua các nền tảng trực tuyến.</p><p>3. Occo cho phép người dùng tạo tài khoản và kết nối với các thành viên khác nhằm mục đích tìm kiếm mối quan hệ xã hội có thể là tương tác hoặc giải trí. Occo cung cấp các tính năng như tạo hồ sơ cá nhân, nhắn tin và các công cụ để tương tác và giao tiếp giữa các thành viên. Occo cũng đưa ra các chính sách bảo mật, an toàn và điều khoản sử dụng để bảo vệ quyền lợi và đảm bảo an toàn cho người dùng khi sử dụng dịch vụ.</p><p>4. <strong>Người dùng:</strong> Đề cập đến bất kỳ cá nhân hoặc thực thể nào sử dụng dịch vụ, là bên còn lại chịu sự ràng buộc của thỏa thuận này và những quy chế, chính sách liên kết khác (nếu có).</p><p>5. <strong>Nền tảng:</strong> Occo là một nền tảng kết nối xã hội được thiết kế để giúp người dùng tìm kiếm và xây dựng các mối quan hệ cá nhân và giải trí thông qua ứng dụng di động và website.</p><p>6. <strong>Tài khoản:</strong> Là dữ liệu cần thiết để đăng nhập và sử dụng nền tảng.</p><p>7. <strong>Thiết bị:</strong> Là các phần cứng vật lý được dùng để truy cập vào tài khoản cho mục đích sử dụng dịch vụ.</p><p>8. <strong>Nội dung người dùng:</strong> Là nội dung dưới dạng văn bản, hình ảnh, âm thanh và các dạng thể hiện khác do người dùng tải lên nền tảng, phù hợp với thỏa thuận này.</p><p><br></p><p><strong style=\"text-decoration: underline;\">III. Tài khoản</strong></p><p><br></p><p>1. Khi sử dụng dịch vụ của Occo, việc quản lý tài khoản của bạn là vô cùng quan trọng để đảm bảo trải nghiệm an toàn và bảo mật. Để sử dụng Occo, bạn có thể đăng nhập qua nhiều phương thức khác nhau như Số điện thoại, Facebook, Google hoặc Apple. Việc sử dụng các tài khoản mạng xã hội này không chỉ giúp đơn giản hóa quá trình đăng ký mà còn cho phép Occo truy cập và sử dụng một số thông tin từ các hồ sơ mạng xã hội của bạn. Thông tin này bao gồm nhưng không giới hạn ở hồ sơ công khai, giúp bạn dễ dàng kết nối và tương tác với các thành viên khác trên nền tảng. Để biết thêm chi tiết về các thông tin được thu thập và cách sử dụng chúng, bạn có thể tham khảo Chính sách Quyền riêng tư của Occo.</p><p>2. Việc bảo mật thông tin đăng nhập là trách nhiệm của bạn. Bạn cần duy trì tính bảo mật cho các thông tin này và không chia sẻ chúng với bất kỳ ai. Mọi hoạt động xảy ra dưới tài khoản của bạn đều do bạn chịu trách nhiệm, vì vậy nếu bạn nghi ngờ rằng tài khoản của mình đã bị xâm phạm, bạn phải liên hệ ngay với Occo để được hỗ trợ. Việc này không chỉ giúp bảo vệ thông tin cá nhân của bạn mà còn giúp ngăn chặn các hành vi gian lận hoặc lạm dụng tài khoản.</p><p>3. Occo cung cấp các công cụ và tính năng để bạn quản lý tài khoản một cách hiệu quả. Trong trường hợp bạn muốn ngừng sử dụng dịch vụ, bạn có thể hủy tài khoản dễ dàng bằng cách làm theo hướng dẫn tại mục \"Cài đặt\" trong Dịch vụ. Nếu bạn đã sử dụng tài khoản thanh toán của bên thứ ba như App Store hoặc Google Play, việc quản lý thanh toán và hủy dịch vụ cần phải được thực hiện thông qua các nền tảng đó để tránh phát sinh thêm chi phí.</p><p>4. Occo có quyền hủy tài khoản của bạn mà không cần thông báo nếu bạn vi phạm các điều khoản sử dụng. Điều này nhằm duy trì môi trường sử dụng an toàn và công bằng cho tất cả các thành viên. Trong trường hợp tài khoản bị hủy bỏ, bạn sẽ không được hoàn lại bất kỳ khoản phí nào đã thanh toán cho các dịch vụ đã sử dụng. Dù tài khoản của bạn bị chấm dứt, một số điều khoản nhất định trong Thỏa thuận này vẫn sẽ tiếp tục áp dụng, đảm bảo rằng mọi trách nhiệm pháp lý và quyền lợi của Occo và của bạn được bảo vệ.</p><p>5. Nhìn chung, việc quản lý tài khoản trên Occo đòi hỏi sự cẩn trọng và trách nhiệm từ phía người dùng. Điều này không chỉ đảm bảo rằng bạn có thể tận dụng tối đa các tính năng mà Occo cung cấp mà còn giúp duy trì an toàn và bảo mật cho toàn bộ cộng đồng người dùng trên nền tảng.</p><p><br></p><p><strong style=\"text-decoration: underline;\">IV. Hành vi vi phạm</strong></p><p><br></p><p>1. Occo đặt ra các quy định nghiêm ngặt nhằm đảm bảo rằng môi trường sử dụng dịch vụ của mình luôn an toàn, công bằng và tôn trọng. Những hành vi vi phạm các điều khoản sử dụng của Occo có thể dẫn đến việc tài khoản của bạn bị hủy bỏ mà không cần thông báo trước. Các hành vi vi phạm này bao gồm nhưng không giới hạn ở các hành động sau:</p><p><strong>a. Sử dụng Dịch vụ cho mục đích thương mại mà không có sự đồng ý bằng văn bản của Occo.</strong><br>• Bạn không được phép sử dụng nền tảng Occo để quảng cáo, bán sản phẩm hoặc dịch vụ, hoặc tiến hành bất kỳ hoạt động kinh doanh nào mà không có sự chấp thuận chính thức từ Occo.</p><p><strong>b. Sao chép, sửa đổi, truyền tải, tạo tác phẩm phái sinh hoặc sử dụng nội dung có bản quyền mà không có sự cho phép.</strong><br>• Bạn không được sao chép, thay đổi hoặc phân phối bất kỳ nội dung nào trên nền tảng mà không có sự đồng ý trước bằng văn bản từ Occo. Điều này bao gồm các tài liệu, hình ảnh, nhãn hiệu và tài sản trí tuệ khác.</p><p><strong>c. Diễn đạt hoặc ngụ ý rằng tuyên bố của bạn được Occo xác nhận.</strong><br>• Bạn không được phép đưa ra các tuyên bố hoặc hành động khiến người khác hiểu lầm rằng bạn đại diện cho Occo hoặc rằng các phát ngôn của bạn được Occo chứng nhận.</p><p><strong>d. Sử dụng các công cụ tự động hoặc thủ công để truy cập, thu thập dữ liệu hoặc làm gián đoạn dịch vụ.</strong><br>• Bạn không được phép sử dụng robot, bot, nhện, trình thu thập dữ liệu, trình quét hoặc bất kỳ thiết bị hay phương pháp tự động nào để truy cập, thu thập dữ liệu hoặc làm gián đoạn hoạt động của nền tảng Occo. Điều này bao gồm cả việc khai thác dữ liệu và làm xáo trộn cấu trúc hoặc cách trình bày dịch vụ.</p><p><strong>e. Cung cấp thông tin sai lệch hoặc lừa đảo.</strong><br>• Bất kỳ hành vi nào liên quan đến việc cung cấp thông tin giả mạo, lừa đảo nhằm mục đích lợi dụng hoặc gây hại cho người dùng khác đều bị cấm. Điều này bao gồm việc tạo hồ sơ giả mạo, danh người khác hoặc sử dụng thông tin của người khác mà không được phép.</p><p><strong>f. Hành vi xâm phạm quyền riêng tư và an ninh của người dùng khác.</strong><br>• Bạn không được phép xâm phạm quyền riêng tư của người dùng khác, bao gồm việc thu thập, lưu trữ hoặc chia sẻ thông tin cá nhân của họ mà không có sự đồng ý. Hành vi quấy rối, đe dọa hoặc gây rối loạn cũng bị nghiêm cấm.</p><p><strong>g. Vi phạm các quy định pháp luật hiện hành.</strong><br>• Mọi hành vi vi phạm pháp luật địa phương, quốc gia hoặc quốc tế đều bị nghiêm cấm. Điều này bao gồm việc tham gia vào các hoạt động bất hợp pháp, chia sẻ nội dung bất hợp pháp hoặc khuyến khích người khác thực hiện hành vi bất hợp pháp.</p><p>2. Việc tuân thủ các điều khoản sử dụng của Occo không chỉ giúp bảo vệ quyền lợi của bạn mà còn góp phần xây dựng một cộng đồng trực tuyến lành mạnh và an toàn cho tất cả mọi người. Nếu bạn bị phát hiện vi phạm bất kỳ điều khoản nào, Occo có quyền áp dụng các biện pháp xử lý phù hợp, bao gồm việc đình chỉ tạm thời hoặc hủy tài khoản và ngăn chặn việc truy cập dịch vụ trong tương lai.</p><p><br></p><p><strong style=\"text-decoration: underline;\">V. Thu thập, sử dụng và bảo vệ thông tin người dùng của Occo</strong></p><p><br></p><p><strong>1. Occo thu thập thông tin người dùng thông qua nhiều kênh và phương pháp khác nhau bao gồm:</strong></p><p><strong>a. Thu thập:</strong><br>• <strong>Thông tin đăng ký:</strong> Khi người dùng tạo tài khoản trên Occo, họ sẽ cung cấp các thông tin cá nhân cơ bản như tên, địa chỉ email, số điện thoại và ngày sinh. Nếu người dùng chọn đăng nhập qua tài khoản mạng xã hội (như Facebook, Google hoặc Apple), Occo sẽ truy cập vào một số thông tin công khai từ các tài khoản này như hồ sơ công khai, danh sách bạn bè (nếu có) và ảnh đại diện.<br>• <strong>Thông tin hồ sơ:</strong> Người dùng có thể tự nguyện bổ sung thêm thông tin vào hồ sơ cá nhân, bao gồm sở thích, mô tả cá nhân và ảnh.<br>• <strong>Dữ liệu hoạt động:</strong> Occo ghi nhận các hoạt động của người dùng trên nền tảng, chẳng hạn như các kết nối, tin nhắn, tìm kiếm và tương tác với các thành viên khác.<br>• <strong>Dữ liệu kỹ thuật:</strong> Thông tin về thiết bị của người dùng (như loại thiết bị, hệ điều hành), địa chỉ IP, dữ liệu cookies và các thông tin liên quan khác cũng được thu thập để đảm bảo tính bảo mật và cải thiện trải nghiệm người dùng.</p><p><strong>2. Sử dụng Thông tin Người dùng:</strong><br><br>Thông tin thu thập được từ người dùng được Occo sử dụng nhằm các mục đích sau:</p><p>• <strong>Cung cấp và quản lý dịch vụ:</strong> Thông tin cá nhân giúp tạo và quản lý tài khoản, hỗ trợ các tính năng tương tác và kết nối xã hội.</p><p>• <strong>Cải thiện dịch vụ:</strong> Dữ liệu hoạt động và phản hồi của người dùng giúp Occo hiểu rõ hơn về cách người dùng tương tác với nền tảng, từ đó cải tiến các tính năng và dịch vụ.</p><p>• <strong>Bảo mật:</strong> Dữ liệu kỹ thuật và hoạt động được sử dụng để phát hiện và ngăn chặn các hành vi gian lận, lạm dụng hoặc vi phạm chính sách.</p><p>• <strong>Quảng cáo và tiếp thị:</strong> Thông tin người dùng có thể được sử dụng để cung cấp các đề xuất quảng cáo và thông báo liên quan đến dịch vụ mà người dùng có thể quan tâm.</p><p><strong>3. Bảo vệ Thông tin Người dùng:</strong><br><br>Occo cam kết bảo vệ thông tin cá nhân của người dùng bằng các biện pháp bảo mật tiên tiến:</p><p><strong>• Mã hóa:</strong> Thông tin nhạy cảm được mã hóa cả khi truyền tải và khi lưu trữ, đảm bảo rằng dữ liệu luôn được bảo vệ khỏi truy cập trái phép.</p><p><strong>• Kiểm soát truy cập:</strong> Chỉ những nhân viên có thẩm quyền mới được phép truy cập vào thông tin cá nhân của người dùng. Tất cả các nhân viên này đều phải tuân thủ các chính sách bảo mật nghiêm ngặt.</p><p><strong>• Giám sát và phát hiện:</strong> Hệ thống giám sát liên tục được triển khai để phát hiện và xử lý kịp thời các mối đe dọa bảo mật.</p><p><strong>• Chính sách quyền riêng tư:</strong> Occo duy trì một chính sách quyền riêng tư rõ ràng, minh bạch, giải thích cách thức thu thập, sử dụng và bảo vệ thông tin người dùng. Chính sách này cũng cung cấp quyền kiểm soát cho người dùng đối với dữ liệu cá nhân của họ.</p><p><strong>4. Quyền của Người dùng:</strong></p><p>Người dùng có quyền truy cập, chỉnh sửa và xóa thông tin cá nhân của mình trên Occo. Họ có thể tùy chỉnh các tùy chọn bảo mật và quản lý cách thông tin của họ được sử dụng. Nếu có bất kỳ câu hỏi hoặc lo ngại nào về việc xử lý dữ liệu, người dùng có thể liên hệ với bộ phận hỗ trợ khách hàng của Occo để được giải đáp và hỗ trợ.</p><p><br></p><p><strong style=\"text-decoration: underline;\">VI. Bảo mật thông tin</strong></p><p><br></p><p>Việc bảo mật thông tin người dùng là một trong những ưu tiên hàng đầu của Occo. Chúng tôi cam kết áp dụng các biện pháp bảo mật mạnh mẽ để đảm bảo rằng dữ liệu cá nhân của người dùng luôn được bảo vệ và sử dụng một cách an toàn. Dưới đây là các cách thức cụ thể mà Occo thực hiện để bảo mật thông tin người dùng:</p><p>1. Mã hóa Dữ liệu:</p><p><strong>a. Mã hóa khi truyền tải:</strong><br>• Tất cả thông tin nhạy cảm được mã hóa bằng cách sử dụng các giao thức bảo mật như SSL, IPSEC, PGP… để bảo vệ dữ liệu trong quá trình truyền tải giữa thiết bị của người dùng và máy chủ của Occo.</p><p><strong>b. Mã hóa khi lưu trữ:</strong><br>• Dữ liệu cá nhân và thông tin nhạy cảm được mã hóa khi lưu trữ trên hệ thống của Occo, đảm bảo rằng chỉ những người được ủy quyền mới có thể truy cập.</p><p><strong>2. Kiểm soát Truy cập:</strong></p><p><strong>a. Quyền truy cập hạn chế:</strong><br>• Chỉ những nhân viên có thẩm quyền và cần thiết cho công việc mới được phép truy cập vào thông tin cá nhân của người dùng. Các nhân viên này phải tuân thủ các chính sách bảo mật nghiêm ngặt và cam kết bảo mật thông tin.</p><p><strong>b. Xác thực đa yếu tố:</strong><br>• Occo triển khai các biện pháp xác thực đa yếu tố (MFA) như SFA, BA, IF… để tăng cường bảo mật cho tài khoản người dùng, đảm bảo rằng chỉ người dùng chính chủ mới có thể truy cập vào tài khoản của mình.</p><p><strong>3. Giám sát và Phát hiện:</strong></p><p><strong>a. Hệ thống giám sát liên tục:</strong><br>• Occo sử dụng các hệ thống giám sát liên tục để phát hiện và phản ứng kịp thời với các mối đe dọa bảo mật. Các hệ thống này có khả năng phát hiện hành vi bất thường và cảnh báo đội ngũ bảo mật ngay lập tức.</p><p><strong>b. Kiểm tra bảo mật định kỳ:</strong><br>• Occo thực hiện các kiểm tra bảo mật định kỳ và đánh giá rủi ro để phát hiện và khắc phục các lỗ hổng bảo mật tiềm ẩn.</p><p><strong>4. Đào tạo và Nâng cao Nhận thức:</strong></p><p><strong>a. Đào tạo nhân viên:</strong><br>• Occo tổ chức các chương trình đào tạo về bảo mật thông tin cho tất cả nhân viên nhằm nâng cao nhận thức và kỹ năng về bảo mật dữ liệu.</p><p><strong>b. Chính sách bảo mật rõ ràng:</strong><br>• Occo duy trì các chính sách bảo mật rõ ràng và minh bạch, giải thích cách thức bảo vệ thông tin người dùng và quyền riêng tư của họ.</p><p><strong>5. Chính sách Quyền riêng tư:</strong></p><p><strong>a. Chính sách quyền riêng tư:</strong><br>• Occo có chính sách quyền riêng tư chi tiết, giải thích cách thức thu thập, sử dụng và bảo vệ thông tin cá nhân của người dùng. Người dùng có thể dễ dàng truy cập và hiểu rõ các quyền lợi và nghĩa vụ của mình.</p><p><strong>b. Quyền của người dùng:</strong><br>• Người dùng có quyền truy cập, chỉnh sửa và xóa thông tin cá nhân của mình. Họ cũng có thể tùy chỉnh các tùy chọn bảo mật và quản lý cách thông tin của họ được sử dụng.</p><p>6. Phản hồi và Hỗ trợ:</p><p><strong>a. Liên hệ hỗ trợ:</strong><br>• Người dùng có thể liên hệ với bộ phận hỗ trợ khách hàng của Occo nếu có bất kỳ câu hỏi hoặc lo ngại nào về việc xử lý dữ liệu. Đội ngũ hỗ trợ sẵn sàng giải đáp và hỗ trợ người dùng trong việc bảo vệ thông tin cá nhân của họ.</p><p>Bằng việc áp dụng các biện pháp bảo mật nghiêm ngặt này, Occo đảm bảo rằng thông tin cá nhân của người dùng luôn được bảo vệ và sử dụng một cách hợp lý và an toàn. Chúng tôi cam kết không ngừng cải tiến và nâng cao các biện pháp bảo mật để đáp ứng và vượt qua các tiêu chuẩn bảo mật cao nhất.</p><p><br></p><p><strong style=\"text-decoration: underline;\">VII. Sở hữu trí tuệ</strong></p><p><br></p><p>Sở hữu trí tuệ là một phần quan trọng của thỏa thuận sử dụng dịch vụ Occo. Dưới đây là các điều khoản cụ thể về sở hữu trí tuệ mà người dùng cần nắm rõ:</p><p><strong>1. Quyền sở hữu của Occo:</strong></p><p>a. Tất cả các nội dung bao gồm nhưng không giới hạn ở văn bản, đồ họa, hình ảnh, nhãn hiệu, logo, âm thanh, video và phần mềm được sử dụng và hiển thị trên nền tảng Occo đều là tài sản trí tuệ của Occo hoặc các bên cấp phép của Occo. Các tài sản này được bảo vệ bởi luật bản quyền, nhãn hiệu và các luật sở hữu trí tuệ khác.</p><p><strong>2. Quyền cấp cho người dùng:</strong></p><p>a. Occo cấp cho người dùng quyền cá nhân, không độc quyền, không thể chuyển nhượng và có giới hạn để truy cập và sử dụng dịch vụ. Quyền này chỉ nhằm mục đích cho phép người dùng sử dụng và hưởng lợi ích từ dịch vụ của Occo theo các điều khoản của thỏa thuận.</p><p><strong>3. Giới hạn sử dụng:</strong></p><p>a. Người dùng không được thực hiện các hành vi sau mà không có sự cho phép trước bằng văn bản của Occo:</p><p>• Sao chép, sửa đổi, tạo ra các tác phẩm phái sinh, phân phối, trưng bày công khai, biểu diễn công khai hoặc khai thác thương mại bất kỳ nội dung nào từ dịch vụ.</p><p>• Sử dụng bất kỳ robot, bot, nhện, trình thu thập dữ liệu hoặc các thiết bị tự động khác để truy cập dịch vụ vì bất kỳ mục đích nào.</p><p>• Sử dụng dịch vụ hoặc nội dung dịch vụ cho bất kỳ mục đích thương mại nào mà không có sự đồng ý bằng văn bản của Occo.</p><p>• oSử dụng tên thương mại, nhãn hiệu dịch vụ hoặc bất kỳ nội dung có bản quyền nào mà không có sự cho phép trước bằng văn bản của Occo.</p><p><strong>4. Đóng góp của người dùng:</strong></p><p>a. Bằng việc đăng tải nội dung lên dịch vụ Occo, người dùng cấp cho Occo một giấy phép không độc quyền, có thể chuyển nhượng, không thể hủy bỏ, miễn phí bản quyền và trên toàn thế giới để sử dụng, sao chép, sửa đổi, phân phối, trưng bày công khai và biểu diễn công khai nội dung đó trong phạm vi liên quan đến việc cung cấp và quảng bá dịch vụ.</p><p><strong>5. Bảo vệ sở hữu trí tuệ:</strong></p><p>a. Occo tôn trọng quyền sở hữu trí tuệ của người khác và mong muốn người dùng cũng làm như vậy. Nếu người dùng tin rằng có bất kỳ nội dung nào trên nền tảng Occo vi phạm bản quyền của mình, họ có thể thông báo cho Occo bằng cách cung cấp thông tin chi tiết về vi phạm đó.</p><p><strong>6. Chính sách xử lý vi phạm:</strong></p><p>a. Occo có quyền chấm dứt tài khoản của người dùng nếu họ bị phát hiện vi phạm nhiều lần hoặc vi phạm nghiêm trọng các quyền sở hữu trí tuệ của Occo hoặc của bên thứ ba.</p><p><strong>7. Thông báo vi phạm:</strong></p><p>a. Để gửi thông báo về vi phạm bản quyền, người dùng cần cung cấp các thông tin sau:</p><p>• Chữ ký điện tử hoặc vật lý của người có quyền hành động thay mặt cho chủ sở hữu quyền tác giả.</p><p>• Mô tả về tác phẩm có bản quyền mà người dùng cho rằng đã bị vi phạm.</p><p>• Mô tả về vị trí của nội dung vi phạm trên dịch vụ Occo.</p><p>• Địa chỉ, số điện thoại và địa chỉ email của người dùng.</p><p>• Một tuyên bố rằng người dùng tin chắc rằng việc sử dụng nội dung đó không được sự chấp thuận của chủ sở hữu bản quyền, đại diện của họ hoặc pháp luật.</p><p>• Một tuyên bố rằng thông tin trong thông báo là chính xác và rằng người dùng có quyền thay mặt cho chủ sở hữu quyền tác giả để nộp thông báo.</p><p>Bằng việc tuân thủ các điều khoản sở hữu trí tuệ này, Occo bảo vệ quyền lợi của cả nền tảng và người dùng, đảm bảo môi trường dịch vụ được sử dụng và phát triển một cách hợp pháp và công bằng.</p><p><br></p><p><strong style=\"text-decoration: underline;\">VII. Sử dụng dịch vụ không tính phí và dịch vụ tính phí</strong></p><p><br></p><p>Occo cung cấp nhiều dịch vụ tính phí bổ sung nhằm nâng cao trải nghiệm người dùng. Việc sử dụng các dịch vụ này được điều chỉnh bởi các điều khoản cụ thể như sau:</p><p><strong>1. Các Dịch Vụ Không Tính Phí:</strong></p><p><strong>a. Dịch vụ miễn phí của Occo bao gồm:</strong></p><p>• Đăng ký cơ bản: Cung cấp quyền truy cập vào các tính năng cơ bản như tạo hồ sơ cá nhân, tìm kiếm và duyệt hồ sơ của người dùng khác.</p><p>• Thích và nhắn tin cơ bản: Cho phép người dùng thích các hồ sơ khác và gửi tin nhắn cơ bản cho họ.</p><p>• Tính năng tìm kiếm cơ bản: Cho phép người dùng sử dụng tính năng tìm kiếm để tìm kiếm và duyệt hồ sơ của người dùng khác theo các tiêu chí cơ bản như độ tuổi, giới tính và vị trí địa lý.</p><p>• Cộng đồng và nhóm: Cho phép người dùng tham gia vào các nhóm và cộng đồng dựa trên sở thích và sở thích cá nhân, chia sẻ ý kiến và tương tác với các thành viên khác.</p><p>• Cuộc gọi và video call cơ bản: Cho phép người dùng thực hiện cuộc gọi thoại và video call cơ bản với bạn bè và người dùng khác trên nền tảng mà không mất phí.</p><p>• Tìm kiếm bạn bè xung quanh: Cung cấp tính năng tìm kiếm bạn bè trong vùng lân cận hoặc xung quanh người dùng dựa trên vị trí địa lý, giúp họ kết nối và tìm kiếm những người có sở thích tương tự trong khu vực có hạn chế.</p><p>• Kết bạn ngẫu nhiên: Cho phép người dùng khám phá và kết nối với những người dùng ngẫu nhiên khác trên nền tảng, tạo ra cơ hội giao lưu và kết bạn mới.</p><p>• Hiển thị quảng cáo: Phục vụ các quảng cáo có thể xuất hiện trong ứng dụng để hỗ trợ việc cung cấp dịch vụ miễn phí.</p><p><strong>2. Các Dịch Vụ Tính Phí:</strong></p><p><strong>a. Occo cũng cung cấp tính năng và dịch vụ tính phí bao gồm nhưng không giới hạn ở:</strong></p><p>• Gói đăng ký cao cấp (VIP): Cung cấp quyền truy cập vào các tính năng độc quyền như xem ai đã thích hồ sơ của bạn, tăng khả năng hiển thị hồ sơ và không giới hạn lượt thích, và nhiều tính năng khác được công khai ở danh mục VIP.</p><p>• Tính năng đặc biệt: Bao gồm việc tăng cường hồ sơ của bạn để xuất hiện nhiều hơn trong kết quả tìm kiếm hoặc gửi tin nhắn trực tiếp mà không cần phải có sự kết hợp.</p><p>• Mua vật phẩm ảo: Như quà tặng ảo, hình dán hoặc các biểu tượng cảm xúc đặc biệt để sử dụng trong trò chuyện.</p><p><strong>3. Phương Thức Thanh Toán:</strong></p><p>a. Phương thức thanh toán:</p><p>• Người dùng có thể thanh toán cho các dịch vụ tính phí thông qua thẻ tín dụng, thẻ ghi nợ hoặc các phương thức thanh toán trực tuyến khác được chấp nhận.</p><p>• Thanh toán qua ứng dụng: Nếu người dùng đăng ký qua các nền tảng như App Store hoặc Google Play, các khoản thanh toán sẽ được xử lý thông qua tài khoản tương ứng của người dùng trên các nền tảng này. Người dùng cần tuân thủ các điều khoản và điều kiện thanh toán của nền tảng đó.</p><p><strong>4. Chính Sách Hủy Bỏ và Hoàn Tiền:</strong></p><p>a. Hủy bỏ dịch vụ:</p><p>• Người dùng có thể hủy bỏ các dịch vụ tính phí bất kỳ lúc nào bằng cách làm theo hướng dẫn trong mục \"Cài đặt\" trên nền tảng Occo. Hủy bỏ dịch vụ sẽ có hiệu lực vào cuối chu kỳ thanh toán hiện tại.</p><p><strong>b. Chính sách hoàn tiền:</strong></p><p>• Occo không hoàn lại tiền cho bất kỳ phần nào của chu kỳ thanh toán đã qua, bao gồm cả các dịch vụ chưa sử dụng. Trong một số trường hợp cụ thể và theo quyết định của Occo, có thể có ngoại lệ đối với chính sách hoàn tiền.</p><p><strong>5. Tự Động Gia Hạn:</strong></p><p>a. Gia hạn tự động:</p><p>• Trừ khi người dùng hủy bỏ dịch vụ tính phí trước khi kết thúc chu kỳ thanh toán hiện tại, dịch vụ sẽ tự động gia hạn và người dùng sẽ bị tính phí cho chu kỳ thanh toán tiếp theo. Thời gian gia hạn sẽ tương ứng với chu kỳ thanh toán ban đầu (hàng tháng, hàng năm, v.v.).</p><p><strong>b. Thông báo gia hạn:</strong></p><p>• Người dùng sẽ nhận được thông báo trước về việc gia hạn tự động và các khoản phí tương ứng qua email hoặc thông qua thông báo trên ứng dụng.</p><p><strong>6. Thay Đổi Giá và Tính Năng:</strong></p><p>a. Điều chỉnh giá:</p><p>• Occo có quyền thay đổi giá của các dịch vụ tính phí vào bất kỳ lúc nào. Người dùng sẽ được thông báo trước về bất kỳ thay đổi nào về giá và các thay đổi sẽ có hiệu lực từ chu kỳ thanh toán tiếp theo.</p><p><strong>b. Thay đổi tính năng:</strong></p><p>• Occo có thể thêm, sửa đổi hoặc loại bỏ các tính năng của dịch vụ tính phí. Nếu các thay đổi này ảnh hưởng đáng kể đến quyền lợi của người dùng, Occo sẽ thông báo trước cho người dùng.</p><p><strong>7. Trách Nhiệm và Nghĩa Vụ:</strong></p><p>a. Trách nhiệm thanh toán:</p><p>• Người dùng chịu trách nhiệm thanh toán đầy đủ và kịp thời cho các dịch vụ tính phí.</p><p><br></p><p><strong style=\"text-decoration: underline;\">IX. Lưu ý sử dụng</strong></p><p><br></p><p>Khi sử dụng dịch vụ của Occo, người dùng cần chú ý và tuân thủ các quy định sau để đảm bảo trải nghiệm tốt nhất và tránh các vi phạm có thể dẫn đến việc đình chỉ hoặc chấm dứt tài khoản:</p><p><strong>1. Độ Tuổi Sử Dụng:</strong></p><p>a. Người dùng phải từ 18 tuổi trở lên để đăng ký và sử dụng dịch vụ Occo. Việc khai báo thông tin sai lệch về độ tuổi có thể dẫn đến việc chấm dứt tài khoản.</p><p><strong>2. Tuân Thủ Luật Pháp:</strong></p><p>a. Bạn phải tuân thủ tất cả các luật, quy định và quy tắc hiện hành của địa phương, quốc gia và quốc tế khi sử dụng dịch vụ. Occo có quyền đình chỉ hoặc chấm dứt tài khoản của người dùng nếu phát hiện bất kỳ hành vi vi phạm pháp luật nào.</p><p>b. Bạn không phải là người bị cấm sử dụng Dịch vụ theo luật của quốc gia sở tại hoặc bất kỳ khu vực pháp lý hiện hành nào khác (ví dụ: bạn không xuất hiện trong danh sách Công dân được chỉ định đặc biệt của Bộ Tài chính hoặc phải chịu bất kỳ lệnh cấm tương tự nào khác).</p><p>c. Bạn sẽ tuân thủ Thỏa thuận này và tất cả các điều luật, quy tắc và quy định hiện hành của địa phương, tiểu bang, quốc gia và quốc tế.</p><p>d. Bạn chưa bao giờ bị kết án vì trọng tội hoặc phạm tội có thể bị truy tố (hoặc phạm tội ở mức độ nghiêm trọng tương đương), phạm tội về tình dục hoặc bất kỳ tội nào liên quan đến bạo lực và bạn không bị ghi danh là tội phạm ở bất kỳ hồ sơ tội phạm của bất kỳ bang nào, hồ sơ liên bang hoặc hồ sơ tội phạm tình dục địa phương.</p><p><strong>3. Quản Lý Tài Khoản:</strong></p><p>a. Người dùng có trách nhiệm duy trì bảo mật thông tin đăng nhập của mình và chịu trách nhiệm cho tất cả các hoạt động diễn ra dưới tài khoản của mình. Nếu người dùng phát hiện bất kỳ hành vi truy cập trái phép nào, họ nên liên hệ ngay với bộ phận hỗ trợ khách hàng của Occo.</p><p><strong>4. Hành Vi Cấm:</strong></p><p>a. Không sử dụng dịch vụ cho các mục đích thương mại hoặc phi pháp.</p><p>b. Không truyền tải bất kỳ nội dung không phù hợp, thô tục, bạo lực hoặc có tính chất phân biệt chủng tộc, giới tính hoặc bất kỳ hình thức phân biệt nào khác.</p><p>c. Không quấy rối, lạm dụng hoặc gây hại đến người dùng khác.</p><p><strong>5. Nội Dung Đăng Tải:</strong></p><p>a. Người dùng phải đảm bảo rằng tất cả các nội dung họ đăng tải lên dịch vụ, bao gồm nhưng không giới hạn ở văn bản, hình ảnh, video và âm thanh đều tuân thủ các quyền sở hữu trí tuệ và không vi phạm bản quyền của bên thứ ba.</p><p>b. Occo có quyền gỡ bỏ bất kỳ nội dung nào vi phạm các quy định này mà không cần thông báo trước.</p><p><strong>6. Quyền Sở Hữu và Giấy Phép:</strong></p><p>a. Occo giữ quyền sở hữu và giấy phép đối với tất cả các nội dung và tài liệu được cung cấp thông qua dịch vụ. Người dùng không được sao chép, sửa đổi hoặc phân phối lại bất kỳ nội dung nào mà không có sự cho phép bằng văn bản của Occo.</p><p><strong>7. Bảo Vệ Thông Tin Cá Nhân:</strong></p><p>a. Người dùng nên tuân thủ các khuyến nghị bảo mật của Occo để bảo vệ thông tin cá nhân của mình. Không chia sẻ thông tin nhạy cảm như chi tiết thẻ tín dụng, tài khoản ngân hàng với bất kỳ ai thông qua dịch vụ.</p><p>b. Occo sử dụng các biện pháp bảo mật tiên tiến để bảo vệ dữ liệu cá nhân của người dùng, nhưng người dùng cũng cần chủ động bảo vệ thông tin của mình.</p><p><strong>8. Sử Dụng Dịch Vụ Tính Phí:</strong></p><p>a. Đối với các dịch vụ tính phí, người dùng cần đọc kỹ và hiểu rõ các điều khoản và điều kiện, bao gồm cả chính sách hủy bỏ và hoàn tiền. Việc không thanh toán đúng hạn có thể dẫn đến việc ngừng cung cấp dịch vụ.</p><p><strong>9. Liên Lạc và Thông Báo:</strong></p><p>a. Người dùng đồng ý nhận các thông báo liên quan đến tài khoản và dịch vụ qua email hoặc các phương thức liên lạc khác mà họ đã đăng ký với Occo. Việc không cập nhật thông tin liên lạc có thể dẫn đến việc bỏ lỡ các thông tin quan trọng.</p><p><strong>10. Phản Hồi và Khiếu Nại:</strong></p><p>a. Nếu người dùng có bất kỳ vấn đề hoặc khiếu nại nào liên quan đến dịch vụ, họ nên liên hệ ngay với bộ phận hỗ trợ khách hàng của Occo để được giải quyết kịp thời. Occo cam kết lắng nghe và xử lý các phản hồi của người dùng một cách công bằng và nhanh chóng.</p><p>Bằng cách tuân thủ các lưu ý sử dụng trên, người dùng sẽ có được trải nghiệm an toàn và thoải mái khi sử dụng dịch vụ của Occo.</p><p><br></p><p><strong style=\"text-decoration: underline;\">X. Liên hệ và báo cáo vi phạm</strong></p><p><br></p><p>Để đảm bảo dịch vụ Occo luôn duy trì một môi trường an toàn và tuân thủ các quy định pháp luật, người dùng có thể liên hệ và báo cáo các vi phạm thông qua các phương thức sau:</p><p><strong>1. Liên Hệ Với Occo:</strong></p><p>a. Nếu bạn cần hỗ trợ, có thắc mắc hoặc muốn báo cáo vi phạm, bạn có thể liên hệ với đội ngũ hỗ trợ của Occo qua các kênh sau:</p><p>• Chat trực tiếp tại Occo: UID 111</p><p>• Email Hỗ Trợ Khách Hàng: support@occo.vn</p><p>• Số Điện Thoại Hỗ Trợ Khách Hàng: 0399961368 (hoạt động 24/7)</p><p>• Địa Chỉ Văn Phòng: Số 838, Ấp Vĩnh Bình, Xã An Vĩnh Ngãi, Tp Tân An, Tỉnh Long An, Việt Nam</p><p><strong>2. Báo Cáo Vi Phạm:</strong></p><p>a. Nếu bạn phát hiện hành vi vi phạm hoặc nội dung không phù hợp trên nền tảng Occo, vui lòng làm theo các bước sau để báo cáo:</p><p><strong>• Trên Ứng Dụng:</strong></p><p>1 Mở hồ sơ hoặc cuộc trò chuyện với người dùng mà bạn muốn báo cáo.</p><p>2 Nhấn vào biểu tượng ba chấm (thường nằm ở góc trên bên phải).</p><p>3 Chọn \"Báo cáo\" từ menu xuất hiện.</p><p>4 Chọn lý do báo cáo từ danh sách các tùy chọn.</p><p>5 Cung cấp bất kỳ thông tin bổ sung nào (nếu cần) và nhấn \"Gửi\".</p><p><strong>• Trên Website:</strong></p><p>1 Truy cập hồ sơ hoặc cuộc trò chuyện với người dùng mà bạn muốn báo cáo.</p><p>2 Nhấp vào biểu tượng ba chấm (thường nằm ở góc trên bên phải).</p><p>3 Chọn \"Báo cáo\" từ menu xuất hiện.</p><p>4 Chọn lý do báo cáo từ danh sách các tùy chọn.</p><p>5 Cung cấp bất kỳ thông tin bổ sung nào (nếu cần) và nhấp \"Gửi\".</p><p><strong>3. Thông Tin Cần Cung Cấp Khi Báo Cáo:</strong></p><p>a. Để giúp đội ngũ Occo xử lý báo cáo của bạn nhanh chóng và hiệu quả, vui lòng cung cấp các thông tin sau khi báo cáo vi phạm:</p><p>• <strong>Mô Tả Chi Tiết:</strong> Mô tả rõ ràng về vi phạm mà bạn phát hiện, bao gồm các chi tiết cụ thể về hành vi hoặc nội dung không phù hợp.</p><p>• <strong>Bằng Chứng:</strong> Nếu có thể, hãy cung cấp các bằng chứng liên quan như ảnh chụp màn hình, liên kết hoặc bất kỳ tài liệu nào khác hỗ trợ báo cáo của bạn.</p><p>• <strong>Thông Tin Liên Hệ:</strong> Cung cấp thông tin liên hệ của bạn để đội ngũ Occo có thể liên hệ với bạn nếu cần thêm thông tin hoặc để thông báo về kết quả xử lý báo cáo.</p><p><strong>4. Quy Trình Xử Lý Báo Cáo:</strong></p><p>a. Occo cam kết xử lý mọi báo cáo vi phạm một cách nhanh chóng và công bằng theo quy trình sau:</p><p>• <strong>Tiếp Nhận Báo Cáo:</strong> Đội ngũ hỗ trợ sẽ nhận và ghi nhận báo cáo của bạn vào hệ thống.</p><p>• <strong>Đánh Giá Báo Cáo:</strong> Các chuyên viên sẽ xem xét và đánh giá báo cáo dựa trên thông tin và bằng chứng bạn cung cấp.</p><p>• <strong>Điều Tra:</strong> Nếu cần, đội ngũ sẽ tiến hành điều tra thêm để xác minh vi phạm.</p><p>• <strong>Hành Động:</strong> Dựa trên kết quả điều tra, Occo sẽ thực hiện các biện pháp thích hợp, bao gồm nhưng không giới hạn ở việc cảnh báo, đình chỉ hoặc chấm dứt tài khoản của người vi phạm.</p><p>• <strong>Thông Báo Kết Quả:</strong> Bạn sẽ nhận được thông báo về kết quả xử lý báo cáo qua email hoặc thông báo trên ứng dụng.</p><p>Bằng cách tuân thủ các hướng dẫn liên hệ và báo cáo vi phạm trên, bạn sẽ góp phần giữ cho cộng đồng Occo luôn an toàn và lành mạnh.</p><p><br></p><p><strong style=\"text-decoration: underline;\">XI. Xử lí vi phạm</strong></p><p><br></p><p>Occo cam kết duy trì một môi trường an toàn và tôn trọng cho tất cả người dùng. Khi phát hiện vi phạm, chúng tôi sẽ thực hiện các biện pháp cần thiết để bảo vệ cộng đồng và duy trì tính chất tích cực của dịch vụ. Quy trình xử lý vi phạm của chúng tôi bao gồm các bước sau:</p><p><strong>1. Tiếp Nhận Báo Cáo:</strong></p><p>a. Mọi báo cáo vi phạm được gửi đến Occo sẽ được tiếp nhận và ghi nhận một cách nhanh chóng.</p><p><strong>2. Đánh Giá và Xác Minh:</strong></p><p>a. Đội ngũ chuyên viên sẽ đánh giá mỗi báo cáo để xác định tính chính xác và mức độ nghiêm trọng của vi phạm.</p><p>b. Nếu cần thiết, chúng tôi sẽ tiến hành điều tra để xác minh thông tin và bằng chứng liên quan.</p><p><strong>3. Quyết Định Xử Lý:</strong></p><p>a. Dựa trên kết quả đánh giá và điều tra, chúng tôi sẽ đưa ra quyết định về biện pháp xử lý phù hợp.</p><p>b. Biện pháp có thể bao gồm cảnh báo, hạn chế hoặc đình chỉ tài khoản, hoặc chấm dứt hợp đồng với người dùng vi phạm.</p><p><strong>4. Thông Báo và Hỗ Trợ:</strong></p><p>a. Người dùng vi phạm sẽ nhận được thông báo về biện pháp xử lý qua email hoặc thông báo trên ứng dụng.</p><p>b. Chúng tôi cung cấp hỗ trợ và giải đáp mọi thắc mắc hoặc khiếu nại từ phía người dùng trong quá trình xử lý.</p><p><strong>5. Cải Thiện và Giáo Dục:</strong></p><p>a. Trong một số trường hợp, chúng tôi sẽ cung cấp hướng dẫn và giáo dục cho người dùng vi phạm về quy định và nguyên tắc sử dụng dịch vụ.</p><p>b. Mục tiêu là giúp người dùng hiểu rõ hơn và thay đổi hành vi để tránh vi phạm trong tương lai.</p><p><strong>6. Theo Dõi và Đánh Giá:</strong></p><p>a. Chúng tôi sẽ tiếp tục theo dõi hoạt động của người dùng và xác minh tuân thủ sau khi thực hiện biện pháp xử lý.</p><p>b. Nếu người dùng vi phạm tiếp tục tái phạm, chúng tôi sẽ xem xét và thực hiện các biện pháp bổ sung theo quy định của chính sách.</p><p>Bằng cách thực hiện quy trình xử lý vi phạm một cách công bằng và nhất quán, chúng tôi hy vọng sẽ giữ cho cộng đồng Occo luôn là một môi trường an toàn và tích cực cho tất cả người dùng.</p><p><br></p><p><strong style=\"text-decoration: underline;\">XII. Từ chối trách nhiệm đảm bảo</strong></p><p><br></p><p>Occo cam kết cung cấp dịch vụ tốt nhất có thể để tạo ra một môi trường an toàn và tích cực cho người dùng. Tuy nhiên, chúng tôi cũng muốn rõ ràng về việc từ chối một số trách nhiệm cụ thể:</p><p><strong>1. Tính Chính Xác của Thông Tin:</strong></p><p>a. Chúng tôi không đảm bảo tính chính xác, đầy đủ hoặc đáng tin cậy của mọi thông tin trên nền tảng Occo. Người dùng cần tự chịu trách nhiệm xác minh thông tin trước khi đưa ra quyết định hoặc hành động dựa trên thông tin này.</p><p><strong>2. Hành Vi của Người Dùng:</strong></p><p>a. Chúng tôi không chịu trách nhiệm về hành vi hoặc hành động của người dùng trên nền tảng Occo. Mỗi người dùng phải tự chịu trách nhiệm về hành vi của mình và tuân thủ các quy định và nguyên tắc sử dụng dịch vụ.</p><p><strong>3. Nội Dung của Người Dùng:</strong></p><p>a. Chúng tôi không kiểm soát hoặc chịu trách nhiệm về nội dung được tạo ra bởi người dùng trên nền tảng Occo. Mọi quyết định hoặc hành động dựa trên nội dung này là trách nhiệm của người dùng.</p><p><strong>4. Mối Quan Hệ Giữa Người Dùng:</strong></p><p>a. Chúng tôi không can thiệp vào hoặc chịu trách nhiệm về mọi mối quan hệ phát sinh giữa các người dùng trên nền tảng Occo. Mọi quan hệ cá nhân hoặc chuyên môn là trách nhiệm của các bên liên quan.</p><p><strong>5. Thiệt Hại Trực Tiếp hoặc Gián Tiếp:</strong></p><p>a. Chúng tôi không chịu trách nhiệm đối với bất kỳ thiệt hại trực tiếp, gián tiếp, ngẫu nhiên, đặc biệt hoặc phát sinh từ việc sử dụng hoặc không thể sử dụng dịch vụ của chúng tôi.</p><p><strong>6. Tấn công mạng và các rủi ro liên quan:</strong></p><p>a. Occo cam kết áp dụng các biện pháp bảo mật hàng đầu và các công nghệ tiên tiến nhất để bảo vệ thông tin cá nhân của người dùng. Tuy nhiên, trong một môi trường mạng không ngừng biến đổi, không có hệ thống bảo mật nào có thể đảm bảo hoàn toàn an toàn. Các loại tấn công mạng có thể phát sinh bất cứ lúc nào và có thể bao gồm nhưng không giới hạn: tấn công từ chối dịch vụ (DDoS), tấn công malware, vi rút, hack và các mã độc khác.</p><p>b. Trong trường hợp dữ liệu cá nhân của người dùng bị lộ do các tấn công mạng hoặc các yếu tố bất khả kháng khác, người dùng đồng ý miễn trừ Occo khỏi mọi trách nhiệm liên quan. Người dùng chấp nhận rằng họ sẽ không đòi hỏi bồi thường từ phía Occo và tự chịu trách nhiệm khi tiếp tục sử dụng dịch vụ của nền tảng.</p><p>Bằng cách sử dụng dịch vụ của chúng tôi, người dùng hiểu và chấp nhận rằng một số trách nhiệm có thể được từ chối như đã nêu trên. Điều này cũng áp dụng cho việc sử dụng thông tin, sản phẩm hoặc dịch vụ có liên quan đến Occo.</p><p><br></p><p><strong style=\"text-decoration: underline;\">XIII. Luật áp dụng</strong></p><p><br></p><p>Occo hoạt động dưới sự tuân thủ của các luật và quy định pháp luật áp dụng trong lãnh thổ mà nó hoạt động. Dưới đây là một số điểm chính về luật áp dụng mà người dùng cần nhớ:</p><p><strong>1. Luật Dân Sự và Thương Mại:</strong></p><p>a. Các giao dịch và hoạt động kinh doanh trên nền tảng Occo phải tuân thủ các quy định của luật dân sự và thương mại có liên quan. Điều này bao gồm các quy định về hợp đồng, bảo vệ người tiêu dùng và quyền lợi của các bên tham gia giao dịch.</p><p><strong>2. Luật Bảo Vệ Dữ Liệu:</strong></p><p>a. Occo cam kết bảo vệ thông tin cá nhân của người dùng theo các quy định của luật bảo vệ dữ liệu áp dụng. Các biện pháp bảo vệ thông tin và quyền riêng tư sẽ tuân thủ các quy định như GDPR (Nghị định về Bảo vệ Dữ liệu Tổng quát) ở châu Âu hoặc các quy định tương tự ở các quốc gia khác.</p><p><strong>3. Luật Truy Cứu Trách Nhiệm Pháp Lý:</strong></p><p>a. Trong trường hợp vi phạm hoặc tranh chấp pháp lý, Occo sẽ tuân thủ các quy định của luật truy cứu trách nhiệm pháp lý trong lãnh thổ mà nó hoạt động. Điều này bao gồm việc hợp tác với cơ quan chức năng và tuân thủ các quy trình pháp lý địa phương.</p><p><strong>4. Luật Liên Quan Đến Quảng Cáo và Tiếp Thị:</strong></p><p>a. Occo sẽ tuân thủ các quy định của luật liên quan đến quảng cáo và tiếp thị, bao gồm các quy định về quảng cáo trực tuyến và bảo vệ người tiêu dùng khỏi các hành vi quảng cáo không đúng đắn.</p><p><strong>5. Luật Liên Quan Đến Quyền Sở Hữu Trí Tuệ:</strong></p><p>a. Occo tôn trọng quyền sở hữu trí tuệ của người dùng và các bên thứ ba. Chúng tôi sẽ tuân thủ các quy định về bản quyền, nhãn hiệu và quyền sở hữu trí tuệ khác có liên quan.</p><p>Bằng cách tuân thủ các luật và quy định áp dụng, Occo hy vọng tạo ra một môi trường hoạt động hợp pháp, minh bạch và an toàn cho tất cả người dùng.</p>', 0, '1', '01JCQQ25AB30QB26DD0TNBA70T.mp4', '01JCQQ25A7Y0ZMKRJN0J8WG0QD.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme` varchar(255) DEFAULT 'default',
  `theme_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `theme`, `theme_color`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$.OExxTJ5f7FMTgsNpYhgYeASh1z4zDGBbUgC7wo9s/PqTGQLhdNRq', NULL, '2024-10-02 03:53:07', '2024-10-02 03:53:07', 'default', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_logs`
--
ALTER TABLE `access_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_logs`
--
ALTER TABLE `access_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
