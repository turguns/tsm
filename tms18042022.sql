-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: tms
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','f925916e2754e5e03f75dd58a5733251','2020-05-11 11:18:49');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL AUTO_INCREMENT,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`BookingId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbooking`
--

LOCK TABLES `tblbooking` WRITE;
/*!40000 ALTER TABLE `tblbooking` DISABLE KEYS */;
INSERT INTO `tblbooking` VALUES (1,1,'test@gmail.com','2020-07-11','2020-07-18','I want this package.','2020-07-08 06:38:36',2,'u','2020-07-08 06:53:45'),(2,2,'test@gmail.com','2020-07-10','2020-07-13','There is some discount','2020-07-08 06:43:25',1,NULL,'2020-07-08 06:52:44'),(3,4,'turguns@gmail.com','2022-01-05','2022-01-15','When I get conformation','2022-01-06 07:44:39',2,'a','2022-02-10 07:49:55');
/*!40000 ALTER TABLE `tblbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblenquiry`
--

DROP TABLE IF EXISTS `tblenquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblenquiry`
--

LOCK TABLES `tblenquiry` WRITE;
/*!40000 ALTER TABLE `tblenquiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblenquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblissues`
--

DROP TABLE IF EXISTS `tblissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblissues`
--

LOCK TABLES `tblissues` WRITE;
/*!40000 ALTER TABLE `tblissues` DISABLE KEYS */;
INSERT INTO `tblissues` VALUES (2,NULL,NULL,NULL,'2020-07-08 06:33:56',NULL,NULL),(3,NULL,NULL,NULL,'2020-07-08 06:34:20',NULL,NULL),(4,NULL,NULL,NULL,'2020-07-08 06:34:38',NULL,NULL),(5,NULL,NULL,NULL,'2020-07-08 06:35:06',NULL,NULL),(6,'test@gmail.com','Booking Issues','I am not able to book package','2020-07-08 06:36:03','Ok, We will fix the issue asap','2020-07-08 06:55:22'),(7,'test@gmail.com','Refund','I want my refund','2020-07-08 06:56:29',NULL,NULL);
/*!40000 ALTER TABLE `tblissues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpages`
--

LOCK TABLES `tblpages` WRITE;
/*!40000 ALTER TABLE `tblpages` DISABLE KEYS */;
INSERT INTO `tblpages` VALUES (1,'terms','																														<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">Audio Guide</font><br></strong></font></p><p style=\"margin-bottom: 15px; text-align: justify; overflow: hidden;\"><span style=\"color: rgb(83, 81, 84); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; text-align: start; background-color: rgb(240, 240, 240);\">The Audio Guide will give you interesting information about all the sights in Kyrgyzstan</span><br></p><p style=\"margin-bottom: 15px; text-align: justify; overflow: hidden;\"><span style=\"color: rgb(83, 81, 84); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; text-align: start; background-color: rgb(240, 240, 240);\"><br></span></p>\r\n\r\n\r\n\r\n<div class=\"figure\">\r\n  <img src=\"images/kurmanjandatka.jpg\" alt=\"Kurmanjan Datka\" width=\"200\" height=\"200\">\r\n  <video width=\"400\" controls=\"\">\r\n  <source src=\"audio/kurmanjandatka.mp4\" type=\"audio/mp4\" title=\"Kurmanjandatka\">\r\n  Your browser does not support HTML video.\r\n  </video>\r\n  <p>Kurmanjan Datka</p>\r\n</div>\r\n\r\n <div class=\"figure\">\r\n  <img src=\"images/naryn.jpg\" alt=\"Naryn\" width=\"400\" height=\"200\">\r\n  <video width=\"400\" controls=\"\">\r\n  <source src=\"audio/naryn.mp4\" type=\"audio/mp4\" title=\"Naryn\">\r\n  Your browser does not support HTML video.\r\n  </video>\r\n  <p>Naryn</p>\r\n</div>\r\n									\r\n										'),(2,'privacy','																														<p style=\"box-sizing: inherit; margin-top: 1em; margin-bottom: 1em;\"><span style=\"color: rgb(127, 127, 127); font-family: &quot;Darwin W05 Regular5167145&quot;, sans-serif;\">Here you can find videos about beautiful tourist places in&nbsp;Kyrgyzstan.</span><br></p><p style=\"box-sizing: inherit; margin-top: 1em; margin-bottom: 1em;\"><span style=\"color: rgb(127, 127, 127); font-family: &quot;Darwin W05 Regular5167145&quot;, sans-serif;\"><br></span></p>\r\n\r\n<p> BURANA </p>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7xlCMSzl8OM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n		\r\n\r\n<p> YSSYK KOL </p>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/98z3lV9TSBk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>								\r\n										\r\n										'),(3,'aboutus','																																																																						<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; text-align: justify; font-weight: bold; font-size: x-large;\">About Kyrgyzstan!!!</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; text-align: justify; font-weight: bold; font-size: x-large;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; text-align: justify; font-weight: bold; font-size: x-large;\"><br></span></div><div><br></div><div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\"><br></span></div><div><img src=\"https://www.centralasia-travel.com/upload/tiles/kyrgyzstan-info.jpg\" alt=\"\" align=\"none\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\"><br></span></div><div><br></div><div>Kyrgyzstan is a landlocked country in the&nbsp; Central Asia. It borders China, Kazakhstan, Tajikistan and Uzbekistan. Most of the territory is covered with the Tien Shan mountain ranges. The country’s highest mountain is Pobeda Peak (7,439m; “Victory Peak” in Russian; Kyrgyz: Jengish Chokusu); the lowest parts lie at an altitude of about 400 meters. The area is 199,900 square kilometers - five times as large as Switzerland.</div><div><section style=\"margin-bottom: 24px; color: rgb(79, 93, 110); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\"><h3 style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 1.5em; line-height: normal; font-family: &quot;Roboto Condensed&quot;; color: rgb(85, 172, 69); margin-top: 15px; margin-bottom: 10px;\">Is Kyrgyzstan Worth Visiting?</h3><p>Although Kyrgyzstan remains an enigma to much of the world, it has long been the #1 destination in Central Asia for backpackers and has seen a gradual influx of tourists of every kind over the past few years. And just what draws travelers to this tiny landlocked nation?</p><p>Kyrgyzstan is stunning, its silhouette defined by some of the most glorious peaks of the majestic Tian-Shan Range, not to mention alpine lakes, extensive forests, lush pastures, foaming rivers and red-rock canyons.</p><p>Kyrgyzstan is welcoming, a nation whose super relaxed visa rules are an apt reflection of the friendly, laid-back people you’re bound to meet all along your journeys. The country has long been considered one of the most tourist-friendly destinations in Central Asia, a reputation it has no desire to relinquish any time soon.</p><p>Kyrgyzstan is adventurous, for where else can you live with a nomadic family in an authentic yurt, travel on horseback through mountains, whitewater raft through&nbsp;<span id=\"2\">remote canyons</span>&nbsp;and explore ancient and Soviet history all within the span of a week?</p></section><section style=\"margin-bottom: 24px; color: rgb(79, 93, 110); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\"><h3 style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 1.5em; line-height: normal; font-family: &quot;Roboto Condensed&quot;; color: rgb(85, 172, 69); margin-top: 15px; margin-bottom: 10px;\">Your Dream Vacation</h3><p>Ascend the snowy heights of glacier-covered peaks on horseback, hike the enchanted valleys of Fairy Tale Canyon and enjoy simultaneous swimming, sunbathing and mountain views at Lake Issyk-Kul. Local history spans time and space, from petroglyphs in Cholpon-Ata to castle remains at Tash Rabat and the giant Lenin statue waiting to greet you in Osh. Equally versatile is Kyrgyz cuisine, offering a whole buffet of new and delicious foods.</p><p>Permeating each experience is the delightfully authentic, traditionally nomadic culture of the Kyrgyz, expressed through rambunctious sports, colorful national dress, finely woven handicrafts and long-held traditions forged over centuries in this beautiful, rugged land.</p><p>While nearly impossible to embrace it all, consider which of these highlights you wish to include in your Kyrgyzstan travel itinerary:</p></section></div><div><br></div><div><span style=\"font-weight: bold;\">Kyrgyz Cuisine</span></div><div><img src=\"https://kyrgyzstan-tourism.com/wp-content/uploads/2019/03/Food_in-yurta.jpg\" alt=\"\" align=\"none\"><span style=\"font-weight: bold;\"><br></span></div><div><br></div><div>Although you can sample Uzbek, Russian, Uighur, Dungan and other dishes in almost every part of modern Kyrgyzstan, the Kyrgyz, of course, have their own traditional cuisine. However, influenced by the nomadic past of the people, their menu is not so diverse as the ones of the peoples with sedentary heritage. There are no Kyrgyz chicken recipes, for instance, for growing poultry would have required sedentariness, but there are many traditional Kyrgyz cattle meat dishes cooked to preserve them for a long time.</div><div><br></div><div>Among the traditional Kyrgyz recipes stand out various horsemeat sausages. Chuchuk is probably the most outstanding of them. It is a high-fat horsemeat smoked sausage with a piquant taste. They use horsemeat for cooking a variety of other dishes, such as karyn, which is cold horse stomach slices. Very popular is beshbarmak (also spelled as beshbarmaq) - boiled and shredded meat with noodles in broth.</div><div><br></div><div>The Kyrgyz have long been cooking Uzbek, Tajik, Uighur and other neighboring peoples’ signature dishes, such as pilaf, laghman noodles (in gravy with meat pieces and vegetables), manti and chuchpara (chuchvara) dumplings. Since the times of the Great Silk Road Central Asian nomadic and sedentary cultures, including cuisines, have always been mixing up, complementing each other.</div><div><br></div><div>The local people very much love and often eat honey. Honey with local flatbreads is a common morning meal in the country.</div><div><br></div><div>There are a lot of most delicious fruits in Kyrgyzstan in summer and autumn. The apples from Issyk-Kul Lake orchards, for instance, rank among of the world’s best. When it comes to vegetables, the Kyrgyz like pumpkin very much.</div><div><br></div><div>What Kyrgyz cuisine is also notable for is a wide variety of fizzy fermented milk and cereal beverages. First, it is kymyz, fermented mare’s milk, slightly alcoholic - the signature drink of Eurasian nomads. Very popular in the country is maksym - grounded grains, water or milk, flour, all fermented. Ayran - a mixture of fermented milk, salt and water - is also very common in Kyrgyzstan. Jarma, like maksym, is made from ground grains and mixed with ayran. Chalap is similar to ayran, and is known as Tan in the market. All these beverages are made almost everywhere in Kyrgyzstan. You can buy them from the local bazaars, stores and even at the roadsides.</div><div>Traditionally, Kyrgyz families have their meals at a dasturkhan - a large cloth spread on the floor. If you visit a Kyrgyz home, invited to dinner, you must take the food with the right hand and put your legs away from the dasturkhan. Try not to sneeze, if you can. They do not think doing so while having meals is appropriate either.</div>\r\n										\r\n										\r\n										\r\n										\r\n										'),(11,'contact','																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address: Toktogul street 10000/3</span><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">kg-tourism@knu.kg</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div>');
/*!40000 ALTER TABLE `tblpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltourpackages`
--

DROP TABLE IF EXISTS `tbltourpackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL AUTO_INCREMENT,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`PackageId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltourpackages`
--

LOCK TABLES `tbltourpackages` WRITE;
/*!40000 ALTER TABLE `tbltourpackages` DISABLE KEYS */;
INSERT INTO `tbltourpackages` VALUES (10,'Sary-Chelek ','Group','Located at the altitude of 1873m the lake',4435,'Pickup','The Western Tien-Shan mountains are fraught with the real treasure of spectacular lakes including the grandiose lake Sary-Chelek. This adventure trekking tour takes you through the picturesque mountain passes, deep gorges, along the torrents of mountain rivers. In addition to the Lake Sary-Chelek, you will encounter a number of other smaller lakes which look like a chain of crystal-clear diamonds scattered among the rocky mountain peaks.\r\n\r\nLake Sary-Chelek and its surroundings are full of enchantment. Located at the altitude of 1873m the lake is cupped in the basin among mountain ridges. With the length of 7,500m and the width of 2280m, the lake is 234m deep. It was formed as a result of tectonism of the area about 2000 years ago. On a fair day the extreme transparency of the water makes underwater inhabitants and deep water landscapes clearly visible. The lake is located on the territory of Sary-Chelek biosphere reserve and is surrounded with rocky cliffs, thick juniper and spruce forests reflecting in its water surface.\r\n\r\nJoin a trekking group and enjoy the great outdoors and beauty of the Tien-Shan mountains!','sary chelek.jpeg','2022-04-17 23:05:14',NULL),(11,'Tash Rabat','Family tour','Atbashy District',5000,'Free Pickup','TODAY, WE PICTURE THE CARAVANS traveling along the Silk Road from China to the Middle East as a rather romantic image. This romanticized portrayal conceals the real dangers that the journey included, since the Silk Road crossed some of the most inhospitable regions imaginable, and many travelers died en route. Unlike its name suggests, the Silk Road was not a single route, but a connection of several established tracks, each with its own fair share of threats.\r\n\r\nCaravanserais were an extensive network of traveler’s inns along old caravan roads, either located at cities along the way or as outposts of civilization in isolated regions, providing shelter from the hostile natural environment and from bandits.\r\n\r\nTravelers who reached Tash Rabat have already crossed the dangerous Torugart Pass, giving them the chance to recharge their energy for the next leg of the journey through the Tian Shan Mountains, to pray for a safe passage and to restock on food and water. Some historians argue that Tash Rabat may have been a Christian or Buddhist monastery before it was turned into a caravanserai, but there is little evidence to support this theory.\r\n\r\nThe legend says that it was built by father and son. As they were building cupola on the roof, the son heard a caravan coming from afar. The father asked him to stay so they could finish the work. But the son went to greet the caravan and fell in love with traveling girl. He left his father, who was so sad that he didn’t finish the cupola and left few holes in it.\r\n\r\nInside the caravanserai there is little to experience except wandering aimlessly through the dark corridors which are lit only by small openings in the roofs. These damp corridors and rooms, which include a well, a dungeon and a mosque, are extremely atmospheric, especially since it is not unlikely that the few visitors to the site may have the place entirely to themselves.\r\n\r\nSilk Road caravanserais can still be found all along the former Silk Road from Central China to the Mediterranean Coast. What makes Tash Rabat stand out among the myriad of caravanserais, is its isolated location in a meditative landscape, which gives a good sense about how difficult and dangerous travel along the remote parts of the Silk Road must have been.\r\n\r\nEven today, with modern 4WD vehicles and navigation systems, venturing out here is anything but straightforward. Snow blocks the road, which connects it with the nearest settlement, At-Bashy, for up to eight months a year. Even without snow blocking the road, constant landslides and avalanches, not to mention regular earthquakes and floodings often turn the road into a mere suggestion. Therefore, the road leading to Tash Rabat should under no circumstances be tackled without a local driver. Altitude sickness is another threat, which should not be taken lightly, since the caravanserai is located at a height of 3,500 meters. If a sudden change in road conditions make a return journey impossible, yurt camps in the vicinity of Tash Rabat can provide shelter.\r\n\r\nTo the East, the road continues to the Torugart Pass border post with China, one of the most notoriously unpredictable borders in Asia, which is reputedly more often closed than it is opened, and where crossing the border can include several days of wait.\r\n\r\n','tashrabat.jpeg','2022-04-17 23:15:27',NULL),(12,'Sulaiman-Too ','Group','Osh',6000,'Free Pickup, Free breakfast','Sulaiman-Too Sacred Mountain\r\nSulaiman-Too Sacred Mountain Kyrgyzstan dominates the Fergana Valley and forms the backdrop to the city of Osh, at the crossroads of important routes on the Central Asian Silk Roads. For more than one and a half millennia, Sulaiman was a beacon for travellers revered as a sacred mountain. Its five peaks and slopes contain numerous ancient places of worship and caves with petroglyphs as well as two largely reconstructed 16th century mosques. One hundred and one sites with petroglyphs representing humans and animals as well as geometrical forms have been indexed in the property so far. The site numbers 17 places of worship, which are still in use, and many that are not. Dispersed around the mountain peaks they are connected by footpaths. The cult sites are believed to provide cures for barrenness, headaches, and back pain and give the blessing of longevity. Veneration for the mountain blends pre-Islamic and Islamic beliefs. The site is believed to represent the most complete example of a sacred mountain anywhere in Central Asia, worshipped over several millennia.','sulaimantoo.jpeg','2022-04-17 23:17:52',NULL),(13,'Manas kumboz','Group','Talas district',4500,'Pickup and Breakfast included','The Kyrgyz epic hero Manas is said to have been buried in the Ala-Too mountains in Talas Province, in northwestern Kyrgyzstan. The mausoleum 12 km east of the town of Talas is believed to house his remains and is a popular destination for Kyrgyz travelers. Traditional Kyrgyz horsemanship games are held there every summer since 1995. An inscription on the mausoleum states, however, that it is dedicated to \"...the most famous of women, Kenizek-Khatun, the daughter of the emir Abuka\". Legend has it that Kanikey, Manas\' widow, ordered this inscription in an effort to confuse her husband\'s enemies and prevent a defiling of his grave.\r\n\r\nIndeed, when archaeologists opened the tomb, they found the skeleton of a man who was about 2 m tall (6.5 feet), not the skeleton of a woman. Academics and experts took this to mean that Manas Ordo was indeed the tomb of the legendary warrior, and not of the princess mentioned in the tomb\'s outer inscription.\r\n\r\nWhile there are still skeptics that say that Manas was not buried in this mausoleum, the sight has nonetheless become a popular destination and an important spiritual sight in Kyrgyzstan.\r\n\r\n','manaskumboz.jpeg','2022-04-17 23:20:14',NULL),(14,'Burana','Group','Bishkek',4500,'Bike tour','Tower of Burana, Chui, Kyrgyzstan \r\n\r\nThis 25 meter tower, located in the Chuy Valley, east of the Kyrgyz capital city Bishkek, is the last remains of the mosque of the medieval city of Balasagun.\r\n\r\nBalasagun, established by the Karakhanids in the 9th century, has virtually disappeared. Only a few mausolea remains, some remnants of a fortification and this half minaret are still visible from Balasagun.\r\n\r\nNumerous earthquakes have destroyed the rest of the city, with fragments reused for newer buildings. Earthquakes have also taken its toll on the minaret, and the top half toppled after a major earthquake in the 15th century. The fall reduced its height from 45 to 25 meters. In the 1970s, the minaret was renovated. Centuries of repeated earthquakes in one of the most seismically-active regions in the world had severely damaged the minaret, and it was in danger of collapse.\r\n\r\nStrangely, the entrance to the minaret is not on ground level, but a couple of meters above via a metal staircase. Inside the minaret a steep spiral staircase runs to the top of a the final remaining structure of a lost city. A small museum, close to the minaret, holds minor finds excavated in the area.','burana.jpeg','2022-04-17 23:23:32',NULL),(15,'Issyk-Kul','Group','Yssyk-Kul',55354,'Free Pickup','Kyrgyzstan\'s Issyk-Kul Lake is not only one of the world\'s few remaining ancient lakes, estimated to be an incredible 25 million years old, but also the second-largest alpine lake on the planet. Surrounding the lake are the snowcapped Tian Shan mountains, towering as high as 13,000 feet in the sky. The lake itself reaches depths of over 2,000 feet.\r\nBoasting a long and storied history, the lake was once a stop along the ancient Silk Road. Issyk-Kul was also once used by the Soviet Navy as a torpedo testing site, during which time foreigners were not permitted to visit the area. The lake was a popular summer escape during the Soviet Era, and continues to attract sun-seekers from around the world, especially in the warm month of August. A mountain pass will soon connect Issyk-Kul and Almaty, allowing for easier visitor access to the beautiful lake.','yssykul.jpg','2022-04-17 23:34:05',NULL);
/*!40000 ALTER TABLE `tbltourpackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `EmailId` (`EmailId`),
  KEY `EmailId_2` (`EmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusers`
--

LOCK TABLES `tblusers` WRITE;
/*!40000 ALTER TABLE `tblusers` DISABLE KEYS */;
INSERT INTO `tblusers` VALUES (4,'turgun','4789756456','turguns@gmail.com','202cb962ac59075b964b07152d234b70','2020-07-08 06:34:38',NULL);
/*!40000 ALTER TABLE `tblusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-18 18:42:20
