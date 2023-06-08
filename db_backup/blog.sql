-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2023 at 12:51 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.1

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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'non', 'aspernatur-vel-qui-dicta-dolorem-dignissimos-consequuntur-sed-accusantium', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(2, 'aut', 'vel-laudantium-ut-dolor-id-quidem-enim-deleniti', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(3, 'beatae', 'omnis-possimus-ducimus-nam-quos-doloremque', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(4, 'tenetur', 'commodi-nam-enim-cumque-officiis', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(5, 'ea', 'aspernatur-ut-tempore-nam', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(6, 'corporis', 'ullam-qui-sit-vero', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(7, 'quia', 'fugiat-necessitatibus-nam-ab-illum-voluptatem-aut-explicabo', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(8, 'consequuntur', 'perspiciatis-alias-aut-debitis-mollitia-dolores-aut-quidem-eos', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(9, 'consectetur', 'eos-et-tempore-optio-temporibus-quasi-distinctio-sapiente', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(10, 'est', 'sed-suscipit-et-mollitia-omnis-nobis-doloremque', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(11, 'provident', 'ab-unde-non-voluptatem-et-alias-ab', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(12, 'exercitationem', 'provident-soluta-aut-dicta', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(13, 'sint', 'consequatur-magnam-temporibus-officiis-deserunt', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(14, 'voluptatum', 'tempora-quidem-beatae-quasi', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(15, 'quis', 'quis-ducimus-harum-modi-quis-distinctio-iusto', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(16, 'repellendus', 'qui-enim-est-et-nostrum-totam-voluptas-facilis', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(17, 'voluptatem', 'praesentium-voluptas-atque-assumenda', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(18, 'odio', 'ut-ea-atque-explicabo-ex-facere', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(19, 'rem', 'libero-aliquam-velit-quia-accusamus-vero-voluptatibus-perferendis-molestias', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(20, 'ipsum', 'debitis-dolorem-ea-qui-et-consequatur', '2023-01-14 09:13:12', '2023-01-14 09:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `slug`, `title`, `thumbnail`, `body`, `excerpt`, `created_at`, `updated_at`, `published_at`) VALUES
(3, 1, 3, 'delectus-esse-cumque-consequatur-et-ut', 'Adipisci ut sed consectetur occaecati et ut voluptatum itaque.', 'thumbnails/7.jpg', '<p>Deserunt veritatis harum voluptatum doloremque natus quasi. Et perferendis a quasi exercitationem. Aperiam possimus quidem consectetur. Officiis vero aliquam voluptas magnam qui.</p><p>Fugit et quas fugiat qui rem. Labore labore voluptatem quos porro dolorem doloribus itaque. Quidem quod ut quia quisquam ratione. Et maiores tempore natus.</p><p>Quis recusandae asperiores magnam quibusdam repudiandae non facilis. Vel aspernatur ut aut pariatur non voluptas. Aliquam aut consequatur nesciunt voluptatibus sunt exercitationem.</p><p>Aut minima molestiae accusantium quia ducimus repellendus et. Voluptate aliquid sunt autem rerum dicta. Consequatur exercitationem ut rerum. Voluptates eos pariatur ullam earum.</p><p>Quibusdam at omnis animi ipsum. Qui et nihil consequuntur. Accusantium esse voluptas harum quia. Voluptatum nihil dolore perspiciatis adipisci voluptatem labore.</p><p>Perferendis impedit fuga adipisci eum perspiciatis tempore aut. Eius consequuntur accusamus suscipit quae cupiditate sint ipsam. Laboriosam consequatur placeat dolorem vitae.</p>', '<p>Consectetur aperiam illum quibusdam laboriosam non odit corrupti. Possimus distinctio consectetur minima dolor excepturi consequuntur at. Cupiditate qui iste vel recusandae eos minima. Officia et dignissimos odit nihil enim aspernatur quam.</p><p>Quis dicta qui cumque laudantium ut. A pariatur autem aut. Et vero quaerat accusamus in et. Ea hic rerum sapiente dolore nulla explicabo recusandae consequatur. Est aperiam et reprehenderit odit quo debitis soluta.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(4, 1, 4, 'temporibus-ex-voluptatibus-eius-blanditiis-molestiae', 'Saepe error dolor dolorum molestiae suscipit eius temporibus.', 'thumbnails/1.jpg', '<p>Libero est voluptas rem enim eligendi sunt perferendis. Et aut fugiat corporis illo at. Quia sunt et consequatur rerum a velit.</p><p>Facere ut dolorem excepturi impedit rem. Harum architecto vel asperiores repellat officia debitis dignissimos. Mollitia facere deleniti ducimus repudiandae est porro.</p><p>Nulla eligendi sunt sed aliquam. Eveniet ut aut quam esse. Delectus sunt ratione qui at consequuntur et totam ea.</p><p>Dolore illum similique esse. Omnis unde voluptatum beatae qui. Culpa facere dolores quia dicta ex.</p><p>Qui voluptates cumque commodi vel. Ut quod ut dolore exercitationem. Reiciendis vel voluptatem autem velit totam labore id accusantium. Autem sit quae magni commodi perspiciatis perspiciatis.</p><p>Aut nisi aliquid necessitatibus minus nesciunt voluptatem. Natus dignissimos a voluptatem asperiores nemo nobis ut vero. Illo exercitationem qui consequuntur laudantium ut. Exercitationem nam delectus est voluptatem vel dolor.</p>', '<p>Repellat ab debitis deserunt porro. Est aut ut vel ut omnis. Dolores aut ea aut nisi.</p><p>Voluptatum voluptas dolor voluptas qui incidunt fugit. Minus nam deserunt aut reiciendis est accusamus. Eos aut molestiae inventore non qui ut voluptatem facilis. Ut quaerat eveniet neque reiciendis dolorum ipsa dolores.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(5, 1, 5, 'iusto-possimus-asperiores-doloribus-sunt-quae-possimus', 'Laudantium eius et et id nisi quo ut.', 'thumbnails/4.jpg', '<p>Modi perferendis pariatur earum aut est. Sit modi unde deleniti fuga. Assumenda sit sed et facere. Laborum molestiae sed veritatis iure sit dignissimos amet eveniet.</p><p>Qui minima atque dolores placeat nesciunt eos. Illum quas expedita consectetur id nemo sed. Eos et recusandae aliquam assumenda. Nesciunt perspiciatis voluptatem quis sunt voluptas atque soluta.</p><p>Voluptatum velit qui velit sit earum aliquid vitae. Id autem quasi rem dolor quis rerum quis corporis. Eligendi quisquam aspernatur corrupti consequuntur sequi excepturi neque. Et corporis in reiciendis qui in et totam laudantium. Eligendi dolores beatae dolores aliquam eum quod sed.</p><p>Repellat sed consequatur explicabo ratione nihil velit eum. Vero unde doloribus placeat laboriosam nesciunt quis deserunt. Error expedita provident ipsam commodi dolorum eaque.</p><p>Nihil alias et perspiciatis repellendus. Optio ad voluptatem fugiat temporibus. Odio quaerat aut est natus. Ipsam similique aut incidunt necessitatibus officia.</p><p>Quisquam culpa sed ut natus. Est ipsam sed ad illum exercitationem qui. Quis aliquam ut laudantium accusantium et natus odio. Quia consectetur quibusdam omnis.</p>', '<p>Aliquam voluptates deserunt laboriosam nobis nam. Explicabo et sed officia. Autem est ut qui nesciunt maiores est deserunt.</p><p>Sequi amet illum perspiciatis. Repudiandae dolore commodi quas aut. Ab dolores odit alias esse. Ut ad cum similique eum quos.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(6, 1, 6, 'ut-beatae-distinctio-in-eum-omnis', 'Quia voluptatem voluptatem dignissimos voluptatem doloribus alias.', 'thumbnails/1.jpg', '<p>Qui sed eos labore labore. Aut voluptatem voluptas omnis ad natus et aut. Eum sapiente impedit officiis.</p><p>Quis rem est nesciunt. Iure rerum architecto ipsum aperiam ab. Illum aut assumenda eum id accusamus nemo voluptatem. Est dolorum quidem id porro non.</p><p>Saepe est rerum consequatur repudiandae dolorem assumenda laboriosam. Aut quis sed dolor. Beatae est praesentium asperiores perferendis veniam eius sit. Eligendi voluptatem eligendi accusantium ab commodi dolorum et.</p><p>Tempore assumenda quae illum suscipit omnis. Sed enim tenetur vitae ullam. Aliquam maxime aliquid qui magnam a animi. Dolorum voluptatem ipsa error.</p><p>Nobis ducimus et et sed rerum pariatur saepe quia. Eum quo nobis aperiam sapiente aut omnis in. Voluptas dolorum veniam suscipit aut porro dolorem. Omnis aut odio quis eveniet dolores impedit sed.</p><p>Rerum aperiam facilis iure alias repudiandae omnis. Vel ullam ullam nobis dolorem et voluptatem. Quo quo ab reprehenderit eos adipisci sed omnis. Tempore quia fugit a ut dolorem quidem et autem.</p>', '<p>Velit sint labore tempore. Reprehenderit laboriosam quia suscipit at perferendis. Quis officia maxime quia corrupti saepe.</p><p>Consequuntur sint ut sunt quam repellat et. Harum mollitia non a voluptatibus. Et eius facere repellat a.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(7, 1, 7, 'quibusdam-dolores-qui-cumque-praesentium-itaque', 'Labore eos corrupti omnis eaque est.', 'thumbnails/8.jpg', '<p>Voluptate id et quisquam tempora et necessitatibus officia totam. Eveniet eius dolor quisquam sapiente nostrum sed id ea. Itaque molestiae excepturi qui accusamus.</p><p>Velit dolores aut commodi quibusdam. Voluptate quo eum quis.</p><p>Natus et eveniet eaque adipisci iure. Omnis cum debitis numquam. Hic molestias sunt cumque. Eveniet perferendis necessitatibus est perferendis molestiae ut et.</p><p>Provident voluptates voluptates sit. Aliquam assumenda sit quo veritatis. Cupiditate accusamus facere nemo incidunt corrupti voluptatem ex.</p><p>Cum mollitia quia incidunt illo architecto. Exercitationem recusandae est minus quo aut debitis. Qui eum est unde nobis a eum.</p><p>Odit qui deleniti omnis in necessitatibus. Qui fuga quibusdam nisi animi eum eligendi. Quia voluptas modi veniam nam possimus fugit. Dignissimos consequuntur aliquid est recusandae. Magni ipsum omnis voluptas veniam.</p>', '<p>Fugiat excepturi dolorem similique delectus. Et quia iusto nulla sed voluptatem. Suscipit fuga dicta expedita voluptatem. Praesentium nesciunt veniam necessitatibus nihil quo voluptatem dolores voluptas.</p><p>Eum omnis aut sit numquam aut ipsam at. Accusamus illum ut esse consequatur. Vel quod et dicta alias consequatur hic.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(8, 1, 8, 'voluptate-libero-quam-aut-in-sint-qui-dolorem', 'Dolorem aliquid aperiam quo est eos cupiditate reiciendis.', 'thumbnails/1.jpg', '<p>Quia cupiditate distinctio libero aut sunt sed quia et. Unde magnam quo et architecto ex quos quod. Molestiae assumenda velit eum veritatis qui omnis. Est cum eius nulla et. Perspiciatis ut quasi sed consequatur.</p><p>Molestias rem sit qui eaque. Voluptas optio tempore commodi sed. Consequatur ea est dolores placeat voluptates. Et eligendi quod in sed nulla.</p><p>Quisquam accusantium architecto laudantium aut ut est non. Ut voluptatem non aut quisquam. Commodi ipsam iste dolorem.</p><p>Veritatis laudantium amet neque est. Deleniti ut est sint provident possimus voluptatibus vitae. Ut ut quae repellendus similique dolorem.</p><p>Consequatur praesentium facere quas eveniet tenetur fuga. Et voluptas et eos numquam dolorum maiores non necessitatibus. Iusto non quia dolor ullam iure blanditiis enim. Dicta veritatis ut molestiae facere.</p><p>Aut officiis aperiam voluptatem qui. Deserunt placeat natus ea magnam. Iusto eum nulla non eos eum quia.</p>', '<p>Quia repellat non culpa nam. Iure ut tempora quod reprehenderit. Maiores eveniet et perferendis minima ea.</p><p>Aut dolorem ipsum assumenda officiis. Esse consequuntur repellat voluptatem et et. Et officiis nemo libero inventore consectetur animi suscipit.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(9, 1, 9, 'sed-ut-error-molestiae-sed-nesciunt-recusandae-eos', 'Maxime repellat labore est et ipsam cumque sed.', 'thumbnails/3.jpg', '<p>Minima amet et fuga architecto iste. Occaecati et est quam dolor adipisci odit sunt. Nemo perspiciatis doloribus molestiae.</p><p>Quibusdam alias accusamus a ad dolorum sint magnam. Eos possimus sequi quibusdam voluptate fugiat voluptate velit officiis. Quam odit illo sunt et pariatur. Id harum eos non ut expedita sit aut.</p><p>Iure blanditiis officiis incidunt nobis eligendi nulla dolores. Facilis est perspiciatis rem qui sint ipsam nihil iste. Eligendi non et ad tenetur.</p><p>Excepturi itaque facere quae voluptatibus. Praesentium numquam optio natus et maxime consequatur. Magnam maiores aut impedit fugiat. Autem voluptatem quo dolor.</p><p>Illum ullam magni magnam expedita. Deserunt repellat rerum temporibus exercitationem eaque impedit. Sed maxime unde ex magnam. Beatae voluptatem beatae fugit quaerat ex.</p><p>Voluptas ut reprehenderit et dolorum molestiae praesentium et quam. Et dolor est pariatur temporibus id vero ullam molestias. Libero optio suscipit quae quas qui hic et. Ex et accusantium tempore qui vero sed.</p>', '<p>Quibusdam nemo autem sunt tempora iusto. Eligendi eos ut in voluptas totam.</p><p>Similique recusandae debitis aut. Saepe dignissimos cum esse et facilis aliquid voluptatibus. Atque inventore provident mollitia quas.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(10, 1, 10, 'qui-omnis-enim-quia-ea-ut', 'Assumenda atque doloribus minima qui nulla minus autem saepe.', 'thumbnails/3.jpg', '<p>Odio molestiae et et consequatur perferendis nostrum. Et aut blanditiis esse quasi dolore. Quaerat in alias quisquam et officiis nemo fugiat. Minus porro est ea maiores et ullam.</p><p>Qui asperiores temporibus reprehenderit. Doloremque id atque quis consequuntur maxime cupiditate. Rerum suscipit quaerat tempora omnis nisi soluta. In rerum reprehenderit dolor excepturi officia officiis ut. Doloribus dolores tempore excepturi quis temporibus repudiandae officia.</p><p>Enim qui ad eveniet sed consequatur autem nulla. Saepe molestias natus amet ratione nihil eveniet harum. Voluptatibus et porro expedita porro in molestiae. Accusantium corrupti est atque quibusdam magni sit.</p><p>Libero et minus et sit minima enim. Deserunt iure omnis totam architecto est voluptatem eligendi. Excepturi voluptatem perferendis enim id reprehenderit.</p><p>Saepe consectetur autem quis expedita est numquam. Sint sunt et in odio vitae possimus. Velit ex corrupti natus porro id rerum natus officiis. Nisi consequatur nihil qui aliquam facere consequatur.</p><p>Voluptas corporis eos aut sed illum consequatur magni. Quidem voluptatem totam ullam. Sint tempora et quis deleniti molestias quaerat consequatur. Nihil natus repudiandae sed corrupti unde.</p>', '<p>Ducimus cum et qui deserunt tenetur sit deserunt. Eos ea fuga soluta vitae. Ullam perspiciatis quos non nihil.</p><p>Sed recusandae ea perferendis et in. Similique quis est sint eos asperiores rerum ut. Quis voluptas ullam hic enim. A quam cum ut corrupti et.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(11, 1, 11, 'ut-repellat-voluptatem-provident-beatae-illum-ratione', 'Rerum pariatur aut unde voluptas expedita exercitationem.', 'thumbnails/8.jpg', '<p>Ipsa omnis itaque et at tempora. Aut et labore voluptas possimus omnis. Consequatur neque minus rerum similique fuga quia quia.</p><p>Dolorem fuga ea sit accusantium. Reiciendis eum rerum quis nemo velit blanditiis. Saepe alias quia et eum labore autem enim.</p><p>Dignissimos qui veritatis omnis delectus. Consequatur et non earum vel perferendis porro. Voluptate quaerat doloribus aperiam qui. Nihil reiciendis possimus autem.</p><p>Sit consequuntur sit omnis natus fugit quos incidunt. Ipsum at ipsum dignissimos doloremque. Quis et veniam eveniet vitae velit sunt quas.</p><p>Consequatur aut ut est magnam et voluptatibus. Sit nulla non expedita reprehenderit optio eum rerum. Autem modi molestiae sequi porro atque omnis delectus.</p><p>Voluptate quidem voluptas ab. Non temporibus aut occaecati. Aliquid omnis possimus nihil assumenda ipsa sit voluptatem qui. Et nulla illum dignissimos quos suscipit in.</p>', '<p>Nesciunt aspernatur nesciunt natus sunt sint. Debitis animi dicta sit necessitatibus quo nam provident. Culpa qui praesentium reprehenderit explicabo quis.</p><p>Fugit omnis veniam id nam delectus quis quibusdam. Sed et inventore saepe quos quod mollitia tenetur. Placeat dolorem unde sint fugit. Itaque soluta commodi nostrum voluptatem aut alias.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(12, 1, 12, 'aut-ut-alias-autem-facilis-quos', 'Provident velit impedit dolor aut nulla.', 'thumbnails/1.jpg', '<p>Maxime dolorem neque qui accusantium. Ipsam dignissimos quia assumenda voluptatum.</p><p>Et quis blanditiis voluptatem saepe voluptate velit qui. Placeat aspernatur qui itaque excepturi. Sint eveniet ullam rerum eligendi repellendus atque. Aut ex perferendis id qui voluptates omnis.</p><p>Eum dolor optio vitae voluptate aut magnam. Perferendis consectetur vel nihil odio quasi quibusdam asperiores quas. Nobis odio nulla voluptates doloribus qui odit molestias. Fugiat autem consequatur nam omnis voluptas labore sunt.</p><p>Dolore officiis molestiae ut facilis magni consequatur molestiae. Veritatis atque veniam quia voluptatem libero sint temporibus sapiente. Non voluptas aperiam quae et.</p><p>Magni tenetur hic consequatur deserunt mollitia cumque quos ut. Distinctio nulla et eos autem vero beatae. Ut sunt fuga aliquid quo voluptatem. Laudantium molestiae explicabo unde neque esse.</p><p>Illo repellat facilis quos a distinctio vero. Quia aut quos maxime et ullam amet animi. Ad excepturi corrupti reiciendis voluptatum autem natus.</p>', '<p>Molestias repellat et totam ea. Qui aut repellat soluta temporibus. Minus incidunt mollitia qui odio dolor aut qui et.</p><p>Qui sed qui soluta. Qui pariatur inventore quia ad deleniti. Natus quas laudantium quas aut minus consectetur suscipit.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(13, 1, 13, 'voluptatibus-non-voluptas-reprehenderit-aut-libero-quia-iure', 'Consequatur quos labore debitis rerum est nisi assumenda.', 'thumbnails/6.jpg', '<p>Ducimus non qui esse beatae. Explicabo eos voluptatem nam maxime. Eligendi veniam enim sed dolorum molestiae.</p><p>Quis nostrum et qui est. Et eos excepturi qui. Accusamus occaecati rem totam quaerat. Enim iste voluptatum consectetur incidunt et quia soluta nisi.</p><p>Harum veritatis voluptatem quia modi voluptas commodi. Consectetur eum quam commodi excepturi excepturi quod saepe veniam. Debitis rerum doloribus distinctio quis. Reprehenderit blanditiis qui et distinctio delectus culpa aut.</p><p>Consectetur aperiam fugit quaerat vitae nostrum vitae. Quia error eos sed distinctio. Vel inventore tempore voluptatem animi. Ducimus non aperiam perferendis.</p><p>Ullam ad vero magni ducimus rem quia tempora. Nisi odit sed suscipit quia. Sed alias est sit.</p><p>Voluptatem labore quia corrupti porro tempore nam cum. Voluptatum aliquid qui ipsam hic sapiente temporibus.</p>', '<p>Natus dolor aperiam cupiditate et in et eum. Assumenda laboriosam et ipsam. Quibusdam vero quam voluptatem possimus et eveniet. Quis quae aut fugiat et est.</p><p>Consequatur est eum dolorem ut dicta doloribus unde. Consequatur rem sequi omnis voluptatem blanditiis amet excepturi. Numquam animi voluptatem nostrum est.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(14, 1, 14, 'architecto-delectus-sequi-rerum-qui-ut-aut-sit', 'Numquam qui porro est cupiditate sunt voluptatibus temporibus repellendus.', 'thumbnails/5.jpg', '<p>Deserunt et ducimus et et sunt recusandae quam. Facere repudiandae minus laboriosam qui. Illo velit error ut illum debitis quidem. Omnis et quia magnam aliquid in est omnis.</p><p>Laborum animi nihil soluta. Veritatis in et amet soluta. Rerum est dolorem non voluptatem laboriosam sed possimus eum.</p><p>Ut dicta est qui est. Illo quos qui fugit voluptatem. Nostrum quo cupiditate earum voluptate eum culpa. Temporibus quia ipsa itaque tempore maiores velit animi ea.</p><p>Et omnis magnam est et aut sed in voluptatem. Harum illum voluptas architecto enim deserunt alias dolore. Voluptatem veniam sed possimus. Quaerat ea libero cumque.</p><p>Perspiciatis nisi consequuntur est. Ipsa suscipit odit perspiciatis quis quam molestiae et deserunt. Temporibus asperiores nihil minus dolor ratione. Repellendus numquam et at numquam. Quidem autem asperiores et sed qui iusto rerum.</p><p>Non quo qui error dignissimos culpa sequi. Maxime enim reprehenderit ut. Sit earum vero ab esse quae quaerat in. Nihil sunt consequatur culpa nostrum autem.</p>', '<p>Iure quam aut sed consequatur omnis aliquam harum. Quos expedita voluptatem voluptatem autem modi et magnam amet. In possimus placeat consequuntur et repellendus quae. Rerum cum quibusdam voluptatum accusamus.</p><p>Enim autem deleniti voluptatem porro hic rerum magnam. Dolorum molestiae consequuntur pariatur quidem esse. Et autem vitae et debitis dolores eos.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(15, 1, 15, 'quam-veniam-a-aut-aut-quas-tempore', 'Libero nesciunt porro sunt ut quae deserunt velit.', 'thumbnails/5.jpg', '<p>Vitae nam maxime corrupti consequuntur autem est. Et et doloremque id. Praesentium eligendi sunt et recusandae et voluptas eius.</p><p>Non nesciunt labore voluptatibus optio. Cum cumque voluptates recusandae in earum. Provident illo distinctio corrupti dolores qui aut rerum soluta. Mollitia corrupti nesciunt deserunt praesentium vel sequi est.</p><p>Rerum quo quisquam officiis earum ducimus debitis eum. Nemo molestias nihil molestias. Quos aliquam hic in et doloribus.</p><p>Quia et dolores sapiente aliquid recusandae. Quis voluptas quo quod est corrupti temporibus sunt. Sed sunt architecto dicta qui. Sunt quis accusamus nesciunt et maiores incidunt. Est aliquam natus non natus sunt itaque aut.</p><p>Et velit nostrum non quo. Et a dignissimos quaerat est voluptate excepturi.</p><p>Ex at est in aut. Excepturi totam ab sunt velit reprehenderit culpa. Libero tempore veritatis placeat cum itaque voluptas quos. Vel tempora debitis fugit modi voluptatem quis voluptatem.</p>', '<p>Fuga cumque ducimus non deleniti. Voluptates dolorem voluptate sint. Libero culpa aspernatur laudantium illo ut neque quia. Aut quis voluptatem laborum autem eligendi ut.</p><p>Deserunt impedit occaecati exercitationem. Et asperiores maiores officia nihil labore alias quaerat soluta. Quasi commodi delectus aut id at nulla sit.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(16, 1, 16, 'blanditiis-fuga-est-aut-est-excepturi-animi-aut', 'Earum quibusdam magnam amet autem doloremque recusandae nulla.', 'thumbnails/7.jpg', '<p>Voluptas aut neque ex ex sunt. Quae quia nisi autem veniam maxime impedit. Vel laborum quae rem reiciendis quasi quia.</p><p>Pariatur accusamus hic voluptatem explicabo fugiat corrupti quis a. Voluptatem vitae commodi deleniti laudantium sint. Accusantium officiis ut sint fugit quis.</p><p>Ipsa qui et beatae praesentium quibusdam libero maiores. Iure eveniet ab nam possimus quia quam qui. Odio dolorem quod quia consequatur illum nobis consequatur sunt.</p><p>Aliquid quia qui atque aut expedita voluptatem adipisci accusamus. Et recusandae qui reiciendis iste debitis consequatur sit. Maxime cumque qui itaque dolorem debitis culpa.</p><p>Voluptatibus nemo vel quod quibusdam modi maiores. Laudantium neque hic voluptas quo rem. Dignissimos explicabo nesciunt quia perspiciatis sint aut.</p><p>Recusandae ipsam incidunt est enim. Eos consequatur necessitatibus quis dolores deleniti ratione eum laudantium. Dolores harum qui rem possimus. A qui quis possimus modi sint eaque.</p>', '<p>Possimus cupiditate nobis cupiditate et. Culpa velit vel est vero repudiandae. Deserunt molestias iure vero quibusdam accusamus alias. Sit eos vel et veritatis repellendus ut.</p><p>Veritatis sit dolores cum hic debitis. Cum ex vitae perferendis et possimus officiis. Nihil delectus enim amet laudantium iure vero. Fugiat optio est nobis id quis corporis suscipit. Vel iusto iusto excepturi repudiandae totam temporibus.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(17, 1, 17, 'praesentium-excepturi-accusamus-et-et-esse-sed-harum', 'Numquam neque sit qui ratione blanditiis.', 'thumbnails/4.jpg', '<p>Suscipit atque expedita rerum cum. Consequatur maxime totam consequatur vero dolorum quod ex. Voluptatem eaque sunt veritatis quo architecto id sed.</p><p>Ipsa nostrum earum delectus eum earum. Cupiditate quos illum impedit. Sit eos est quas incidunt et quia nam. Ut sit aut asperiores eum voluptatem.</p><p>Culpa quasi voluptas consequuntur voluptas qui aut. Dolores delectus sapiente nihil dolorem ullam nihil reiciendis ab. Officiis eum est architecto tempore iusto.</p><p>Dolores ab omnis dolor repellat rerum neque est modi. Nemo expedita dolor et eaque. Iure similique voluptatibus nobis ut. Et at dolor eligendi nostrum tempore amet.</p><p>Quam maxime veniam enim vitae iure libero dolorem. Doloribus quia consequatur sit ipsum rerum.</p><p>Aliquam consequatur eius rem et. Quia porro perferendis recusandae non pariatur delectus.</p>', '<p>Nostrum dicta quidem illum aliquam quae est. Sint nobis quam vero quasi. Velit et assumenda expedita repellendus nostrum sed.</p><p>Porro accusamus aut et et minus magni dolore. Quaerat porro at voluptate. Est omnis reprehenderit provident excepturi voluptatibus illum.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(18, 1, 18, 'autem-explicabo-quisquam-est-ullam', 'Autem quo eveniet iure numquam possimus et.', 'thumbnails/2.jpg', '<p>Fugit sit incidunt et officiis aliquid. Accusamus et quaerat quis odit natus nostrum dignissimos. Nihil qui cupiditate sit consequatur exercitationem nostrum ab. Fugiat expedita corrupti quae.</p><p>Et doloribus esse aut eveniet. Minima fuga animi earum qui. Illo rerum adipisci quo non necessitatibus. Possimus porro est sed molestias voluptatem ab voluptas.</p><p>Incidunt sint officiis earum modi ratione magni earum. Tempore qui est aspernatur. Repellendus unde iusto sit saepe accusantium et alias.</p><p>Illo laborum et aspernatur consequatur. Harum quam praesentium officia unde. Voluptates reprehenderit optio eum accusamus nihil deserunt est. Ipsum molestiae et veniam aut.</p><p>Minus officia eos similique aut. Doloribus ducimus quia vel laborum non optio eveniet.</p><p>Non nihil voluptas saepe officia odit beatae. Expedita inventore eligendi et tempore totam odit. Error ducimus tempora qui quis. Commodi natus incidunt et quaerat.</p>', '<p>Voluptas aut mollitia ut ut. Quidem eum rerum laudantium doloribus velit sed delectus. Consequuntur debitis asperiores laborum sed ullam aperiam. Itaque atque omnis sunt sunt eum.</p><p>Iusto odit qui alias et voluptas ea molestiae. Earum reiciendis repudiandae qui.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(19, 1, 19, 'aut-consequatur-dolorem-odio-natus-qui-adipisci', 'Est voluptas debitis dicta voluptas est veritatis.', 'thumbnails/8.jpg', '<p>Repudiandae alias quisquam pariatur vel voluptatibus eveniet nihil rerum. Incidunt qui est corrupti natus quaerat. Similique atque molestiae maiores animi aut.</p><p>Recusandae non necessitatibus dolores recusandae consequatur consequatur eligendi. Nulla recusandae dolore officiis reprehenderit et nulla. In repellat placeat vero. Alias accusamus a harum et.</p><p>Minima magnam sed at eos illo voluptas. Sed quia corrupti praesentium velit vel ut. Dolor quia in tempora voluptatibus quia. Qui omnis facere sequi quia est est doloribus. Deleniti dolor voluptatem eos veritatis.</p><p>Perferendis vel corporis sapiente. Repellendus excepturi error facilis ad. Voluptatem beatae magnam libero et eos voluptatem voluptas. Consequuntur quod exercitationem aliquam necessitatibus.</p><p>Laborum dolores ullam autem et possimus corrupti. Doloribus pariatur eveniet nihil at veritatis aut. Ipsum eum rerum veritatis totam.</p><p>Deleniti corrupti hic accusantium sit unde voluptatum. Necessitatibus iste dicta nulla quis quis ut et eius. Ad ullam veniam sunt omnis.</p>', '<p>Earum et odio ut aut quis blanditiis eos. Asperiores corrupti nobis optio praesentium. Quidem qui dolores aliquid amet.</p><p>Totam beatae sit non vero molestias et ad qui. Provident libero ut quis pariatur et perferendis.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL),
(20, 1, 20, 'qui-dolorem-esse-distinctio-voluptas', 'Adipisci culpa quidem sint excepturi asperiores laudantium excepturi.', 'thumbnails/7.jpg', '<p>Optio et nihil asperiores quo corporis. Ea facere consequuntur voluptatem esse esse. Nam magni nihil repellendus quia doloribus ut.</p><p>Commodi esse rerum sunt aut. Unde ipsam in et voluptas molestiae quaerat. Dolorem voluptas et libero sit corrupti.</p><p>Illum tenetur delectus repellendus. In voluptas sunt nemo voluptates ut cupiditate eaque architecto. Aut omnis qui libero rem ipsum saepe optio.</p><p>Quae expedita placeat non est veniam dolore inventore. Cum qui itaque similique vel commodi explicabo sed architecto. Quia laboriosam error ullam asperiores fugiat quisquam.</p><p>Temporibus est qui similique qui itaque velit molestias. Consectetur magnam quis pariatur veritatis autem omnis voluptas. Dignissimos perspiciatis id in placeat voluptates perspiciatis.</p><p>Quos eos et fugiat tempora vel. Laborum velit mollitia quos dolores voluptates corrupti debitis. Ipsum aliquam nihil quisquam beatae ab aut rerum distinctio. Culpa adipisci maxime magnam quam consequatur velit voluptas.</p>', '<p>Vel non qui esse voluptas repellat sunt nam. Quo quo veritatis qui est eos harum numquam. Laboriosam ullam fugiat quam vero voluptatem velit.</p><p>Unde error qui dolorem debitis aperiam facilis quae. Qui non impedit sit quia repellendus distinctio hic. Quis iusto id voluptas illo earum amet.</p>', '2023-01-14 09:13:12', '2023-01-14 09:13:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fstoltenberg', 'Ahmed Gamal', 'aileen55@example.com', '2023-01-14 09:13:12', '$2y$10$xxNyHd6w4R23FMCTEZwePOsxsk6kexIG1TjLYj1H9816EObxK8q1y', 'female', 'FH3RB0tpcN', '2023-01-14 09:13:12', '2023-01-14 09:13:12'),
(3, 'ahmed gamal', 'ahmed gamal', 'ahmed@gmail.com', NULL, '$2y$10$lBGUjiQRTZ9Z1BKlcVGxtue.mzY5dSJ44dPA6z.SSNS9Umt2d/3Fy', 'male', NULL, '2023-01-31 17:02:11', '2023-01-31 17:02:11');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
