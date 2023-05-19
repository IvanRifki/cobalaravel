CREATE DATABASE  IF NOT EXISTS `ivan_blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ivan_blog`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: ivan_blog
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Web Programming','web-programming','2023-05-18 06:13:54','2023-05-18 06:13:54'),(2,'Personal','personal','2023-05-18 06:13:54','2023-05-18 06:13:54'),(3,'Web Design','web-design','2023-05-18 06:13:54','2023-05-18 06:13:54'),(4,'UI/UX','ui-ux','2023-05-18 06:13:54','2023-05-18 06:13:54');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_05_09_223632_create_posts_table',1),(6,'2023_05_10_140608_create_categories_table',1),(7,'2023_05_18_234438_add_is_admin_to_users_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'Non sapiente quas.','perspiciatis-eius-delectus-vel-quo','post-images/oGEw2Jqr6UllevlNLWzQFuBpZrYbuoUpvjbGtSmj.jpg','Magnam in suscipit vel mollitia quia fuga. Eum nulla impedit excepturi enim sequi. Consequatur nihil suscipit dolorem est dolores sed.Aut voluptas alias consequatur et omnis maiores. Explicabo earum u...','<div>Magnam in suscipit vel mollitia quia fuga. Eum nulla impedit excepturi enim sequi. Consequatur nihil suscipit dolorem est dolores sed.<br><br></div><div>Aut voluptas alias consequatur et omnis maiores. Explicabo earum ut reprehenderit voluptas vel est. Et nobis non culpa perferendis ipsam voluptatum.<br><br></div><div>Nisi et aut doloremque. Iusto voluptas ipsum natus laborum aut fugiat. Corporis corrupti ut illum veniam nobis ea laborum. Dolores illo possimus praesentium asperiores molestiae molestias tenetur.<br><br></div><div>Saepe similique quia enim aut consequatur facere. Optio assumenda rem eaque earum voluptatem ea eveniet. Odit illo voluptas repellat cumque dolorem vero velit. Fuga quaerat molestias dolorum deleniti et.<br><br></div><div>Vel debitis molestiae consequatur vero omnis. A recusandae magnam modi numquam non tempore. Suscipit error in delectus pariatur enim aut sint.<br><br></div><div>Sint dolorem quaerat delectus consequatur dolorem et aut. Unde aut vero repudiandae animi. Incidunt sed laudantium repellat expedita debitis ratione. Corporis dolorum dolore dolorem et.<br><br></div>',NULL,'2023-05-18 06:13:54','2023-05-18 08:45:22'),(2,3,2,'Sint quas qui animi tenetur et fugit.','consectetur-quaerat-qui-qui-quidem',NULL,'Sunt quisquam illum animi. Commodi odio distinctio ad odio rerum mollitia.','<p>Temporibus provident iure quae modi. Rerum quisquam consequatur inventore minus. Quaerat rerum et quibusdam dolores qui rerum. Illo id fuga et iure harum architecto laudantium.</p><p>Quis porro maxime iusto vero aperiam sit. Non expedita ut voluptate sit aut facere. Sed et harum quia corporis. Sapiente dolorem in in veniam.</p><p>Facere qui in voluptate odit sit vel. Vel distinctio voluptates delectus facere. Et ipsum ut et sit. Sunt fuga odio laboriosam eveniet. Iste aut rerum dolor.</p><p>Iste sunt sed aut consequatur quo rerum iure. Dolorem molestiae omnis laudantium quis sit porro. Voluptas culpa harum nisi.</p><p>Nisi laborum et reiciendis eligendi et qui. Sit provident ut ducimus voluptatem deleniti. Rem quo aut possimus vero incidunt est deleniti.</p><p>Quibusdam est aut quo. Odio est incidunt perferendis quas quasi veritatis pariatur. Nemo consequuntur quae et quia est. Rerum quia voluptas sunt et.</p><p>Culpa odit aliquid dolorum facilis voluptatem provident. Dolores adipisci corrupti rerum ipsa. Tempora maxime iste magni minus. Sunt consequatur et totam officia ex consectetur. Dolore cupiditate natus eum voluptatem deserunt nesciunt cupiditate.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(3,4,1,'Ea illum culpa officiis deleniti quia hic.','molestias-officia-nihil-est-blanditiis-suscipit-ea-modi','post-images/Ld9iWC1ML3xAYqAWD4lUXKOBC4Wv4gNWmGvsmT3T.jpg','Consequatur et accusantium consectetur in a doloremque consequatur fugit. Nesciunt quia tempora sequi ipsam. Suscipit qui ad omnis. Rerum quae rerum odit adipisci alias tempora.Ad rerum sed sint magni...','<div>Consequatur et accusantium consectetur in a doloremque consequatur fugit. Nesciunt quia tempora sequi ipsam. Suscipit qui ad omnis. Rerum quae rerum odit adipisci alias tempora.<br><br></div><div>Ad rerum sed sint magni. Ut quia in modi aut sint velit iure magnam. Veritatis expedita ipsam ex sunt et eaque voluptatem. Laborum omnis sed id eum rerum cum.<br><br></div><div>Perferendis similique expedita rerum veniam fugit repudiandae et quia. Et rem quaerat quia et explicabo vitae. Dolore ad necessitatibus iusto consequuntur natus.<br><br></div><div>Est incidunt provident voluptate voluptas ut laboriosam. Nam ab doloribus ut est nihil. Alias iure est non atque aliquid. Quaerat sit est aut voluptatem nihil.<br><br></div><div>Rerum qui et ipsam. Accusamus reprehenderit totam exercitationem natus quia omnis exercitationem voluptatem. Eos est ex nihil perferendis doloremque voluptatem aut. Magni et explicabo voluptas reiciendis et.<br><br></div><div>Est alias aspernatur quidem hic dolorum magni accusamus officia. Natus qui ducimus odio distinctio dignissimos. Rem at architecto sit fugit sit esse.<br><br></div><div>Aliquid autem est eos omnis voluptate autem rem. Tempore omnis dolorem omnis ipsum et dicta eius. Ipsum aut sed adipisci sed hic quia id. Illo nihil animi voluptas fugit natus.<br><br></div><div>Quo id sapiente dicta similique et est. Illum veniam facilis assumenda voluptatem rerum. Rerum aut qui rem consectetur velit tenetur voluptate.<br><br></div>',NULL,'2023-05-18 06:13:54','2023-05-18 08:46:00'),(4,4,1,'Autem nemo animi vel optio dolor enim.','eum-voluptatum-facere-quas-veniam-possimus-dolores-incidunt',NULL,'Impedit iusto et assumenda dolorem doloribus. Non at odio inventore unde cupiditate quam minus autem. Autem quia quia ab possimus. Eum non est iste natus est neque adipisci.','<p>Exercitationem ut dicta unde deleniti. Nulla veniam veniam voluptate delectus. Labore cumque ut magnam ea.</p><p>In sit id nesciunt eligendi placeat libero. Voluptatem laboriosam placeat ipsa unde quaerat nihil aliquid. Quisquam reprehenderit sed nulla dolor aut harum. Delectus eligendi repellat quis.</p><p>Nisi neque totam doloribus consequatur dignissimos. Ut dolorem aperiam et non reiciendis libero. Quas cumque quia explicabo consequuntur sit qui minima.</p><p>Est neque omnis quae ad nostrum dolores. Ea minima architecto tenetur saepe itaque quia. Cumque corrupti perspiciatis aliquid et mollitia. Magni sapiente et quia.</p><p>Nobis impedit ut vero maiores rerum est. Sint temporibus aperiam labore et neque. Nemo sed ea voluptatibus illum.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(5,2,1,'Excepturi ea optio.','eius-aperiam-officia-ut-ipsam-et',NULL,'Architecto aliquid quos deleniti dolorem est et. Asperiores quia perspiciatis at eum. Culpa nisi consequuntur consequatur aperiam quia vero.','<p>Ipsa rerum minima soluta beatae et ratione minus et. Dolorem et explicabo tempore. Dolor est ab in eum eum qui. Eligendi ab dicta eos dicta vero culpa.</p><p>Accusantium dignissimos quaerat nesciunt rerum dignissimos. Dolores adipisci iure inventore sit. Aut et magnam odio et eveniet sit facilis. Sed veniam enim dignissimos et rerum.</p><p>Et aut quia in consequatur dolor ratione. Odio dolores pariatur ab. Sunt dolorem accusamus velit quia non.</p><p>Error aspernatur eos repudiandae ratione. Velit minus iure est autem. Perspiciatis voluptate ex enim. Nisi est illum in ut eos repellat.</p><p>Aut occaecati aut aliquam non quidem veritatis doloremque unde. Aliquid et soluta cum voluptatem quasi. Fugiat dignissimos atque beatae veniam laboriosam velit at. Dolorem deleniti consequatur non est est.</p><p>Ipsam quas dolorum iusto delectus deserunt sint. Cupiditate vel adipisci corporis voluptatibus accusamus aperiam. Aut eum cumque fugiat corporis aut. Quaerat nihil harum iusto accusantium consequatur.</p><p>Nisi sit quibusdam labore ut voluptas inventore quia. Dicta facere sequi impedit quia. Iure quia odit rerum sint. Aut iusto consequatur nulla id esse sed.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(6,4,4,'Consequatur velit at.','enim-maxime-id-quia-architecto',NULL,'Iste corporis excepturi earum tempore a. Quasi recusandae quam omnis debitis cupiditate. Consequatur iusto voluptatibus tempore molestiae et. Quis ipsam et eum repudiandae.','<p>Accusamus qui eos delectus rem sit consectetur. Non eos est necessitatibus. Qui perferendis culpa perferendis. Odit ut dolores velit molestiae sunt culpa.</p><p>Eos quis facere id expedita nisi culpa velit. Nisi doloremque ullam nam dicta architecto illo quia. Quidem a at consectetur labore.</p><p>Et facilis facere perferendis id tempora eius dolores. Natus libero cupiditate omnis mollitia. Et qui molestiae sit blanditiis unde modi quis. Dolor mollitia deleniti dolor.</p><p>Sapiente aliquid aut dolorem ut et quae. Voluptas qui sapiente vitae adipisci consequuntur. Modi eum natus nobis eum.</p><p>Ducimus et et ipsam. Iure aut qui et at.</p><p>Ut assumenda dolor saepe qui. Explicabo nihil ut molestiae. Distinctio quis quia earum provident corporis eum explicabo. Est consequatur ea porro quas nihil sunt adipisci.</p><p>Iure nesciunt at doloribus tenetur quasi quia. Vel eum vero voluptatem quisquam.</p><p>Ipsam repellendus aut quia rem porro soluta ea. Facere veritatis commodi quod impedit itaque nam at. Illo ratione quidem fugit ab officiis officia. Ut labore rerum unde minima.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(7,3,5,'Et voluptates itaque numquam deleniti.','hic-ratione-fuga-in-sed-quod-omnis-dolores',NULL,'Quia est facere cumque. Reiciendis nihil debitis velit. Est sunt at rem alias.','<p>Est expedita voluptate occaecati facilis repellendus. Fuga omnis earum at aliquid a optio ipsam ducimus. Minima explicabo non quia sit praesentium rerum. Non natus at magni possimus nesciunt a neque.</p><p>Reprehenderit et repellendus voluptatem explicabo. Iure libero sit corporis veniam soluta. Accusamus quam perspiciatis molestiae dolor qui. Ut magnam labore quia et aut et harum.</p><p>Vel quam qui harum ipsum. Soluta consequatur nisi sunt nihil repudiandae rerum dignissimos. Quia iusto soluta veritatis sed vero natus aspernatur. In quia exercitationem sit qui sit nostrum. Sit nobis dolorum eum odio natus dolor libero.</p><p>Sapiente neque odit quaerat est quis. Non illum ad eius labore. Itaque fugit ea et aliquid nemo est qui id.</p><p>Facilis molestiae qui soluta blanditiis dolorem libero ducimus ea. Nihil ex adipisci odit sit debitis molestiae. Sit repellendus enim beatae quod iusto. Sint nulla odit voluptate quod rerum.</p><p>Voluptates deserunt tenetur libero. Est aut accusantium quia rem. Autem saepe odit possimus aliquam molestiae. Ea nisi magni consequatur nihil eum eos.</p><p>Cumque libero et recusandae itaque sit. Ducimus sequi labore autem incidunt. Maxime omnis vero delectus at. Illum aperiam quidem quasi dolor occaecati fugiat.</p><p>Dignissimos rem cupiditate non fugiat aut ut. Minima ut dolorem quia et ducimus eum quam. Quae repellat architecto sit dolor quidem quia numquam.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(8,3,1,'Molestiae iure et voluptatem fugiat dolor quos animi.','quibusdam-harum-nisi-culpa-aliquam',NULL,'Ducimus temporibus blanditiis non facere culpa vel. Voluptas eum commodi porro porro aut. Eius et et tempora iste quisquam enim omnis ducimus. Ab aut non est vel autem.','<p>Non dolorum enim facilis porro quas provident perferendis. Sapiente sapiente corporis natus. Accusantium et id aut.</p><p>Tempora et aut soluta voluptas unde pariatur. Velit nulla error illo corporis iste aut. Cupiditate officiis aut qui iure dolor blanditiis nostrum atque.</p><p>Vel ut voluptatem voluptas tempore totam quia mollitia. Quia laborum rerum voluptas dolorum cupiditate. Qui dolores eaque repellat. Illo rerum numquam earum omnis.</p><p>Occaecati ad eum accusantium aut quasi consectetur assumenda. Dolores molestiae molestiae nisi reiciendis. Labore sed et qui ab repellendus. Nobis quod sunt voluptate in beatae omnis. Non aliquam fuga vel.</p><p>Et amet voluptatem consequatur alias totam et. Ut velit soluta eius sunt beatae aspernatur. Placeat et accusamus dolorem et.</p><p>Perspiciatis ipsum fugiat ea ut sint asperiores. Repellendus sit rerum fugit natus natus sed sunt. Fugit consequatur doloribus recusandae non.</p><p>Optio necessitatibus adipisci enim repellendus vitae. Voluptas quo velit pariatur libero qui.</p><p>Quo sit ducimus distinctio qui necessitatibus qui. Reprehenderit praesentium natus temporibus rerum nihil natus. Beatae dolorem perferendis et eum nihil.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(9,4,3,'Corrupti eius incidunt et eveniet id aliquam ratione.','animi-et-rerum-temporibus-id-ratione-omnis',NULL,'Soluta architecto ea rem recusandae rerum in neque ab. Dolores sunt alias aliquid alias corporis. Aut ducimus veritatis itaque voluptates ea. Porro voluptatum optio quae ut molestias. Aut ducimus repellendus sit sit minus velit vero sit.','<p>Inventore in adipisci accusantium dolorem quidem corrupti in. Sit aliquam rerum exercitationem doloribus est quo commodi. Rerum id perspiciatis est magni veniam quos. Qui voluptatem beatae esse officiis qui.</p><p>Ut est nobis magni quam alias dicta molestiae. Iste voluptate iure aperiam. Ducimus quia asperiores quia quod nihil labore.</p><p>Nihil debitis dolor delectus dolorum ut. Facere autem voluptate perspiciatis labore eum modi. Dolorum magnam officia illo voluptatem inventore. Laboriosam voluptatem quos voluptate tempore corporis.</p><p>Similique deserunt nostrum amet et quasi est magnam. Rerum consequatur iusto maxime quam.</p><p>Rem veritatis eveniet consequatur nisi. Consequuntur quis sint eaque. Consequatur consectetur rem non sit ad. Et sequi dolor sapiente laudantium.</p><p>Omnis sint unde et cumque. Commodi aut itaque eos et delectus sit. Ab necessitatibus est est ut.</p><p>Quia placeat quo eligendi voluptas sed ut autem. Laboriosam ea et laudantium officia harum. Ducimus sint non voluptatem nulla quisquam.</p><p>Praesentium error sed et ipsa cupiditate veniam est. Voluptate ad et reiciendis aut eum totam voluptatem enim. Et quia voluptas veniam et voluptatibus occaecati.</p><p>Voluptas dicta aut minima quo voluptatem beatae voluptas nulla. Sit facilis et officia deleniti labore. Illum neque est quis autem earum aut est.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(10,2,1,'Consectetur neque quo nemo et similique quam.','et-excepturi-sed-alias-aut-id',NULL,'Excepturi adipisci consequatur consequatur. Ipsa nihil minima necessitatibus non. Vel deserunt eligendi aut veritatis et iure eveniet.','<p>Autem deserunt et qui asperiores accusantium. Non rerum id delectus. Eum eum molestiae et dolorem.</p><p>Eaque officiis dignissimos voluptatem. Nostrum aspernatur qui odio perspiciatis animi aut est est.</p><p>Molestias rerum in exercitationem consequuntur aut. Error sunt voluptatem quas odio labore. Et omnis qui doloremque nesciunt distinctio debitis.</p><p>Enim occaecati omnis molestiae iusto. Laudantium adipisci ea aut est. Fugiat magnam asperiores magni impedit impedit labore.</p><p>Assumenda totam fuga dicta sequi ea. Reprehenderit sapiente quam quis aliquam incidunt aut ad. Ducimus rerum ex voluptate nam consequatur totam. At assumenda necessitatibus doloremque iste dolore nulla animi dolorem.</p><p>Adipisci nostrum ratione exercitationem exercitationem esse. Optio omnis quisquam blanditiis libero. Ut rerum voluptatem sit aliquam pariatur quia.</p><p>Id fugiat autem placeat aut officia expedita distinctio. Necessitatibus beatae quia dicta nisi alias. Aliquam nesciunt non ut explicabo ullam. Est voluptas labore est ab quod. Voluptas in molestias nostrum aliquid fuga.</p><p>Recusandae sint voluptate minus cupiditate explicabo beatae. Magni vel enim dolore qui laborum. Nulla omnis id illum quos dolores qui aut consequatur.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(11,1,5,'Eos consequatur sed iste tenetur.','et-et-voluptatum-ut',NULL,'Dolorum numquam fugiat sunt ut at. Ut voluptatem consequatur soluta debitis architecto velit.','<p>Dicta et qui ut doloremque et temporibus. Atque quo nam sed reprehenderit quisquam necessitatibus. Et a harum et debitis neque quis repudiandae.</p><p>Quis quas qui qui quis nulla sint. Et dolorem et labore esse eius et. Neque et corporis nobis et.</p><p>Ut aliquid sint non ea debitis suscipit. Voluptatem distinctio qui autem. Sit blanditiis doloribus velit molestias. Soluta quas tempore velit aspernatur quia sapiente.</p><p>Aut sunt odit ut maiores. Sequi quo cupiditate quo vel qui qui totam. Eligendi quia quasi aperiam dolorem. Quibusdam voluptates adipisci est. Ut aperiam dolor quia ducimus et.</p><p>Velit neque porro facere itaque voluptate. Reprehenderit et accusamus porro non minima maiores. Delectus quo ullam temporibus eos ullam exercitationem ut.</p><p>Animi accusamus iusto dolorem accusantium. Animi ipsa eum necessitatibus quis possimus dolorem cumque. Placeat id rerum rerum libero deleniti molestiae qui.</p><p>Omnis est rerum aut omnis in. Quo quia ex sit rerum laborum. Ea ab quia consequuntur. Nostrum qui placeat dolorem voluptatum velit ut dicta.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(13,1,2,'Enim ut ut et pariatur culpa.','est-tenetur-iusto-quod-quia-commodi',NULL,'Atque harum nam maxime quis eligendi deleniti aut voluptas. Labore laudantium voluptate facilis qui. Delectus eum est voluptatem soluta laboriosam. Unde deleniti quia sed accusamus omnis.','<p>Est cum qui voluptatibus quidem et itaque. Fuga fuga pariatur adipisci dolores aut eaque consequatur. Eligendi aliquid sapiente rerum a quasi quam modi. Optio blanditiis quaerat quod et.</p><p>Quia nostrum odit vitae quo. Totam quis dolores et ut pariatur deleniti dolorem.</p><p>Corrupti quam ratione aut voluptatibus. Omnis mollitia recusandae voluptatem non non cum vero. Nesciunt et esse veritatis nam et qui praesentium.</p><p>Delectus sint expedita nihil. Qui odit similique ut et neque. Aut atque mollitia eos dolorum totam tempora nesciunt. Asperiores deserunt quae ducimus ea numquam sunt doloribus enim.</p><p>Voluptatibus asperiores ut ad placeat exercitationem et. Rerum molestias commodi ex est illum mollitia velit rem. Sint dolores ut at provident sapiente fugiat nulla eos.</p><p>Quisquam dolorem earum illum dolores rerum vero eos. Quaerat ipsam molestias vitae autem. Nulla dolore dolorum assumenda eum omnis sit quisquam. Et expedita blanditiis deleniti dolor dolor.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(15,2,4,'Et pariatur ut.','voluptatem-ea-autem-praesentium-voluptates-accusantium',NULL,'Soluta ipsum consequatur voluptatum quaerat dicta labore. Sint dolorum dignissimos suscipit necessitatibus. Esse veritatis temporibus molestiae inventore quo.','<p>Earum voluptas doloribus et quod. Eius cupiditate quo impedit quia et. Sit est sit aut.</p><p>Fuga deserunt voluptatum blanditiis molestiae. Omnis dolorem iste tempore sapiente tempore. Sed dolorum voluptas culpa natus.</p><p>Doloremque dolorum sunt et nulla numquam expedita tempora. Minima perferendis autem voluptatem corrupti possimus. Velit sit expedita aut qui molestiae dicta.</p><p>Est et enim sed molestiae nulla. Eum quia sed consequuntur est. Illo perferendis illo quis et vel accusamus minima.</p><p>Nam consequatur rerum ex sint corporis voluptatibus ut. Illo repellendus voluptatem et sunt ut dolorem.</p><p>Eaque tenetur quaerat saepe sed sequi. Aut tempora aliquam distinctio dolor. Soluta est sint nobis sit.</p><p>Est dolorem nulla quia consequatur autem deleniti. Hic et eos et magnam consectetur.</p><p>Quasi numquam facere ratione magni ab sit. Esse aut et vel voluptatem nostrum accusantium. Commodi consequuntur praesentium magni reiciendis officiis.</p><p>Non repellendus tempore ea neque quia. Et repellat id accusantium nobis maxime commodi laborum.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(16,4,3,'Exercitationem veritatis illo est provident.','unde-rem-recusandae-ut-veniam',NULL,'Minus asperiores in incidunt sunt. Inventore vel fuga et voluptatem facilis. Enim porro qui reprehenderit repellendus.','<p>Amet et ut ea mollitia. Aut aut et dolore soluta voluptates.</p><p>Dolore illum quo temporibus corrupti et voluptas. Maxime distinctio est velit est animi harum et.</p><p>Qui quibusdam autem ipsa asperiores perspiciatis ad. Ullam ut aliquam vel ullam necessitatibus id. Ex enim qui adipisci et qui ab. Reprehenderit mollitia voluptatem voluptate.</p><p>Voluptatibus est ut ut. Fugit et neque minus perspiciatis. Tempore quae rerum saepe tempora non qui. Et eaque aliquid et placeat omnis incidunt.</p><p>Occaecati harum eos sed. Id necessitatibus doloribus quia qui dolores aperiam impedit commodi. Id velit enim voluptates in accusamus nostrum.</p><p>Aperiam impedit saepe optio doloribus. Cum adipisci omnis vel ut. Quia dolorem molestias illum voluptatem qui. Perspiciatis consequatur vel ea quidem esse distinctio eligendi.</p><p>Sapiente voluptatibus cumque nemo quos et et. Est vero incidunt sed blanditiis quod iste. Iste dignissimos vitae cumque vel.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(17,4,2,'Est quia facere laborum non.','voluptatem-quis-qui-iure-et-quos-ut-quia',NULL,'Molestiae at laudantium aut eos aut animi. Sed ut magnam modi sunt aut. Dolorum voluptatem accusamus est et. Tempora et culpa est perspiciatis praesentium vero.','<p>Eum porro in non voluptas quo doloribus voluptatem. Dignissimos vitae dolor voluptatum. Delectus illo eum ut distinctio dolore hic. Ex quia neque et fugit voluptatum et est quibusdam.</p><p>Vel fuga sapiente aliquam repudiandae a deserunt quisquam dolor. Atque dolor ea unde. Aut rerum quo incidunt esse ea ab. Doloremque magni autem sint eligendi soluta distinctio in.</p><p>Ut esse alias eius perferendis sint impedit. Quidem perferendis ipsa laboriosam aspernatur voluptatem. Unde occaecati facere nostrum aliquam molestias aut et eligendi. Vitae voluptas ab assumenda rem.</p><p>Rem ex nobis nulla aut molestiae est possimus. Natus hic natus ut minima amet in. Vero voluptas esse aliquam ratione.</p><p>Ad aliquid totam eius aspernatur animi consequatur dolorum exercitationem. Facilis atque mollitia assumenda ullam. Qui et sint fugit repellat.</p><p>Vel excepturi quia debitis qui recusandae. Non nostrum et enim ex ex earum reiciendis.</p><p>Vel quasi et asperiores corrupti inventore non dolores id. Tenetur qui ut quisquam maiores. Vel accusamus velit consequatur sunt velit est soluta. Totam nostrum asperiores enim accusantium eveniet debitis quia.</p><p>Cumque repudiandae occaecati ut facere. Omnis voluptatem minima maxime animi. Nobis odio est praesentium libero et illo repudiandae. A saepe dolores laborum sunt. Qui aut dicta maiores dicta tempora quae sed.</p><p>Dolores velit nihil quis. Animi quo et omnis et ipsam. Et quia ut nesciunt deleniti similique cum.</p><p>Rerum nisi in iusto quisquam mollitia. Omnis ullam architecto quia rem ducimus. Quo ea voluptate vitae expedita sequi eos. Animi quae ut non in qui placeat. Dicta enim exercitationem temporibus et quibusdam officiis.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(18,4,5,'Deserunt quisquam officiis quae doloribus similique repudiandae vitae consequatur.','saepe-consectetur-tenetur-dolores',NULL,'Voluptas accusantium quo minus laboriosam eveniet. Suscipit iusto sunt delectus. Quidem aut dolor ex sit fuga est.','<p>Voluptas voluptas vel dolore itaque quod quis. Ea quia assumenda voluptatem minima quisquam molestiae vel. Quos eius et reiciendis. Nam minus repellat pariatur ut.</p><p>Et vero velit quae molestiae velit animi quos. Repellendus corrupti consequatur magnam nesciunt.</p><p>Quaerat earum modi dolorem in id. Minus sed dolore ut aperiam repudiandae. Asperiores asperiores hic itaque placeat consequatur.</p><p>Culpa officia excepturi autem neque sint quis. Et quos voluptatum veritatis accusantium dolor explicabo eum temporibus. Est necessitatibus non quidem sed at aliquid. Nam ut fugit explicabo harum doloribus facilis.</p><p>Sapiente cupiditate id et rem et. Expedita ut dolores ut omnis provident itaque libero et. Sunt natus voluptates doloribus quisquam. Incidunt aut tempore sint in et voluptatum.</p><p>Eligendi consequatur est omnis. Consequuntur ipsam ut ut. Perferendis non ullam dolorem quasi. Architecto hic et quibusdam doloremque quia.</p><p>Et voluptatibus qui quasi odio nesciunt reprehenderit soluta consectetur. Sapiente ut laborum assumenda sed error. Saepe aut expedita ipsum eum tempore assumenda. Et inventore debitis iste eum.</p><p>Repellat ut voluptatem eaque quae aliquid. Soluta et sint quia minus doloribus dolor id. Porro soluta sapiente nihil commodi. Reprehenderit adipisci debitis et velit consequuntur est fugit. Id commodi iste et non magnam quam.</p><p>Sed incidunt temporibus autem sequi hic ut est et. Consequatur vitae ratione vero sed. Enim cupiditate in dolore molestias mollitia est. Suscipit impedit fugiat reiciendis.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(19,2,4,'Omnis quae dicta non sint ut amet soluta debitis.','nobis-animi-inventore-optio-dolores-voluptas-recusandae-minima',NULL,'Temporibus dolorum et eaque natus laudantium fugit assumenda. Quas sint modi ipsum sit debitis eos. Eos quam facere placeat natus. Provident et veniam aperiam itaque in.','<p>Ipsa aut quas est ut mollitia. Velit nisi atque modi sed illo magni.</p><p>Vel explicabo laudantium eos corrupti ut nesciunt aliquid. Praesentium consequatur natus dolores quisquam. Ut ipsam commodi eos blanditiis. Corrupti incidunt modi accusantium magni hic esse rerum est.</p><p>Eaque fuga earum et molestias sapiente laborum fugiat. Exercitationem id dolorem maxime sit nihil. Nihil ducimus reiciendis iste cum est ratione quae.</p><p>Quasi eius voluptatum adipisci voluptatem. Officia rem perferendis laboriosam. Natus et nihil saepe harum quo. Velit quae quod et non molestias ipsum.</p><p>Quae ut fugit quos veniam similique autem. Rem necessitatibus vitae numquam fugiat quidem qui nihil. Qui quibusdam et nisi autem aut. Voluptas molestiae labore quia consectetur sequi voluptatem.</p><p>Unde reiciendis omnis suscipit similique quod. Et veritatis eum inventore quo asperiores expedita et. Cum dolorem sed quia animi.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54'),(20,4,5,'Voluptatem voluptatem quia magnam odit sint est.','ut-voluptas-itaque-iste-fugiat-quae',NULL,'Saepe sed quia eveniet nisi beatae. Soluta cumque numquam quasi dolores autem. Rem quis quis quam dolore tenetur.','<p>Reiciendis qui earum aspernatur nisi nihil voluptatem odit. Et nulla illum illum tempore beatae unde blanditiis. Aut id sit natus ipsa nostrum dolorem. At officiis vero cumque ea molestiae et.</p><p>Explicabo qui illo dolores. Voluptate enim nulla provident ut corrupti corporis. Corporis assumenda cumque at fugit quia.</p><p>Fugit recusandae nulla aut molestiae dolore. Magni eum eius aliquam. Quia eaque omnis aut et omnis.</p><p>Aut et eius sunt quibusdam eum quia. Velit beatae qui iste. Ea qui recusandae eos vero et eum. Voluptates veritatis enim natus.</p><p>Minima maxime molestiae molestias sed corporis veritatis. Et nihil veritatis odit facilis in quis quia. Aut natus nihil eos hic rerum voluptas ab. Quae necessitatibus est quaerat perspiciatis ea quia soluta repellat.</p><p>Doloremque ut quam quibusdam fuga. Rem recusandae sequi adipisci natus dolores. Iste ut occaecati rerum neque. Animi ducimus consequuntur laborum illum voluptatibus.</p><p>Maiores ratione odit ratione quod sint aut. Aut aliquid amet non repellat et dolorum. Quidem vitae magnam sequi illum. Facere at ut laborum asperiores voluptatem aut aut.</p><p>Consequatur ut aut omnis inventore sint sapiente. Delectus alias consequuntur itaque ducimus. Magnam velit ut quo. Et aut distinctio itaque magni dolor asperiores in.</p><p>Reiciendis velit nisi libero. Libero quod non enim. Quo voluptatum sapiente quasi quae dolorum architecto molestiae. Dolorem quas cupiditate consequatur.</p><p>A molestiae omnis quam ipsum a incidunt beatae. Optio perferendis ducimus placeat quia cupiditate nisi. Voluptatem fuga voluptates assumenda molestiae voluptatibus magnam unde tempore.</p>',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ivan Rifki Nur Alif','ivanrifki','ivanrifkinuralif@gmail.com',NULL,'$2y$10$qew45.BjrAa4QSmwv7zJ0ebZgppnevY018aIWWRLvxiB2jasPe9Wy',NULL,'2023-05-18 06:13:54','2023-05-18 06:13:54',1),(2,'Pandu Firgantoro','aisyah.nurdiyanti','tamba.iriana@example.org','2023-05-18 06:13:54','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','nYIcWQ2tuHkIYjJd0loSg4BZMS7YgM0sAwRMhwIuigKx9qYQ1lGQnZTIuhSH','2023-05-18 06:13:54','2023-05-18 06:13:54',0),(3,'Cici Wastuti','melani.farah','bahuwirya59@example.net','2023-05-18 06:13:54','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','F9tlCz3u42d4wZDkyuxLeSDuSioZSrHCGcfmwIzlAUDssCjRSOaQsaH2qdZr','2023-05-18 06:13:54','2023-05-18 06:13:54',0),(4,'Nardi Simbolon','tira85','hbudiman@example.net','2023-05-18 06:13:54','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2NKlM7eRjTvHrqTKcIqL8U5VoeVem32RWm6Kk7GgCNTJkIRzHbEaockjil8v','2023-05-18 06:13:54','2023-05-18 06:13:54',0),(5,'Umi Yolanda','nmarpaung','paris.pratiwi@example.org','2023-05-18 06:13:54','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Bg78g9Okcl','2023-05-18 06:13:54','2023-05-18 06:13:54',0),(6,'Raihan Nasim Mandala S.E.','hardiansyah.diana','wasita.zelda@example.com','2023-05-18 06:13:54','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1fEc7htd7twdwosf1wjTo4FyUHtpcWmRTq2ZGhFKJvdp9sqfGf6pn64YaOeo','2023-05-18 06:13:54','2023-05-18 06:13:54',0),(7,'Admin','admin','admin@gmail.com',NULL,'$2y$10$/575NvoaijUiPkqY.k885.PIFLLVS3758haLFOxOiZD.7M4k68jIm',NULL,'2023-05-19 15:46:17','2023-05-19 15:46:17',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ivan_blog'
--

--
-- Dumping routines for database 'ivan_blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-20  5:51:06
