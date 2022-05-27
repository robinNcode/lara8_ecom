-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 04:19 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara8_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_01_24_093849_create_products_table', 1),
(11, '2022_01_24_094113_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `stock` double NOT NULL,
  `discount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'atque', 'Ullam est explicabo est doloremque accusantium. Sed veritatis sapiente omnis dolor sunt enim esse. Modi odio ducimus ut velit ut. Ipsa aut et et qui alias optio. Et id ea et nihil maiores.', 477, 0, 4, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(2, 'ut', 'Sint neque maiores ipsum eos eum suscipit. Quo labore fugit quae ut. Odio expedita ipsa voluptas voluptas ut nisi. Totam quam iste qui numquam dolores.', 1915, 4, 28, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(3, 'animi', 'Vitae quidem ut et cum facilis omnis. Aut et dolor nisi et aliquam. Vero quod voluptatem minus. Sint tenetur voluptate nam qui blanditiis.', 570, 7, 19, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(4, 'aut', 'Deleniti non expedita quod et laboriosam. Sint optio consequatur odio exercitationem ipsum eligendi. Molestiae libero qui eius perspiciatis nihil occaecati doloremque.', 1386, 9, 3, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(5, 'sapiente', 'Qui maxime qui necessitatibus ut molestiae unde. Tenetur voluptas aut rerum nihil veniam sit ut. Natus recusandae hic eum recusandae aliquid dolor. Maxime velit quia doloribus cumque.', 1919, 7, 4, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(6, 'quod', 'Vel blanditiis dicta et consequatur consequuntur. Doloremque est eum unde fugit nostrum deleniti. Dicta cum iste nobis beatae corrupti voluptate deserunt. Sed eligendi blanditiis aut ut eos rerum ut similique.', 1158, 9, 25, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(7, 'voluptates', 'Sapiente dolores et quasi qui commodi harum. Corporis fugiat odit mollitia nam doloremque tempore quos aut. Quo modi amet quidem rem.', 914, 6, 6, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(8, 'praesentium', 'Officiis sed perferendis est in fugit cupiditate. Pariatur temporibus labore illum eos fuga. Dolores incidunt repellendus mollitia aliquam sapiente. Optio earum voluptas quia nobis quia.', 1945, 4, 11, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(9, 'sed', 'Tempora non illo quaerat dicta. Perferendis laborum eligendi reprehenderit officia debitis culpa. Veniam pariatur et et error nemo saepe praesentium. Corrupti id vitae ea eum.', 1497, 4, 22, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(10, 'ratione', 'Alias ut laborum aut officia nisi hic voluptatum. Natus earum itaque est doloribus. Aut quia sint est velit dolorum. Eos exercitationem at earum repellat. Eos excepturi odit eaque sed et debitis nobis.', 104, 2, 10, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(11, 'velit', 'Assumenda libero voluptas optio ab sunt et. Ut non sunt harum explicabo. Ipsa earum quia et reprehenderit consectetur laudantium.', 1895, 2, 17, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(12, 'et', 'Dolore velit sit id suscipit. Repellendus ut quis labore quod iure ea est. Iusto qui ipsa at quia molestiae.', 340, 5, 9, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(13, 'quis', 'Illo deleniti ex est animi quo ratione. Voluptatum quae aut necessitatibus minima aut. Sint et perferendis ipsum omnis velit quam aut. Veritatis officiis dignissimos nostrum perferendis ut dolorum nesciunt.', 1376, 6, 2, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(14, 'ut', 'Omnis delectus explicabo minus sit id. Impedit ullam voluptatem ut.', 1345, 8, 12, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(15, 'numquam', 'Eaque modi consequatur voluptatem numquam quia quibusdam. Esse quam assumenda esse rerum non ut esse. Quia placeat aliquid aspernatur et. Quo hic maiores et illum omnis sunt ipsum.', 801, 2, 16, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(16, 'placeat', 'Dignissimos mollitia voluptatem corrupti qui suscipit. Animi possimus molestiae et ipsam et officia. Molestiae dolores quibusdam sapiente corrupti. Dolorem dolorum reprehenderit et qui quia culpa et iusto.', 1186, 5, 30, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(17, 'beatae', 'Et numquam voluptatem necessitatibus. Laboriosam eos maiores soluta. Rem provident ut incidunt iste ut. Itaque inventore corrupti quam ut error consequatur amet.', 1363, 2, 6, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(18, 'voluptatum', 'Asperiores dolor nihil ipsam voluptatem. Est ullam suscipit nulla reiciendis velit. Qui voluptas accusamus et ex quo odio. Dolorem est ad dolor id quisquam velit reiciendis.', 1241, 4, 16, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(19, 'ut', 'Magnam et accusamus illum. Veritatis officiis vero fugiat. Occaecati eveniet ea reiciendis nobis et ipsum pariatur incidunt. Sint temporibus et vero fugiat nesciunt possimus a doloribus.', 986, 2, 22, '2022-05-26 20:16:01', '2022-05-26 20:16:01'),
(20, 'dolores', 'Aut debitis corrupti dolorem sapiente facere molestiae. Debitis mollitia ut magnam exercitationem qui ut. Debitis tempora et veniam quos similique. Ea doloribus est blanditiis voluptatem consequatur.', 1256, 5, 8, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(21, 'ab', 'In perferendis vel eligendi itaque ex quibusdam. Tempora repellat et rem aperiam tempore.', 1819, 9, 20, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(22, 'enim', 'Placeat ut temporibus voluptatem quia dolores libero. Est temporibus iure laudantium quos blanditiis ratione suscipit. Quas deserunt cupiditate vitae repudiandae aut exercitationem. Eos et et et distinctio et.', 1653, 7, 22, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(23, 'nam', 'Tempore dolor rerum nisi blanditiis et incidunt. Nihil qui laboriosam iusto inventore a eos aut exercitationem. Dolores recusandae consectetur aut cumque. Quidem ea perspiciatis facere eum.', 964, 6, 20, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(24, 'ut', 'Dolorem sint magnam tempora quod ratione error nemo. Dolores soluta officiis dolor omnis voluptas aut.', 1836, 6, 12, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(25, 'officia', 'Enim modi excepturi non ducimus. Ad numquam architecto provident doloremque officia. Aliquid esse laboriosam maiores eum natus omnis. Eligendi et consectetur qui rerum a quod.', 572, 8, 27, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(26, 'aut', 'Quia quam perspiciatis corporis officia animi alias. Amet aliquam nesciunt iste tempore nesciunt. Vero est est ut praesentium et. Sequi quo quis alias. Et dolore architecto tenetur fugit qui nostrum et.', 620, 0, 19, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(27, 'ea', 'Pariatur reiciendis perspiciatis molestiae ipsa et soluta et. In enim est pariatur soluta quas omnis id. Iure quidem dolorem eos id ut. Explicabo eos nemo iusto aspernatur.', 681, 9, 6, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(28, 'fuga', 'Eum libero et enim ullam excepturi voluptatem reprehenderit. Fuga quia debitis repellat dignissimos est eum. Maiores enim dolorum omnis. Qui itaque dicta blanditiis illo omnis expedita perspiciatis.', 962, 0, 23, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(29, 'eos', 'Ipsa doloremque in neque ad quia qui voluptates. Ea assumenda aut rerum et. Qui quasi delectus possimus rem facere et.', 361, 1, 26, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(30, 'et', 'Explicabo quia quae fuga ducimus a aliquid recusandae quo. Quia ab est a debitis voluptatem voluptatem. Omnis omnis error eligendi porro explicabo. Provident doloribus eum mollitia autem.', 792, 5, 11, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(31, 'repudiandae', 'Ea quia vero sunt a est. Illo ut adipisci vero praesentium. Aut corrupti iusto tenetur et in magni. Excepturi eligendi molestias expedita voluptatem.', 553, 0, 29, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(32, 'aut', 'Rem quo beatae expedita blanditiis sed molestiae fugit. Non porro dolores nobis. Molestiae aut error et voluptate neque commodi. Praesentium consequatur sed illum delectus aut doloremque aperiam.', 296, 5, 22, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(33, 'et', 'Rem soluta est eos magnam. Blanditiis quis dolore placeat at quasi veniam laboriosam. Aut porro nihil quasi quia.', 1891, 9, 21, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(34, 'quo', 'Asperiores et ipsum dolores est quidem aut magni. Iste molestiae quaerat temporibus corrupti non. In totam qui voluptatem eius omnis quidem sapiente neque. Ut consequuntur suscipit laboriosam illo ut occaecati.', 275, 1, 23, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(35, 'vitae', 'Autem illo qui et ut qui. Non et dolorem cupiditate in incidunt. Placeat maiores est quaerat sint commodi natus qui et.', 1482, 3, 29, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(36, 'saepe', 'Expedita quas dolores eum ab cumque fuga autem. Nihil eos id minima est est commodi quibusdam. Tempore qui neque labore repellat velit ullam maiores beatae.', 1192, 7, 3, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(37, 'illum', 'Ratione sed a impedit ipsum aliquam autem molestiae. Molestiae quo doloribus accusantium illum dolorem magnam occaecati. Et molestiae eius illum quos voluptas iure. Sunt id consectetur soluta nobis distinctio quasi inventore.', 1720, 2, 27, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(38, 'nobis', 'Enim quis quibusdam dolor eveniet et. Id qui ullam deleniti architecto. Quos hic deleniti aut culpa voluptatem dolor. Molestias sapiente sed totam quas delectus delectus ut.', 412, 0, 13, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(39, 'voluptatem', 'Ipsum dicta modi qui nisi eius. Error laboriosam et quia ut labore amet unde.', 1814, 3, 12, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(40, 'ut', 'Consequuntur aperiam voluptatibus nostrum eaque et quod enim. Aspernatur voluptatibus neque magni voluptates eos aut beatae repellat. Est in est laborum ipsam sunt. Culpa vel nihil dolores reiciendis.', 1860, 6, 4, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(41, 'earum', 'Aut qui in eaque quia qui ipsa. Aut porro omnis numquam omnis. Voluptatem rem vel a in.', 691, 0, 14, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(42, 'beatae', 'Laudantium dolorem dolore aut quos. Sint sunt voluptatem deleniti ut reiciendis. Quibusdam porro quidem voluptatibus facilis. Maiores ex impedit quas in doloremque.', 217, 2, 24, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(43, 'est', 'Animi et qui quidem adipisci quos excepturi. Sit est facere quas id cum et. Ut nulla debitis sit voluptatem sunt. Aspernatur omnis et aliquam quod eum.', 974, 8, 28, '2022-05-26 20:16:02', '2022-05-26 20:16:02'),
(44, 'sunt', 'Nisi nesciunt maiores nulla dicta quo fugit. Sint aspernatur reiciendis et sunt velit assumenda sed. Velit soluta molestiae labore qui voluptatum expedita quo aperiam. A hic iure quisquam ut rerum ut dignissimos.', 363, 6, 17, '2022-05-26 20:16:03', '2022-05-26 20:16:03'),
(45, 'autem', 'Doloribus illum earum ut impedit. Magni nobis saepe possimus sed. Consequatur quas vel molestiae sit quisquam perferendis.', 1700, 6, 15, '2022-05-26 20:16:03', '2022-05-26 20:16:03'),
(46, 'hic', 'Qui corrupti dolorum iure ut quo autem. Sed dolor temporibus qui quidem. Doloribus consequatur quibusdam aut ipsum quas aperiam eveniet.', 478, 6, 6, '2022-05-26 20:16:03', '2022-05-26 20:16:03'),
(47, 'deserunt', 'Corporis facere mollitia dicta molestiae. Totam sit corrupti placeat soluta qui temporibus voluptatem. Aut eaque aut voluptatem reprehenderit illo officia. Iste sed eos eum debitis rem.', 1316, 8, 6, '2022-05-26 20:16:03', '2022-05-26 20:16:03'),
(48, 'saepe', 'Harum eum quidem aut. Magni modi vel sunt assumenda nemo enim mollitia dolorum. Excepturi aut voluptas ipsam corrupti nesciunt.', 1338, 8, 16, '2022-05-26 20:16:03', '2022-05-26 20:16:03'),
(49, 'aperiam', 'Accusamus doloribus veniam omnis numquam nihil. Doloribus vero perferendis reiciendis deserunt recusandae quaerat aliquam consectetur. Sint vel quasi aliquam fuga praesentium. Dolores fugiat numquam ea.', 896, 9, 16, '2022-05-26 20:16:03', '2022-05-26 20:16:03'),
(50, 'recusandae', 'Numquam reiciendis non et minus atque ut omnis. Fugit dicta suscipit similique dolores quo blanditiis. Aut sit modi aut. Reprehenderit consequuntur repudiandae voluptatem quaerat aliquid dolores unde delectus.', 1315, 6, 24, '2022-05-26 20:16:03', '2022-05-26 20:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 43, 'Brandyn Hagenes', 'Voluptatibus magnam consequatur neque vel. Dolor iusto iure est et. Natus asperiores quis sit qui saepe quasi.', 1, '2022-05-26 20:16:03', '2022-05-26 20:16:03'),
(2, 29, 'Ms. Joanny Schulist V', 'Exercitationem consequatur voluptatem deserunt pariatur dignissimos qui. Rem quae adipisci adipisci provident esse quibusdam. Dolore qui et sed sint. Praesentium facere adipisci dolorem rerum quasi sit eaque.', 5, '2022-05-26 20:16:03', '2022-05-26 20:16:03'),
(3, 8, 'Kelsi Torp', 'Quae rerum dolor quaerat aut quia delectus neque. Sunt blanditiis dolore temporibus vero officia est expedita sit. Adipisci sed saepe officiis recusandae. Quo aut rerum temporibus veniam.', 2, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(4, 20, 'Lee Balistreri', 'Amet excepturi similique est nam iusto fugiat. Ut recusandae quia sint a quasi hic. Est temporibus praesentium est aliquid adipisci minus necessitatibus.', 4, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(5, 19, 'Dr. Tia Marks', 'Iste illo amet officia modi doloremque vel. Omnis rerum possimus ipsa sunt odit. Velit nobis et illo qui est.', 4, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(6, 43, 'Gabe Wuckert', 'Nemo tempora fugiat distinctio ut corrupti voluptatem. Laudantium qui fuga voluptatem ipsam. Autem aut saepe sit reiciendis enim quaerat aut. Sit veniam itaque quod eos incidunt dolorem enim.', 4, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(7, 19, 'Gilbert Stroman', 'Ut autem ut consequatur illum fuga. Debitis voluptatem ut omnis facilis iusto. Dicta est fugit deserunt quia ipsum commodi. Quod assumenda inventore expedita harum sunt unde omnis.', 1, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(8, 24, 'Danyka Bailey', 'Et velit nemo odio rerum est eaque. Tenetur recusandae suscipit aut officiis a. Ut et consequatur voluptate expedita molestiae doloribus rerum.', 0, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(9, 1, 'Deondre Morissette', 'Laborum illo nisi quas maxime non deleniti quia. Optio itaque id possimus est tenetur. Quo fugit neque repudiandae.', 3, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(10, 40, 'Micaela Bernhard', 'Quae sed repellendus porro nemo. Necessitatibus harum pariatur eius modi. Omnis ut dignissimos exercitationem.', 4, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(11, 21, 'Leann Hintz', 'Ducimus eum minus perspiciatis maxime et ut ut illo. Tempora voluptatem omnis sint enim doloribus. Dolorum voluptas velit quod mollitia. Non aut sit numquam ut fuga debitis. Laboriosam ut maiores nihil sit et.', 0, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(12, 37, 'Anais Cormier', 'Sit qui id cupiditate rerum quidem veritatis et. Sunt recusandae dicta quaerat cum omnis voluptates. Rerum quibusdam cum magnam corporis sunt.', 3, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(13, 16, 'Dr. Nicholaus Witting MD', 'Doloremque quaerat recusandae officiis cum sit tenetur. Saepe corrupti praesentium dolor aut laboriosam. Quia amet magni ipsam nihil. Qui architecto placeat esse ad sit.', 1, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(14, 5, 'Prof. Hardy Herman', 'Dignissimos ullam a aut rerum occaecati neque. Quis harum repellat aliquid eligendi quis aliquid asperiores.', 4, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(15, 36, 'Ashley Cruickshank', 'Quod officiis atque minima et. Nisi quia laborum assumenda sunt amet iste veniam. Inventore ipsa sint est in quas quis exercitationem qui.', 2, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(16, 16, 'Prof. Maxie Lebsack', 'Accusamus sed vel alias reprehenderit. Maiores minus nisi voluptatem non labore. Omnis sit reiciendis ex dicta. Aspernatur nisi ipsa vel expedita modi maxime cupiditate.', 0, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(17, 25, 'Prof. Sam Larkin Jr.', 'Ut fugiat dolor omnis dolorem ipsum architecto. Vitae atque sunt ut aut culpa inventore. Dolor minima voluptatem hic voluptatum et. Tenetur explicabo quasi culpa omnis veniam consequatur qui voluptatem.', 0, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(18, 32, 'Halle Schiller', 'Aliquid nulla quo nobis aliquid. Expedita eveniet pariatur laudantium labore aut. Iusto amet dolor aut ut neque expedita et. Dolorum necessitatibus eos culpa aut.', 0, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(19, 15, 'Trystan Reilly', 'Libero nemo in qui repudiandae sed. Molestias omnis minus ut. Odit magnam necessitatibus alias dolor quia et. Dolores porro nam sed.', 5, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(20, 16, 'Valentina Koss', 'Quia delectus in consequatur itaque nihil in. Recusandae minus voluptatem doloremque aliquam consequuntur. Officia sint enim veritatis. Placeat nihil dolor provident magnam maxime.', 5, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(21, 19, 'Prof. Letha Jenkins', 'Blanditiis dicta reprehenderit et repellat aut. Ex possimus illum ut repellendus voluptas inventore odit. Sed dolorum ut odit rem voluptas ducimus eveniet et. Sed nesciunt blanditiis qui ex omnis impedit.', 5, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(22, 34, 'Mr. Marley Goodwin IV', 'Necessitatibus rerum harum ut a voluptatem distinctio et. Possimus in et voluptas itaque expedita illo accusantium architecto. Exercitationem excepturi laborum omnis ipsa officia. Et a dolor nesciunt ut consequatur voluptas.', 4, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(23, 27, 'Miss Aisha Quigley', 'Quia suscipit totam voluptatem quos eum et. Tenetur quam facilis aliquam a facere porro eligendi dicta. Accusantium blanditiis debitis et expedita molestiae et. Et eos laboriosam blanditiis sequi.', 2, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(24, 11, 'Leonor Jacobs', 'Eum provident beatae recusandae dolorem cupiditate. Earum nesciunt voluptas explicabo ad tempore asperiores.', 0, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(25, 39, 'Cullen Murphy', 'Possimus reiciendis minima occaecati itaque quis. Molestiae minus nemo sit sed quas. Totam qui commodi veritatis sit esse. Labore ut mollitia nam dolorum et.', 5, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(26, 12, 'Marjory Connelly IV', 'Ut voluptatem ex autem quia mollitia optio. Quod eum tempora consectetur sapiente quia quia magni. Exercitationem accusantium nobis voluptatum.', 5, '2022-05-26 20:16:04', '2022-05-26 20:16:04'),
(27, 9, 'Prof. Everette Lebsack Sr.', 'Iure voluptate assumenda quia illum quisquam quo culpa quia. Ab quibusdam ea ut ullam quia rem. Et officiis quo facilis modi eaque dignissimos.', 5, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(28, 49, 'Prof. Clemens Murazik', 'Reiciendis et quae facere ut est illo. Aut esse illo porro architecto. Repellendus ut ipsa a harum rerum non iste. Quasi ea aut rerum laudantium numquam aliquid.', 2, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(29, 34, 'Ms. Melba Mitchell', 'Vel et maiores nesciunt voluptas vel maxime et. Optio nisi hic atque in sit rerum. Sint corporis et commodi.', 3, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(30, 24, 'Mrs. Chloe Pfannerstill', 'Vel magni ut ratione voluptatem soluta aliquam. Qui facilis voluptates sit at. Hic numquam nobis iure. Quisquam aut architecto sed.', 4, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(31, 27, 'Chadd Dietrich PhD', 'Ea eos debitis et ut. Ut repellendus dolor temporibus eveniet veritatis. Dicta id voluptate sint reiciendis.', 2, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(32, 11, 'Efren Kertzmann MD', 'Rerum quis quaerat qui quia voluptatem nostrum ut. Aut iure quasi aspernatur iusto. Nesciunt veniam ab laborum modi quo molestiae quo quos.', 4, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(33, 10, 'Annie Nader II', 'Nihil voluptatum rerum id non quo a quam autem. Hic voluptatem cum repellendus a. Tempore maxime sequi aut consequuntur libero suscipit excepturi.', 1, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(34, 43, 'Koby Gutmann', 'Doloremque porro ipsam aut inventore quos error est. Sit aliquam quia tenetur numquam et atque quo atque. Adipisci nisi est voluptate inventore.', 4, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(35, 44, 'Myrtice Kling', 'Suscipit est ad sapiente fugiat est sequi aut. Quas dolor eligendi fugiat porro. Deleniti ut reprehenderit rerum non nihil quis nihil. Dicta repellendus quisquam velit sapiente.', 0, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(36, 45, 'Bridie Strosin IV', 'Rem aut illo omnis maxime dolores quae nihil nihil. Omnis dolorum eius tempora itaque iste dolorum. Natus occaecati omnis omnis quidem a commodi. Non similique velit pariatur quisquam nulla facere exercitationem.', 4, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(37, 47, 'Mrs. Ada Flatley', 'At rerum sunt vero illo. Et consequatur quis in est hic. Soluta qui similique facere harum non nemo ut.', 4, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(38, 24, 'Clifton Kozey', 'Fuga consequatur placeat doloribus sunt explicabo. Similique ipsam quae repellat ut.', 0, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(39, 9, 'Karina Greenfelder', 'Iste velit dolorum fugit id mollitia esse. Optio non non nisi rerum est omnis. Exercitationem adipisci velit officia doloremque dolores voluptatem.', 2, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(40, 21, 'Mr. Kamron Kris', 'Ipsam rem molestiae odio repudiandae repudiandae est modi. Qui et odit quam corporis. Est doloribus rerum pariatur sed omnis deserunt reiciendis. Quia fugiat sapiente est ad est quis.', 0, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(41, 4, 'Dr. Ismael Predovic I', 'Sunt vero quo corrupti necessitatibus fugiat ipsam commodi. Quia quo non consectetur sed omnis quas qui. Et velit blanditiis recusandae.', 1, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(42, 26, 'Tom Romaguera', 'Enim expedita qui quia qui sed eveniet. Velit vitae beatae dolorem quas architecto aut tempora. Minima autem aut error.', 0, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(43, 49, 'Caitlyn Mitchell PhD', 'Molestiae mollitia excepturi in maiores. Et sint voluptatum voluptatum voluptatem. Voluptatem sit repudiandae nihil sed.', 3, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(44, 49, 'Alysson Grimes', 'Quia quos cupiditate voluptatem commodi laudantium ad. Voluptatem necessitatibus id sit ut quos earum ipsa. Vel ut iure recusandae repellat. Nesciunt veniam impedit et quia quas minus optio.', 4, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(45, 2, 'Karolann Mante', 'Consequatur expedita ex earum. Cumque quibusdam consequatur dolores minima odit quia nihil. Sint perferendis voluptatum doloremque sapiente similique distinctio voluptatem.', 2, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(46, 13, 'Tevin Mosciski', 'Reiciendis quisquam beatae eum ut sit. Qui fugiat in ut distinctio ipsum ipsa. Reprehenderit quidem dignissimos maxime necessitatibus voluptas. Dolores sunt non doloremque inventore. Nam similique enim tempora corporis omnis et sed.', 3, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(47, 43, 'Golda West', 'Pariatur odio veniam illo voluptatem et sint ducimus rerum. Optio numquam rem quia et temporibus sit nesciunt quam. Nisi fugiat recusandae voluptates sed. Nobis harum velit eum illo. Vitae esse exercitationem sequi dolorem.', 3, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(48, 29, 'Ayden Pouros', 'Et dignissimos et fuga magni pariatur natus. Cum sapiente vel et quaerat sint ea et sed. Quidem soluta commodi qui non doloribus necessitatibus. Eos consectetur tempore repudiandae. Quod porro repudiandae consequatur error est.', 5, '2022-05-26 20:16:05', '2022-05-26 20:16:05'),
(49, 27, 'Dr. Ramon Strosin', 'In rerum id numquam dolor corrupti assumenda rem. Corrupti voluptatibus adipisci voluptatem saepe hic. Ipsum quo voluptas nemo et corporis illo.', 2, '2022-05-26 20:16:06', '2022-05-26 20:16:06'),
(50, 39, 'German Moore', 'Neque dignissimos est omnis incidunt optio voluptates. Hic expedita dolorem est et. Qui totam aspernatur nobis ab nihil quis enim deleniti. Vero quisquam quam non vero assumenda voluptatum. Labore adipisci in repellendus dolore.', 4, '2022-05-26 20:16:06', '2022-05-26 20:16:06'),
(51, 40, 'Dr. Antwan Schroeder V', 'Libero id rerum expedita quae ea. Ex qui nemo expedita nisi pariatur corrupti optio. Aliquam distinctio quod id cupiditate dolores. Minus libero ut laborum. Quibusdam quis deleniti iure qui aut aut qui.', 4, '2022-05-26 20:16:06', '2022-05-26 20:16:06'),
(52, 48, 'Mr. Cyril Hodkiewicz', 'Repellendus qui voluptatem ipsa consectetur et voluptatibus. Aut quisquam velit dolor voluptatum. Quae occaecati laudantium est incidunt sed itaque autem.', 4, '2022-05-26 20:16:06', '2022-05-26 20:16:06'),
(53, 43, 'Pat Gibson', 'Ut quisquam occaecati voluptatem reiciendis non eaque. Reiciendis cum laboriosam necessitatibus corporis eligendi velit et.', 2, '2022-05-26 20:16:06', '2022-05-26 20:16:06'),
(54, 47, 'Prof. Jordan Hegmann III', 'Veritatis inventore autem minima et. Placeat voluptatem harum aliquam rem. Molestiae aperiam sint adipisci quia quia consequatur sed.', 1, '2022-05-26 20:16:06', '2022-05-26 20:16:06'),
(55, 17, 'Valentin Kuhic MD', 'Consectetur impedit voluptatibus aliquid voluptas at eveniet. Deleniti quia dolorem et deleniti ea maiores aut. Qui et dolores et et reiciendis quia.', 4, '2022-05-26 20:16:06', '2022-05-26 20:16:06'),
(56, 40, 'Dr. Zachariah Muller', 'Aperiam nemo et suscipit voluptatum. Ullam nemo debitis rem et quia. Et eligendi distinctio quia soluta ex itaque. Mollitia culpa accusantium facere eum iusto voluptas laboriosam impedit.', 4, '2022-05-26 20:16:06', '2022-05-26 20:16:06'),
(57, 35, 'Mr. Julian Beier', 'Error non voluptas aspernatur adipisci assumenda ut. Illo saepe sunt eius est natus et. Quis deleniti ut a atque corporis in.', 3, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(58, 32, 'Wallace Weimann', 'Porro sint labore quo voluptas sunt qui maxime in. Quos qui adipisci ipsa nesciunt quisquam distinctio. Ullam sit eos sed est.', 4, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(59, 43, 'Dr. Clint Kling V', 'Natus ad qui rem autem ratione. Quo labore praesentium voluptas. Tempore accusamus et est illo dolores. Sunt pariatur iure nostrum recusandae officia magni perferendis.', 0, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(60, 42, 'Edmund Daniel', 'Voluptatem maiores laboriosam quo consequatur quod exercitationem quae. Est suscipit eius quia ut laborum et odit voluptates. Inventore reprehenderit aut aut repudiandae eaque sed enim voluptatem. Quibusdam voluptas qui distinctio inventore omnis nihil sed.', 2, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(61, 4, 'Mr. Evans Jast', 'A exercitationem impedit nihil ipsum. Distinctio sapiente omnis et ipsa sed laudantium omnis. Dolores dolore quos sunt aut qui nam.', 5, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(62, 46, 'Lonie Watsica DVM', 'Vitae ad aut et quam. Impedit vero dolorem maiores velit exercitationem corrupti. Enim cum sint id ratione aut. Dolores enim fugiat ut dolor voluptatem.', 5, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(63, 21, 'Trevor Batz DDS', 'Vitae ex deleniti nihil deserunt facere dolorem. Ipsum quisquam iusto fugit neque. Enim ex omnis voluptatem quia fugit.', 3, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(64, 35, 'Camille Turner II', 'Assumenda culpa deleniti velit ad et est soluta. Id ut blanditiis autem. Est eveniet quidem rerum molestiae.', 0, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(65, 21, 'Willis Marks', 'Eos quia accusamus error est. Aut facere consequatur non saepe ut odit. Necessitatibus et repudiandae mollitia ea atque neque et.', 1, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(66, 42, 'Ms. Gabriella Daniel IV', 'Qui alias autem quo quod earum sed porro. Ut et sed et nulla. Earum dolorem aut libero nihil excepturi enim doloremque dolore. Beatae voluptatibus vitae totam et qui.', 2, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(67, 25, 'Alejandra Rippin', 'Eos eos voluptates laudantium est ipsa velit quis. Amet iste numquam aut inventore ab eum dolorem. Eum neque ut maiores.', 2, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(68, 22, 'Dr. Elta Cummerata', 'Ducimus quam labore consequuntur. Ea dolorem quia voluptas illo velit laborum qui ut. Eos tempora eum aut repellat commodi accusantium ut.', 5, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(69, 40, 'Marquise Kassulke', 'Pariatur distinctio modi et. Ut natus occaecati aut maiores consequatur aut. Nisi voluptas excepturi in et libero praesentium.', 4, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(70, 18, 'Candida Haley', 'Illo eius molestiae deleniti excepturi. Quasi accusantium necessitatibus enim quia. Est et quia quia.', 3, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(71, 22, 'Genevieve Bahringer', 'Quis laborum mollitia porro inventore ut et blanditiis. Ullam vitae vero ipsa est nobis temporibus commodi molestiae. Vero enim est fugiat quaerat. Eligendi qui sit et soluta vitae quibusdam.', 3, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(72, 20, 'Mr. Stanley Doyle II', 'Harum ipsa sed neque dolor et eius sit. Reprehenderit corrupti asperiores eveniet neque voluptate ratione. Cumque dolorem aut est facilis ipsum. Qui non eos autem at repellat eius.', 4, '2022-05-26 20:16:07', '2022-05-26 20:16:07'),
(73, 4, 'Sienna Lebsack', 'Magnam consequuntur magni voluptatum tempore beatae dignissimos. Quasi corporis reiciendis aut ad vel alias deleniti fugiat. Hic officia consectetur cupiditate nihil nisi soluta illum.', 5, '2022-05-26 20:16:08', '2022-05-26 20:16:08'),
(74, 10, 'Litzy Hirthe III', 'Maiores excepturi qui culpa alias eveniet aut tempora in. Error rerum occaecati repellendus porro pariatur sequi dicta hic. Recusandae id quaerat debitis possimus quaerat maxime et. Quos totam impedit illo provident sint et saepe.', 2, '2022-05-26 20:16:08', '2022-05-26 20:16:08'),
(75, 43, 'Dr. Dexter Goyette IV', 'Aut consequatur et illum quas laudantium cumque. Autem et eum impedit impedit esse dolorum. Omnis est optio adipisci quis sunt hic ea. Ipsa error a nisi omnis minima et. Aut ut rerum quia debitis.', 3, '2022-05-26 20:16:08', '2022-05-26 20:16:08'),
(76, 24, 'Jabari Sauer', 'Assumenda similique sed quisquam laudantium unde fugit vel odio. Et voluptatem numquam expedita et quae. Corporis libero minus autem fugiat qui. Tenetur pariatur quis distinctio aliquid qui officiis. Culpa qui odit et alias eligendi praesentium.', 1, '2022-05-26 20:16:08', '2022-05-26 20:16:08'),
(77, 33, 'Berneice Wisoky', 'Ut unde quam repudiandae est cum. Assumenda nihil voluptas sunt cupiditate eligendi qui rem. Nulla iure autem impedit sed.', 5, '2022-05-26 20:16:08', '2022-05-26 20:16:08'),
(78, 27, 'Mr. Haskell Lebsack III', 'Architecto distinctio hic voluptas expedita. Et et et voluptas aut aliquid consectetur. Dolores eveniet est est incidunt rerum est.', 1, '2022-05-26 20:16:08', '2022-05-26 20:16:08'),
(79, 12, 'Felicity Bins', 'Cupiditate consectetur aspernatur dolorem sed alias impedit quod. Non voluptatem voluptas ut aut ducimus voluptate. Tempore eos placeat velit adipisci omnis delectus. Dolorem aut reiciendis omnis qui voluptas perspiciatis.', 1, '2022-05-26 20:16:08', '2022-05-26 20:16:08'),
(80, 27, 'Cecil Spencer', 'Ut et eos qui iure quod magni. Velit voluptatem nihil quod autem. Architecto quia consequatur iure ut. Eligendi occaecati et excepturi quia culpa explicabo.', 3, '2022-05-26 20:16:08', '2022-05-26 20:16:08'),
(81, 40, 'Jody Ullrich', 'Sequi aut quos illo quo. Ullam facere tempora dignissimos ab sed blanditiis accusantium. Repellat corrupti facere esse ratione.', 1, '2022-05-26 20:16:08', '2022-05-26 20:16:08'),
(82, 1, 'Mr. Rowan Senger I', 'Debitis at qui perspiciatis voluptatem et. Qui harum ut dolores optio. Eaque rem ratione iure aliquam illo officiis.', 5, '2022-05-26 20:16:09', '2022-05-26 20:16:09'),
(83, 6, 'Bud Kemmer', 'Deserunt distinctio officia error dolores nam quis est qui. Eos similique autem illo atque similique corporis earum. Qui iste autem aspernatur.', 5, '2022-05-26 20:16:09', '2022-05-26 20:16:09'),
(84, 11, 'Aurelio Kunze', 'Quidem esse neque dolores ut sit optio iste. Aliquid ut quia quo voluptate ut. Voluptatum a et consequatur nihil saepe. Mollitia temporibus culpa praesentium.', 1, '2022-05-26 20:16:09', '2022-05-26 20:16:09'),
(85, 6, 'Joel Bode', 'Accusamus consequatur a sit pariatur quasi blanditiis nobis. Velit excepturi repudiandae velit et facilis non. Qui iure eius quis ducimus.', 0, '2022-05-26 20:16:09', '2022-05-26 20:16:09'),
(86, 19, 'Nash Ledner', 'Temporibus blanditiis hic laudantium eum illo itaque. Nostrum pariatur libero sit pariatur aut reiciendis ut. Cum iste et sed quasi quae. Dolorem expedita id debitis saepe eos.', 2, '2022-05-26 20:16:09', '2022-05-26 20:16:09'),
(87, 48, 'Miss Maurine Crooks', 'Autem ullam eaque ab quidem accusantium repudiandae sunt eveniet. Quibusdam vero assumenda labore magni quasi omnis. Cum et corporis dolore praesentium.', 2, '2022-05-26 20:16:09', '2022-05-26 20:16:09'),
(88, 14, 'Ms. Alysa Fritsch', 'Ut est fugit nisi et est sit. Amet et et ab perspiciatis. Rerum velit saepe eos qui assumenda aspernatur quo. Aut expedita accusantium est qui reiciendis nisi.', 1, '2022-05-26 20:16:10', '2022-05-26 20:16:10'),
(89, 24, 'Americo Cassin V', 'Accusamus error magni ratione. Dolorum praesentium perferendis sunt aperiam inventore incidunt. Aut nemo est autem. Molestias occaecati facere enim.', 0, '2022-05-26 20:16:10', '2022-05-26 20:16:10'),
(90, 27, 'Laura Hoppe II', 'Doloribus nisi ratione est aut eum expedita. Illo veritatis ut doloremque. Occaecati libero neque sit accusamus dolorem. Quam error nostrum totam numquam maiores ut.', 5, '2022-05-26 20:16:10', '2022-05-26 20:16:10'),
(91, 10, 'Austin Zieme I', 'Quae suscipit minus modi impedit nemo. Quos error minima excepturi molestias laborum rerum quia.', 1, '2022-05-26 20:16:10', '2022-05-26 20:16:10'),
(92, 20, 'Miss Aliza Emmerich DVM', 'Sed reiciendis aut voluptatibus dolor ut. Est et itaque magni fuga omnis suscipit ut.', 1, '2022-05-26 20:16:10', '2022-05-26 20:16:10'),
(93, 40, 'Keven Ernser', 'Et esse sit corrupti veniam blanditiis qui quos. Tempora quas rerum fuga ut consectetur qui. Dignissimos aut exercitationem laboriosam suscipit quidem fugiat non. Quis laborum a exercitationem temporibus.', 3, '2022-05-26 20:16:10', '2022-05-26 20:16:10'),
(94, 24, 'Alfreda Huel PhD', 'Iusto consequatur qui facilis ut enim quo. Et minus voluptas autem facilis. Voluptatem et et sit eos unde.', 3, '2022-05-26 20:16:11', '2022-05-26 20:16:11'),
(95, 32, 'Johnny Deckow', 'Vel earum facere optio aperiam suscipit ea. Odio quia eveniet repellendus delectus ipsam. Sed et magni voluptatum rerum aut temporibus. Voluptatem nobis unde laborum porro est. Omnis veritatis accusantium velit ea non et.', 3, '2022-05-26 20:16:11', '2022-05-26 20:16:11'),
(96, 5, 'Dulce Heidenreich II', 'Tempora soluta aut inventore fugit maxime doloremque asperiores ipsam. Eligendi reiciendis excepturi aut illo voluptatem laudantium ut. Qui in molestiae omnis quos voluptatibus. Natus earum necessitatibus omnis dolor et soluta ut.', 3, '2022-05-26 20:16:11', '2022-05-26 20:16:11'),
(97, 44, 'Hyman Windler', 'Sunt qui eaque fugiat quo sed sit. Natus est libero eius tempore tempora nobis consequuntur maxime. Quisquam maiores incidunt veritatis quo eos et harum.', 0, '2022-05-26 20:16:11', '2022-05-26 20:16:11'),
(98, 46, 'Amie Emmerich', 'Tenetur sunt nam voluptatem rerum similique similique doloremque. Ex ut autem labore fugit. Omnis ipsum fugiat assumenda cumque eaque optio minima ut. Animi placeat et inventore.', 1, '2022-05-26 20:16:11', '2022-05-26 20:16:11'),
(99, 29, 'Ms. Crystel Gorczany IV', 'Distinctio dolorum qui nisi consequatur totam impedit quae. Cupiditate consectetur voluptas voluptas ea velit sint nam. Aut esse labore sint tempore et magni. Eveniet architecto eius sequi et totam voluptatibus.', 3, '2022-05-26 20:16:11', '2022-05-26 20:16:11'),
(100, 36, 'Friedrich Mayer', 'Beatae commodi explicabo tempora odit non voluptas ut. Dolorem autem corporis et autem nostrum. Eius iste doloribus qui culpa id veniam consectetur.', 0, '2022-05-26 20:16:11', '2022-05-26 20:16:11'),
(101, 9, 'Zachariah Sipes', 'Sint dolorum amet porro suscipit. In accusamus eum reprehenderit. Natus sapiente minus nisi voluptatem.', 1, '2022-05-26 20:16:11', '2022-05-26 20:16:11'),
(102, 30, 'Emory Gutkowski', 'Iste laborum autem odio recusandae. Dignissimos quae quis laudantium ullam omnis eaque eligendi. Sint voluptatem dolorum tempora et sit enim tenetur. Et quos impedit quo et asperiores.', 2, '2022-05-26 20:16:11', '2022-05-26 20:16:11'),
(103, 26, 'Adolph Littel', 'Ut est rerum est voluptas. Quidem eos natus dolorem veniam architecto commodi qui. Est voluptas reiciendis inventore aperiam praesentium est sed.', 5, '2022-05-26 20:16:12', '2022-05-26 20:16:12'),
(104, 17, 'Mr. Loy Treutel III', 'Ut voluptatem ad sapiente porro quis. Dolor beatae occaecati aut dicta aspernatur repellat quam. Voluptates cum dolores libero tempore non sint consequuntur.', 5, '2022-05-26 20:16:12', '2022-05-26 20:16:12'),
(105, 24, 'Saul Lebsack', 'Eaque eos nam nisi voluptates delectus iure consequatur consequatur. Delectus illum quia et ipsum asperiores ea. Et amet autem voluptas odio placeat delectus eum laudantium. Iure quia pariatur ut ex et autem dolorem.', 4, '2022-05-26 20:16:12', '2022-05-26 20:16:12'),
(106, 41, 'Jamel Schultz', 'Enim doloribus eum optio. Optio mollitia reprehenderit rerum dolores dolorem. Repellendus unde commodi aliquam error velit velit animi. Tenetur ut deserunt soluta.', 1, '2022-05-26 20:16:12', '2022-05-26 20:16:12'),
(107, 20, 'Arnold Gleichner', 'Provident hic id ea incidunt esse et dolorem. Accusamus debitis maiores voluptatem soluta architecto eum. Similique deserunt eligendi quis in consequatur earum asperiores.', 3, '2022-05-26 20:16:12', '2022-05-26 20:16:12'),
(108, 3, 'Mr. Zachary Daugherty DDS', 'Ab et ut aut iusto nobis ipsa placeat et. Iste fugit recusandae sed unde. Aut veritatis nulla voluptas sed sit.', 1, '2022-05-26 20:16:12', '2022-05-26 20:16:12'),
(109, 29, 'John Heathcote', 'Corrupti voluptatem aspernatur quam repudiandae cumque assumenda porro. Recusandae occaecati et et autem aliquid. Iure consequatur doloribus delectus libero. Iure non natus ex mollitia autem.', 3, '2022-05-26 20:16:12', '2022-05-26 20:16:12'),
(110, 23, 'Enrique Stamm', 'Iusto perspiciatis ut maiores est. Rerum ut cumque quos ipsum qui est aspernatur. Incidunt est tempore id maxime autem. Tenetur commodi perspiciatis omnis aut et maxime.', 0, '2022-05-26 20:16:12', '2022-05-26 20:16:12'),
(111, 22, 'Brionna Hintz DDS', 'Voluptatem id pariatur omnis assumenda saepe. Assumenda cupiditate repudiandae distinctio. Omnis dolore vero repellat ducimus.', 1, '2022-05-26 20:16:13', '2022-05-26 20:16:13'),
(112, 44, 'Esta Armstrong', 'Excepturi odit consectetur sint. Et blanditiis laborum aspernatur officia a. Veritatis sit minus illo voluptatem.', 5, '2022-05-26 20:16:13', '2022-05-26 20:16:13'),
(113, 2, 'Blanche O\'Kon', 'Possimus reprehenderit est et ipsa. Perferendis est in quae repellat. Tempora culpa illum velit rerum necessitatibus aut soluta.', 1, '2022-05-26 20:16:13', '2022-05-26 20:16:13'),
(114, 27, 'Ethan Walter', 'Voluptatem adipisci est ipsa et aut. Error quam quo quae corrupti vel. Voluptas ut expedita quia fugiat exercitationem.', 5, '2022-05-26 20:16:13', '2022-05-26 20:16:13'),
(115, 4, 'Mr. Adolphus Lesch Sr.', 'Qui maiores et dolorum maxime et impedit. Nesciunt inventore facilis molestiae atque libero dolores. Eos vel beatae velit deserunt libero.', 0, '2022-05-26 20:16:13', '2022-05-26 20:16:13'),
(116, 19, 'Prof. Kay Kulas', 'Facilis explicabo et recusandae rem suscipit. Molestiae excepturi perspiciatis vitae eos quibusdam. Quo enim totam aut iure et. Sunt eum non nobis rerum debitis ut.', 2, '2022-05-26 20:16:13', '2022-05-26 20:16:13'),
(117, 27, 'Mason Mraz', 'Deserunt veritatis quas eum animi adipisci culpa. Quaerat hic doloribus dolore occaecati. Odio aut explicabo error. Blanditiis aperiam recusandae facere porro libero quia totam quia. In ipsum doloribus culpa tenetur libero eligendi unde sint.', 1, '2022-05-26 20:16:13', '2022-05-26 20:16:13'),
(118, 33, 'Vincenzo Koelpin', 'Aperiam qui dolorem iusto accusamus eos odio a in. Praesentium blanditiis et optio beatae sint amet cum. Fugiat sit id laboriosam molestias. Ut quas non beatae reprehenderit. Id soluta vitae molestiae deserunt illum.', 3, '2022-05-26 20:16:14', '2022-05-26 20:16:14'),
(119, 24, 'Prof. Jerry Smitham Jr.', 'Magni voluptatum quia laborum quidem omnis. Sint facere et occaecati esse qui sapiente aut. Veniam recusandae illum veniam id dolores.', 4, '2022-05-26 20:16:14', '2022-05-26 20:16:14'),
(120, 9, 'Deanna Gusikowski', 'Iste qui aliquid omnis dolores magnam. Excepturi sit asperiores ipsam dicta velit.', 4, '2022-05-26 20:16:14', '2022-05-26 20:16:14'),
(121, 17, 'Lilla Tromp', 'Nulla voluptas tenetur architecto reprehenderit. Quos maxime qui nisi voluptatem voluptatem. Corporis aut voluptatem eaque eum. Eveniet recusandae id consequatur eum consectetur ea.', 1, '2022-05-26 20:16:14', '2022-05-26 20:16:14'),
(122, 49, 'April Roob Jr.', 'Commodi laboriosam ipsa laboriosam maxime. Alias enim sint deserunt quas optio deleniti ut. Officiis et ullam delectus quibusdam aperiam.', 4, '2022-05-26 20:16:14', '2022-05-26 20:16:14'),
(123, 31, 'Mr. Quinn Hudson II', 'Quia impedit facilis architecto sequi enim necessitatibus. Sed quaerat id dolor vitae reiciendis. Qui nihil quia occaecati deserunt voluptate dicta vel. Blanditiis accusamus voluptatem ut ut blanditiis et.', 0, '2022-05-26 20:16:14', '2022-05-26 20:16:14'),
(124, 48, 'Obie Kulas', 'Dicta ea eum ad omnis quisquam est maiores beatae. Minus quidem deleniti incidunt harum voluptatem. Rerum sapiente autem facilis error aut deserunt modi. Repellat consequuntur repellat explicabo earum perspiciatis.', 4, '2022-05-26 20:16:14', '2022-05-26 20:16:14'),
(125, 19, 'Mrs. Jolie Conroy', 'Labore sed vero voluptatum voluptas similique et quis. Reprehenderit corporis et maxime ipsam ut repellendus qui ad. Aut est officia aut expedita qui. Corrupti dolorem dolor accusantium occaecati.', 4, '2022-05-26 20:16:15', '2022-05-26 20:16:15'),
(126, 15, 'Columbus Wehner Sr.', 'Ut dolorem facere inventore quasi ipsum ea cum nobis. Repudiandae et est id iste voluptatem numquam culpa. Similique architecto voluptatem accusantium magni. Sint sint cupiditate sed voluptatibus.', 4, '2022-05-26 20:16:15', '2022-05-26 20:16:15'),
(127, 41, 'Gregg Volkman', 'Praesentium quibusdam ipsum commodi ab molestiae. Itaque sunt et ducimus maiores fuga id aut. Libero ut voluptatibus autem velit qui aperiam. Quisquam est recusandae et.', 1, '2022-05-26 20:16:15', '2022-05-26 20:16:15'),
(128, 21, 'Cooper Schaefer II', 'Ratione nisi a exercitationem velit. Aut officia fuga provident fugiat provident velit. Ut et rerum placeat ut aperiam omnis molestiae. Cum facere iure nam dolorem.', 3, '2022-05-26 20:16:15', '2022-05-26 20:16:15'),
(129, 9, 'Thalia Shanahan', 'Iure qui odit id. Tempora facilis culpa id ab deserunt dolore maiores. Ab nulla odit expedita enim cupiditate nulla. Voluptas et accusantium eaque molestiae dolorum. Quos delectus et provident minima hic quae.', 1, '2022-05-26 20:16:15', '2022-05-26 20:16:15'),
(130, 28, 'Mr. Alec Mueller', 'Rerum quis deleniti aliquam quos consequatur ea. Eum omnis repellendus quos. Fugiat neque a quia et illum ipsam.', 1, '2022-05-26 20:16:15', '2022-05-26 20:16:15'),
(131, 27, 'Casandra D\'Amore', 'Consectetur aut expedita consectetur dolorum voluptatibus labore consequatur. Ut sed aliquid praesentium ut aut et incidunt.', 2, '2022-05-26 20:16:15', '2022-05-26 20:16:15'),
(132, 24, 'Whitney Fahey', 'Qui nulla molestiae autem dolorum. Praesentium quis ut sunt id suscipit id. Culpa id animi nam blanditiis consequatur adipisci. Rem voluptatem repellat est ut blanditiis eaque.', 2, '2022-05-26 20:16:15', '2022-05-26 20:16:15'),
(133, 9, 'Mr. Tremayne Gottlieb V', 'Non consequuntur qui vitae explicabo illo. Velit voluptas neque maiores esse cumque.', 5, '2022-05-26 20:16:15', '2022-05-26 20:16:15'),
(134, 20, 'Florine Hoppe', 'Modi vel possimus minus aut unde sapiente qui. Nobis quisquam necessitatibus asperiores voluptatem veritatis. Dolorum pariatur illum accusamus praesentium ut.', 3, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(135, 18, 'Cyrus Smitham', 'Et quis vero quam animi. Cumque velit eligendi nihil assumenda et. At molestiae praesentium nulla id officiis aliquam velit. Assumenda necessitatibus ad sit debitis enim delectus. In quos dicta minus excepturi atque magni.', 2, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(136, 34, 'Natalie Flatley II', 'Eum libero odit nostrum ducimus numquam totam autem. Quo vel et eveniet. Nulla harum ea aut aut magnam veritatis. Minima deserunt soluta dignissimos voluptatibus qui rerum sint.', 4, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(137, 14, 'Molly Sporer', 'Nobis et a voluptas sapiente quia. Eum ea amet quia dolores sunt et sint dolor. Consequuntur nisi praesentium eum consectetur consequatur saepe repellendus. Nulla quia quia iste nam non.', 1, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(138, 41, 'Erika Cormier', 'Tenetur esse libero quidem quam sapiente eum. Non sequi ex labore quidem. Magnam tenetur error aperiam perspiciatis rerum sapiente.', 1, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(139, 38, 'Shane Sipes', 'Sit dolor inventore dolore delectus tempora. Qui voluptas itaque facere perferendis. Quia totam soluta reiciendis et et nihil. Repellat iste quidem deleniti doloribus perspiciatis neque.', 4, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(140, 18, 'Ruthie Renner', 'Deleniti ipsam harum aut possimus voluptas. Sit perspiciatis possimus numquam aut qui.', 0, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(141, 10, 'Lou Howe IV', 'Corrupti autem nostrum et quod exercitationem iusto. Quis porro assumenda ducimus. Quidem qui corrupti omnis iusto et. Quos adipisci praesentium molestiae minima. Est provident maiores occaecati illum repellendus placeat sed.', 2, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(142, 46, 'Novella Leannon', 'Amet animi nulla quibusdam cum nemo culpa ad. Commodi architecto officia aut corporis dignissimos. Qui quia repellat vel ipsam eveniet provident qui labore. Consequatur voluptates unde minima optio voluptatem.', 1, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(143, 15, 'Lenny Champlin', 'Blanditiis nemo non itaque est ut iste. Distinctio esse dolores voluptatem praesentium assumenda veritatis totam. Atque reiciendis libero neque. Laudantium ut possimus itaque quibusdam amet quis culpa.', 0, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(144, 40, 'Prof. Kaylah Bechtelar V', 'Quod voluptate optio est. Est id ut reprehenderit nihil quasi autem. Et quisquam ea expedita error velit. Consequatur voluptates molestias voluptatem occaecati doloremque in.', 3, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(145, 27, 'Glenda Boehm', 'Adipisci et ad rerum ut odio explicabo veritatis. Non esse sequi officiis autem natus. Aut ipsa magni id magni amet neque.', 1, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(146, 41, 'Paula Ondricka', 'Voluptatem rerum qui nostrum molestiae dicta. Molestias sunt consectetur facilis alias. Exercitationem beatae nisi non. Dolor consectetur vero quia et est sapiente atque qui.', 2, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(147, 25, 'Ida Davis', 'Voluptatem eius perspiciatis ut eum repudiandae. Sed nulla in omnis totam corporis tenetur. Alias suscipit voluptas accusantium quos dolore. Sed amet sint ut est dolor modi.', 2, '2022-05-26 20:16:16', '2022-05-26 20:16:16'),
(148, 27, 'Einar Shields', 'Perspiciatis necessitatibus tenetur eos. Dolore voluptatum quo saepe ipsum ut quia voluptatibus et. Officia aut qui magnam et vitae voluptatem.', 1, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(149, 47, 'Prof. Dorris Satterfield', 'Quibusdam id dolorum dolorem ex. Sapiente tempore vel sit quas qui maiores. Iure saepe commodi rerum non nostrum libero. Et aut sunt temporibus.', 1, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(150, 46, 'Domenic Little', 'Enim repudiandae est est excepturi eos voluptas nihil. Est non facilis totam consequuntur laudantium quae officiis. Est similique veritatis deserunt. Numquam illo mollitia dolore. Nesciunt voluptatem aut quam impedit.', 3, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(151, 23, 'Judge Kshlerin MD', 'Quia at itaque ea. Nam eos enim aut autem laboriosam quam aut. Blanditiis voluptas exercitationem iure et.', 5, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(152, 11, 'Miss Lupe Metz IV', 'Sit praesentium itaque facilis quod. Delectus aut perferendis autem sint. Vel est qui eos nisi.', 5, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(153, 39, 'Dedrick Reynolds', 'Magni amet sed harum temporibus et consequatur. Eum id aut doloremque quidem asperiores. Error officiis veritatis ea sed nemo modi reiciendis.', 4, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(154, 29, 'Cole Boehm PhD', 'Ex id unde numquam fugiat quisquam amet et. In quasi id illo nisi sit quis deleniti. Officiis quae iure minus minima id. Tempore a vel culpa est consequatur.', 1, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(155, 11, 'Anais Rath', 'Sunt sunt ea sint vel enim nam excepturi. Totam officiis eligendi voluptatem neque exercitationem consequatur. Aliquid adipisci sed molestias a nesciunt. Ullam architecto sint labore quo accusantium.', 0, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(156, 36, 'Dr. Niko Johns', 'Excepturi quo et a facere laborum facere et. Eligendi quia in ut veniam nihil. Velit mollitia occaecati consequuntur quo aut. Sed beatae delectus ex voluptatem.', 5, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(157, 10, 'Dr. Merlin Gerhold', 'Voluptas a ducimus expedita totam. Quam veritatis sunt quibusdam ea nihil qui ipsam. Architecto natus laboriosam eligendi debitis voluptatum voluptatem deleniti atque. Animi autem dolores non et.', 5, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(158, 18, 'Lori Rippin', 'Soluta possimus est quidem rerum. Ex dignissimos et dicta autem quas eius quia aliquam. Perspiciatis molestiae aut consequuntur beatae sed hic. Qui fugit et consequatur aperiam blanditiis. Voluptas vel maiores fugiat magnam aspernatur corrupti minima.', 3, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(159, 10, 'Dr. Clint Macejkovic DDS', 'Eligendi recusandae ut non mollitia provident non qui. Id quia consequatur et laborum minima. Qui ducimus quia dolores impedit unde in. Maiores sint voluptatibus eos.', 3, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(160, 10, 'Damian Watsica', 'Non non neque temporibus qui aut. Quia est est doloremque tempora voluptatem exercitationem voluptas. Magnam vero non error at.', 4, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(161, 3, 'Mr. Rudolph Hermiston PhD', 'Expedita optio praesentium exercitationem voluptatem voluptatum nihil tenetur. Aut aut soluta quasi veritatis. A laborum assumenda est saepe quae.', 0, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(162, 14, 'Dr. Jaquan Koch', 'Sed qui ut ut inventore deserunt. Animi veritatis ducimus in. Sit necessitatibus ipsam eveniet nisi quibusdam fugiat et facilis.', 2, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(163, 49, 'Celestino Abbott', 'Fuga saepe voluptatem aliquam repudiandae aut et. Repudiandae voluptatem eum dolorem atque nobis. Earum eligendi quo et velit veritatis.', 4, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(164, 45, 'Karolann Sawayn', 'Ratione cupiditate quam voluptas vel. Perferendis voluptate perspiciatis a magnam nihil quo. Qui dolor quisquam maxime vel quae reiciendis aut.', 0, '2022-05-26 20:16:17', '2022-05-26 20:16:17'),
(165, 32, 'Dr. Vickie Beier', 'Ab sequi aut ipsum et. Eligendi ipsum ex fuga ut aut velit. Occaecati fugit sequi minima eligendi sed. Quod eum voluptas numquam recusandae doloremque. Quo at et quam adipisci facere.', 2, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(166, 5, 'Buford Rath', 'Ipsam eligendi sapiente deserunt quasi libero officia magni. Ut et dolores ab iusto. Aliquid maxime aut magnam aut cum non.', 3, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(167, 34, 'Mr. Antwon Becker DDS', 'Eligendi iusto facere sit est dolore nihil. Quasi consequatur eum quisquam voluptatem. Dolore praesentium voluptates perspiciatis sit consequatur inventore molestiae.', 1, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(168, 2, 'Aimee Wisoky', 'Similique voluptas maiores voluptates nisi ut. Itaque aliquam consequatur consequatur amet. Id et eum eius sint nihil corrupti. Est illum iste et numquam. Unde eius maiores sit nesciunt aliquid ut facere.', 3, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(169, 9, 'Prof. Jennyfer Smith Jr.', 'Qui occaecati dicta praesentium qui aspernatur autem. Vitae iste quisquam earum libero nostrum et aut. Voluptatem provident totam rem delectus. Ea nulla iste illo rerum id deserunt.', 3, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(170, 41, 'Marietta Parker', 'Libero consectetur recusandae culpa suscipit adipisci eaque. Sunt est rerum enim quia repellat. Aut quasi asperiores aut aliquid iste velit in est. Minus ut ab accusamus officia ea id consequatur.', 0, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(171, 25, 'Mr. Rodolfo Bartoletti III', 'Omnis minus magnam iure eius ut nam consequuntur. Officia non a est. Quo sit amet provident et cupiditate rerum doloremque sed.', 1, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(172, 20, 'Lola Nitzsche', 'Adipisci fuga provident temporibus. Pariatur alias et occaecati harum. Voluptatem sed rerum neque quasi.', 1, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(173, 27, 'Noemi Mohr MD', 'Impedit et mollitia quos quibusdam quasi aut quis. Natus ducimus hic nesciunt recusandae eius quia consequuntur. Quod provident recusandae error magni. Eveniet saepe eos qui aut harum.', 1, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(174, 9, 'Mr. Robert Weber V', 'Reiciendis eligendi sed veritatis laboriosam beatae. Qui nihil occaecati qui labore aut inventore. Sint vel odio dolorum fugit placeat ullam eaque. Ut debitis ut perspiciatis dolorem ab atque.', 2, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(175, 36, 'Maxime Tremblay', 'Natus non ipsum mollitia cum cum molestiae aut fugit. Perspiciatis numquam pariatur sed iste recusandae esse est. Eum beatae debitis in voluptatem assumenda veritatis dolore. Ex accusantium molestias ipsum fuga ut odio.', 3, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(176, 43, 'Roberto Kling', 'Libero nisi voluptatem dicta aut magnam quia. Voluptate nesciunt nisi cum vel nam sed. Eveniet beatae dolor voluptatem temporibus qui quia. Consequatur qui laudantium est sit ex aut.', 2, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(177, 9, 'Brook Dicki', 'Ex voluptas quis quo consequatur. Exercitationem dolores fugit reprehenderit numquam aut et. Et iusto mollitia ea non omnis voluptatum. Non tenetur odio vel quis.', 3, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(178, 27, 'Jordane Torphy', 'Hic quis autem eos. Omnis praesentium dignissimos corrupti ut libero. Qui neque amet sit minima voluptatem rerum. Explicabo tempore quasi est sint molestiae labore autem.', 4, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(179, 34, 'Sister Mann', 'Excepturi corrupti et aut tempora repellendus optio deleniti cupiditate. Labore vel omnis quia voluptatem cum. Optio dolore est aperiam rerum dolores rerum.', 4, '2022-05-26 20:16:18', '2022-05-26 20:16:18'),
(180, 49, 'Mr. Linwood Larson DVM', 'Aut repellendus molestiae minima perferendis. Et voluptas omnis laboriosam eligendi ad pariatur. Illum et odio autem sint vero. Ut aperiam error earum atque qui.', 0, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(181, 8, 'Mrs. Glenda Raynor Sr.', 'Quos exercitationem est ipsam aut vel aut ut. Facilis fugit quasi iure asperiores. Similique expedita aut perspiciatis quis ducimus veritatis. Maiores expedita est eius dignissimos mollitia ut minus. Voluptatem molestiae ipsa in rem.', 4, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(182, 48, 'Sigrid Rempel', 'Quidem eos modi cumque velit animi. Sed architecto sed ea ex ullam enim tempore. Ut aut beatae tenetur. Aut consequuntur sit quod exercitationem aut ea.', 0, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(183, 5, 'Mossie Gulgowski', 'Ducimus quam consectetur quia ut autem est minus. Sequi ipsa tempora eligendi alias non sint. Molestiae quo est provident eos dolorum. Distinctio vel voluptas voluptatem assumenda.', 5, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(184, 7, 'Prof. Kelvin Yundt', 'Quos dolores corrupti reprehenderit optio. Voluptas est et ullam officia id enim. Dolor iste eligendi excepturi quaerat dicta.', 5, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(185, 43, 'Emelia Mosciski III', 'Fugiat et dolorum possimus debitis. Ducimus et corporis reprehenderit sequi. Aliquam quisquam qui ea quaerat. Pariatur qui itaque aliquid asperiores.', 5, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(186, 13, 'Garnett Daugherty', 'Natus ullam aut non nostrum. Laudantium velit in odit beatae. Quia ea officiis in quis fugit tempore. Dolores qui illum qui omnis.', 0, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(187, 41, 'Mr. Sage Nitzsche IV', 'Iste rerum autem voluptas id placeat et. Corporis reiciendis at tempora reiciendis numquam deserunt alias. Magni excepturi et ut et sapiente et.', 3, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(188, 38, 'Gerhard Padberg III', 'Est sed odit recusandae dolor numquam inventore. Omnis ut exercitationem labore at voluptatem ab soluta nisi. Fuga delectus dolorem non distinctio magni impedit. At dolor quo quisquam qui facere et facilis.', 3, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(189, 30, 'Prof. Ansley Ryan', 'Omnis et iste aperiam. Sed quibusdam et saepe sunt ut atque ipsum corporis. Consectetur et eligendi ut repellendus dolorem quidem voluptatem.', 0, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(190, 25, 'Dr. Joanie Mueller IV', 'Aut enim dicta provident voluptate eveniet deleniti. Et ut autem ut possimus modi. Ut est nobis quia sint.', 2, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(191, 33, 'Keyon Hansen', 'Ut qui cupiditate dolores repellat quidem aut. Est libero accusantium animi. Sint iure qui occaecati molestias veritatis voluptas quaerat. Minus itaque nesciunt incidunt et suscipit.', 2, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(192, 19, 'Lou Bechtelar', 'Nulla nemo ipsam temporibus dolore voluptatem aut sint. Provident occaecati expedita est illo voluptas necessitatibus a. Rerum officia saepe veniam consequatur unde consequatur eum. Culpa cumque rerum dolore nisi illum vitae totam tenetur.', 4, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(193, 50, 'Prof. Sterling Buckridge III', 'Ut aspernatur et doloremque pariatur accusantium earum in. Impedit qui distinctio nostrum ea. Pariatur distinctio dolores voluptate culpa aut provident eos eveniet.', 0, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(194, 31, 'Prof. Camryn Schowalter', 'Dolores itaque ut a. Corporis et unde dolorem esse perspiciatis non.', 2, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(195, 24, 'Prof. Robbie Hermann', 'Nesciunt tenetur vel ut fugiat. Et nesciunt voluptas voluptates vero veniam quidem. Ut aut et dolore quos aliquid.', 3, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(196, 21, 'Dr. Grover Lynch Jr.', 'Ducimus aut voluptatibus et in occaecati dolore. Vitae hic incidunt quas laudantium. Mollitia occaecati iste reprehenderit ipsa non et magni.', 1, '2022-05-26 20:16:19', '2022-05-26 20:16:19'),
(197, 2, 'Vernie Schmidt', 'Optio distinctio enim maxime ab dolor provident. Ipsa enim ducimus a aut qui eius.', 2, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(198, 9, 'Emilia Hahn', 'Sint optio reprehenderit laboriosam est et voluptatem neque sed. Placeat soluta qui rerum sit velit quia. Dolores minima a magnam ducimus. Quis dolore consequatur a nulla. Quis ipsam magni maiores quibusdam totam.', 4, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(199, 18, 'Yasmine Kessler', 'Culpa et totam ipsa tenetur amet maiores culpa porro. Vel et non exercitationem recusandae. Distinctio dolores molestiae corporis rerum natus quod.', 5, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(200, 45, 'Luna Zulauf', 'Id enim dolore id. Veritatis quibusdam dolores autem molestias tenetur. Sequi occaecati optio dolores consectetur dolores ipsam.', 2, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(201, 18, 'Antonia Torphy', 'Dolores ducimus quae iusto corrupti enim animi voluptas. Tempore temporibus qui molestiae. Illo exercitationem aliquam voluptas nemo est aliquid maiores aut.', 2, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(202, 32, 'Berenice Bosco MD', 'Libero reprehenderit porro aspernatur. Dolorem cupiditate fugiat sit occaecati ab. Expedita assumenda accusantium est aut est ipsam et. Doloribus eveniet ut quis earum nam occaecati ab.', 0, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(203, 38, 'Shany Bruen DVM', 'Officia aperiam voluptatem impedit qui. Est in mollitia et voluptas facilis quisquam. Enim sunt nihil laudantium doloremque repellat. Ratione in at reprehenderit. Est tempora maiores qui incidunt ut.', 0, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(204, 37, 'Johathan Anderson', 'Consequuntur incidunt rerum ad exercitationem. Rem quod consequuntur sunt. Voluptatem dolor consequuntur modi officia est. Voluptatibus dolore nobis laudantium qui vel sed quibusdam ipsam.', 0, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(205, 36, 'Kelley O\'Kon III', 'Magnam enim id est ipsa dolor dolores ex. In deleniti voluptate reiciendis laudantium consequuntur. Et sed voluptatem sit nihil animi est officia.', 2, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(206, 38, 'Kamille Hoppe', 'Modi non exercitationem aut modi. Dolor repellat vel et voluptas. Laboriosam aliquam molestiae quia voluptate. Cumque id pariatur reprehenderit omnis tenetur aut voluptas.', 2, '2022-05-26 20:16:20', '2022-05-26 20:16:20');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(207, 21, 'Prof. Halle Moore III', 'Recusandae sed soluta asperiores suscipit id omnis. Non aut mollitia aperiam consequuntur aut fugit et. Laboriosam aut aut aut nulla odio praesentium molestiae molestiae. Ratione quia et incidunt quibusdam voluptas.', 3, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(208, 27, 'Ciara Wilkinson', 'Quam qui animi ea. Velit aut ad qui commodi voluptatem et. Neque qui consectetur aut. Rem possimus voluptatem cum cumque repudiandae aut.', 1, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(209, 17, 'Dr. Nestor Wyman II', 'Minus fuga nemo consequatur soluta. Enim ut nihil ut iure ipsa autem quaerat officia. Sint necessitatibus rerum eius. Autem dolorem autem praesentium veritatis.', 2, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(210, 9, 'Demarco O\'Hara', 'Ea et esse numquam voluptatum voluptas. Nam et repudiandae id illum eos nesciunt blanditiis. Autem et fuga ullam sunt.', 0, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(211, 44, 'Juliet King III', 'Necessitatibus cupiditate unde maxime laborum praesentium. Nulla qui et sit. Dolorem a aut velit ea sequi asperiores odit.', 0, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(212, 8, 'Mr. Reymundo Bartoletti DVM', 'Et atque sed sed earum. Ut quis provident quo deserunt qui culpa et. Excepturi est accusantium unde ullam. Voluptates est alias qui consequatur consequatur.', 0, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(213, 35, 'Dr. Tamia Feest II', 'Asperiores voluptatibus provident ipsam ex quidem quia. Facere qui sequi quis aperiam ut minima non harum. Eveniet quas sunt maxime nam voluptatem est.', 2, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(214, 35, 'Harmony Willms Jr.', 'Velit quisquam occaecati neque harum ut repellat pariatur officiis. Nesciunt laborum at ipsum nisi. Ab laborum eaque pariatur rerum nam quia consequatur. Et saepe cum et nostrum.', 1, '2022-05-26 20:16:20', '2022-05-26 20:16:20'),
(215, 15, 'Lily Cole', 'Cum magni porro est dolor accusantium. Enim esse ut sit error nostrum similique nesciunt. Sit et autem veniam est sunt est.', 4, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(216, 19, 'Annabel Berge', 'Delectus mollitia rem et. Nisi accusamus repellendus reiciendis id corporis. Quas cumque nobis ipsam. Soluta animi dicta earum quis.', 2, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(217, 6, 'Electa O\'Kon', 'Eum earum quaerat quos facilis culpa repudiandae ut dolorem. Non facere sit ducimus nihil minima officia.', 4, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(218, 3, 'Ayla Brakus', 'Expedita temporibus atque delectus qui vitae qui. Excepturi nobis suscipit id est suscipit odit a et. Praesentium sunt sed consectetur adipisci quas.', 4, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(219, 44, 'Nolan Dibbert', 'Nisi blanditiis ducimus consequatur. Quibusdam et et dicta reprehenderit corrupti sint. Voluptas ullam sequi sunt aut explicabo deleniti nulla aut. Aliquid in est sed ut ut.', 1, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(220, 4, 'Marley Welch DVM', 'Placeat eveniet aut aut voluptatem omnis suscipit ipsam corporis. Veniam soluta culpa rem ut minima. Natus excepturi aut nulla occaecati dolorem.', 1, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(221, 6, 'Maureen Moen DVM', 'Libero sit provident eos sed sint expedita. Quia error doloribus ab earum. Perspiciatis magni quaerat itaque saepe debitis iure inventore. Reiciendis similique consequatur totam architecto voluptas.', 4, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(222, 26, 'Mr. Donald Pouros', 'Corporis et qui harum sit quia recusandae maxime. Deserunt ut omnis id nihil et ipsum. Nihil maxime ducimus consequuntur architecto. Odit beatae quasi sit facilis error ut omnis.', 2, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(223, 32, 'Jett Parker', 'Aut error enim ducimus sit iste. Cum quasi nihil alias. Omnis et perspiciatis odit similique adipisci ut.', 2, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(224, 33, 'Edgardo Vandervort', 'Ut reprehenderit dolorum nisi natus placeat unde. Atque eum quibusdam vero et et aspernatur. At suscipit aut natus.', 4, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(225, 16, 'Carolyn Hansen', 'Quae velit molestias minus labore repellat. Perferendis iure aliquid laudantium ducimus enim porro. Nemo et sit tempora quam.', 2, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(226, 16, 'Katelynn Davis IV', 'Tempora molestiae ab voluptas quas laudantium earum est. Quia deleniti aut et rerum ab minima et sunt. Vel mollitia dolores eius quo dignissimos voluptatem aut. Illo qui beatae molestias est maxime voluptatem atque.', 5, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(227, 33, 'Monty Hoeger V', 'Maxime sed nulla velit id illum voluptatem mollitia. Ut excepturi dolores accusamus aut id sint. Quis qui soluta provident quia sunt dolores.', 5, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(228, 23, 'Aglae Haley DVM', 'Nobis mollitia sit est laudantium totam excepturi. Temporibus sapiente quis ipsam. Veritatis consequuntur quia quibusdam eligendi voluptatibus excepturi qui repudiandae.', 3, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(229, 39, 'Missouri Sanford', 'Veniam ut dolores officiis quod mollitia repellendus. Qui voluptate qui vel nam aut dolore. Enim vitae sint ut cum illo velit.', 3, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(230, 24, 'Coy Wisozk', 'Est perferendis expedita ipsum dignissimos vel modi. Rem et reprehenderit dolorem quidem nam sint. Quas ut earum ipsum ullam magni omnis. Quia sequi ex cum corrupti asperiores tenetur qui.', 3, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(231, 1, 'Kailyn Bins', 'Dolore explicabo ab mollitia animi pariatur et. Quidem assumenda iste eaque consequuntur beatae eaque. Natus doloribus facere blanditiis aut sit. Vitae culpa et esse est in harum.', 5, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(232, 38, 'Emory Hartmann', 'Occaecati doloribus aut molestiae error sed placeat. Dolore et vel impedit ducimus voluptatem. Quas corporis vel ducimus nemo.', 5, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(233, 28, 'Lea Miller', 'Excepturi magnam voluptatem aliquid totam culpa aspernatur. Assumenda quidem rerum et blanditiis perferendis repudiandae temporibus. Dolore est qui est velit facere nobis amet.', 2, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(234, 22, 'Tianna Torphy', 'Ducimus ex fugit qui ut. Aperiam enim consequatur aperiam nobis consequatur impedit. Qui saepe voluptate error perspiciatis. Voluptate quia sed vel ipsam asperiores. Consequatur quidem alias voluptatibus quo at asperiores.', 4, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(235, 35, 'Laisha Ziemann', 'Quae aperiam sed omnis. Fugiat odit dolores quia magnam ut ut omnis. Accusantium magnam vero eaque cupiditate vero itaque mollitia. Assumenda ipsam rerum hic qui aut nostrum incidunt.', 3, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(236, 9, 'Krista Macejkovic V', 'Accusantium qui possimus rerum vero sed alias. Necessitatibus dolore et consequatur. Omnis officiis quam suscipit veniam. Debitis odio doloribus architecto distinctio.', 4, '2022-05-26 20:16:21', '2022-05-26 20:16:21'),
(237, 18, 'Marquis Cormier MD', 'Voluptas possimus eveniet nihil non ipsa. Quisquam perferendis facilis autem ad eaque et. Qui voluptatem cumque est et pariatur iure.', 3, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(238, 17, 'Prof. Kelvin Strosin Jr.', 'Consectetur iure rem dolorem itaque. Maxime ut quod est quidem. Voluptas laborum minima dolores sint.', 5, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(239, 10, 'Mr. Weston Mraz MD', 'Nostrum mollitia sit eum deserunt perspiciatis quod quasi. Sunt repellat tenetur et impedit et dolorum quia autem. Alias commodi hic ea nemo et aut. Et sit delectus impedit nemo earum accusantium labore dicta.', 0, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(240, 39, 'Prof. Jameson Gusikowski', 'Necessitatibus totam aliquid qui enim veritatis at quo. Dolor iusto rem dolores dignissimos. Recusandae quo repudiandae iure eligendi magni.', 2, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(241, 42, 'Prof. Audrey Bogisich', 'Ad ab veniam doloribus et. Minus sed voluptatum accusantium voluptates. Aut ex similique sit velit temporibus voluptas ea.', 0, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(242, 12, 'Xander Torphy', 'Et eligendi ipsa qui laudantium odio quos non. Consectetur nihil labore facilis odit.', 4, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(243, 37, 'Khalil Hickle', 'Beatae minus ea et quia voluptate. Ab provident rem qui voluptas qui officiis quisquam pariatur. Enim fuga non ut officia.', 2, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(244, 39, 'Natalia Conroy', 'Esse eius est eum repudiandae nostrum. Laudantium optio libero quibusdam ipsa id corporis. Nisi rem qui tempore repellendus quia. Cum dicta qui recusandae sint voluptate.', 5, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(245, 14, 'Delbert Rau', 'Omnis inventore temporibus et blanditiis est. Possimus dignissimos hic corporis alias accusamus et nostrum minima. Quo eligendi eos architecto voluptate.', 4, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(246, 9, 'Prof. Deborah Murazik', 'Dolor sequi tempore cumque dolor voluptatem et et. Dolores ullam in corporis amet et autem. Nisi nobis et deserunt cum qui iusto. Velit aut qui dolore. Et voluptas et laudantium voluptatem qui sint.', 1, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(247, 25, 'Meggie Waelchi', 'Dolores odio deleniti sint temporibus. Dolor sequi aspernatur quis dolorem. Distinctio nobis optio itaque quasi fugiat dolorum. Error dignissimos ratione sunt molestias quia et.', 3, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(248, 44, 'Tiana Grant', 'Enim rerum magni omnis provident. Illum temporibus inventore inventore est praesentium ex harum.', 1, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(249, 49, 'Rudolph Bechtelar', 'Pariatur veritatis magni adipisci qui mollitia inventore harum. Et delectus fugit in aliquid. Eligendi quas et quis ut sunt fugit ipsam.', 1, '2022-05-26 20:16:22', '2022-05-26 20:16:22'),
(250, 9, 'Mr. Jarrod Sawayn', 'Porro tempora repudiandae quia et. Hic beatae ex officiis consequatur tenetur. Et in in voluptatem deserunt.', 2, '2022-05-26 20:16:22', '2022-05-26 20:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
