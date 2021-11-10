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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author_job` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author_intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `author_name` (`author_name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'qudans@naver.com','Db12345!','유개발','중국개발자','초콜릿애호가','2021-11-08 10:59:17.669890','2021-11-08 10:59:17.669923'),(2,'sanghyun@naver.com','Db12345!','권개발','PM개발자','민주적인 사다리타기','2021-11-08 10:59:17.674155','2021-11-08 10:59:17.674168'),(3,'youshin@naver.com','Db12345!','김개발','프로개발자','플래티넘 VIP','2021-11-08 10:59:17.675258','2021-11-08 10:59:17.675269'),(4,'yeonjung@naver.com','Db12345!','장개발','명탐정개발자','아직 위니또 못찾음','2021-11-08 10:59:17.676342','2021-11-08 10:59:17.676352'),(5,'soyoon@naver.com','Db12345!','박개발','미식개발자','맛집 선택 백전백승','2021-11-08 10:59:17.677012','2021-11-08 10:59:17.677022'),(6,'morning1@gmail.com','$2b$12$ChA4RgGO6VWMl80qQNM0uet28qMdEhXmHS1ueY6sRQ/bA9A155fuC','Ronnefeldt','사업가','차는 Ronnefeldt.','2021-11-10 07:34:33.358540','2021-11-10 07:34:33.358755'),(7,'morning2@gmail.com','$2b$12$8eljzQvpnBnbhAg9o4oPf.f1oHiUzSzblEyEBVkTZeSqkpNbnrK2W','Crunky','초콜릿 공장장','초콜릿은 항상 달다.','2021-11-10 07:38:28.763891','2021-11-10 07:38:28.763944'),(8,'morning3@gmail.com','$2b$12$shuZgUckIP3KeDhRNPxDmuPF2Ry2d9im3Z8dBEOLskxtC9FE3Cmd2','Candy','영업사원','Mixed Fruit Selection 사랑해주세요.','2021-11-10 07:39:57.961749','2021-11-10 07:39:57.961802'),(9,'morning4@gmail.com','$2b$12$txClGYm3tL6hGYgVI8I0sOLVhUlrHHhcsgp8oUM8BJ6asZt8qe47i','Belgium','바리스타','벨기에는 쇼콜라와 스텔라.','2021-11-10 07:40:41.345502','2021-11-10 07:40:41.345536'),(10,'morning5@gmail.com','$2b$12$M2gBncLb3KXp1JgTdRoqZeP7X9rX7zXbAsSZ9FBlJ9lrMxZDAUS3i','빙그레','낙농업','바나나맛 우유 최고!','2021-11-10 07:41:37.035722','2021-11-10 07:41:37.035780'),(11,'morning6@gmail.com','$2b$12$hcF2DMi/IBZSZn6F5B.oXuBuMfCQJKELgzCkcTE5F4sbLp2AI8rIC','포도 풍선','유치원 교사','유치원교사는 다재다능하다.','2021-11-10 07:42:23.172779','2021-11-10 07:42:23.172809'),(12,'morning7@gmail.com','$2b$12$mJaV3wDnBSwwUjhu9tnYD.Kw7W4VtgQqmVpo9C2xJvKRc5rXSaWwK','하나투어','여행사','하와이 가고싶다.','2021-11-10 07:43:27.284401','2021-11-10 07:43:27.284436'),(13,'morning8@gmail.com','$2b$12$C9C8pJNG1QIi3bUO4gZE8e6mkVgtPr8YH8p0ukD3.PirX3NqA/RvS','이터널즈','영화배우','질문 받겠습니다. 진실의방으로...','2021-11-10 07:44:15.827604','2021-11-10 07:44:15.827654'),(14,'morning9@gmail.com','$2b$12$X/3e02EYk4iSXxRjYUEeGOSV4zUAlgG74NaBfUlUTjtRpiXYK7PLW','스티브 아이폰','엔지니어','저는 삼성만 씁니다. 사랑해요 샘송','2021-11-10 07:45:10.502921','2021-11-10 07:45:10.502960'),(15,'morning10@gmail.com','$2b$12$fP/h/VFyslU6cIBsKw5LKuxX.8WdHvddMuq3vq9a8TkAnq7GNS9uS','WASH','비누 공예가','샤워는 하루에 3번. 강남역 WASH는 항상 향기롭다.','2021-11-10 07:47:09.884224','2021-11-10 07:47:09.884255'),(16,'morning11@gmail.com','$2b$12$rbETWVm0j3T0hX.mSeV91uVzGSONyzCtfgFORCf7s/SrpU.LR/z3O','라이키','운동선수','Just Do It. 할 수 있다.','2021-11-10 07:48:00.673036','2021-11-10 07:48:00.673067'),(17,'morning12@gmail.com','$2b$12$tWIBJfPfoSYOi0Ovawn3Iukl4siFxLz18JiR7sfkYV9O5UIZnDCnq','위디북스','작가','브런치는 양식. 책은 마음의 양식.','2021-11-10 07:49:11.192662','2021-11-10 07:49:11.192691'),(18,'morning13@gmail.com','$2b$12$d/t0YkYaDQ5o4jGV7h0LuuAoqF9xvJwrh69sYcuE8nbnt4UtTnkL6','위차차','영화평론가','브런치 평론도 잘 합니다.','2021-11-10 07:50:17.233051','2021-11-10 07:50:17.233091'),(19,'morning14@gmail.com','$2b$12$ThXLZEPJXjzlvFI/GCSltOF8JXPpiICSg68fmFCUC0EUenWlS/mIG','가위손','미용사','그웬은 면역 상태입니다. 그면상','2021-11-10 07:51:18.799660','2021-11-10 07:51:18.799703'),(20,'morning15@gmail.com','$2b$12$9Cp9GqsTeKG7ZIkuO0Bf5u/W4XJMQP8Ar6hEJM5/xixh.371Wxe62','꾸며줘홈즈','인테리어전문가','인테리어는 꾸며줘홈즈!','2021-11-10 07:52:24.616120','2021-11-10 07:52:24.616160');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-10 17:20:59
