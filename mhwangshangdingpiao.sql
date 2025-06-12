-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mhwangshangdingpiao
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='客服聊天';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,1,'询问问题111111111','2025-05-29 07:47:18',NULL,'2025-05-29 07:47:18',2,1,'2025-05-29 07:47:18'),(2,1,NULL,NULL,'回复内容11111','2025-05-29 07:47:18',NULL,2,'2025-05-29 07:47:18'),(3,1,'您好，请问明天的航班为什么会延误呢','2025-06-08 09:43:19',NULL,NULL,2,1,'2025-06-08 09:43:19'),(4,1,NULL,NULL,'您好，因为天气原因航班有所延误，具体时间稍后会以短信形式发送给您，感谢您的支持','2025-06-08 09:44:18',NULL,2,'2025-06-08 09:44:18'),(5,1,'您好，请问明天的航班还有一等座吗，我需要升舱','2025-06-08 09:45:14',NULL,NULL,1,1,'2025-06-08 09:45:14'),(6,1,'机场位置在哪里？','2025-06-10 02:39:47',NULL,NULL,1,1,'2025-06-10 02:39:48');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'民航服务','/upload/1749374663038.jpg'),(2,'租车服务','/upload/1749375062006.jpg'),(3,'民宿服务','/upload/1749374972499.jpg@750w_508h_80Q_1e_1c');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictionary`
--

LOCK TABLES `dictionary` WRITE;
/*!40000 ALTER TABLE `dictionary` DISABLE KEYS */;
INSERT INTO `dictionary` VALUES (103,'chat_types','数据类型',1,'问题',NULL,NULL,'2025-05-29 07:47:18'),(104,'chat_types','数据类型',2,'回复',NULL,NULL,'2025-05-29 07:47:18'),(105,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2025-05-29 07:47:18'),(106,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2025-05-29 07:47:18'),(107,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2025-05-29 07:47:18'),(108,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2025-05-29 07:47:18'),(109,'shangxia_types','上下架',1,'上架',NULL,NULL,'2025-05-29 07:47:18'),(110,'shangxia_types','上下架',2,'下架',NULL,NULL,'2025-05-29 07:47:18'),(111,'hangban_types','航班状态',1,'正常',NULL,NULL,'2025-05-29 07:47:18'),(112,'hangban_types','航班状态',2,'航班取消',NULL,NULL,'2025-05-29 07:47:18'),(113,'jipiao_types','航班类型',1,'区域快线航班',NULL,NULL,'2025-05-29 07:47:18'),(114,'jipiao_types','航班类型',2,'支线航班',NULL,NULL,'2025-05-29 07:47:18'),(115,'jipiao_types','航班类型',3,'干线航班',NULL,NULL,'2025-05-29 07:47:18'),(116,'jipiao_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2025-05-29 07:47:18'),(117,'jipiao_order_types','订单类型',101,'已预约',NULL,NULL,'2025-05-29 07:47:18'),(118,'jipiao_order_types','订单类型',102,'已退票',NULL,NULL,'2025-05-29 07:47:18'),(119,'jipiao_order_types','订单类型',103,'待取票',NULL,NULL,'2025-05-29 07:47:18'),(120,'jipiao_order_types','订单类型',104,'已取票',NULL,NULL,'2025-05-29 07:47:18'),(121,'sex_types','性别类型',1,'男',NULL,NULL,'2025-05-29 07:47:18'),(122,'sex_types','性别类型',2,'女',NULL,NULL,'2025-05-29 07:47:18'),(123,'news_types','民宿类型',1,'城市文化型',NULL,NULL,'2025-05-29 07:47:18'),(124,'news_types','民宿类型',2,'海滨度假型',NULL,NULL,'2025-05-29 07:47:18'),(125,'news_types','民宿类型',3,'乡村田园型',NULL,NULL,'2025-05-29 07:47:18');
/*!40000 ALTER TABLE `dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (19,'5座轿车',1,NULL,'<p>司机师傅您好！我搭乘的CA4321航班将于6月18日下午3点20分抵达合肥新桥机场，我一人出行，携带1个28寸行李箱和1个电脑包，需要一辆5座轿车。希望车内干净整洁，可提供充电设备。我的联系电话是13512348901，已在平台下单，订单号：678910。我会在航站楼4号出口等候，身穿灰色外套，辛苦您提前10分钟到达接机，感谢！</p>',NULL,1,'2025-06-10 01:23:54',NULL,'2025-06-10 01:23:54'),(20,'7座SUV',1,NULL,'<p>您好！我乘坐的MU5678航班预计6月19日上午10点15分到达北京大兴机场T2航站楼，和家人一共3人，含1位儿童，有2个24寸行李箱和儿童手推车，想预订一辆7座SUV，最好能配备儿童安全座椅。电话18812341234，平台订单号：234567。我们会在到达大厅的星巴克旁等候，穿米色亲子装，麻烦您准时来接，谢谢！</p>',NULL,1,'2025-06-10 01:24:59',NULL,'2025-06-10 01:24:59'),(21,'9座商务车',1,NULL,'<p>司机师傅，您好！我搭乘的ZH9876航班将于6月20日晚上8点40分降落上海虹桥机场T1航站楼，同行共5人，携带4个大行李箱和若干随身包，急需一辆9座商务车。希望车内空间宽敞，无异味。联系电话13912345678，订单号：346789。我们在航站楼3号门外的出租车等候区等您，辛苦尽快接单，感谢！</p>',NULL,1,'2025-06-10 01:25:36',NULL,'2025-06-10 01:25:36'),(22,'7座车',2,NULL,'<p>你好！我乘坐的SC1234航班在6月21日凌晨1点05分抵达天津滨海国际机场，和同事共6人出差返程，有6个登机箱和一些文件包，需租一辆7座MPV。电话17712342345，订单号：902345。我们在机场到达5号门集合，穿着蓝色工作服，希望您能准时接机，谢谢！</p>',NULL,1,'2025-06-10 01:39:47',NULL,'2025-06-10 01:39:47'),(23,'11座中巴车',2,NULL,'<p>师傅您好！我搭乘的FM6789航班将于6月22日下午5点30分到达XX机场，与旅行团伙伴共8人，携带8个大背包和摄影器材箱，务必安排一辆11座中巴车。联系电话13612347890，平台订单号：567891。我们在机场1号出口左手边的指示牌下等候，佩戴红色旅行帽，辛苦提前确认，非常感谢！</p>',NULL,1,'2025-06-10 01:40:18',NULL,'2025-06-10 01:40:18'),(24,'5座SUV',2,NULL,'<p>您好！我乘坐的3U8765航班预计6月23日上午9点25分抵达威海大水泊机场，和朋友共4人，有3个26寸行李箱和滑雪装备包，想租一辆空间大的5座SUV。电话1512343456，订单号：789123。我们在机场到达大厅的咨询台旁等您，穿着黑色冲锋衣，麻烦准时来接，谢谢！</p>',NULL,1,'2025-06-10 01:40:36',NULL,'2025-06-10 01:40:36'),(25,'8座车',4,NULL,'<p>司机师傅好！我搭乘的BK2345航班将于6月24日晚上7点10分降落烟台蓬莱机场，与家人一行7人出游归来，携带7个大行李箱和婴儿车，需要一辆8座面包车。联系电话133XXXX4567，订单号：123678。我们在机场2号出口外的停车场入口等候，穿橙色家庭套装，辛苦尽快回复，感谢！</p>',NULL,1,'2025-06-10 01:41:34',NULL,'2025-06-10 01:41:34'),(26,'7座商务',4,NULL,'<p>司机师傅您好！我乘坐的JD5678航班将于6月25日上午11点40分抵达杭州萧山机场，和同学一行5人结伴返程，携带5个24寸行李箱和背包，需要一辆7座商务车。希望车内能开空调，并提供瓶装水。我的联系电话是13712341234，已在平台下单，订单号：891234。我们会在航站楼1号出口处等候，穿着印有山东大学校徽的白色T恤，辛苦您提前到达接机，感谢！</p>',NULL,1,'2025-06-10 01:41:51',NULL,'2025-06-10 01:41:51'),(29,NULL,4,NULL,'服务非常好',26,2,'2025-06-10 01:46:57',NULL,'2025-06-10 01:46:57'),(30,'7座及以上商务车',4,NULL,'<p>五人接机需求：5位成人携带行李箱，航班到达时间需确认，接机地点为山东威海大水泊国际机场，联系人请随时拨打135-0546-9886。需安排7座及以上商务车（5人+行李），要求车况良好、准时服务。如遇航班变动将随时电话通知，请保持通讯畅通。接机司机可通过该手机号直接联系确认订单，或通过滴滴/携程等平台下单时备注此信息。温馨提示：威海机场夜间接机请提前确认出口位置，大型行李较多请备足后备箱空间。</p>',NULL,1,'2025-06-10 01:48:21',NULL,'2025-06-10 01:48:21'),(31,NULL,4,NULL,'【五星好评】这次威海机场的接机服务非常满意！司机王师傅提前联系确认航班信息，准时到达等候，7座商务车空间宽敞，5个大行李箱轻松放下，车况也很新。夜间接机还主动帮忙搬运行李，服务态度超级赞！遇到航班延误也耐心等待，全程沟通顺畅。强烈推荐这家租车公司，下次来威海还会选择他们！联系方式：135-0546-9886，响应超快~',30,2,'2025-06-10 01:49:48',NULL,'2025-06-10 01:49:48'),(32,NULL,5,NULL,'【五星好评】烟台蓬莱机场的接机服务太棒了！司机李师傅提前通过133XXXX4567联系确认细节，8座面包车空间超大，7个大行李箱和婴儿车都装得下。航班稍有延误，师傅也耐心等待，还主动帮我们搬行李。车况干净舒适，2号出口一出来就看到醒目的橙色家庭套装提示牌，无缝衔接。全程服务专业又暖心，强烈推荐！订单号123678处理得很高效，下次还会选择这家！',25,2,'2025-06-10 02:18:47',NULL,'2025-06-10 02:18:47'),(33,NULL,5,NULL,'【五星好评】威海大水泊机场的接机服务非常专业！司机张师傅提前通过151****3456联系确认，5座SUV后备箱空间充足，3个26寸行李箱和滑雪装备包轻松放下。航班准点到达，师傅已提前在到达大厅咨询台等候，一眼就看到我们穿的黑色冲锋衣，非常醒目。全程帮忙搬运行李，车况整洁舒适，服务态度热情周到。订单号789123处理高效，价格透明，强烈推荐这家租车公司！下次来威海还会选择他们~',24,2,'2025-06-10 02:19:26',NULL,'2025-06-10 02:19:26'),(34,NULL,5,NULL,'【五星好评】XX机场的11座中巴接机服务超出预期！司机赵师傅提前通过136****7890确认细节，中巴车空间宽敞舒适，8个大背包和摄影器材箱都妥善安置。航班准点到达，在1号出口左手边一眼就看到戴着红色旅行帽的我们，非常醒目。师傅主动帮忙装卸器材，还准备了矿泉水，服务贴心周到。订单号567891处理专业高效，车辆整洁无异味，强烈推荐给团队出行的朋友！下次集体出游一定再约这家~',23,2,'2025-06-10 02:19:55',NULL,'2025-06-10 02:19:55'),(35,NULL,5,NULL,'【五星好评】天津滨海机场的深夜接机服务太让人感动了！司机刘师傅凌晨1点仍精神饱满，提前通过177****2345确认接机细节。7座MPV空间充足，6个登机箱和文件包都安排得井井有条。在5号门一眼就认出了我们统一的蓝色工作服，主动帮忙搬运行李。虽然是深夜服务，但车况整洁舒适，还贴心地调好了适宜温度。订单号902345处理专业，价格公道，特别感谢师傅深夜还保持如此优质的服务态度！强烈推荐给需要凌晨接机的商务人士，下次出差一定再约！',22,2,'2025-06-10 02:20:27',NULL,'2025-06-10 02:20:27'),(36,NULL,5,NULL,'【五星好评】上海虹桥机场的9座商务车接机服务堪称完美！司机陈师傅提前通过139****5678主动联系，确认接机细节。车辆提前15分钟就位，在T1航站楼3号门外一眼就看到了我们。9座商务车空间超级宽敞，4个大行李箱和随身包轻松收纳，车内整洁如新，还带着淡淡的清香。陈师傅服务专业又暖心，不仅帮忙装卸行李，还主动告知最优路线。订单号346789处理高效，夜间接机也能保持如此优质服务实属难得！强烈推荐给家庭出行或商务接机的朋友，以后来上海一定还选这家！',21,2,'2025-06-10 02:20:59',NULL,'2025-06-10 02:20:59'),(37,NULL,1,NULL,'【五星好评】北京大兴机场的亲子接机服务太贴心了！预订时特别备注需要儿童安全座椅，司机王师傅不仅提前准备好符合标准的座椅，还主动帮忙安装调试。7座SUV空间宽裕，2个24寸行李箱和儿童手推车轻松收纳。航班准点到达后，在T2航站楼星巴克旁一眼就认出了我们的米色亲子装。王师傅全程笑脸相迎，不仅帮忙搬运行李，还细心提醒儿童乘车注意事项。车辆整洁舒适，空调温度适宜，订单号234567处理专业高效。特别感谢对带娃家庭的周到考虑，强烈推荐给亲子出游的朋友！',20,2,'2025-06-10 02:27:28',NULL,'2025-06-10 02:27:28'),(38,NULL,1,NULL,'【五星好评】合肥新桥机场的专车接机服务体验超棒！司机李师傅提前通过135****8901确认接机需求，并按要求提前10分钟到达4号出口等候。5座轿车整洁如新，还贴心地准备了充电线和矿泉水。28寸大行李箱轻松放入后备箱，电脑包也有专门的位置摆放。李师傅服务专业细致，主动告知最优路线，全程驾驶平稳舒适。订单号678910处理高效，价格透明合理。特别点赞对商务人士需求的精准把握，从整洁环境到充电设备都考虑周到。强烈推荐给差旅人士，下次来合肥一定再约！',19,2,'2025-06-10 02:27:56',NULL,'2025-06-10 02:27:56'),(39,NULL,1,NULL,'细节满分：提前20分钟就通过135****8901发短信告知车辆位置和特征，完全不用我费心寻找。车内不仅备有Type-C和Lightning双接口充电线，还有消毒湿巾和瓶装水，商务人士的刚需都被考虑到了！',30,2,'2025-06-10 03:02:48',NULL,'2025-06-10 03:02:48'),(40,NULL,1,NULL,'专业服务：看到我推着大行李箱，李师傅小跑过来帮忙，全程佩戴白手套操作，行李摆放得整整齐齐。得知我要赶会议，主动推荐了最优路线，比导航预计的还快15分钟到达。',30,2,'2025-06-10 03:03:00',NULL,'2025-06-10 03:03:00'),(41,NULL,1,NULL,'车况惊艳：2023款新车，座椅皮质手感超棒，空调清新无异味。特别点赞师傅的驾驶技术，全程平稳得我能在车上安心处理邮件。',26,2,'2025-06-10 03:03:14',NULL,'2025-06-10 03:03:14'),(42,NULL,1,NULL,'增值体验：下车时李师傅还提醒合肥近期天气变化，建议我备好外套。这种超出预期的关怀让人感动！',26,2,'2025-06-10 03:03:30',NULL,'2025-06-10 03:03:30'),(43,NULL,1,NULL,'订单顺利完成！司机准时到达4号出口，车辆整洁无异味，主动协助放置行李并提供充电线，全程安静驾驶无绕路。非常满意的一次接机服务，下次还会选择！',25,2,'2025-06-10 03:04:36',NULL,'2025-06-10 03:04:36'),(44,NULL,1,NULL,'王师傅服务超赞！提前15分钟就到达等候，特意发短信告知车牌号和停车位置。28寸行李箱很重，师傅小跑过来帮忙搬运。车内空调温度适宜，还备有多接口充电器，连我的MacBook都能充！灰色外套一眼就被认出，举牌接机超贴心~',25,2,'2025-06-10 03:04:42',NULL,'2025-06-10 03:04:42'),(45,NULL,1,NULL,'这接机服务堪比头等舱待遇！师傅怕我行李箱冷还给系了安全带（笑），车载音响放着周杰伦，本90后狂喜！最绝的是数据线居然有lightning/Type-C/华为口三合一，您这是哆啦A梦的百宝箱吧？五星好评已发射！',24,2,'2025-06-10 03:05:03',NULL,'2025-06-10 03:05:03'),(46,NULL,1,NULL,'作为常驻出差人士，本次接机完全符合商务需求：1. 准时性（提前12分钟到达）2. 专业性（西装司机+标准话术）3. 车辆状况（2023款凯美瑞，里程仅8千公里）。已收藏司机信息，后续合肥行程将固定预约。',22,2,'2025-06-10 03:05:14',NULL,'2025-06-10 03:05:14'),(47,NULL,1,NULL,'English service available! Driver Mr. Zhang could communicate in simple English and helped me buy local SIM card at T4. The car even had international plug converter! Highly recommend for foreign travelers.',22,2,'2025-06-10 03:05:21',NULL,'2025-06-10 03:05:21');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jipiao`
--

DROP TABLE IF EXISTS `jipiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jipiao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jipiao_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '航班标题 Search111 ',
  `jipiao_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '航班照片',
  `jipiao_types` int DEFAULT NULL COMMENT '航班类型 Search111',
  `jipiao_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `jipiao_chufadi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出发地',
  `jipiao_mudidi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '目的地',
  `jipiao_time` timestamp NULL DEFAULT NULL COMMENT '出发时间',
  `zuowei_number` int DEFAULT NULL COMMENT '座位',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `hangban_types` int DEFAULT NULL COMMENT '航班状态 Search111',
  `jipiao_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `jipiao_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '航班详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='航班信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jipiao`
--

LOCK TABLES `jipiao` WRITE;
/*!40000 ALTER TABLE `jipiao` DISABLE KEYS */;
INSERT INTO `jipiao` VALUES (1,'航班标题1','upload/jipiao1.jpg',1,321.76,'出发地1','目的地1','2025-05-29 07:47:18',20,1,1,2,'航班详情1','2025-05-29 07:47:18'),(2,'航班标题2','upload/jipiao2.jpg',3,73.91,'出发地2','目的地2','2025-05-29 07:47:18',20,1,2,2,'航班详情2','2025-05-29 07:47:18'),(3,'航班标题3','upload/jipiao3.jpg',2,142.30,'出发地3','目的地3','2025-05-29 07:47:18',20,1,2,2,'航班详情3','2025-05-29 07:47:18'),(4,'航班标题4','upload/jipiao4.jpg',3,248.59,'出发地4','目的地4','2025-05-29 07:47:18',20,1,1,2,'航班详情4','2025-05-29 07:47:18'),(5,'东航MU5516','/upload/1749441610648.jpg',1,598.00,'青岛胶东国际机场','上海虹桥国际机场T2','2025-06-20 07:30:00',90,1,1,1,'<p><span style=\"color: rgba(0, 0, 0, 0.9); background-color: rgb(255, 255, 255);\">航班未受任何异常因素影响，飞行计划顺利执行，航班正常</span></p>','2025-05-29 07:47:18'),(6,'东航MU5404','/upload/1749439335864.jpg',3,1030.00,'成都双流国际机场T2','上海浦东国际机场T1','2025-06-10 01:50:00',70,1,2,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">因空域管制，航班无法按计划飞行，航班取消</span></p>','2025-05-29 07:47:18'),(7,'东航MU9802','/upload/1749439312142.jpg',3,946.00,'西安咸阳国际机场T5','上海浦东国际机场T1','2025-06-13 02:00:00',140,1,2,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">因突发公共卫生事件，机场关闭部分区域，航班取消</span></p>','2025-05-29 07:47:18'),(8,'东航MU2239','/upload/1749439282199.jpg',2,797.00,'西安咸阳国际机场T5','上海虹桥国际机场T2','2025-05-30 08:30:00',78,1,2,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">因机场跑道维护，无法按时起飞，航班取消</span></p>','2025-05-29 07:47:18'),(9,'东航MU2811','/upload/1749439256005.jpg',1,1159.00,'南京禄口国际机场T2','北京大兴国际机场','2025-06-11 03:35:00',90,1,1,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">天气良好，飞机机械状况正常，机组人员齐备，航班按时起飞</span></p>','2025-05-29 07:47:18'),(10,'东航MU6662','/upload/1749439232037.jpg',2,840.00,'深圳宝安国际机场T3','北京大兴国际机场','2025-05-31 07:00:00',84,1,2,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">因航空公司内部航班调配问题，导致该航班取消</span></p>','2025-05-29 07:47:18'),(11,'东航MU5332','/upload/1749438896119.jpg',3,620.00,'深圳宝安国际机场T3','上海浦东国际机场T1','2025-06-12 15:40:00',75,1,2,1,'<p><span style=\"color: rgba(0, 0, 0, 0.9); background-color: rgb(255, 255, 255);\">机组人员因突发健康问题无法执飞，航班取消</span></p>','2025-05-29 07:47:18'),(12,'东航MU5801','/upload/1749441545481.jpg',2,1180.00,'昆明长水国际机场','上海虹桥国际机场T2','2025-06-18 08:00:00',90,1,2,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">飞机在检修时发现机械故障，需紧急维修，航班取消</span></p>','2025-05-29 07:47:18'),(13,'川航5U8784','/upload/1749441480492.jpg',3,1270.00,'广州白云国际机场T2','重庆江北国际机场T2','2025-06-17 00:25:00',60,1,2,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">因目的地机场天气恶劣，能见度低，无法安全降落，航班取消</span></p>','2025-05-29 07:47:18'),(14,'东航MU2512','/upload/1749440257543.jpg',3,500.00,'上海虹桥国际机场','武汉天河国际机场','2025-06-09 08:00:00',150,1,2,1,'<p>航班因极端暴雨天气取消</p>','2025-05-29 07:47:18'),(15,'东航MU5182','/upload/1749442139397.jpg',3,900.00,'郑州新郑国际机场T2','厦门高崎国际机场T4','2025-06-18 16:00:00',60,1,1,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">天气良好，飞机机械状况正常，机组人员齐备，航班按时起飞</span></p>','2025-06-09 04:09:54'),(16,'东航MU2219','/upload/1749442230476.jpg',3,647.00,'西安咸阳国际机场T5','杭州萧山国际机场T3','2025-06-30 16:00:00',50,1,1,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">天气良好，飞机机械状况正常，机组人员齐备，航班按时起飞</span></p>','2025-06-09 04:11:07'),(17,'川航3U8911','/upload/1749442276577.jpg',3,890.00,'成都双流国际机场T1','杭州萧山国际机场T4','2025-06-20 16:00:00',70,1,1,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">天气良好，飞机机械状况正常，机组人员齐备，航班按时起飞</span></p>','2025-06-09 04:12:41'),(18,'川航3U3179','/upload/1749442369887.jpg',2,1080.00,'杭州萧山国际机场T4','重庆江北国际机场T2','2025-06-09 16:00:00',50,1,1,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">天气良好，飞机机械状况正常，机组人员齐备，航班按时起飞</span></p>','2025-06-09 04:13:38'),(19,'东航MU5131','/upload/1749442428970.jpg',3,990.00,'杭州萧山国际机场T3','北京大兴国际机场','2025-07-03 16:00:00',80,1,1,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">天气良好，飞机机械状况正常，机组人员齐备，航班按时起飞</span></p>','2025-06-09 04:14:34'),(20,'东航MU5193','/upload/1749442488421.jpg',3,680.00,'北京大兴国际机场','杭州萧山国际机场T3','2025-07-04 16:00:00',50,1,1,1,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.9);\">天气良好，飞机机械状况正常，机组人员齐备，航班按时起飞</span></p>','2025-06-09 04:15:25');
/*!40000 ALTER TABLE `jipiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jipiao_collection`
--

DROP TABLE IF EXISTS `jipiao_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jipiao_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jipiao_id` int DEFAULT NULL COMMENT '航班',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jipiao_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='航班收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jipiao_collection`
--

LOCK TABLES `jipiao_collection` WRITE;
/*!40000 ALTER TABLE `jipiao_collection` DISABLE KEYS */;
INSERT INTO `jipiao_collection` VALUES (2,2,3,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(3,3,3,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(5,5,2,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(6,6,3,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(7,7,3,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(8,8,2,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(9,9,3,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(10,10,2,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(11,11,3,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(12,12,2,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(13,13,2,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(14,14,3,1,'2025-05-29 07:47:18','2025-05-29 07:47:18'),(15,7,1,1,'2025-05-29 07:47:18','2025-05-29 07:47:18');
/*!40000 ALTER TABLE `jipiao_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jipiao_order`
--

DROP TABLE IF EXISTS `jipiao_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jipiao_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jipiao_order_uuid_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号 Search111 ',
  `jipiao_id` int DEFAULT NULL COMMENT '机票',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jipiao_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `jipiao_order_types` int DEFAULT NULL COMMENT '订单类型  Search111 ',
  `buy_zuowei_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预定座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '订购日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='机票预订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jipiao_order`
--

LOCK TABLES `jipiao_order` WRITE;
/*!40000 ALTER TABLE `jipiao_order` DISABLE KEYS */;
INSERT INTO `jipiao_order` VALUES (1,'1680506886036',13,1,369.10,104,'16,26','2025-05-29','2025-05-29 07:47:18','2025-05-29 07:47:18'),(2,'1680507622703',14,1,695.44,104,'4,5','2025-05-29','2025-05-29 07:47:18','2025-05-29 07:47:18'),(3,'1749196307526',9,1,634.00,101,'5,14','2025-06-06','2025-06-06 07:51:48','2025-06-06 07:51:48'),(4,'1749474195380',20,1,680.00,101,'24','2025-06-09','2025-06-09 13:03:15','2025-06-09 13:03:15');
/*!40000 ALTER TABLE `jipiao_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='民航新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'丽枫精品酒店',2,'/upload/1749377817634.webp','2025-05-29 06:38:39','<p>中高端连锁精品酒店，标志性薰衣草香氛弥漫全楼。客房配备智能马桶、蓝牙音响和五星级床品，隔音效果卓越。商圈核心位置，购物归来即可享受深度睡眠。&nbsp;&nbsp;</p><p><br></p><p><strong>房型与价格</strong></p><p><span style=\"color: rgb(38, 38, 38);\">房型名称  房间面积  床型配置  每晚价格（含税）</span></p><p>雅致大床房 32㎡ 一张2米床 ￥498 起</p><p>舒悦双床房 35㎡ 两张1.35米床 ￥528 起</p><p>入住建议：</p><p>雅致大床房：适合情侣/商务人士</p><p>舒悦双床房：适合朋友/同事同行</p><p>注：以上价格已含税，周末及节假日价格可能浮动，具体以预订时为准。</p><p><br></p><p><strong>酒店位置</strong></p><p>地址：中国·杭州市拱墅区武林广场密渡桥路1号&nbsp;&nbsp;</p><p>黄金地段：&nbsp;&nbsp;</p><p>杭州大厦/银泰百货 步行5分钟</p><p>地铁1号线“武林广场站”B口 步行3分钟&nbsp;&nbsp;</p><p>文化地标：&nbsp;&nbsp;</p><p>京杭大运河码头 步行15分钟&nbsp;</p><p>西湖景区 打车￥15</p><p><br></p><p><strong>酒店亮点与设施服务</strong></p><p>睡眠体验：&nbsp;&nbsp;</p><p>薰衣草助眠香氛系统（可调节浓度）&nbsp;&nbsp;</p><p>慕思定制床垫+羽绒枕/荞麦枕可选&nbsp;&nbsp;</p><p>智能服务：&nbsp;&nbsp;</p><p>&nbsp;手机蓝牙开门（支持华为/苹果）&nbsp;&nbsp;</p><p>&nbsp; 语音控制灯光/窗帘&nbsp;&nbsp;</p><p>专属礼遇：&nbsp;&nbsp;</p><p>&nbsp;入住送水果拼盘+晚安甜汤&nbsp;&nbsp;</p><p>&nbsp;免费minibar（可乐/雪碧/矿泉水各2瓶）&nbsp;&nbsp;</p><p><br></p><p>五、酒店政策&nbsp;</p><p>入住/退房：14:00后｜14:00前（所有住客）&nbsp;&nbsp;</p><p>取消政策：入住前24小时免费取消&nbsp;&nbsp;</p><p>升级政策：&nbsp;&nbsp;</p><p>生日当天预订送房型升级&nbsp;&nbsp;</p><p>连住2晚送SPA代金券￥50&nbsp;&nbsp;</p><p>重要提示：&nbsp;&nbsp;</p><p>全楼禁烟（违者￥300清洁费）&nbsp;&nbsp;</p><p>免费延迟退房需视房态&nbsp;&nbsp;</p><p>官方预订：www.lavande.com&nbsp;&nbsp;</p>','2025-05-29 06:38:39'),(2,'渔村小院',3,'/upload/1749377379111.jpg','2025-05-29 06:38:39','<p>渔港码头边的农家小院，老板是三代渔民。客房简单但海鲜现捞现做，可体验出海捕鱼。院子可喝茶听海，感受最地道的渔家生活。&nbsp;&nbsp;</p><p><br></p><p><strong>房型与价格</strong></p><p><span style=\"background-color: rgb(239, 246, 255); color: rgb(38, 38, 38);\">房型名称  房间面积  床型配置  每晚价格（含税）</span></p><p>渔家炕房 22㎡ 大炕（可睡3-4人） ￥288 起</p><p>海景大床房 25㎡ 一张1.8米床 ￥388 起</p><p>入住建议：</p><p>• 渔家炕房：适合3-4人（特色体验）</p><p>• 海景大床房：适合1-2人（带独立卫浴）</p><p>注：以上价格均含税，节假日价格可能调整，请以实际预订为准。</p><p><br></p><p><strong>酒店位置</strong></p><p>地址：中国·舟山市普陀区沈家门渔港滨港路27号&nbsp;&nbsp;</p><p>渔村特权：&nbsp;&nbsp;</p><p>沈家门海鲜夜市 步行2分钟&nbsp;&nbsp;</p><p>渔船码头 步行5分钟（早5点看渔获交易）&nbsp;&nbsp;</p><p>航线枢纽：&nbsp;&nbsp;</p><p>朱家尖蜈蚣峙码头（去普陀山） 打车￥20&nbsp;&nbsp;</p><p><br></p><p><strong>酒店亮点与设施服务</strong></p><p>海鲜体验：&nbsp;&nbsp;</p><p>跟船出海捕鱼（2小时，￥100/人，满4人发船）&nbsp;&nbsp;</p><p>代加工自购海鲜（清蒸￥10/斤，椒盐￥15/斤）&nbsp;&nbsp;</p><p>设施说明：&nbsp;&nbsp;</p><p>炕房公用卫浴（提供拖鞋，毛巾需自备）&nbsp;&nbsp;</p><p>海景房含独立卫生间&nbsp;&nbsp;</p><p>免费服务：&nbsp;&nbsp;</p><p>渔汛查询/潮汐表&nbsp;&nbsp;</p><p>驱蚊液/晕船药提供&nbsp;&nbsp;</p><p><br></p><p><strong>酒店政策&nbsp;</strong>&nbsp;</p><p>入住/退房：12:00后｜10:00前（赶海时间）&nbsp;&nbsp;</p><p>订金规则：&nbsp;&nbsp;</p><p>&nbsp;预订需付50%定金（微信/支付宝）&nbsp;&nbsp;</p><p>&nbsp;出海活动另付全款&nbsp;&nbsp;</p><p>取消政策：&nbsp;&nbsp;</p><p>&nbsp;台风天免费全额退款&nbsp;&nbsp;</p><p>&nbsp;其他情况扣定金&nbsp;&nbsp;</p><p>重要提示：&nbsp;&nbsp;</p><p>公用浴室热水供应时段（18:00-22:00）&nbsp;&nbsp;</p><p>&nbsp;出海需签安全协议&nbsp;&nbsp;</p><p>联系老板：阿斌船长 139xxxx8888&nbsp;</p>','2025-05-29 06:38:39'),(3,'海滨之家',2,'/upload/1749377780054.webp','2025-05-29 06:38:39','<p>由渔民自建房改造的温馨民宿，步行5分钟直达沙滩。老板亲自打理，提供挖沙玩具和海鲜代加工服务。院子可烧烤看海，房间简单干净，适合家庭慢度假。</p><p>&nbsp;&nbsp;</p><p><strong>房型与价格</strong></p><p><span style=\"color: rgb(38, 38, 38);\">房型名称  房间面积  床型配置  每晚价格（含税）</span></p><p>海景双床房 28㎡ 两张1.2米床 ￥368 起</p><p>家庭套房 45㎡ 大床+上下铺（1.5米+1.2米） ￥568 起</p><p>入住建议：</p><p>海景双床房：适合2-3人（2大1小）</p><p>家庭套房：适合4-5人（3大2小）</p><p><br></p><p><strong>酒店位置</strong></p><p>地址：中国·厦门市思明区环岛路黄厝村77号&nbsp;&nbsp;</p><p>海滩距离：步行5分钟至黄厝海滨浴场&nbsp;&nbsp;</p><p>交通：&nbsp;&nbsp;</p><p>公交站“黄厝海滨” 门口50米&nbsp;&nbsp;</p><p>厦门站 打车25分钟</p><p><br></p><p><strong>酒店亮点与设施服务</strong></p><p>亲子特权：&nbsp;&nbsp;</p><p>免费提供挖沙工具、泳圈、沙滩垫&nbsp;&nbsp;</p><p>儿童绘本与积木借用&nbsp;&nbsp;</p><p>海鲜服务：&nbsp;&nbsp;</p><p>代加工自购海鲜（清蒸￥10/斤，爆炒￥15/斤）&nbsp;&nbsp;</p><p>推荐本地人采买码头（步行8分钟）&nbsp;&nbsp;</p><p>设施：&nbsp;&nbsp;</p><p>公用厨房（调料免费）、自助洗衣￥10/桶&nbsp;&nbsp;</p><p>院子烧烤架（付￥50清洁费）&nbsp;&nbsp;</p><p><br></p><p><strong>酒店政策</strong></p><p>入住/退房：14:00后｜11:00前（灵活协商）&nbsp;&nbsp;</p><p>取消政策：旺季（7-8月）扣首晚，淡季提前3天免费取消&nbsp;&nbsp;</p><p>儿童政策：12岁以下免费（不占床）&nbsp;&nbsp;</p><p>押金：￥200（现金/微信）&nbsp;&nbsp;</p><p>联系老板：138xxxx5678（微信同号）</p>','2025-05-29 06:38:39'),(4,'城市便捷商旅酒店',1,'/upload/1749377629589.webp','2025-05-29 06:38:39','<p>坐落市中心商业街背面，专为商旅人士打造的经济型酒店。客房简洁实用，24小时前台与电梯保障高效入住，步行5分钟直达地铁站。楼下便利店、快餐店林立，满足差旅基础需求，是预算有限但求便利的明智之选。&nbsp;&nbsp;</p><p><br></p><p><strong>房型与价格</strong></p><p>房型名称&nbsp;&nbsp;&nbsp;&nbsp; 房间面积 		床型配置&nbsp;&nbsp;&nbsp;&nbsp; 每晚价格（含税） </p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">经济大床房 </span>		<span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">22㎡ </span>		<span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">一张1.8米大床 </span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">￥258 起</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">标准双床房 </span>		<span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">25㎡ </span>		<span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">两张1.2米单人床 </span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">￥288 起</span></p><p><br></p><p><strong>酒店位置&nbsp;</strong></p><p>地址：中国·广州市天河区体育西路112号&nbsp;&nbsp;</p><p>交通枢纽：&nbsp;&nbsp;</p><p>地铁3号线“体育西路站”G口 步行5分钟&nbsp;&nbsp;</p><p>广州东站 打车8分钟&nbsp;&nbsp;</p><p>商业配套：&nbsp;&nbsp;</p><p>正佳广场/天河城 步行10分钟</p><p>珠江新城CBD 地铁2站直达&nbsp;</p><p><br></p><p><strong>酒店亮点与设施服务&nbsp;&nbsp;</strong></p><p>核心优势：&nbsp;&nbsp;</p><p>&nbsp;免费高速Wi-Fi（实测100Mbps）&nbsp;&nbsp;</p><p>&nbsp;24小时前台寄存行李/收发快递&nbsp;&nbsp;</p><p>客房设施：&nbsp;&nbsp;</p><p>&nbsp;独立卫浴、空调、电视、小型办公桌&nbsp;&nbsp;</p><p>增值服务：&nbsp;&nbsp;</p><p>自助售货机（泡面/饮料/充电器）&nbsp;&nbsp;</p><p>&nbsp;付费简餐早餐（￥15/份，粥点+包子）&nbsp;&nbsp;</p><p><br></p><p>五、酒店政策&nbsp;&nbsp;</p><p>入住/退房：15:00后入住｜12:00前退房&nbsp;&nbsp;</p><p>取消政策：入住前18:00前免费取消&nbsp;&nbsp;</p><p>儿童政策：1.2米以下儿童免费（不加床）&nbsp;&nbsp;</p><p>重要提示：&nbsp;&nbsp;</p><p>&nbsp;无停车场（建议停隔壁商场￥10/小时）&nbsp;&nbsp;</p><p>&nbsp;所有房间禁烟&nbsp;&nbsp;</p><p>&nbsp;需预付￥100押金（退房返还）&nbsp;&nbsp;</p><p>预订电话：+86-20-3456 7890&nbsp;&nbsp;</p>','2025-05-29 06:38:39'),(15,'悦来客栈',3,'/upload/1749377696413.21','2025-05-29 14:05:18','<p>悦来客栈坐落在千年古镇景区入口处，由传统江南民居改造而成，白墙黛瓦与木雕窗棂还原古韵风情。客栈仅有12间客房，主打小而精的温馨体验，管家式服务让游客感受“回家”的亲切。步行3分钟即达古镇核心区，清晨推开木窗可见小桥流水，夜晚灯笼映照石板路，是沉浸式体验江南文化的首选落脚点。&nbsp;&nbsp;</p><p><br></p><p><strong>房型价格</strong></p><p>房型名称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;房间面积&nbsp;&nbsp;床型配置&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每晚价格（含税）</p><p>临河大床房&nbsp;&nbsp;&nbsp;18㎡&nbsp;&nbsp;&nbsp;&nbsp;一张1.8米雕花木床&nbsp;&nbsp;&nbsp;&nbsp;￥328 起</p><p>庭院双床房&nbsp;&nbsp;&nbsp;20㎡&nbsp;&nbsp;&nbsp;&nbsp;两张1.2米复古木床&nbsp;&nbsp;&nbsp;&nbsp;￥358 起</p><p>阁楼家庭房&nbsp;&nbsp;&nbsp;25㎡&nbsp;&nbsp;&nbsp;&nbsp;一张大床+一张儿童榻&nbsp;&nbsp;&nbsp;&nbsp;￥488 起</p><p>豪华大床房&nbsp;&nbsp;&nbsp;38㎡&nbsp;&nbsp;&nbsp;&nbsp;一张2米大床&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥688 起</p><p>高级双床房&nbsp;&nbsp;&nbsp;40㎡&nbsp;&nbsp;&nbsp;&nbsp;两张1.2米单人床&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥728 起</p><p>行政豪华套房&nbsp;&nbsp;60㎡&nbsp;&nbsp;&nbsp;&nbsp;一张2米大床&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥1188 起</p><p>家庭亲子套房&nbsp;&nbsp;55㎡&nbsp;&nbsp;&nbsp;&nbsp;一张大床+沙发床&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥988 起</p><p>总统套房&nbsp;&nbsp;&nbsp;&nbsp;150㎡&nbsp;&nbsp;&nbsp;独立卧室+客厅&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥3888 起</p><p><br></p><p><strong>酒店位置&nbsp;&nbsp;</strong></p><p>- 地址：中国·浙江省嘉兴市西塘古镇景区入口南街9号&nbsp;&nbsp;</p><p>- 周边交通：&nbsp;&nbsp;</p><p>&nbsp;- 距古镇景区检票口 步行2分钟&nbsp;&nbsp;</p><p>&nbsp;- 距西塘汽车站800米（步行10分钟）&nbsp;&nbsp;</p><p>&nbsp;- 距嘉兴南站25公里（打车约40分钟）&nbsp;&nbsp;</p><p>- 核心景点距离：&nbsp;&nbsp;</p><p>&nbsp;- 烟雨长廊：出门即达&nbsp;&nbsp;</p><p>&nbsp;- 送子来凤桥：步行5分钟&nbsp;&nbsp;</p><p>&nbsp;- 纽扣博物馆：步行8分钟&nbsp;&nbsp;</p><p><br></p><p><strong>酒店亮点与设施服务&nbsp;&nbsp;</strong></p><p>特色体验：&nbsp;&nbsp;</p><p>每日15:00庭院免费茶叙（提供碧螺春/龙井）&nbsp;&nbsp;</p><p>可租借汉服及油纸伞（30元/套/天）&nbsp;&nbsp;</p><p>客栈设施：&nbsp;&nbsp;</p><p>公共区域：江南庭院（含石桌竹椅）、书吧（含古镇历史书籍）&nbsp;&nbsp;</p><p>客房设施：独立卫浴、空调、免费Wi-Fi、热水壶&nbsp;&nbsp;</p><p>服务支持：&nbsp;&nbsp;</p><p>行李搬运（无电梯，管家协助）&nbsp;&nbsp;</p><p>古镇地图及游玩路线规划&nbsp;&nbsp;</p><p>代订景区折扣门票&nbsp;&nbsp;</p><p>餐饮服务：&nbsp;&nbsp;</p><p>含简中式早餐（粥/包子/小菜）&nbsp;&nbsp;</p><p>合作餐馆享9折（步行3分钟内5家本地菜馆）&nbsp;&nbsp;</p><p><br></p><p><strong>酒店政策&nbsp;&nbsp;</strong></p><p>入住/退房：&nbsp;&nbsp;</p><p>入住时间：14:00后 | 退房时间：12:00前&nbsp;&nbsp;</p><p>取消政策：&nbsp;&nbsp;</p><p>入住前48小时免费取消&nbsp;&nbsp;</p><p>&nbsp;节假日订单取消扣首晚房费&nbsp;&nbsp;</p><p>儿童政策：&nbsp;&nbsp;</p><p>1名6岁以下儿童免费（不加床）&nbsp;&nbsp;</p><p>不提供婴儿床&nbsp;&nbsp;</p><p>重要提示：&nbsp;&nbsp;</p><p>客栈位于步行区，车辆需停景区外停车场（20元/天）&nbsp;&nbsp;</p><p>客房内禁止吸烟（庭院设吸烟区）&nbsp;&nbsp;</p><p>入住需登记所有住客身份证&nbsp;&nbsp;</p><p><br></p><p><strong>咨询/预订&nbsp;</strong></p><p>前台电话：+86-573-8456 1234&nbsp;&nbsp;</p><p>在线预订：www.yuelai-inn.com&nbsp;&nbsp;</p>','2025-05-29 14:05:18'),(16,'云锦国际大酒店',1,'/upload/1749519529452.avif','2025-06-08 10:11:28','<p>云锦国际大酒店位于城市核心地段，是一家集住宿、餐饮、商务会议、休闲娱乐于一体的高端综合性酒店。酒店整体设计融合现代与东方元素，拥有典雅舒适的环境与高品质服务。无论是商务出行、旅游度假，还是家庭聚会，云锦国际大酒店都致力于为每位宾客打造宾至如归的体验。</p><p>酒店建筑共25层，设有300余间豪华客房，配套有多个风格餐厅、会议中心、健身房、水疗中心与大型地下停车场。凭借其便利的地理位置和卓越的服务水平，云锦国际大酒店已成为当地最具影响力的五星级酒店之一。</p><p><br></p><p><strong>房型与价格</strong></p><p><br></p><p>房型名称&nbsp;&nbsp;房间面积&nbsp;&nbsp;床型配置&nbsp;&nbsp;每晚价格（含税）</p><p>豪华大床房&nbsp;&nbsp;38㎡&nbsp;&nbsp;一张2米大床&nbsp;&nbsp;￥688 起</p><p>高级双床房&nbsp;&nbsp;40㎡&nbsp;&nbsp;两张1.2米单人床&nbsp;&nbsp;￥728 起</p><p>行政豪华套房&nbsp;&nbsp;60㎡&nbsp;&nbsp;一张2米大床&nbsp;&nbsp;￥1188 起</p><p>家庭亲子套房 55㎡&nbsp;&nbsp;一张大床 + 沙发床&nbsp;&nbsp;￥988 起</p><p>总统套房&nbsp;&nbsp;150㎡&nbsp;&nbsp;独立卧室+客厅&nbsp;&nbsp;￥3888 起</p><p>价格会随节假日及入住人数有所浮动，实际价格请以预订页面为准。</p><p><br></p><p><strong>酒店位置</strong></p><p>&nbsp;&nbsp;•&nbsp;&nbsp;地址：中国·江苏省南京市中山南路88号</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;周边交通：</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;距地铁1号线“新街口站”步行约3分钟</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;距南京南站约8公里，车程15分钟</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;距南京禄口国际机场约35公里，车程40分钟</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;周边景点：</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;南京夫子庙（车程约10分钟）</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;中山陵（车程约25分钟）</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;老门东历史文化街区（步行15分钟）</p><p><br></p><p><strong>酒店亮点与设施服务</strong></p><p>&nbsp;&nbsp;•&nbsp;&nbsp;餐饮服务：中餐厅、西餐厅、自助早餐厅、特色咖啡吧</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;会议与活动：设有5间多功能会议厅（最大可容纳300人），配备高清投影和同声传译系统</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;休闲娱乐：健身中心、恒温游泳池、SPA水疗中心、棋牌室</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;客房服务：全天候客房服务、每日免费瓶装水与咖啡茶包、无线高速Wi-Fi</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;其他服务：</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;免费停车</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;机场接送（需预约）</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;行李寄存服务</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;礼宾服务与代叫出租</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;商务中心支持打印复印传真</p><p><br></p><p><strong>酒店政策</strong></p><p>&nbsp;&nbsp;•&nbsp;&nbsp;入住时间：下午14:00起</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;退房时间：中午12:00前</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;取消政策：</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;预订可在入住前24小时免费取消</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;节假日与特价房取消需依据具体预订条款</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;儿童政策：</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;1名6岁以下儿童可与父母同住并免费享用早餐</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;提供婴儿床（需提前预约）</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;宠物政策：本酒店暂不接待宠物</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;支付方式：</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;支持现金、信用卡（Visa/Master/银联）、微信支付、支付宝</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;温馨提示：</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;所有客房及公共区域禁止吸烟，设有专用吸烟区</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;入住需提供有效身份证件登记</p><p>&nbsp;&nbsp;•&nbsp;&nbsp;高峰时段请提前安排出行以避免延误</p><p><br></p><p>如需进一步信息或预订服务，欢迎拨打前台电话：+86-25-8888 8888 或访问酒店官网</p>','2025-06-08 10:11:28');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '采购员id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '采购员名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'a1','yonghu','用户','16cfp1knvxaarcrmtywqrykeputk2x0l','2025-05-29 07:47:18','2025-06-10 13:14:20'),(2,1,'admin','users','管理员','kcz6dj22fdbk6f6640uubljl3r7tg9xd','2025-05-29 07:47:18','2025-06-10 04:55:49'),(3,2,'B','yonghu','用户','66iyuk52zg0psqnx9st6tf3gmkhuh9g2','2025-06-10 01:28:16','2025-06-10 02:28:16'),(4,4,'D','yonghu','用户','7ko9fqt8jz3pa5ncqmtctkrgs183ldr2','2025-06-10 01:41:07','2025-06-10 02:41:07'),(5,5,'mzx2','yonghu','用户','m3uw3wfmjqq41207pmwnc9yawxuuwz4z','2025-06-10 02:13:06','2025-06-10 03:13:07');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '采购员名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2025-05-29 07:47:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'C','1','lj','/upload/1749375574171.jpg','13965455630','410224200511012001',1,421.00,1,'2025-05-29 07:47:18'),(2,'B','123456','hsx','/upload/1749375556964.jpg','19861553315','410224200501062002',1,106.00,1,'2025-05-29 07:47:18'),(3,'A','123456','mzx','/upload/1749375326417.jpg','13505469886','410224200504162003',1,416.00,1,'2025-05-29 07:47:18'),(4,'D','123456','xwwf','/upload/1749375653119.jpg','18011108138','410224200510102002',1,1010.00,1,'2025-06-08 09:41:22'),(5,'mzx2','123456','吗',NULL,'13505467889','370502200507238765',1,0.00,1,'2025-06-10 02:12:53');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mhwangshangdingpiao'
--

--
-- Dumping routines for database 'mhwangshangdingpiao'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-11  9:20:22
