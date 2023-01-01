-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 08:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'omnis', 'quia-qui-doloribus-non-omnis-blanditiis-ad-qui-magnam', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(2, 'quis', 'minus-aut-et-aspernatur-laboriosam', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(3, 'iusto', 'expedita-qui-ratione-nihil-omnis-explicabo-quisquam', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(4, 'dolores', 'perferendis-earum-voluptas-molestiae-sunt-placeat', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(5, 'amet', 'deserunt-voluptate-sed-maxime-unde-ea-accusantium-magnam-et', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(6, 'et', 'et-numquam-eligendi-eum-corporis-molestiae-qui-et', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(7, 'assumenda', 'et-illo-omnis-quae-corporis-et-ea-consequatur-ducimus', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(8, 'culpa', 'sed-aliquid-sint-architecto-facere-voluptas-ipsam-quis', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(9, 'possimus', 'harum-doloremque-cum-vero-ut', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(10, 'suscipit', 'voluptatibus-expedita-et-laborum-nihil-fuga', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(11, 'quia', 'ipsum-excepturi-et-perferendis-voluptatem-consequatur-enim-enim', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(12, 'corporis', 'incidunt-omnis-aspernatur-quaerat-iure-inventore-eveniet', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(13, 'corrupti', 'aut-distinctio-quia-excepturi-dicta', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(14, 'occaecati', 'corporis-aperiam-id-sit-repudiandae-modi-cumque-et', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(15, 'maiores', 'sed-qui-illum-officia-minima-quibusdam', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(16, 'laborum', 'corrupti-id-quia-voluptatem-molestias-esse', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(17, 'iste', 'ut-nostrum-consectetur-dicta-enim-exercitationem-aspernatur-dolor-sed', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(18, 'placeat', 'amet-repellat-repellat-culpa-deleniti-et-eaque', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(19, 'quos', 'aspernatur-voluptas-dolorum-voluptas-sit', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(20, 'consequatur', 'facere-itaque-totam-sunt-voluptate', '2022-12-08 05:07:10', '2022-12-08 05:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'hi there', '2022-12-08 05:12:27', '2022-12-08 05:12:27'),
(2, 1, 3, 'hi hi there', '2022-12-08 05:13:06', '2022-12-08 05:13:06');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_31_144702_create_posts_table', 1),
(6, '2022_08_02_153805_create_categories_table', 1),
(7, '2022_08_28_122756_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `excerpt` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `slug`, `title`, `thumbnail`, `body`, `excerpt`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 1, 1, 'odio-tenetur-deleniti-blanditiis-aut', 'Est velit ut dignissimos iste.', 'thumbnails/4.jpg', '<p>Architecto occaecati vel ducimus ab libero. Sed nesciunt molestias corrupti commodi. Fuga omnis hic reprehenderit inventore aut corrupti est. Reprehenderit in illum reiciendis quia illo.</p><p>Dicta molestias dolore sequi minus. Aliquam ratione architecto nesciunt eaque ea. Rem debitis omnis inventore.</p><p>Quidem et assumenda doloribus laboriosam ut quis rerum. Quisquam quaerat iste rerum.</p><p>Ipsa voluptatem velit dolor dolor qui qui cupiditate. Quaerat incidunt quos sed tenetur. Dolore non nihil maxime quibusdam facilis autem. Quos exercitationem ipsa quos.</p><p>Explicabo sit ea numquam. Ipsum praesentium et et voluptatem suscipit aliquid labore.</p><p>Tenetur in ut porro rerum atque ratione. Porro consequatur est nostrum quia ipsa nobis ullam.</p>', '<p>Autem nam suscipit et magnam sunt. Ad quasi blanditiis earum in in. Consequatur quia magnam odio qui quia quasi quam. Eligendi iure occaecati minima natus ut quo.</p><p>Quia aut quas excepturi quidem ut consequatur. Voluptas expedita et dolores adipisci nisi vel. Itaque ex fugiat ab tempore alias occaecati voluptas qui. Blanditiis quo id laudantium beatae eum ducimus.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(2, 1, 2, 'ducimus-distinctio-quibusdam-et-ducimus-vero-et-voluptatem', 'Consequatur sed deleniti corporis.', 'thumbnails/8.jpg', '<p>Quia culpa at sapiente laudantium enim suscipit qui. Ipsa qui eveniet eum. Cupiditate non modi sit enim tempore. Quaerat odio fugit ad laudantium eos quo. Eveniet dolor nemo molestiae quod.</p><p>Quos nihil rerum quasi quam nihil sunt aut. Cupiditate provident corrupti nemo eum officia ullam voluptatem voluptates. Explicabo quidem expedita magnam non vel aut quo. Ea quos ut quibusdam et. Adipisci non sint non porro cupiditate et atque.</p><p>Odit doloribus commodi cumque sint ab repellat harum. Molestiae ut totam aut deleniti aut esse. Eveniet neque veniam modi iste. Tempore rerum aut vel ut quaerat itaque.</p><p>Sunt voluptatem sed odio sed nihil aut officiis. Dolorum quos natus illum. Nihil ratione incidunt eos voluptatem nam.</p><p>Rem architecto et id totam aspernatur. Optio nihil est eos quibusdam est. Excepturi eius occaecati eum voluptates. Quidem architecto delectus odit commodi.</p><p>Commodi animi aut enim. Minima et rerum rerum ut optio blanditiis dolorem. Odio similique provident dolorem.</p>', '<p>Odio ipsa deleniti eveniet labore voluptas rerum. Sed aut ab animi dicta.</p><p>Aspernatur hic a eos. Suscipit nihil molestiae consequuntur est. Aut ipsa officia harum error dolor eaque. Velit quas voluptatem nam eaque.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(3, 1, 3, 'esse-distinctio-asperiores-quo-quos-impedit-sunt', 'Commodi id odio consequatur et labore.', 'thumbnails/6.jpg', '<p>Debitis aperiam iure voluptatem consectetur sint nemo odio. Dolor totam voluptas ut eos.</p><p>Non alias id consequatur aperiam. Enim dicta dicta impedit. Odio sed velit reprehenderit accusamus id.</p><p>Necessitatibus quidem quos ex esse odio beatae. Autem vitae vel quaerat dolorem fugit dolorem expedita modi. Omnis maxime itaque nemo aliquam natus iste neque. Non cumque quidem optio.</p><p>Numquam quo maxime veritatis. Iure optio aut sequi qui omnis. Alias error vel reiciendis voluptatem ut reprehenderit.</p><p>Consequatur animi perspiciatis ratione ea. Dicta et ut est non reiciendis sint. Maiores dolores ad vel dolore itaque. Necessitatibus fugiat nostrum repellendus libero excepturi est.</p><p>Alias mollitia sed in pariatur odio. Molestias possimus ut quaerat explicabo. Vel quae debitis nulla qui minima similique animi. Dolores odit sunt cupiditate aut.</p>', '<p>Adipisci saepe quia et est et reprehenderit. Consequatur et recusandae eveniet ab. Quisquam asperiores ex est accusantium perspiciatis labore. Minus omnis aliquam excepturi eos sed ut tenetur.</p><p>Voluptatem esse sunt veniam. Et fugit placeat maxime est. Ullam aut optio magni ea. Dicta ea rem dolores laborum rerum dolores perspiciatis.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(4, 1, 4, 'tempora-illo-ipsam-veniam-commodi-suscipit-voluptatem', 'Natus laboriosam in quae nulla.', 'thumbnails/7.jpg', '<p>Rerum non ut rerum error cum voluptas. Beatae quam mollitia voluptatum est recusandae sequi quia. Qui voluptatem quis ea voluptas pariatur asperiores culpa veritatis.</p><p>Facilis aut reprehenderit sunt asperiores aut reiciendis. Et quam soluta ut. Asperiores dolore sed minus pariatur accusamus.</p><p>Enim praesentium aperiam laborum fugit. Est et est esse eligendi dolorum vel. Perspiciatis tempore rerum dolores aperiam quo deleniti. Numquam est dolore quibusdam doloribus accusantium.</p><p>Repellat ex aut et doloribus adipisci magni. Voluptas consectetur nemo neque qui quis adipisci. Praesentium veritatis omnis eaque voluptate eius nihil dolorem nostrum.</p><p>Sed omnis aut sequi culpa optio tempora. Dolores provident dolorem odit et et.</p><p>Voluptatem ut doloribus quia sed. Tempora minus porro blanditiis veritatis in modi. Iure sint aliquam natus officiis doloribus ducimus et.</p>', '<p>Provident aspernatur qui expedita. Qui consequuntur odit veniam quo ipsam temporibus. Cumque et cupiditate aut voluptas voluptatem tenetur est. Velit iusto ut aut vero sint sint fugiat.</p><p>Rerum illo illo voluptatum. Cum ab aliquid architecto qui deserunt est. Assumenda excepturi est quis vitae hic quia.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(5, 1, 5, 'minima-occaecati-itaque-ea-sapiente-perspiciatis', 'Laboriosam atque quia illo reiciendis dolorem nihil repudiandae.', 'thumbnails/7.jpg', '<p>Debitis minima aut quia doloremque. Autem repudiandae temporibus ea non consequatur. Ut dolorum rerum aut soluta cupiditate necessitatibus.</p><p>Commodi et dolorem temporibus aut sequi. Autem et at excepturi ex neque. Perspiciatis dignissimos dolorem nulla repellat et maiores. Eos adipisci quia velit cum.</p><p>Quo eius provident dignissimos odio quisquam architecto sed. Sapiente omnis eligendi molestiae animi. Rerum laborum dicta quam sint odit inventore placeat consequuntur.</p><p>Quisquam sapiente dolor dolorem ducimus non eveniet voluptatum omnis. Esse doloribus aspernatur aliquam sunt est ut quia. Ex molestiae repudiandae tenetur natus.</p><p>Porro eaque sapiente dolores ducimus qui aliquam. Et autem aut sint consectetur inventore in et. Id id eum quasi cupiditate ea corporis.</p><p>Deserunt doloremque at ducimus eos officia. Sint fugit et assumenda odit. Laudantium ut dolore eveniet cumque accusantium quisquam. Maiores veniam voluptas beatae dolor incidunt non. Et est nobis dolores est.</p>', '<p>Pariatur nihil quia magni consectetur. Voluptatem aperiam porro non nobis aut ducimus. Eius odio et consequuntur ex natus.</p><p>Quos voluptatibus voluptas ab sit non sed a. Eos molestiae optio sed vitae doloremque accusamus. Ut sit laborum ipsam tempore est esse optio. Architecto ab in et veritatis.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(6, 1, 6, 'aut-eveniet-asperiores-nulla-est-omnis-ex', 'Dolor aliquam rerum corrupti non ut et.', 'thumbnails/4.jpg', '<p>Quo aut non repudiandae et nihil dolorum consequuntur doloribus. Provident et aut expedita ducimus. Necessitatibus alias qui ipsa incidunt molestiae. Nemo facere officia tempora dolorem ullam consequatur.</p><p>Dolor earum illum et dolor tempora ipsam repellat est. Quis possimus et sequi reiciendis ut. Dolores eum ratione tenetur eaque placeat.</p><p>Id adipisci tempore voluptas architecto fugiat dolorem quibusdam. Architecto consequatur consequatur vitae enim enim deserunt reprehenderit. Eligendi sint corrupti quisquam numquam. Officiis aut placeat ullam sit debitis dolorem.</p><p>Quia dolores expedita et totam quisquam. Ipsum asperiores veritatis id molestiae ut qui nisi.</p><p>Iure sed sint a non libero sit beatae. Voluptatibus ullam ea aut nihil unde in. Laboriosam voluptas aut fugit. Consequuntur omnis velit ea laboriosam libero.</p><p>Quod quidem sunt ea. Illum consequatur ducimus harum eum blanditiis. Iure perferendis sunt dolore quis enim a sunt. Amet molestiae est officiis non consequuntur molestiae quas.</p>', '<p>Nam assumenda quisquam nulla officia qui. Deleniti officiis quasi sed recusandae. Numquam ad reiciendis molestiae accusamus.</p><p>Autem similique voluptatem facere aut necessitatibus commodi. Adipisci omnis beatae quas et vero id exercitationem. Dolorem aut voluptate aut provident exercitationem debitis commodi. Consectetur ut consequuntur cumque distinctio qui. Sunt accusantium necessitatibus veritatis.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(7, 1, 7, 'dolorem-ullam-corporis-magnam-sapiente-nihil-labore', 'Eligendi ex tempora tenetur odit repudiandae.', 'thumbnails/8.jpg', '<p>Dolor est natus debitis. Eum fugit iure in facere.</p><p>Blanditiis veritatis nemo nihil tempore maxime qui. Nam dolorem dicta est dolores minima molestiae explicabo dolorem. Incidunt eos quo placeat pariatur earum necessitatibus nihil nisi. Aliquid rerum vel est vel cum dolorem inventore autem. Repellendus quis blanditiis quae non.</p><p>Autem odio accusantium qui repudiandae aut dolor minima. Qui tenetur delectus hic aperiam quaerat odit odio. Pariatur molestias consequatur ut veniam et vitae similique.</p><p>Reprehenderit odit deserunt velit atque. Debitis et ipsam sit eveniet harum sunt numquam. Unde odio corporis aliquam placeat temporibus et.</p><p>Sint omnis ipsum omnis unde velit nihil. Ut voluptatem aut nisi corrupti omnis. Pariatur dolor quas veritatis voluptatibus dolores.</p><p>Blanditiis tempore porro atque quis. Qui repudiandae perspiciatis temporibus a eligendi natus. Optio officiis rerum et ut.</p>', '<p>Sint et labore quasi nesciunt dolorum voluptatem. Accusamus eum voluptatibus ea quod perferendis. Ipsa ut voluptate eveniet dolorem voluptas.</p><p>Praesentium explicabo vel recusandae eaque voluptatem. Voluptates aut rem cupiditate voluptatem. Natus itaque qui sint enim. Nihil magni cupiditate odit et ducimus nihil distinctio.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(8, 1, 8, 'et-et-dolorem-accusamus-delectus-quas', 'Totam commodi ut quia nihil ad.', 'thumbnails/1.jpg', '<p>Nulla et reiciendis in inventore. Illum incidunt qui aperiam voluptas. Alias et saepe voluptas omnis expedita et.</p><p>Minus quas maiores voluptas. Accusamus est mollitia cumque et quas provident. Quibusdam consectetur qui eaque labore.</p><p>Veritatis debitis eius nemo eligendi quia delectus. Sint tempore aut vel inventore incidunt et doloribus. Doloremque labore quo voluptatem fugiat fugiat.</p><p>Odit molestiae facere qui amet est ut aut hic. Quas sed libero incidunt voluptates dolorem nihil. Totam ea dolores nihil voluptatibus sunt. Facilis molestias tempore a odit corporis autem consectetur quidem.</p><p>Est ad enim quisquam omnis ut asperiores vero. Ut eligendi pariatur quae doloribus optio. Magnam explicabo in dolore quo voluptatum fugiat. Sapiente ipsa nulla sapiente at.</p><p>Atque et tempore consectetur aut corporis. Cumque illo adipisci id corrupti nam corrupti nihil. Et dolorem facere ipsa repellendus et est veritatis.</p>', '<p>Mollitia rerum quia similique molestiae. Et eligendi et at suscipit non.</p><p>Quas totam nulla quasi debitis ex odit quia. Dolor iusto dolores ut nulla commodi. Cupiditate fugit sunt omnis accusamus placeat temporibus.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(9, 1, 9, 'repellendus-iusto-quae-consequatur-voluptates-delectus-itaque', 'Ipsam perspiciatis ut voluptas aut sit velit molestias.', 'thumbnails/4.jpg', '<p>Necessitatibus consectetur illo et nobis. Maiores autem qui placeat dolorem totam consectetur architecto. Autem amet perspiciatis unde eos et.</p><p>Libero porro omnis necessitatibus eos a cupiditate sunt. Modi perferendis autem voluptatibus doloribus est.</p><p>Velit illo aut iusto. Libero harum rerum aut qui. Impedit voluptates accusamus et beatae aut.</p><p>Consequatur hic quia quo asperiores a cupiditate reiciendis. Sunt animi sequi corporis blanditiis voluptate officiis. Laborum quisquam voluptatem iure qui at. Consectetur odio asperiores et atque.</p><p>Fugiat quod qui ut placeat quia. Autem nihil voluptatem explicabo. Quidem porro dolores id cupiditate quidem officiis sint.</p><p>Eum fugiat reiciendis ut molestiae aliquam est. Dolorum natus tempora quia quod ad. Quod et saepe et est quaerat occaecati excepturi magni.</p>', '<p>Dolorem quo facilis dignissimos corporis fuga saepe corporis. Dolorum laboriosam blanditiis quo autem. Earum dolore velit porro id et magnam ea. Enim animi numquam tenetur nisi et.</p><p>Consectetur et at laborum quam est. Provident eaque quia sapiente aut occaecati. Amet sint eum rerum officia tempore voluptatum. In officia sit eaque voluptatem quo.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(10, 1, 10, 'qui-optio-est-quo-quia-quasi-assumenda-ab', 'Aliquid unde accusamus sint labore labore.', 'thumbnails/6.jpg', '<p>Vero sit dolor possimus reprehenderit consectetur. Eaque provident praesentium nisi optio reprehenderit. Accusamus dolorum ipsam magnam omnis dolorem et.</p><p>Facilis blanditiis corporis vero dolorem et est. Saepe blanditiis reiciendis perspiciatis omnis ipsam. Eveniet voluptatum aut officiis excepturi minima eum. Consequatur natus quidem asperiores.</p><p>Qui qui in temporibus odit. Sed velit et consequuntur fugit id omnis.</p><p>Id accusamus omnis aliquam omnis quasi non id qui. Voluptatem deserunt dolores quo enim nihil a laudantium.</p><p>Non ratione atque eius non natus eveniet. Molestiae ut distinctio autem aut. In quod omnis vitae quia. Ad quo iste et dolorum aperiam qui aut.</p><p>Impedit minus minus in officiis illum enim est. Quia ex corrupti in consequatur consectetur expedita. Mollitia deleniti et molestiae.</p>', '<p>Nisi ut repellat provident nihil pariatur eius. Nam ex ullam eos nam. Dolore rerum quod nisi sint ex. Voluptas enim ut et ipsa.</p><p>Modi ut qui fugit deserunt fuga. Pariatur omnis nulla quod quod quam. Et repellat quis nobis cupiditate praesentium ipsum. Natus ad autem eum est provident dolore.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(11, 1, 11, 'id-sit-ducimus-quia-doloremque-quam', 'Voluptas placeat illo provident.', 'thumbnails/3.jpg', '<p>Et perferendis in culpa et sit maiores aut sit. Eum qui deleniti explicabo laboriosam. Commodi minima voluptatem ratione et adipisci nam magni. Pariatur quo quam magnam facere illo. Vero eveniet qui voluptate veniam quis consequatur.</p><p>Veritatis sunt accusamus quidem natus. Molestias neque tempore laborum aut et maxime. Sint iusto unde rerum voluptatem. Iusto dolore voluptatum occaecati molestiae est.</p><p>Ratione soluta sint in. Labore nihil error exercitationem itaque minus et. Est rem sunt aut necessitatibus voluptatem. Non vel esse veniam itaque.</p><p>Dolore sed voluptatum totam architecto nihil excepturi dolor. Fugit qui numquam hic porro quos rerum. Iusto optio aut non adipisci dignissimos labore nam. Officia eaque nam nobis placeat.</p><p>Illum nesciunt ut occaecati ut quia. Distinctio non veritatis nostrum error et accusamus ut. Illum qui fugiat dicta. Quo non dolores ut asperiores et.</p><p>Et totam aut quia libero possimus qui. Sed ut natus animi ipsa sit repellendus qui quis. Soluta ipsum tenetur et perspiciatis quia.</p>', '<p>Necessitatibus ipsa et impedit dolorem dolorum rerum. Doloremque repudiandae sapiente quibusdam delectus fugit facilis quos. Odio harum ipsum sint. Consequatur consequatur modi ut consequatur quia reprehenderit occaecati. Quaerat ad vitae et ut.</p><p>Sunt iste reiciendis voluptatem. Blanditiis eius molestias quia est. Porro voluptatibus sed aperiam fugiat.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(12, 1, 12, 'facilis-eum-sit-qui-non-deserunt-consequuntur-quas', 'Non quibusdam et consequatur aut.', 'thumbnails/3.jpg', '<p>Repudiandae et est culpa illum. A blanditiis sed a omnis. Rem dicta dolorum enim rerum. Aliquam aut nostrum reiciendis consequatur aut voluptas.</p><p>Sit reprehenderit sit voluptate dignissimos aut. A ipsa fuga labore quibusdam suscipit excepturi. Id et perspiciatis itaque odio officiis ut. Et nihil eos fuga ad.</p><p>Ipsum modi velit dolorem placeat. Laboriosam voluptate qui corrupti unde maiores numquam dolorem corporis. Voluptatem tempora consequatur eum mollitia ducimus quia.</p><p>Quis nulla dignissimos vel inventore eveniet quisquam enim voluptatem. Quia ad numquam numquam facilis. Quia asperiores quos facere.</p><p>Corporis qui beatae reprehenderit doloremque fugit. Earum expedita ea fuga impedit id rem et. Quis in ducimus ut inventore et molestiae autem. Dolorum corporis debitis ut quasi nobis.</p><p>Sed aut maxime dignissimos alias consequatur omnis et. Aut qui rem rerum totam. Ea necessitatibus minima eum consectetur. Maiores quis veniam ex est pariatur et. Laboriosam ut velit nobis nihil doloremque qui dignissimos.</p>', '<p>Dolores nesciunt consectetur consequatur. Fugit vero optio consectetur. Molestias autem quo dolores quo mollitia. Ea nam ipsum est porro consequatur ut assumenda.</p><p>Mollitia eveniet dolorum corporis dolor sed. In ab consequuntur animi aut debitis. Velit enim adipisci omnis. Placeat in non maxime vel est. Vitae dignissimos occaecati ipsam provident sed quae minus.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(13, 1, 13, 'commodi-aut-enim-perspiciatis-dolore-dolores-quos-omnis', 'Repellendus cupiditate error velit vel labore.', 'thumbnails/6.jpg', '<p>Odit similique et praesentium ipsum. Fugit ut et ut dolorem ratione enim.</p><p>Iure enim nisi pariatur est. Cum minus consequatur corporis et.</p><p>Omnis amet officia omnis sint illo cupiditate molestiae impedit. Placeat eum eaque libero sed aliquam sequi repellat nulla. Molestiae consequuntur enim aut molestiae. Reiciendis ratione accusantium laborum debitis quis omnis est.</p><p>Rerum harum veritatis sunt eveniet mollitia odit. Rerum veniam sunt et reprehenderit. Similique ut quasi distinctio ut nam aspernatur. Porro quaerat molestiae et enim eos perferendis.</p><p>Mollitia eos in itaque illo voluptate iure cumque. Non officiis provident sed dolores adipisci facere. Illum harum ut incidunt qui consequatur delectus illo.</p><p>Excepturi rerum est vero ipsa possimus harum quia. Est quod nesciunt dolores cum rerum quod.</p>', '<p>Quod aliquam est quis inventore sed et magni. Quia aut officia architecto labore. Rerum eum et ipsa repudiandae fugit vel cumque aut.</p><p>Quod ducimus quia sunt dicta aspernatur quam. Nihil quis in nihil excepturi ad et. Sint et nam maxime consequatur animi in. Eos repellendus quasi rem.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(14, 1, 14, 'est-corrupti-quis-et-qui-cupiditate-reiciendis', 'Nesciunt sunt sit maxime omnis aliquam.', 'thumbnails/7.jpg', '<p>Possimus nesciunt animi quis quasi. Eveniet autem quibusdam error voluptatem voluptatem. Ea odio voluptas rerum qui.</p><p>Optio excepturi officia praesentium earum. Pariatur sapiente nam numquam exercitationem voluptatem est nemo voluptatem. Inventore culpa aperiam et a modi amet eligendi. Laborum saepe delectus accusantium.</p><p>Voluptatem et ducimus perferendis. Accusamus consequatur minus aut et vitae eius. Qui deserunt autem maiores.</p><p>Molestias nostrum recusandae qui dolores nihil numquam omnis. Similique ullam vero quia. Nihil quisquam sit nemo aut. Minima porro et neque est est dolorum accusantium.</p><p>Dolores est est omnis est debitis. Vel nostrum molestiae voluptatibus ex ullam. Minima odit sed iste.</p><p>Ut ut enim inventore. Exercitationem ut debitis itaque fugiat.</p>', '<p>Nihil iure nihil explicabo. Et quia aliquam eos ipsa perspiciatis. Placeat dolores saepe sit veniam reiciendis est.</p><p>In dicta quasi nulla aut corrupti vitae enim minus. Fuga et vitae unde vero dolore et delectus. Reprehenderit aut adipisci soluta dolorem iure et.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(15, 1, 15, 'quod-dolore-possimus-necessitatibus-consequuntur', 'Nam perspiciatis eius et aut.', 'thumbnails/1.jpg', '<p>Doloribus aliquid ullam ut quis voluptatibus non autem consectetur. Quasi aut distinctio est veniam itaque fugit aut cumque. Id nulla aut animi et in itaque enim harum.</p><p>Aspernatur dolor et sit molestiae nemo. Quibusdam et beatae quod. Sunt optio possimus ad cum. Repellendus iure natus non dolores quia quae aspernatur.</p><p>Quia quia voluptatum qui esse dolorum. Amet aut occaecati dolores. Odio ad optio ut corrupti eveniet.</p><p>Quibusdam tempora sint cumque suscipit vel expedita sequi assumenda. Sit dolore ut ipsa facere hic. Illum illo odit qui accusamus et. Qui magni impedit maxime voluptatem aut dolores et. Corporis fugiat esse in voluptate neque eveniet.</p><p>Unde libero nostrum maiores ut qui qui. Hic reprehenderit incidunt earum adipisci est vitae. Exercitationem nihil explicabo voluptatem similique quis sapiente.</p><p>Nemo sed et maiores tenetur. Incidunt non eveniet sint blanditiis accusantium nobis aut. Consectetur ea earum qui. Ut a quisquam accusantium sint consequatur sed. Quibusdam quisquam molestiae sint harum minus nemo dolorum.</p>', '<p>Unde quis ut et rerum quis. Maiores rerum harum et reiciendis est error. Tempora et eos qui voluptatem. Nulla voluptatem accusamus harum. Sequi magnam culpa non autem unde asperiores.</p><p>Omnis at quisquam omnis iusto dolorem necessitatibus. Quidem fuga ad enim eaque. Deserunt ea expedita ad reiciendis praesentium ipsum. Labore porro dolorem quod minus sed ea. Aut excepturi dolor corrupti saepe reiciendis nobis.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(16, 1, 16, 'at-laboriosam-ex-non-tempora-nulla', 'Est beatae ea reiciendis repellat voluptatum.', 'thumbnails/8.jpg', '<p>Nobis minima tempore atque fuga qui et dolore. Voluptas mollitia neque in inventore ab deserunt ut. Tenetur labore vitae et. Distinctio facere voluptate ipsum molestiae quaerat et deleniti sequi.</p><p>Eveniet et beatae doloremque exercitationem non quas harum. Eos sed voluptate ducimus quas deserunt tempore eum corrupti. Incidunt assumenda quis natus eius aut sunt.</p><p>Sequi occaecati blanditiis dignissimos molestiae. Qui cum ex magnam alias veritatis deserunt sed. Quis ut reprehenderit eveniet laborum.</p><p>Hic et excepturi optio nostrum sunt. Vero in accusamus natus sed repellat facilis beatae. Quia qui id sed voluptatem ut omnis sint veritatis.</p><p>Recusandae voluptatem ea eveniet minus repellat ducimus. Sapiente iste voluptate odit. Non exercitationem eos minus temporibus amet. Eius maiores ea vitae ad animi eaque voluptates.</p><p>Pariatur error expedita cupiditate. Et et ut magnam vel sint quis ipsa. Ipsum et atque eos culpa est. Nemo vero ratione et at.</p>', '<p>Voluptatem laborum minus sint qui ut et. Rem corrupti id neque blanditiis sed. Vitae laudantium est optio praesentium deserunt et. Dignissimos minus ratione quas quas.</p><p>Sunt rem architecto perferendis odio non suscipit id. Quis eligendi ut officia debitis et quibusdam earum. Neque repudiandae quia quia quia.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(17, 1, 17, 'quia-necessitatibus-hic-tempore-nisi-voluptate-est-hic-dolores', 'Voluptates est itaque facere itaque hic est fuga.', 'thumbnails/1.jpg', '<p>Rem molestiae sint nesciunt quia vitae velit dignissimos. Harum ducimus vel ut enim omnis vero quod. Ut laboriosam error non qui at nobis.</p><p>Sit laborum officiis commodi qui aut voluptas. Voluptate quisquam voluptates explicabo enim sed repellat repellat. Velit vel repellat delectus harum dignissimos.</p><p>Et tempore illo et eaque amet aut voluptates velit. Voluptatibus numquam illo debitis corporis est. Tempora voluptas pariatur quibusdam omnis tempore voluptatibus vitae harum. Doloribus quis ut nulla.</p><p>Accusantium ea doloribus aliquam odit deleniti nesciunt. Aut corrupti ut voluptatem id consequatur qui nam. Vero ipsam vitae dolores similique fugiat. Possimus sunt at molestiae expedita sunt. Sed omnis pariatur id quia.</p><p>Illum vel error soluta consequatur sequi. Qui et recusandae blanditiis. Ut voluptatem eligendi aut similique et minus recusandae facere. Excepturi molestias sed est sunt non et nihil.</p><p>Perferendis sit corporis recusandae fugiat sunt. Qui incidunt qui maxime sunt fuga tempore temporibus quisquam. Dicta quis nemo ipsum fugiat sed.</p>', '<p>Et dicta animi necessitatibus animi eius commodi sit. Aut impedit iusto ea. Sint perspiciatis temporibus ducimus voluptas.</p><p>At iure deleniti ipsam commodi quos. Eos et hic ipsa consequuntur ipsam optio aut quas.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(18, 1, 18, 'voluptas-blanditiis-dignissimos-error-voluptas-voluptatem-earum', 'Esse debitis numquam fugit ullam.', 'thumbnails/2.jpg', '<p>Velit dignissimos aut officia officia necessitatibus. Possimus voluptate reiciendis tempore sequi impedit. Sapiente qui voluptas consectetur vel libero incidunt.</p><p>Illo earum in quas. Qui est molestias est sit. Ut iusto sunt quis perspiciatis magni optio autem. Rerum tenetur saepe recusandae enim nesciunt.</p><p>Autem ullam nam aut assumenda totam. Ex voluptas tempore fugiat voluptatum modi et ab. Rerum adipisci odio nihil dolor laborum placeat est et. Consequatur et explicabo tenetur doloremque cupiditate.</p><p>Assumenda et aliquid pariatur nisi atque. Suscipit earum recusandae nesciunt quas cum quia officiis iste.</p><p>Omnis non vel non omnis delectus. Et culpa modi vel consequatur sed itaque quidem nam. Ut vitae beatae corporis veniam atque odit. Recusandae et facere itaque reprehenderit molestias.</p><p>Totam perferendis laboriosam distinctio repudiandae consequatur. Provident corporis non dignissimos quidem doloribus et. Ipsa et libero eligendi recusandae.</p>', '<p>Eum ex reiciendis quasi quas. Ad cum magnam ipsam facere qui tempore illum optio. Non sed placeat laboriosam tempora. Atque itaque dolor incidunt impedit qui.</p><p>Voluptas non enim fuga ipsa labore. Voluptatem dolores ut pariatur est earum. Ipsa et in odit velit occaecati non aut.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(19, 1, 19, 'dicta-molestias-et-quia-error-ut-odio-suscipit-ipsa', 'Ut omnis voluptate accusamus quasi vero est ipsa quia.', 'thumbnails/4.jpg', '<p>Ea deserunt inventore quod eos beatae vel. In sint quisquam et qui tempora. Soluta blanditiis molestias nostrum ea.</p><p>Dolor consectetur voluptas quis. Rem nihil velit quidem. Modi consequatur similique consequatur aut totam porro. Accusantium natus incidunt repudiandae.</p><p>Aut qui quis adipisci ullam ea veritatis cumque voluptate. Aspernatur numquam enim repellendus. Voluptatem necessitatibus nemo animi sint repudiandae incidunt numquam dolorum.</p><p>Ad enim ut est. Qui in et officiis id sint. Neque inventore quis unde ab corrupti quaerat pariatur.</p><p>Unde amet delectus voluptas at nostrum. Laboriosam et quibusdam ipsum doloremque voluptas accusantium. Ad quae error dolorum quas saepe. Distinctio voluptatem totam voluptatibus sit facilis occaecati doloremque ut. Quia magni nihil dolore illo.</p><p>Aut vitae voluptatem accusantium nam iste. Sed id id blanditiis. Et voluptas optio dolores similique nobis.</p>', '<p>Minima soluta sed a repudiandae consequatur. Eos et perferendis totam quos sint. Sed molestiae nemo qui quia.</p><p>Inventore quia et accusamus et maiores quia quod voluptatem. Dolores deserunt minima praesentium et incidunt rerum tenetur et. Tempora voluptatem architecto voluptates inventore sit.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL),
(20, 1, 20, 'dolor-numquam-et-ullam-dolores-deleniti-aut-eum', 'Asperiores dolorum qui quos aliquam illo.', 'thumbnails/7.jpg', '<p>Eum corporis a sit beatae officiis voluptate atque. Distinctio sunt laudantium voluptas odio ullam incidunt dolore. Quidem mollitia est labore adipisci velit molestias est unde. Hic nihil qui quo facilis harum est voluptates numquam.</p><p>In optio omnis dolorum quod voluptatem modi. Nihil corporis tempora placeat et atque. Dolorum exercitationem ipsam qui.</p><p>Est commodi molestiae in. Qui quia quo voluptas repellendus dolor. Quia eum dolores aut ducimus.</p><p>Possimus accusamus minima sit rem in quia. Omnis accusamus labore odit quam iusto. Rerum id in eaque eius.</p><p>Fugit perspiciatis aut maiores non voluptate. Quo voluptatem libero accusantium consequatur. Et non in non dolor nostrum ut. Voluptatem blanditiis eaque sed officia enim consequatur ad et.</p><p>Laborum sit hic et porro impedit cumque saepe. Quasi eum consectetur et dolorem facilis at. Ut dolores non recusandae praesentium. Similique est in omnis aut quia eligendi tempore.</p>', '<p>Molestiae sunt error vitae doloribus accusamus. Perferendis et dolorum dignissimos placeat adipisci ut. Quo veniam quia repellat suscipit quia. Dolore facilis non ut et ut corrupti.</p><p>Qui reiciendis nam consectetur iste error et cupiditate nihil. Quas sint sint sint rerum quidem omnis voluptatibus. Laborum aspernatur perferendis voluptas similique. Voluptatem doloremque et ratione rerum iusto exercitationem aut.</p>', '2022-12-08 05:07:10', '2022-12-08 05:07:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'erna10', 'Ahmed Gamal', 'pcummings@example.org', '2022-12-08 05:07:10', '$2y$10$4PKqCs0gwprKkRuLcP7vf.fyWzJG.XBSJ9lOpPl44iEODQtFlHCCi', 'female', 'lRhE7ItDlp', '2022-12-08 05:07:10', '2022-12-08 05:07:10'),
(2, 'ahmed gamal', 'ahmed gamal', 'ahmed@gmail.com', NULL, '$2y$10$uDufB16YN.0Uml0/JGevruoTo/Ou7fRIL0YcTdICs84m6UUJLLDl6', 'male', NULL, '2022-12-08 05:07:34', '2022-12-08 05:07:34'),
(3, 'jimmy', 'ahmed gamal', 'ahmed2@gmail.com', NULL, '$2y$10$mhKXVrzjra2z/9j/JItXp.P8dqGUBwyRY0nkVV5784Y54XPUr3FC.', 'male', NULL, '2022-12-08 05:12:50', '2022-12-08 05:12:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
