-- MySQL dump 10.13  Distrib 8.0.27, for macos11.6 (arm64)
--
-- Host: localhost    Database: mbrunch
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cover_images`
--

DROP TABLE IF EXISTS `cover_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cover_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cover_images_post_id_9f2928b1_fk_posts_id` (`post_id`),
  CONSTRAINT `cover_images_post_id_9f2928b1_fk_posts_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cover_images`
--

LOCK TABLES `cover_images` WRITE;
/*!40000 ALTER TABLE `cover_images` DISABLE KEYS */;
INSERT INTO `cover_images` VALUES (1,'https://i.ibb.co/hDwtk7m/20190226-122330.jpg',0,1),(2,'https://i.ibb.co/M1qPXZq/2020-09-20-18-27-27-039.jpg',0,2),(3,'https://i.ibb.co/hmsMmvv/20200112-134903-HDR.jpg',0,3),(4,'https://images.unsplash.com/photo-1611725450473-d18c7b751c59?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1770&q=80',0,4),(5,'https://images.unsplash.com/photo-1524182576066-1bb979e25342?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',0,5),(6,'https://images.unsplash.com/photo-1531301117079-973e65903da0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aXRhbGlhJTIwZXNwcmVzc298ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=60',0,6),(7,'https://images.unsplash.com/photo-1528207776546-365bb710ee93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',0,7),(8,'https://images.unsplash.com/photo-1634213672726-ce9c6acb91c2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2113&q=80',0,8),(9,'https://pic3.zhimg.com/80/v2-89bdfece424d3d4fc69abaeb1573c0b2_1440w.jpg',0,9),(10,'http://23.251.131.186/~1547470139/globalassets/valueaddedpages/start-the-day-your-way/breakfast-around-the-world/braun-breakfast-world-section07.jpg?w=1536&h=864',0,10),(11,'https://mblogthumb-phinf.pstatic.net/20150612_72/proverbs1639_1434114535706vsIdU_JPEG/%AC%DC%AC%E2%AC%D1%AC%E3%AC%DA%AC%D3%AC%ED%AC%D6-%AC%DC%AC%D1%AC%E2%AC%E4%AC%DA%AC%DF%AC%DC%AC%DA-%AC%D6%AC%D5%AC%D1-%AC%D2%AC%DD%AC%DA%AC%DF%AC%ED-%AC%DF%AC%F1%AC%DE%AC%DC%AC%D1-960135.jpeg?type=w2',0,11),(12,'https://i.ibb.co/L0QkmW1/image.png',0,12),(13,'https://i.ibb.co/q5D9F67/12931431516-20211105105904200.jpg',0,13),(14,'https://i.ibb.co/sKDh95h/2021-11-07-5-39-30.png',0,14),(15,'https://image.shutterstock.com/image-photo/sunny-autumn-scene-vorderer-gosausee-600w-1064150654.jpg',0,15);
/*!40000 ALTER TABLE `cover_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'contenttypes','contenttype'),(8,'posts','coverimage'),(9,'posts','post'),(10,'posts','posttag'),(2,'sessions','session'),(3,'users','like'),(4,'users','tag'),(5,'users','user'),(7,'users','userimage'),(6,'users','usertag');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-08 09:12:05.562601'),(2,'contenttypes','0002_remove_content_type_name','2021-11-08 09:12:05.591523'),(3,'posts','0001_initial','2021-11-08 09:12:05.632140'),(4,'users','0001_initial','2021-11-08 09:12:05.758411'),(5,'posts','0002_initial','2021-11-08 09:12:05.820242'),(6,'sessions','0001_initial','2021-11-08 09:12:05.834060');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_user_id_0899754c_fk_users_id` (`user_id`),
  KEY `likes_post_id_84cc5834_fk_posts_id` (`post_id`),
  CONSTRAINT `likes_post_id_84cc5834_fk_posts_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `likes_user_id_0899754c_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,2,1),(2,3,1),(3,5,1),(4,6,1),(5,5,2),(6,6,2),(7,8,2),(8,11,2),(9,14,2),(10,3,3),(11,6,3),(12,9,3),(13,1,4),(14,2,4),(15,3,4),(16,7,4),(17,9,4),(18,10,4),(19,11,4),(20,12,4),(21,2,5),(22,3,5),(23,6,5),(24,10,5),(25,12,5),(26,14,5);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `sub_title` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `post_user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_post_user_id_09cc740a_fk_users_id` (`post_user_id`),
  CONSTRAINT `posts_post_user_id_09cc740a_fk_users_id` FOREIGN KEY (`post_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'2021-11-08 09:13:32.356950','2021-11-08 09:13:32.357150','실크 노동자들의 주린 배를 위로해주던 든든한 브런치','프랑스 리옹식 샐러드','<div> 얼마나 유명하면 지역을 대표하는 요리로 샐러드가 꼽혔을까. 일반적으로 샐러드하면 식사에 곁들여지는 가볍게 먹는 음식이라고 생각하지만 리옹식 샐러드는 다르다. <br><br>\n<a href=\"https://ibb.co/Qrt1ZbK\"><img src=\"https://i.ibb.co/hDwtk7m/20190226-122330.jpg\" alt=\"20190226-122330\" border=\"0\" /></a>\n<br><br>\n 일반적으로 리옹식 샐러드는 새콤한 체리토마토와 올리브, 한 입 크기로 손질한 샐러드용 채소에 유자청을 베이스로 한 새콤달콤한 소스를 곁들인다. 또, 베이컨을 볶아 나온 기름에 올리브유를 넣고 그 기름에 크루통을 익혀 바삭함과 고소함을 추가한 뒤 두툼한 베이컨 혹은 햄을 올려준다. (사진 속에는 베이컨 대신 테린(Terrine)이 올라갔다.) 마지막으로 노른자가 온전히 살아있는 수란을 올려주면 완성이다. <br>\n 샐러드가 식탁 위로 올라오면 수란을 반으로 갈라 샛노란 노른자를 샐러드와 버무려 한 입, 베이컨을 썰어 또 한입. 이렇게 든든한 샐러드를 누가 사이드메뉴로 먹을까. 역시 미식을 추구하는 프랑스인들은 샐러드도 진심으로 대하는 듯 하다.</div>\n<br>\n<br>\n<div class = “where”> 라 씨에트, 서울특별시 서초구 서래로 6길 6 </div>\n',0,2),(2,'2021-11-08 09:13:32.359863','2021-11-08 09:13:32.359878','유럽식 가정식을 한국인 셰프가 풀어낸 올데이 브런지','플랩잭 팬트리 - Chef’s Favorite ','<div> 브런치는 바쁜 일상 탓에 거르게 된 아침과 이른 점심 사이에 먹을 끼니지만 꼭 그 때만 먹어야 하는 것은 아니다. 그렇게 탄생한게 바로 ‘플랩잭 팬트리’의 올데이 브런치, ‘Chef’s Favorite’이다. <br><br>\n<a href=\"https://ibb.co/YdvfrPv\"><img src=\"https://i.ibb.co/M1qPXZq/2020-09-20-18-27-27-039.jpg\" alt=\"2020-09-20-18-27-27-039\" border=\"0\"></a><br /><a target=\'_blank\' href=\'https://imgbb.com/\'></a>\n<br><br>\n 닭고기를 다지고 바삭하게 볶아 만든 치킨 플레이크가 얹어진 샐러드가 발사믹 식초 소스를 품은 채 접시 한 가운데 담겨 있고, 따뜻한 토스트, 든든한 소시지와 베이컨, 토마토를 품고 있는 폭신하고 촉촉한 오믈렛, 파마산 치즈가 올라간 그린빈과 새송이버섯 볶음으로 샐러드를 감싸고 있다. <br>\n 브런치라는 이름에 걸맞게 너무 가볍지도 무겁지도 않게 든든한 포만감을 느낄 수 있었다. 특히 좋았던 점은 춘천을 관통하는 공지천을 바라보며 볼 수 있었다는 점이다. <br>\n<a href=\"https://ibb.co/mhn8Vs7\"><img src=\"https://i.ibb.co/tY0XTf5/20200920-181613.jpg\" alt=\"20200920-181613\" border=\"0\"></a>\n<br>\n아늑한 실내 인테리어와 탁 트인 공지천뷰, 든든한 브런치는 완벽한 주말을 보내기에 충분한 소재들이었다. </div>\n<br>\n<br>\n<div class=”where”> 플랩잭 팬트리, 강원도 춘천시 남춘로 45번길 6 1층 </div>\n',0,2),(3,'2021-11-08 09:13:32.361152','2021-11-08 09:13:32.361165','무거운 아침과 가벼운 점심 사이의 적절한 타협점','뉴질랜드 스토리 - 모로칸 치킨 샌드위치','<div> 익숙치 않은 모로코의 풍미를 느끼기에 충분한 요리였다. (가게 이름은 뉴질랜드 스토리인데..?) 예전에 듣기론 매번 컨셉이 바뀐다고 했는데 이번 컨셉은 모로코였나보다. 아기자기하면서 이국적인 소품들과 곳곳에 자리한 식물들은 공간에 머물고 있으면서 한없이 마음이 편해지는 느낌을 주었다. 마치 쿠바 혹은 멕시코의 안락한 가정집에서 쉬는 느낌? 언제 와도 편히 쉬다갈 수 있는 훌륭한 브런치 하우스인 것 같다. <br><br>\n<a href=\"https://ibb.co/P6xY688\"><img src=\"https://i.ibb.co/hmsMmvv/20200112-134903-HDR.jpg\" alt=\"20200112-134903-HDR\" border=\"0\"></a><br /><a target=\'_blank\' href=\'https://freeonlinedice.com/\'></a>\n<br><br>\n 겉은 바삭하고 속은 부드러운 치아바타가 직접 만든 모로칸 크림소스로 요리한 닭안심 요리, 구운 양파와 루꼴라, 모짜렐라 치즈를 품어 탄생한 파니니는 혀를 즐겁게 하며 너무 과하지 않게 포만감을 느낄 수 있게 해주었다. <br>\n 하나 아쉬운건 이미 동네 맛집이었고 점점 입소문을 타고 있어 오픈 10분 만에 대기줄이 생긴다는 점일까. 부지런해야 맛 볼 수 있는 브런치라니. 느긋하게 생활해야 만날 수 있는 브런치의 기본 속성을 부정하는 것 같다. </div>\n<br>\n<br>\n<div class=”where”> 뉴질랜드 스토리, 서울특별시 송파구 석촌호수로 268 </div>\n',0,2),(4,'2021-11-08 09:13:32.362052','2021-11-08 09:13:32.362063','향신료의 나라, 인도의 브런치','','<img alt=”india” src=”https://images.unsplash.com/photo-1611725450473-d18c7b751c59?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1770&q=80” />\n<p>새로운 하루를 시작하면서 아침 식사를 든든히 해야 하루를 잘 날 수 있다는 사람들이 있습니다. 꽤나 오랜 시간동안 한국인에게는 든든하고 따뜻한 밥 한끼를 먹는 게 정석으로 여겨졌을 테지만, 요즘은 그렇지만도 않습니다. 아침 메뉴로 쌉싸래한 커피 한잔과 따끈한 토스트 한 조각이 자주 보이기 시작했으니까요. 오늘 이 순간에도 전 세계의 사람들이 각자의 문화를 담은 아침 식사를 즐기고 있을겁니다. 그 중에서 오늘은 <strong>인도</strong>로 가보려고 합니다.</p>\n<br>\n<img alt=”india dosa” src=”https://static.vecteezy.com/system/resources/previews/002/440/845/non_2x/crispy-masala-dosa-south-india-style-free-photo.jpg” />\n<br>\n<p>인도에서는 크레페나 팬케이크와 비슷하게 생긴 도사와 야채 스튜인 삼바르, 그리고 코코넛 처트니(소스)를 곁들여 아침 식사로 즐겨먹습니다.<br> 도사는 인도 남부 지방에서 유래한 음식으로 발효시킨 쌀과 검은 렌틸콩 반죽을 동그랗고  얇게 부쳐 만드는 음식입니다. 가장 기본적인 도사는 반죽만으로 구워 만들지만, 삶은 감자나 익은 채소와 같은 다양한 재료로 속을 채우기도 합니다.</p>\n',0,4),(5,'2021-11-08 09:13:32.362886','2021-11-08 09:13:32.362897','Brunch Classic, 잉글리시 브랙퍼스트','','<img alt=”English breakfast” src=”https://images.unsplash.com/photo-1524182576066-1bb979e25342?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80” />\n<p>인스타그래머블한 아침식사하면 바로 머리에 떠오르는 잉글리시 브랙퍼스트! 최근 많이 늘어난 브런치 카페를 가면 쉽게 볼 수 있는 메뉴입니다. 이름만 봐도 알아차릴 수 있듯, 잉글랜드 지방에서 흔히 먹는 아침식사이죠. 잉글리시 브랙퍼스트는 일반적으로 스크램블 에그(혹은 취향에 따라 서니사이드업), 소세지, 블랙 푸딩, 베이컨, 버섯, 베이크드빈, 해시브라운, 토마토 등으로 구성됩니다.</p>\n<br>\n<h4>How to make 잉글리시 브랙퍼스트?</h4>\n<p>\n  <ul>\n    <li>1. 해시브라운을 오븐에 굽습니다.</li>\n    <li>2. 팬에 기름을 두르고 소세지도 굽습니다.</li>\n    <li>3. 돼지피로 만든 블랙 푸딩도 기름을 두른 팬에 굽습니다.</li>\n    <li>4. 베이컨도 버섯도 기호에 맞게 굽고 볶습니다.</li>\n    <li>5. 취향에 맞게 계란을 서니사이드업 혹은 스크램블 에그 혹은 완숙으로 조리합니다.</li>\n    <li>6. 베이크드빈을 살짝 끓여줍니다.</li>\n    <li>7. 토스트를 구운 뒤 버터를 살짝 발라줍니다.</li>\n    <li>8. 조리한 모든 재료를 하나의 접시에 예쁘게 담아줍니다.</li>\n  </ul>\n<br>\n간단하쥬? 조리법을 적어놓고 보니 마치 우리나라의 밀키트를 보는 것 같네요ㅎㅎ\n</p>',0,4),(6,'2021-11-08 09:13:32.363541','2021-11-08 09:13:32.363553','여행, 그리고 아침의 기록','','<img alt=”italy espresso” src=”https://images.unsplash.com/photo-1531301117079-973e65903da0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aXRhbGlhJTIwZXNwcmVzc298ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=60” />\n<p>이탈리아 여행을 가서 가장 인상깊었던 부분 중 하나는 이탈리아의 아침 풍경이었다. 대부분의 베낭 여행객이 그렇듯 아침 일찍부터 여행 채비를 하고 나선 이탈리아의 아침은, 우리나라와 똑같은 출근길이었음에도 사뭇 달랐다. 특히 카페의 풍경이 특별해보였는데, 바에 서서 에스프레소에 각설탕 하나, 혹은 담백한 카푸치노에 바삭하고 고소한 크로와상을 곁들여 가볍게 식사를 하는 모습이 매우 인상깊었다.</p>\n<br>\n<img alt=”italy croissant” src=”https://images.unsplash.com/photo-1450862479751-84eeaf2fcca4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1474&q=80” />\n<br>\n<p>무심하면서도 익숙하게 주문하는 이탈리아인들 사이에서 그들의 문화와 동화되고 싶은 마음에 에스프레소 한 잔, 그리고 크로와상을 시켰다. 나이가 지긋한 바리스타가 내려준 에스프레소는 생각보다 훨씬 더 맛있었고, 음식을 통해 새로운 문화를 경험한 것 같아 즐거웠다.</p>\n',0,4),(7,'2021-11-08 09:13:32.364496','2021-11-08 09:13:32.364508','한국에서도 이런 브런치를!','내가 가본 최고의 브런치 집','  <img src=\"https://images.unsplash.com/photo-1528207776546-365bb710ee93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80\" alt=\"pancakemain\">\n  <p><strong>리틀넥</strong> 뉴욕까지 가는 빠른 방법.<br>\n<img src=\"https://i.ibb.co/MRPgCq2/Kakao-Talk-Photo-2021-11-06-18-12-01.jpg\" alt=\"pancake\">\n    한국에서도 브런치를 쉽게 즐길 수 있는 리틀넥에 다녀왔습니다.<br> 평소 웨이팅이 길어, 마음속에 담아두기만 했던 가게였는데요.<br> 브레이크타임이 끝나고 맞춰서 방문하니 웨이팅을 하지 않고 들어 갈 수 있었습니다!<br> 우연인지 운명인지 기다리면서 앉고싶던 자리에 안내를 받아서 즐거운 식사를 할 수 있었습니다.</p>\n    <img src=\"https://i.ibb.co/hHdZCSd/1616862585515.jpg\" alt=\"litleneck\">\n  <p>팬케이크(14,000원) + 고구마 프라이즈 (8,000원) + 부라따 샐러드(15,000원)<br>\n    이것저것 먹고 싶은대로 하나씩 주문을 했습니다.<br>\n    스테크에 함께 나오는 매쉬드 포테이토는 굉장히 부드러웠으며, 팬케이크의 촉촉함은 잊을 수 없는 맛이었습니다.<br>\n    뉴욕까지 가는 빠른방법. 리틀넥 이었습니다.<br>\n    주소:서울 용산구 한남대로27길 66\n  </p>\n',0,5),(8,'2021-11-08 09:13:32.365353','2021-11-08 09:13:32.365364','에그 인 헬에 대하여','','  <img src=\"https://images.unsplash.com/photo-1634213672726-ce9c6acb91c2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2113&q=80\" alt=\"egginhell\">\n  <p>영양소가 풍부한 계란으로 만드는 요리 . 에그인 헬 레시피를 소개합니다.</p>\n    <img src=\"https://images.unsplash.com/photo-1498654077810-12c21d4d6dc3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2340&q=80\" alt=\"egg\">\n  <ul>\n    <li>1. 달군 팬에 올리브유를 2큰술 두르고 야채를 볶아줍니다.</li>\n    <li>2. 입맛에 따라 소금간을 하고, 다진소고기를 200g 볶아줍니다.</li>\n    <li>3. 토마토소스 400g과 물 반컵(100ml)를 넣고 약불에 끓여줍니다.</li>\n    <li>4. 소스가 바글바글 끓어오르면 달걀3개를 노른자가 터지지 않게 잘 깨서 올려줍니다.</li>\n    <li>5. 파마산치즈를 듬뿍 뿌린 뒤, 송송 썬 청양고추 1개, 바질잎 6~7장을 얹어 완성 해 주세요.</li>\n<li>6. 취향에 따라 빵과 함께 드셔보세요!.</li>\n    </ul>\n',0,5),(9,'2021-11-08 09:13:32.366092','2021-11-08 09:13:32.366105','중국 하얼빈에 아침시장에서 찾은 보물','중국의 아침','<p>새벽부터 찾아간 아침시장 이곳에서 찾아낸 나의 보물들을 소개해보려 한다.</p>\n<br>\n<p>인산인해한 인파속에서 ‘촤아아아아!!\'하는 소리와 함께 내눈과 귀를 사로잡은 그녀석은</p>  \n<img art=”china” scr=”https://pic3.zhimg.com/80/v2-89bdfece424d3d4fc69abaeb1573c0b2_1440w.jpg”/>\n<br>\n<p>기름에 실을 튀긴다는 이름에 요우티아오(油条) 모양은 한국에 꽈배기와 비슷하지만 실제론 전혀 다른 음식! 담백함과 쫀득함으로 내입맛을 돋구았다. </p>\n<br>\n<p>두번째로 발견한 보물 씨앤또우푸나우(咸豆腐脑) 짭조름한 순두부 요리 !</p>\n<img art=”china” scr=”https://pic2.zhimg.com/80/v2-f379298d8216c8fc909ecde03e968f31_1440w.jpg”/>\n<p>간장,식초,기름,목이버섯 베이스로한 양념을 모락모락 연기나는 순두부에 부어 먹는 요리\n한국에서는 없는 신비로운 맛이다. 중국요리는 대체로 기름이 많이 들어가면서도 놀라운건 \n담백함 만큼은 무조건 사로잡는다. </p>\n<br>\n<p>마지막으로 소개해드릴 보물은.. 어린시절 시골에 가면 손자들 왔냐고 활짝 웃으시며\n반겨주시는 할머니가 생각나는 그 맛에 소유자 훈둔(混沌) 이다.</p> \n<img art=”china” scr=”https://pic1.zhimg.com/80/v2-e20b568ae36a0a02bb72e73c393866e0_1440w.jpg”/>\n<p>농후한 사골육수에 기호에 따라 양고기,소고기,돼지고기,계란부추 등으로 속을 채운 만두를 \n넣고 고수,후추로 간을 맞춰 먹는 요리! </p>\n<br>\n<p>세상은 넓고 멋진 아침은 많다!</p>',0,1),(10,'2021-11-08 09:13:32.366913','2021-11-08 09:13:32.366925','스웨덴 바이킹의 아침 ‘스모르가스\'','스웨덴의 아침','<img src=”http://23.251.131.186/~1547470139/globalassets/valueaddedpages/start-the-day-your-way/breakfast-around-the-world/braun-breakfast-world-section07.jpg?w=1536&h=864” width=”250”>\n<br><strong>스웨덴</strong>에서는 스웨덴에서는 생선, 차가운 고기, 치즈를 층층이 쌓아 올린 오픈 페이스 샌드위치인 스모르가스가 대표적인 아침 식사입니다. 신선하게 즐기기 위해 오이, 피망, 양파 그리고 피클과 같은 채소를 토핑으로 올립니다. 전통적인 아침 식사 외에도, 오트밀, 씨리얼, 뮤즐리와 같은 국제적인 아침 식사도 흔히 즐기는 메뉴입니다. \n<br><br>',0,1),(11,'2021-11-08 09:13:32.367545','2021-11-08 09:13:32.367557','러시아에서 블린을 모른다면 간첩!','러시아의 아침','<img src=”https://mblogthumb-phinf.pstatic.net/20150612_72/proverbs1639_1434114535706vsIdU_JPEG/%AC%DC%AC%E2%AC%D1%AC%E3%AC%DA%AC%D3%AC%ED%AC%D6-%AC%DC%AC%D1%AC%E2%AC%E4%AC%DA%AC%DF%AC%DC%AC%DA-%AC%D6%AC%D5%AC%D1-%AC%D2%AC%DD%AC%DA%AC%DF%AC%ED-%AC%DF%AC%F1%AC%DE%AC%DC%AC%D1-960135.jpeg?type=w2”>\n<br>\n<p>블린은 러시아에서 당당히 대표 브런치라고 말할 수 있는 아침메뉴입니다.<br>\n마슬레니짜에서 유래됐다고 하는데... 전병같이 반죽을 얇고 동그랗게 만들어 구워내는 팬케이크와 같은 요리입니다.<br>\n블린에는 연유, 잼, 연어알, 캐비어, 쿨. 햄, 야채, 초콜릿, 과일 등등을 기호에 맞게 곁들여 먹습니다.</p>\n',0,1),(12,'2021-11-08 09:13:32.369633','2021-11-08 09:13:32.369646','광안대교 뷰를 즐기며 먹는 브런치','#광안리 쉬마잇비','<img src=\"https://i.ibb.co/L0QkmW1/image.png\" alt=\"image\" border=\"0\">\n<p><b>광안대교뷰가 아름다운 카페로 브런치와 베이커리를 즐길 수 있는곳입니다.</b><br>\n대표메뉴는 바스락한 타르트 도우에 노란 부분이 고소한 ‘에그 타르트\'와 부드러우면서도 단맛이 느껴지는 달걀 샌드위치인 ‘타마고산도\'.<br>다양한 브런치 메뉴도 준비되어 있습니다.</p><br>\n<img src=\"https://i.ibb.co/NsPD6hC/IMG-2199.jpg\" alt=\"IMG-2199\" border=\"0\">\n<p><b>제가 주문한 미트파이와 타마고산도</b><br>먹음직스러운 브런치 메뉴들. 정말 맛있게 먹었습니다. 특히 타마고산도는 제 입맛에 너무 맞았습니다. 평소 알고있던, 익숙한 맛인데 너무 맛있는!</p>\n<br>\n<img src=\"https://i.ibb.co/cJPVzhg/image.png\" alt=\"image\" border=\"0\">\n<br>\n<p>창가자리에 앉으면 광안대교와 바다뷰가 보입니다.</p>\n<br>\n<img src=\"https://i.ibb.co/G9wrDsB/2021-11-07-12-51-06.png\" alt=\"2021-11-07-12-51-06\" border=\"0\">\n<p>카페 홈페이지 : https://www.instagram.com/shemightbe___</p>\n',0,3),(13,'2021-11-08 09:13:32.370180','2021-11-08 09:13:32.370191','호치민에서 먹는 색다른 쌀국수 Phở Quỳnh','#호치민 아침','<img src=\"https://i.ibb.co/q5D9F67/12931431516-20211105105904200.jpg\" alt=\"12931431516-20211105105904200\" border=\"0\" width=\"900\">\n<p>Phở Quỳnh 들어가기전에 한 컷!<br>\n  <p>팜응우라오 거리에서 쌀국수를 맛있게 요리하는 곳이다.<br>쇠고리 쌀국수인 \'퍼보\'를 전문으로 한다. 쇠고기 쌀국수는 퍼보 찐(삶은 쇠고기 편육을 올린 쌀국수)과 퍼보따이 (살짝 데친 쇠고기를 올린 쌀국수)로 구분된다.<br> 토마토와 쇠고기 스튜에 쌀국수를 넣은 \'퍼보코\'를 포함해 모두 7종류의 쌀국수를 맛볼 수 있다.<br>\n</p>\n<img src=\"https://i.ibb.co/0cDC3WG/12931418628-20211105105904197.jpg\" alt=\"12931418628-20211105105904197\" border=\"0\" width=\"400\">\n<img src=\"https://i.ibb.co/b7z1zQf/12931431581-20211105105904191.jpg\" alt=\"12931431581-20211105105904191\" border=\"0\" width=\"400\">\n<p>친구는 퍼보, 나는 퍼보코를 주문했다.<br>결과는 환상적! 정석 퍼보도 맛있었고, \'색\'다른 쌀국수 또한 맛이 얼큰하이 일품이었다.</p>\n<img src=\"https://i.ibb.co/bbqNDMT/2021-11-07-4-43-46.png\" alt=\"2021-11-07-4-43-46\" border=\"0\">\n<p>주소 : 323 Phạm Ngũ Lão, Phường Phạm Ngũ Lão, Quận 1, Thành phố Hồ Chí Minh, 베트남</p>\n',0,3),(14,'2021-11-08 09:13:32.370725','2021-11-08 09:13:32.370738','방배동카페 카페람베리','#카페람베리','<img src=\"https://i.ibb.co/sKDh95h/2021-11-07-5-39-30.png\" alt=\"2021-11-07-5-39-30\" border=\"0\">\n<p>카페 람베리는 지하철 9호선 구반포역 1번 출구에서 약 450m 거리입니다.<br> 방배동 카페골목 초입에 있습니다. 언덕이 시작하기 전 이수교차로 부근에 위치해 있습니다.</p>\n<br>\n<img src=\"https://i.ibb.co/pPnjPc7/2021-11-07-5-44-41.png\" alt=\"2021-11-07-5-44-41\" border=\"0\">\n<p><b>크로크 마담(croque madama)</b><br>\n  신선한 채소 샐러드와 계란을 곁들인 크로슈므슈와 비슷한 메뉴입니다.<br>계란 이불을 덮은 브런치라고 소개받았습니다. 카페 람베리의 베스트 메뉴 중 하나입니다.\n</p>\n<img src=\"https://i.ibb.co/TMQstGR/2021-11-07-5-45-59.png\" alt=\"2021-11-07-5-45-59\" border=\"0\">\n<p><b>한우 수제 햄버그스테이크</b><br>\n  깔끔한 토마토소스와 생 토마토를 곁들인 한우 햄버그스테이크는 속도 편하고 맛있습니다. 빵으로 탄수화물도 채워주니 든든했습니다.\n</p>\n<img src=\"https://i.ibb.co/pj71q02/2021-11-07-5-42-46.png\" alt=\"2021-11-07-5-42-46\" border=\"0\">\n<p> 주소 : 서울 서초구 방배중앙로 214 1층 Cafe Lembellir 카페람베리</p>\n',0,3),(15,'2021-11-08 09:13:32.371336','2021-11-08 09:13:32.371348','방배동카페 카페람베리','#카페람베리','<img src=\"https://i.ibb.co/sKDh95h/2021-11-07-5-39-30.png\" alt=\"2021-11-07-5-39-30\" border=\"0\">\n<p>카페 람베리는 지하철 9호선 구반포역 1번 출구에서 약 450m 거리입니다.<br> 방배동 카페골목 초입에 있습니다. 언덕이 시작하기 전 이수교차로 부근에 위치해 있습니다.</p>\n<br>\n<img src=\"https://i.ibb.co/pPnjPc7/2021-11-07-5-44-41.png\" alt=\"2021-11-07-5-44-41\" border=\"0\">\n<p><b>크로크 마담(croque madama)</b><br>\n  신선한 채소 샐러드와 계란을 곁들인 크로슈므슈와 비슷한 메뉴입니다.<br>계란 이불을 덮은 브런치라고 소개받았습니다. 카페 람베리의 베스트 메뉴 중 하나입니다.\n</p>\n<img src=\"https://i.ibb.co/TMQstGR/2021-11-07-5-45-59.png\" alt=\"2021-11-07-5-45-59\" border=\"0\">\n<p><b>한우 수제 햄버그스테이크</b><br>\n  깔끔한 토마토소스와 생 토마토를 곁들인 한우 햄버그스테이크는 속도 편하고 맛있습니다. 빵으로 탄수화물도 채워주니 든든했습니다.\n</p>\n<img src=\"https://i.ibb.co/pj71q02/2021-11-07-5-42-46.png\" alt=\"2021-11-07-5-42-46\" border=\"0\">\n<p> 주소 : 서울 서초구 방배중앙로 214 1층 Cafe Lembellir 카페람베리</p>\n',0,3);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_tags`
--

DROP TABLE IF EXISTS `posts_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_tags_post_id_f1d664f2_fk_posts_id` (`post_id`),
  KEY `posts_tags_tag_id_5b70f6dd_fk_tags_id` (`tag_id`),
  CONSTRAINT `posts_tags_post_id_f1d664f2_fk_posts_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `posts_tags_tag_id_5b70f6dd_fk_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_tags`
--

LOCK TABLES `posts_tags` WRITE;
/*!40000 ALTER TABLE `posts_tags` DISABLE KEYS */;
INSERT INTO `posts_tags` VALUES (1,1,17),(2,1,18),(3,1,19),(4,1,20),(5,1,21),(6,1,22),(7,1,23),(8,1,24),(9,2,24),(10,2,25),(11,2,26),(12,2,27),(13,2,28),(14,2,29),(15,2,30),(16,2,31),(17,2,52),(18,2,63),(19,2,71),(20,3,32),(21,3,33),(22,3,34),(23,3,35),(24,3,36),(25,3,37),(26,3,38),(27,3,39),(28,3,56),(29,3,88),(30,4,40),(31,4,41),(32,4,42),(33,4,43),(34,4,44),(35,4,45),(36,4,46),(37,5,47),(38,5,48),(39,5,49),(40,5,50),(41,5,51),(42,5,52),(43,5,53),(44,5,54),(45,5,55),(46,5,56),(47,5,57),(48,5,58),(49,5,69),(50,5,70),(51,5,22),(52,5,30),(53,5,24),(54,5,25),(55,6,59),(56,6,60),(57,6,61),(58,6,62),(59,6,63),(60,6,64),(61,6,42),(62,6,84),(63,7,24),(64,7,65),(65,7,66),(66,7,67),(67,7,68),(68,7,89),(69,8,57),(70,8,58),(71,8,69),(72,8,70),(73,9,71),(74,9,72),(75,9,73),(76,9,74),(77,9,63),(78,10,75),(79,10,76),(80,10,77),(81,10,90),(82,11,78),(83,11,67),(84,11,79),(85,11,90),(86,11,22),(87,12,80),(88,12,81),(89,12,82),(90,12,83),(91,12,84),(92,12,70),(93,12,34),(94,12,91),(95,12,92),(96,13,85),(97,13,86),(98,13,87),(99,13,93),(100,13,94),(101,13,55),(102,14,84),(103,14,66),(104,14,90),(105,14,55),(106,14,63),(107,14,34),(108,14,70);
/*!40000 ALTER TABLE `posts_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'육식지향'),(2,'방문기록'),(3,'리뷰'),(4,'비건'),(5,'유럽전문가'),(6,'푸드칼럼니스트'),(7,'미식가'),(8,'캠핑마니아'),(9,'빵순이'),(10,'Meet_Lover'),(11,'요리고수'),(12,'맛집 블로거'),(13,'맥주'),(14,'여행'),(15,'애주가'),(16,'고기'),(17,'프랑스'),(18,'리옹'),(19,'가정식'),(20,'유자청소스'),(21,'포치드에그'),(22,'베이컨'),(23,'테린'),(24,'유럽식'),(25,'토스트'),(26,'소시지'),(27,'토마토오믈렛'),(28,'오믈렛'),(29,'그린빈복음'),(30,'버섯볶음'),(31,'발사믹'),(32,'모로칸'),(33,'모로코'),(34,'샌드위치'),(35,'모로코식 크림소스'),(36,'루꼴라'),(37,'양파'),(38,'모짜렐라 치즈'),(39,'닭안심'),(40,'인도'),(41,'식문화'),(42,'식도락 여행'),(43,'반죽'),(44,'도사'),(45,'삼바르'),(46,'코코넛 처트니'),(47,'영국'),(48,'잉글리시 블랙퍼스트'),(49,'스크램블드 에그'),(50,'서니사이드 업'),(51,'블랙 푸딩'),(52,'버섯'),(53,'베이크드 빈'),(54,'해시 브라운'),(55,'토마토'),(56,'인스타그래머블'),(57,'간단한 음식'),(58,'조리법'),(59,'이탈리아'),(60,'커피'),(61,'에스프레소'),(62,'카푸치노'),(63,'빵'),(64,'크루아상'),(65,'서울'),(66,'스테이크'),(67,'팬케이크'),(68,'매쉬드 포테이토'),(69,'레시피'),(70,'계란'),(71,'중국'),(72,'순두부'),(73,'만두'),(74,'훈둔'),(75,'스페인'),(76,'연어'),(77,'치즈'),(78,'러시아'),(79,'달콤'),(80,'부산'),(81,'광안리'),(82,'바다뷰'),(83,'오션뷰'),(84,'카페'),(85,'동남아'),(86,'베트남'),(87,'쌀국수'),(88,'춘천'),(89,'뉴욕식'),(90,'채소'),(91,'타마고산도'),(92,'에그타르트'),(93,'퍼보'),(94,'퍼보코'),(95,'샐러드');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_images`
--

DROP TABLE IF EXISTS `user_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_images_user_id_662426e9_fk_users_id` (`user_id`),
  CONSTRAINT `user_images_user_id_662426e9_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_images`
--

LOCK TABLES `user_images` WRITE;
/*!40000 ALTER TABLE `user_images` DISABLE KEYS */;
INSERT INTO `user_images` VALUES (1,'https://image.shutterstock.com/image-photo/young-smiling-asian-man-relaxing-600w-1746263210.jpg',1),(2,'https://image.shutterstock.com/image-photo/young-business-man-working-home-600w-1654831870.jpg',2),(3,'https://image.shutterstock.com/image-photo/portrait-young-handsome-man-smiling-600w-213159280.jpg',3),(4,'https://image.shutterstock.com/image-photo/portrait-cheerful-businesswoman-sitting-table-600w-307232669.jpg',4),(5,'https://image.shutterstock.com/image-photo/portrait-young-beautiful-cute-cheerful-600w-666258808.jpg',5);
/*!40000 ALTER TABLE `user_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `author_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `author_job` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `author_intro` longtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `author_name` (`author_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2021-11-08 09:13:00.080626','2021-11-08 09:13:00.080831','qudans@naver.com','Db12345!','유개발','중국개발자','초콜릿애호가'),(2,'2021-11-08 09:13:00.083720','2021-11-08 09:13:00.083735','sanghyun@naver.com','Db12345!','권개발','PM개발자','민주적인 사다리타기'),(3,'2021-11-08 09:13:00.084459','2021-11-08 09:13:00.084471','youshin@naver.com','Db12345!','김개발','프로개발자','플래티넘 VIP'),(4,'2021-11-08 09:13:00.085614','2021-11-08 09:13:00.085625','yeonjung@naver.com','Db12345!','장개발','명탐정개발자','아직 위니또 못찾음'),(5,'2021-11-08 09:13:00.086200','2021-11-08 09:13:00.086211','soyoon@naver.com','Db12345!','박개발','미식개발자','맛집 선택 백전백승');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_tags`
--

DROP TABLE IF EXISTS `users_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tag_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_tags_tag_id_4bbb3983_fk_tags_id` (`tag_id`),
  KEY `users_tags_user_id_96abf0b2_fk_users_id` (`user_id`),
  CONSTRAINT `users_tags_tag_id_4bbb3983_fk_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `users_tags_user_id_96abf0b2_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_tags`
--

LOCK TABLES `users_tags` WRITE;
/*!40000 ALTER TABLE `users_tags` DISABLE KEYS */;
INSERT INTO `users_tags` VALUES (1,3,1),(2,4,1),(3,13,1),(4,16,1),(5,2,2),(6,17,2),(7,3,2),(8,4,2),(9,7,2),(10,8,2),(11,15,3),(12,16,3),(13,17,3),(14,5,4),(15,6,4),(16,7,4),(17,8,4),(18,9,4),(19,10,4),(20,11,4),(21,12,4),(22,13,5),(23,14,5),(24,17,5),(25,16,5);
/*!40000 ALTER TABLE `users_tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-09 14:13:24
