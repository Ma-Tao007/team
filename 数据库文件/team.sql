/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : team

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 05/07/2021 17:25:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db_active_stu
-- ----------------------------
DROP TABLE IF EXISTS `db_active_stu`;
CREATE TABLE `db_active_stu`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `active_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动编号',
  `stu_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生编号',
  `stu_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报名状态',
  `is_arrive` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否正常出息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_active_stu
-- ----------------------------
INSERT INTO `db_active_stu` VALUES ('0ae56ff48a094fe394bf8cfefc7b8a5a', '6580206a0953478fa99e176ec49767d7', 'e16473678e3e4f6e9e2a5ff28f616b51', '苏bb', '18178326352', '1', '1');
INSERT INTO `db_active_stu` VALUES ('22dc28462a474a2faca397644242abf5', '1047c4ab3a0044f4ac74de83f689576e', '3ab03a89859c46498125e35eaf09cd8d', '苏aa ', '18178326350', '1', '0');
INSERT INTO `db_active_stu` VALUES ('52da3600f25548f1867efde8979377ea', '22d9536bf0524c6194a330b94e6ff9a4', '05df94f4feac49ee9b6f62c8be971017', '苏cc', '18178326353', '1', '1');
INSERT INTO `db_active_stu` VALUES ('775cc8caa9c84d1e92e71fa7d793c328', 'd6dba3e7bbb74f4587b6878dc1625880', '3ab03a89859c46498125e35eaf09cd8d', '苏aa ', '18178326350', '1', '2');
INSERT INTO `db_active_stu` VALUES ('c7cc75f3092248b5b4bb1844a2a7c6b0', 'cbbce25199e341a290c594aedcae17e9', 'e16473678e3e4f6e9e2a5ff28f616b51', '苏bb', '18178326352', '1', '1');
INSERT INTO `db_active_stu` VALUES ('d91e637893364981878d067f9ffeb6b0', '926b8ab6671a42b8ba7ab800b89ef609', '3ab03a89859c46498125e35eaf09cd8d', '苏aa ', '18178326350', '1', '1');
INSERT INTO `db_active_stu` VALUES ('f4ea84f6bca742df80c4b2a8bb9011e6', 'c7224a4225714cbbbbe3e06af1258eb7', '5b8b20bb9cd9474b843306a116b44bb2', '测试用的', '1111110', '1', '1');

-- ----------------------------
-- Table structure for db_message
-- ----------------------------
DROP TABLE IF EXISTS `db_message`;
CREATE TABLE `db_message`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '留言内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间',
  `create_stu` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言学生',
  `audit_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核状态',
  `replay` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `replay_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '回复时间',
  `replay_user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_message
-- ----------------------------
INSERT INTO `db_message` VALUES ('32ee579f4d97467b991e801c04200545', '活动太少，希望学校各社团多举办一些有意义的活动', '2021-03-27 12:33:20', '3ab03a89859c46498125e35eaf09cd8d', '0', 'qqqq', '2021-03-28 12:33:48', '社团管理人sys');
INSERT INTO `db_message` VALUES ('7dc3208ee4c9400c9a1ac6cf61fba541', 'qqqq', '2021-04-03 10:45:59', '8a32a58f085644268389ebf113e866d6', '0', NULL, NULL, NULL);
INSERT INTO `db_message` VALUES ('94a3149079374c06aafb9d5ae22f095a', '111', '2021-04-03 10:33:52', '8a32a58f085644268389ebf113e866d6', '0', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for db_site_news
-- ----------------------------
DROP TABLE IF EXISTS `db_site_news`;
CREATE TABLE `db_site_news`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `news_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻状态',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `pic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻主图',
  `short_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '新闻内容',
  `create_user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_run` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否推荐',
  `belon_team` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属社团',
  `is_audit` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否审核',
  `ac_start_time` timestamp NULL DEFAULT NULL,
  `ac_end_time` timestamp NULL DEFAULT NULL,
  `is_can_apply` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_site_news
-- ----------------------------
INSERT INTO `db_site_news` VALUES ('08485ec7ce93485f8794dbfd07e35eec', '3', '2019舞动人生活动的优雅瞬间', '\\upload\\a6.jpg', '', '随着经济的告诉发展，人们对于精神文明的追求，享受舞台文化的支持，在整个民族文明发展的同时，也希望民族文化在市场上进行延伸和发展，尤其是传统的民族文化在市场中的到认可，会为民族的后续发展提供有力的保障。<br /><br /><p>在民族精神文化领域内，来自民族文化特色的校园民族舞蹈服装和传统民族舞蹈服装的设计与定制，成为了诸多民族文化宣传和推广的主要精神源，他们不仅能够带给人们精神领域的冲击，还能够带给对于民族神秘的精神文化的探索，让民族文化在全国范围内得到扩大。</p><p><img src=\"http://www.yichen88.com/uploadfiles/pictures/news/20180830133901_3973.jpg\" alt=\"æ&nbsp;¡å­æ°æèè¹æè£å®å¶\" /><br /></p><p>在我国56个民族当中，拥有很多具有代表意义的舞蹈演出节目，如：傣族孔雀舞、蒙古草原舞，西藏“谐”“卓”舞蹈，千手观音，古典宫廷舞，新疆民族舞蹈，朝鲜民族舞蹈，壮族舞蹈，雨巷，扇舞，古典飞天舞等十多个著名演出节目获得了世界一致的好评，让整个民族舞蹈文化在传统的艺术舞台上获得了更高的荣誉。<br /></p><p><img src=\"http://www.yichen88.com/uploadfiles/pictures/news/20180830134047_9143.jpg\" alt=\"æ&nbsp;¡å­èå°æè£æé¥°è®¾è®¡\" /><br /></p>', 'maker', '2021-07-05 15:28:43', '1', '1657bce76d19409ca110515b518985ef', '1', NULL, NULL, NULL);
INSERT INTO `db_site_news` VALUES ('16d20a493eb247fba1b55d80f9c1f42d', '2', '大学生挑战杯', '\\upload\\3.jpg', 'wwww', '挑战杯”全国大学生课外学术科技作品竞赛是由共青团中央、中国科协、教育部、全国学联主办的大学生课外学术科技活动中一项具有导向性、示范性和群众性的竞赛活动，俗称“大挑”，每两年举办一届。“挑战杯”全国大学生课外学术科技作品竞赛起源于天津大学首创的“大学生挑战杯竞赛”，自1989年以来已分别在清华大学、浙江大学、上海交通大学、武汉大学、南京理工大学、重庆大学、西安交通大学、华南理工大学,复旦大学、北京航空航天大学、苏州大学等成功地举办了十三届，至今由全国各高校争相举办 [2]  。<br />竞赛的宗旨：崇尚科学、追求真知、勤奋学习、锐意创新、迎接挑战。 [1] <br />竞赛的目的：引导和激励高校学生实事求是、刻苦钻研、勇于创新、多出成果、提高素质，并在此基础上促进高校学生课外学术科技活动的蓬勃开展，发现和培养一批在学术科技上有作为、有潜力的优秀人才。<br />竞赛的方式：高等学校在校学生申报自然科学类学术论文、哲学社会科学类社会调查报告和学术论文、科技发明制作三类作品参赛；聘请专家评定出具有较高学术理论水平、实际应用价值和创新意义的优秀作品，给予奖励；组织学术交流和科技成果的展览、转让活动。<br />注意事项：毕业设计和课程设计（论文）、学年论文和学位论文、国际竞赛中获奖的作品、获国家级奖励成果（含本竞赛主办单位参与举办的其它全国性竞赛的获奖作品）等均不在申报范围之列。申报参赛的作品分为自然科学类学术论文、哲学社会科学类社会调查报告和学术论文、科技发明制作三类。自然科学类学术论文作者限本专科生。哲学社会科学类社会调查报告和学术论文限定在哲学、经济、社会、法律、教育、管理6个学科内。科技发明制作类分为A、B两类：A类指科技含量较高、制作投入较大的作品；B类指投入较少，且为生产技术或社会生活带来便利的小发明、小制作等。 [3] <br />“挑战杯”竞赛受到了党和国家领导同志的亲切关怀，江泽民同志为“挑战杯”竞赛题写了杯名，李鹏、李岚清等领导同志以及苏步青、钱三强、卢嘉锡、周光召、朱光亚、费孝通等一批著名科学家、社会学家也为竞赛题了词。由于“挑战杯”竞赛活动展示了我国各高校的育人成果，推动了高校学生与社会间的交流与合作，已成为高校学生课外科技文化活动中的一项主导性活动，越来越受到广大学生的欢迎和各高等院校的重视，在社会上产生广泛而良好的影响，被誉为当代大学生科技创新的“奥林匹克”盛会，成为促进高校科技成果向现实生产力转化的有效方式', 'maker', '2021-07-05 15:28:43', '1', '1e776e07b66d454789f2dc89cc5097cd', '1', '2021-03-27 22:23:55', '2021-04-06 22:23:57', NULL);
INSERT INTO `db_site_news` VALUES ('22d9536bf0524c6194a330b94e6ff9a4', '2', '墨韵溢校园，书法显魅力', '\\upload\\82ac490d5d844cf3b6e1eb20fbe3e5bd.jpeg', '', '为什么要去农村支教？<br />因为，中国很缺老师，尤其是在资源匮乏、地处偏远的农村地区，老师更加紧缺。条件艰苦，工作和生活都不便利，使得越来越多的青年老师不愿意去农村。<br /><br />因为缺乏老师，一些教学点只能被迫撤掉，就会导致学生上学需要走更远的山路；因为缺乏老师，音乐、体育和美术等课程开不出，学校的音乐设备、体育器材只能整齐的放在器材室里，积着很厚的灰尘，使孩子们没有办法全面发展；因为缺乏老师，尤其缺少新的年轻教师，知识就得不到更新，我们的孩子接受的教育就会落后，城乡教育之间的差距就会越拉越大。<br /><br />我们可以做什么？<br />那就让更多的年轻人看见农村教育的现状，尝试去做一些努力，中国每年有近千万的大学毕业生，他们中间肯定曾经有教师理想的，也肯定有想要为农村教育做一些事情的，更有想要终身投入到中国农村教育事业中的。集合他们的力量，努力尝试为农村教育做出一些改变，进而推动社会关注农村教育，关注中国教育问题，我们相信，通过这样的努力，中国农村教育的现状会得到改变。<br />现在，为中国而教2019级志愿者教师招募正式开启，在这里你能找到一群志同道合的伙伴，你可以在你的教室里做有趣的教育尝试，更有针对性的培训让你能迅速成长为一名合格的志愿者老师。<br />还等什么，赶快来申请吧！<br /><br />任教要求：<br />1、应届或毕业两年内的统招全日制本科毕业生及研究生（专业不限）；<br />2、关注教育公平，热爱教育，乐于合作，坚韧不拔，立志用两年时间投身农村一线教育。<br /><br />任教时间：2019年9月至2021年7月 <br /><br />任教地点：河北、贵州、湖南、云南、四川地区农村学校<br /><br />任教职责：<br />1、完成教学工作，帮助学生全面发展；<br />2、参加培训、团建、游学等活动，按时提交工作报告和学期总结；<br />3、根据学校、社区情况，开展社会调研，组织小型公益项目。<br /><br />任教保障：<br />1、选校：在农村地区选择适合、稳定的合作学校；<br />2、保障：发放每月生活补贴、春节返家路费，购买保险；任教学校安排住宿；<br />3、培训：1个月岗前培训，3次假期培训，4次中期培训；<br />4、探访：每学期1-2次工作人员探访；<br />5、资源：为你的社会调研与公益项目整合资源、提供支持与指导；<br />6、团队：提供团队经费，集结区域团队进行游学等团建活动，相互交流、支持与合作；<br />7、游学：2次团队吃苦旅行，在旅途中磨砺与成长；<br />8、职业发展：为完成支教的志愿者提供支教证明，提供职业规划辅导、推荐就业机会；<br />9、校友会：聚集多元化人才的校友会，两年之后仍为你的发展提供持续支持。<br /><br />青年社团宣2019年3月29号', 'maker', '2021-07-05 15:28:43', '1', 'f7ca442feb6049298ff1f8834a009369', '1', '2021-03-27 22:23:55', '2021-04-06 22:23:57', NULL);
INSERT INTO `db_site_news` VALUES ('33627bfd15e84be9992115eac724ff01', '3', '2019爱心筹温暖人间', '\\upload\\a5.jpg', '', '每一件失物的背后，都会有一个焦急的人在四处寻找。可是有的时候捡到东西的人往往不知道怎么找到失主，而丢失东西的人也只能盲目寻找。为了解决这类问题，经济与管理学院2018级信息管理与信息系统02班团支部建立了一套完整的体系，开创了福州大学纯公益的失物招领平台。旨在收集各类失物招领信息，为广大的福大学子提供失物招领平台。<br /><br />        该活动发起者不仅在每栋宿舍楼下放置失物招领箱，而且还建立了一个制度完善的东四东五失物招领群。同学们可以通过扫失物招领群的二维码进群，进群后可以及时了解到失物的信息，还可以反映宿舍吵闹、衣服滴水等问题。若捡拾到东西，可在群上发布信息，三天未领取的失物可联系管理员进行处理。截止至今日，该群人数已接近500人，找回失物百余件。<br /><br /><p>         让公益蔓延，让爱心传递。学子需要这样的一个平台，让遗失物品的人有失而复得的惊喜，让捡拾物品的人有帮助他人的快乐。值此甲子华诞之际，信息管理与信息系统02班团支部通过创建这样一个平台，唤回了拾金不昧的传统美德！</p><p><img src=\"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2624640914,1704036315&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></p><p><img src=\"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1750921490,3531813130&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></p><p><img src=\"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1782895337,3019259424&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></p>', 'maker', '2021-07-05 15:28:43', '1', '77a2e5e7376f4d2796ae3d00b5825390', '1', NULL, NULL, NULL);
INSERT INTO `db_site_news` VALUES ('40d7bdafc5ac41c0ac5cb50bfde36fbb', '1', '一年一度书法统考竞赛“东方杯·挥毫中国梦', '\\upload\\a2.jpg', '', '　2018年10月6号，由安徽省东方文化艺术中心主办的安徽省第四届“东方杯·挥毫中国梦”统考复赛在合肥科技职业技术学院举办。<br /><br />　　安徽省东方文化艺术中心负责人李龙说，安徽省东方文化艺术中心，是由中国书法家协会、文化部艺术中心在安徽省指定授权艺术考级单位。<br /><br />　　关于这次书法考级：1、依据国家文旅部31号令开展的社会艺术类考级工作规定；2、依据中国书法家协会授权自2014年在安徽省开展的书法考级工作规定；3、依据教育部2014年1号文件《关于推进学校艺术教育发展的若干意见》美术类特长，按九级加3分标准执行；2016年2月23日发布《中小学艺术素质测评颁发》美术艺术类考试将正式纳入初中升学考试成绩；4、考级测评成绩将录入文旅部人才库备案，作为升学、入职、入会的资质依据；5、通过考级了解学习的状态，对学员是肯定和鼓励，也是阶段性学习成果的权威检验；6、通过学员的整体测评提升教师的标准学水平；7、把考级测评用现场竞技的形式提高社会对综合素质培养的认知度，激发人们对传统艺术的热情，宣传考级测评的科学性和严肃性。<br /><br />　　安徽省东方文化艺术中心负责人李龙说，关于本次竞赛：安徽省“东方杯”是自2015年一年一度的书法考级统考竞赛；一、对九年义务制教育的学生免费参加初赛测评；二、组参赛成员进行免费定级；三、书法教师经过测评录入教师库，推荐优质教学单位，辅助老师建立教学点。四、以表彰、奖状、奖品的形式鼓励学员的学习积极性，弘扬传统文化。<br /><br />　　“东方杯”统考统考竞赛已形成了在安徽省书法、绘画统一春季统考、秋季统考竞赛，建立完整的大数据，已在安徽省形成全面覆盖。<br /><br /><p>　　本次统考竞赛根据“东方杯”全省统考竞赛具体要求，本次竞赛初赛共计收到作品近2万件，复赛作品近5千件，入展获奖人员需要参加现场统考竞赛，以评定获奖、定级作品。</p><p><img src=\"https://f12.baidu.com/it/u=3102023098,956836046&amp;fm=207\" alt=\"\" /><br /></p><p><img src=\"http://img1.imgtn.bdimg.com/it/u=3878886207,3551707862&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></p>', 'maker', '2021-07-05 15:28:43', '1', 'f7ca442feb6049298ff1f8834a009369', '1', NULL, NULL, NULL);
INSERT INTO `db_site_news` VALUES ('609cad82eb7440c0a405a9693eed1920', '1', '传承经典文化，演出经典舞台艺术！', '\\upload\\ccd4966d6ca44c658655deeaee514944.jpeg', '', '随着经济的告诉发展，人们对于精神文明的追求，享受舞台文化的支持，在整个民族文明发展的同时，也希望民族文化在市场上进行延伸和发展，尤其是传统的民族文化在市场中的到认可，会为民族的后续发展提供有力的保障。<br /><br /><p>在民族精神文化领域内，来自民族文化特色的校园民族舞蹈服装和传统民族舞蹈服装的设计与定制，成为了诸多民族文化宣传和推广的主要精神源，他们不仅能够带给人们精神领域的冲击，还能够带给对于民族神秘的精神文化的探索，让民族文化在全国范围内得到扩大。</p><p><img src=\"http://www.yichen88.com/uploadfiles/pictures/news/20180830134047_9143.jpg\" alt=\"æ&nbsp;¡å­èå°æè£æé¥°è®¾è®¡\" /><br /></p><p></p><p>在我国56个民族当中，拥有很多具有代表意义的舞蹈演出节目，如：傣族孔雀舞、蒙古草原舞，西藏“谐”“卓”舞蹈，千手观音，古典宫廷舞，新疆民族舞蹈，朝鲜民族舞蹈，壮族舞蹈，雨巷，扇舞，古典飞天舞等十多个著名演出节目获得了世界一致的好评，让整个民族舞蹈文化在传统的艺术舞台上获得了更高的荣誉。</p><p>在传统的民族舞蹈服装设计与定制款式中，来自民族神圣领域的图纹服饰在演出服装设计中，得到了更高的支持率。传统<a href=\"http://www.yichen88.com/mzfzdz.html\">民族服装</a>设计与定制蕴含了历史文化，地域文化，宗教文化等多方面的文化演出服装，可以在整个<a href=\"http://www.yichen88.com/mzfzdz.html\"><strong><span style=\"color:rgb(255, 0, 0);\">民族舞蹈服装设计</span></strong></a>与定制款式中获得更高的市场演出服装，这位民族舞蹈服装的设计与定制款式提供更加具有代表性艺术舞台演出服装设计与定制。成为其经典舞台演出服装设计的特别款式。</p><p>在众多的舞台演出服装设计中，他们不仅能够带给人们更多历史文化，还能够让人们喜欢和习惯来自民族舞蹈服装设计的特色，在演出服装设计与定制款式中，成为了其独特艺术代表的舞台演出服装。让其在专业的舞台<a href=\"http://www.yichen88.com/ycfzdz.html\">演出服装</a>领域取得了更高的标准。</p><br />', 'maker', '2021-07-05 15:28:43', '1', '1657bce76d19409ca110515b518985ef', '1', NULL, NULL, NULL);
INSERT INTO `db_site_news` VALUES ('6a4f6fe16d674aa4a6627ee3fb865aee', '3', '翰墨飘香、传承文化', '', '', '法艺术是中华民族传统文化的瑰宝。为了提高教师书写水平，本学期每周四下午，双凤中心小学邀请了太仓市书法协会主席郁文明老师为爱好书法的教师进行书法培训。<br /><br /><p>培训组共27位老师参加。在培训中，郁老师从汉字的演变、毛笔书法字帖的选择、书写工具的挑选、临帖方法等方面与老师们进行了交流，并以颜体楷书、隶书为例，深入浅出地向老师们和学生们讲解、教授了基本笔画的书写。他精湛绝妙的书法技艺，让参加培训的师生们领略了中华书法的独特魅力，感受到书法的奇妙表现力。教师们利用课余时间进行书写练习，为了更好地交流建立QQ群，老师们将写好的作品拍照上传，共大家欣赏切磋，有效训练了书写的基本功，促进书写更上一层楼。</p><p><img src=\"http://news.sfxx.com.cn/picture/-1/171109095732280782.jpg\" alt=\"\" /><br /></p><p><img src=\"http://news.sfxx.com.cn/picture/-1/171109095732466544.jpg\" alt=\"\" /><br /></p><p><br /></p>', 'maker', '2021-07-05 15:28:43', '1', 'f7ca442feb6049298ff1f8834a009369', '1', NULL, NULL, NULL);
INSERT INTO `db_site_news` VALUES ('7d5fc841cf7e4c0c8a28d8f3f3de8cf4', '1', '羽毛球亚锦赛首批参赛名单出炉', '\\upload\\02f2fe338ddb45ce86f0571688580248.jpeg', 'a', '<p><img src=\"http://n.sinaimg.cn/sports/transform/313/w650h463/20190311/abIC-htzuhtp6001723.jpg\" alt=\"éé¨è²\" /></p><p><span style=\"color: rgb(77, 79, 83); font-family: \" hiragino=\"\" sans=\"\" gb=\"\" microsoft=\"\" yahei=\"\" simsun=\"\" arial=\"\" font-size:=\"\" 16px=\"\" font-weight:=\"\" 700=\"\" letter-spacing:=\"\" 1px=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;陈雨菲</span><br /></p><p><span style=\"color: rgb(77, 79, 83); font-family: \" hiragino=\"\" sans=\"\" gb=\"\" microsoft=\"\" yahei=\"\" simsun=\"\" arial=\"\" font-size:=\"\" 16px=\"\" font-weight:=\"\" 700=\"\" letter-spacing:=\"\" 1px=\"\">武汉晚报讯（记者余国华）2019年亚洲羽毛球锦标赛将于4月23日至28日在武汉体育中心举行。距离大战开启不足一月之际，亚羽联公布了首批参赛运动员名单，刚刚在2019全英羽毛球公开赛上登顶的冠军们，这一次将悉数来汉，为江城球迷奉献一场羽毛球的饕餮盛宴。<br /></span></p><p><span style=\"color: rgb(77, 79, 83); font-family: \" hiragino=\"\" sans=\"\" gb=\"\" microsoft=\"\" yahei=\"\" simsun=\"\" arial=\"\" font-size:=\"\" 16px=\"\" font-weight:=\"\" 700=\"\" letter-spacing:=\"\" 1px=\"\">爱好羽毛球运动的人也许知道，现代羽毛球运动发源于英国。而全英羽毛球公开赛从1899年开始举办，一直被公认为非官方的世界羽毛球锦标赛。<br /><br />　　3月上旬在伯明翰举行的2019年全英羽毛球公开赛男单决赛中，日本选手桃田贤斗以2：1战胜丹麦选手安赛龙，成为历史上第一位赢得全英男单冠军的日本球员。 24岁的桃田在赛后表示：“在这个比赛问鼎冠军是从小时候就有的梦想。拿到这个冠军也令我更加自信了。”所谓“更加自信”，自然是剑指东京奥运会。<br /></span></p>', 'maker', '2021-07-05 15:28:43', '1', 'fb395bb505f844e38b267912977cb933', '1', NULL, NULL, NULL);
INSERT INTO `db_site_news` VALUES ('8bc2f8cfa1bb43ce96b60a6c8b4bee38', '1', '美国加州伯克利大学27届中国武术大赛圆满收官', '\\upload\\timg6.jpg', '', '<p><img src=\"https://www.taiji.net.cn/data/attachment/portal/201903/26/094154xnb6q9vp3pv4qcqh.jpg\" alt=\"\" /></p><p><span style=\"font-family: \" microsoft=\"\" yahei=\"\" tahoma=\"\" helvetica=\"\" simsun=\"\" sans-serif=\"\" font-size:=\"\" 14px=\"\">（钱承飞供稿）3月23至24日（美国时间），西半球最大的中国武术比赛—加州伯克利大学第27届中国武术大赛于本校体育馆举行，来自于加拿大、美国加州、俄勒冈、华盛顿等地区近600人（包括运动员337人）参加大赛活动。世界太极冠军高佳敏、邹云建等人带着武术团队参赛，北京奥运会武术冠军赵庆建在现场辅导学员练武。&nbsp;</span><br /></p><p><span style=\"font-family: \" microsoft=\"\" yahei=\"\" tahoma=\"\" helvetica=\"\" simsun=\"\" sans-serif=\"\" font-size:=\"\" 14px=\"\"><img src=\"https://www.taiji.net.cn/data/attachment/portal/201903/26/094153l5i57l799i529547.jpg\" alt=\"\" /><br /></span></p><p><span style=\"font-family: \" microsoft=\"\" yahei=\"\" tahoma=\"\" helvetica=\"\" simsun=\"\" sans-serif=\"\" font-size:=\"\" 14px=\"\"><span style=\"font-family: \" microsoft=\"\" yahei=\"\" tahoma=\"\" helvetica=\"\" simsun=\"\" sans-serif=\"\" font-size:=\"\" 14px=\"\">作为世界著名高等学府，加州伯克利大学于1989年率先在全美开设中国武术计划，面向在校学生，从而掀起了美国大学学习中国武术的热潮。美国大学武术计划创始人方国璇于1992年创办首届中国武术大赛，致力于传播武术文化，已经成为全美最具权威性的中国武术比赛。“中国十大武星”获得者、“太极皇后”高佳敏带领12名儿童组成的武术团队从俄勒冈州赶来参赛。她曾于1991年获得世界武术锦标赛太极拳冠军、1992年获第三届亚洲武术锦标赛冠军、1994年、1998年分别获得第十二届、十三届亚运会太极拳冠军。“我的武馆孩子”，这是她经常说的，她把自己武馆的孩子当作自己孩子来教学，倾心培养孩子成才。对于自己孩子练武与参赛，她认为很有必要，“率先垂范很重要，只有让自己孩子好好练武和培养兴趣才能带动其他人练武”，辛勤耕耘出硕果，她的女儿和11人今年比赛都获得了好成绩。世界太极冠军邹云建、国际武道联盟主席彭文也带着女儿和武术团队“赶考”。通过参赛获得武术交流机会，培养孩子的荣誉感和责任感，还可以促进学习和生活自理能力，这是许多练武孩子的家长共识。以大赛形象代言人身份，刚参加完助力武术入奥运--第二届美国纽约国际武术锦标赛的赵庆建特意赶来，他是2008年北京奥运会冠军，一到伯克利大赛现场，在23日赛事结束后，赵庆建悉心辅导伯克利大学武术队队员刀术，他演示的一招一式仍可以见当年威武雄壮！&nbsp;&nbsp;</span><br /></span></p><p><span style=\"font-family: \" microsoft=\"\" yahei=\"\" tahoma=\"\" helvetica=\"\" simsun=\"\" sans-serif=\"\" font-size:=\"\" 14px=\"\"><span style=\"font-family: \" microsoft=\"\" yahei=\"\" tahoma=\"\" helvetica=\"\" simsun=\"\" sans-serif=\"\" font-size:=\"\" 14px=\"\"><br /></span></span></p>', 'maker', '2021-07-05 15:28:43', '1', '89073b89b82d4b649820a6a1a44c4c2f', '1', NULL, NULL, NULL);
INSERT INTO `db_site_news` VALUES ('c1f3f6b4b0314254b5a058409a0bf333', '3', '“羽”动人生，“球”得健康', '\\upload\\a7.jpg', '', '<p>热浪滚滚，启航羽毛球馆迎来了一支部的 生产和设备人员以及羽毛球技术指导----同好会陈金猛。大家换好运动服来到球场，热情高涨，新的体验开始了。</p><p><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20170827/6b17c2978bba4423b41763a53c4123b2.jpeg\" alt=\"\" /><br /></p><p></p><p style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: \" pingfang=\"\" sc=\"\" arial=\"\" simsun=\"\" sans-serif=\"\">不久，啦啦队和后援团们个个摩拳擦掌、跃跃欲试，又纷纷拿起各自的球拍，东边一球，西边一球，新一轮的“厮杀”开始了。三个场地很快就被利用上了。</p><p style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: \" pingfang=\"\" sc=\"\" arial=\"\" simsun=\"\" sans-serif=\"\">羽毛球馆的训练场地没有空调，大家汗流浃背、酣畅淋漓，尽情地挥洒汗水和快乐，真是非一般的享受啊。数场比赛下来，大家已然相见恨晚。</p><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20170827/3bf731e654544054b76b8c21fff8872f.jpeg\" alt=\"\" /><br /><p><span style=\"color: rgb(25, 25, 25); font-family: \" pingfang=\"\" sc=\"\" arial=\"\" simsun=\"\" sans-serif=\"\" font-size:=\"\" 16px=\"\">不知不觉中，时间慢慢接近尾声，两个小时的羽毛球比赛很快结束了，球友间沟通、互助、友爱，让球场内充满温馨感动。欢声笑语的两小时里，给大家的业余生活增添了色彩，也让同事间有了更多地沟通和交流，让氛围更加融洽，但愿我们在以后的日子里能够有更多地机会可以参加这种使人身心愉悦的活动，期待下一次的相聚</span><br /></p>', 'maker', '2021-07-05 15:28:43', '1', 'fb395bb505f844e38b267912977cb933', '1', NULL, NULL, NULL);
INSERT INTO `db_site_news` VALUES ('c7224a4225714cbbbbe3e06af1258eb7', '2', '校园爱心筹', '\\upload\\u23.jpg', '', '为什么要去农村支教？<br />因为，中国很缺老师，尤其是在资源匮乏、地处偏远的农村地区，老师更加紧缺。条件艰苦，工作和生活都不便利，使得越来越多的青年老师不愿意去农村。<br /><br />因为缺乏老师，一些教学点只能被迫撤掉，就会导致学生上学需要走更远的山路；因为缺乏老师，音乐、体育和美术等课程开不出，学校的音乐设备、体育器材只能整齐的放在器材室里，积着很厚的灰尘，使孩子们没有办法全面发展；因为缺乏老师，尤其缺少新的年轻教师，知识就得不到更新，我们的孩子接受的教育就会落后，城乡教育之间的差距就会越拉越大。<br /><br />我们可以做什么？<br />那就让更多的年轻人看见农村教育的现状，尝试去做一些努力，中国每年有近千万的大学毕业生，他们中间肯定曾经有教师理想的，也肯定有想要为农村教育做一些事情的，更有想要终身投入到中国农村教育事业中的。集合他们的力量，努力尝试为农村教育做出一些改变，进而推动社会关注农村教育，关注中国教育问题，我们相信，通过这样的努力，中国农村教育的现状会得到改变。<br />现在，为中国而教2019级志愿者教师招募正式开启，在这里你能找到一群志同道合的伙伴，你可以在你的教室里做有趣的教育尝试，更有针对性的培训让你能迅速成长为一名合格的志愿者老师。<br />还等什么，赶快来申请吧！<br /><br />任教要求：<br />1、应届或毕业两年内的统招全日制本科毕业生及研究生（专业不限）；<br />2、关注教育公平，热爱教育，乐于合作，坚韧不拔，立志用两年时间投身农村一线教育。<br /><br />任教时间：2019年9月至2021年7月 <br /><br />任教地点：河北、贵州、湖南、云南、四川地区农村学校<br /><br />任教职责：<br />1、完成教学工作，帮助学生全面发展；<br />2、参加培训、团建、游学等活动，按时提交工作报告和学期总结；<br />3、根据学校、社区情况，开展社会调研，组织小型公益项目。<br /><br />任教保障：<br />1、选校：在农村地区选择适合、稳定的合作学校；<br />2、保障：发放每月生活补贴、春节返家路费，购买保险；任教学校安排住宿；<br />3、培训：1个月岗前培训，3次假期培训，4次中期培训；<br />4、探访：每学期1-2次工作人员探访；<br />5、资源：为你的社会调研与公益项目整合资源、提供支持与指导；<br />6、团队：提供团队经费，集结区域团队进行游学等团建活动，相互交流、支持与合作；<br />7、游学：2次团队吃苦旅行，在旅途中磨砺与成长；<br />8、职业发展：为完成支教的志愿者提供支教证明，提供职业规划辅导、推荐就业机会；<br />9、校友会：聚集多元化人才的校友会，两年之后仍为你的发展提供持续支持。<br /><br />                                                                                      青年社团宣2019年3月29号', 'maker', '2021-07-05 15:28:43', '1', '77a2e5e7376f4d2796ae3d00b5825390', '1', '2021-03-27 22:23:55', '2021-04-06 22:23:57', NULL);
INSERT INTO `db_site_news` VALUES ('d1ac55a8c30949158841460a1d3a3be7', '2', '2019暑期志愿者活动', '\\upload\\u13.jpg', '', '为什么要去农村支教？<br />因为，中国很缺老师，尤其是在资源匮乏、地处偏远的农村地区，老师更加紧缺。条件艰苦，工作和生活都不便利，使得越来越多的青年老师不愿意去农村。<br /><br />因为缺乏老师，一些教学点只能被迫撤掉，就会导致学生上学需要走更远的山路；因为缺乏老师，音乐、体育和美术等课程开不出，学校的音乐设备、体育器材只能整齐的放在器材室里，积着很厚的灰尘，使孩子们没有办法全面发展；因为缺乏老师，尤其缺少新的年轻教师，知识就得不到更新，我们的孩子接受的教育就会落后，城乡教育之间的差距就会越拉越大。<br /><br />我们可以做什么？<br />那就让更多的年轻人看见农村教育的现状，尝试去做一些努力，中国每年有近千万的大学毕业生，他们中间肯定曾经有教师理想的，也肯定有想要为农村教育做一些事情的，更有想要终身投入到中国农村教育事业中的。集合他们的力量，努力尝试为农村教育做出一些改变，进而推动社会关注农村教育，关注中国教育问题，我们相信，通过这样的努力，中国农村教育的现状会得到改变。<br />现在，为中国而教2019级志愿者教师招募正式开启，在这里你能找到一群志同道合的伙伴，你可以在你的教室里做有趣的教育尝试，更有针对性的培训让你能迅速成长为一名合格的志愿者老师。<br />还等什么，赶快来申请吧！<br /><br />任教要求：<br />1、应届或毕业两年内的统招全日制本科毕业生及研究生（专业不限）；<br />2、关注教育公平，热爱教育，乐于合作，坚韧不拔，立志用两年时间投身农村一线教育。<br /><br />任教时间：2019年9月至2021年7月  <br /><br />任教地点：河北、贵州、湖南、云南、四川地区农村学校<br /><br />任教职责：<br />1、完成教学工作，帮助学生全面发展；<br />2、参加培训、团建、游学等活动，按时提交工作报告和学期总结；<br />3、根据学校、社区情况，开展社会调研，组织小型公益项目。<br /><br />任教保障：<br />1、选校：在农村地区选择适合、稳定的合作学校；<br />2、保障：发放每月生活补贴、春节返家路费，购买保险；任教学校安排住宿；<br />3、培训：1个月岗前培训，3次假期培训，4次中期培训；<br />4、探访：每学期1-2次工作人员探访；<br />5、资源：为你的社会调研与公益项目整合资源、提供支持与指导；<br />6、团队：提供团队经费，集结区域团队进行游学等团建活动，相互交流、支持与合作；<br />7、游学：2次团队吃苦旅行，在旅途中磨砺与成长；<br />8、职业发展：为完成支教的志愿者提供支教证明，提供职业规划辅导、推荐就业机会；<br /><p>9、校友会：聚集多元化人才的校友会，两年之后仍为你的发展提供持续支持。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 青年社团宣2019年3月29号</p>', 'maker', '2021-07-05 15:28:43', '1', 'c500a06df04742728ab82d7d1728cf43', '1', '2021-03-27 22:23:55', '2021-04-06 22:23:57', NULL);
INSERT INTO `db_site_news` VALUES ('e1b8f3fba08a4e92a3cf01c3e63b4eba', '2', '“羽”动人生，“球”得健康', '\\upload\\a5.jpg', '', '为什么要去农村支教？<br />因为，中国很缺老师，尤其是在资源匮乏、地处偏远的农村地区，老师更加紧缺。条件艰苦，工作和生活都不便利，使得越来越多的青年老师不愿意去农村。<br /><br />因为缺乏老师，一些教学点只能被迫撤掉，就会导致学生上学需要走更远的山路；因为缺乏老师，音乐、体育和美术等课程开不出，学校的音乐设备、体育器材只能整齐的放在器材室里，积着很厚的灰尘，使孩子们没有办法全面发展；因为缺乏老师，尤其缺少新的年轻教师，知识就得不到更新，我们的孩子接受的教育就会落后，城乡教育之间的差距就会越拉越大。<br /><br />我们可以做什么？<br />那就让更多的年轻人看见农村教育的现状，尝试去做一些努力，中国每年有近千万的大学毕业生，他们中间肯定曾经有教师理想的，也肯定有想要为农村教育做一些事情的，更有想要终身投入到中国农村教育事业中的。集合他们的力量，努力尝试为农村教育做出一些改变，进而推动社会关注农村教育，关注中国教育问题，我们相信，通过这样的努力，中国农村教育的现状会得到改变。<br />现在，为中国而教2019级志愿者教师招募正式开启，在这里你能找到一群志同道合的伙伴，你可以在你的教室里做有趣的教育尝试，更有针对性的培训让你能迅速成长为一名合格的志愿者老师。<br />还等什么，赶快来申请吧！<br /><br />任教要求：<br />1、应届或毕业两年内的统招全日制本科毕业生及研究生（专业不限）；<br />2、关注教育公平，热爱教育，乐于合作，坚韧不拔，立志用两年时间投身农村一线教育。<br /><br />任教时间：2019年9月至2021年7月 <br /><br />任教地点：河北、贵州、湖南、云南、四川地区农村学校<br /><br />任教职责：<br />1、完成教学工作，帮助学生全面发展；<br />2、参加培训、团建、游学等活动，按时提交工作报告和学期总结；<br />3、根据学校、社区情况，开展社会调研，组织小型公益项目。<br /><br />任教保障：<br />1、选校：在农村地区选择适合、稳定的合作学校；<br />2、保障：发放每月生活补贴、春节返家路费，购买保险；任教学校安排住宿；<br />3、培训：1个月岗前培训，3次假期培训，4次中期培训；<br />4、探访：每学期1-2次工作人员探访；<br />5、资源：为你的社会调研与公益项目整合资源、提供支持与指导；<br />6、团队：提供团队经费，集结区域团队进行游学等团建活动，相互交流、支持与合作；<br />7、游学：2次团队吃苦旅行，在旅途中磨砺与成长；<br />8、职业发展：为完成支教的志愿者提供支教证明，提供职业规划辅导、推荐就业机会；<br />9、校友会：聚集多元化人才的校友会，两年之后仍为你的发展提供持续支持。<br /><br />青年社团宣2019年3月29号', 'maker', '2021-07-05 15:28:43', '1', 'fb395bb505f844e38b267912977cb933', '1', '2021-03-27 22:23:55', '2021-04-06 22:23:57', NULL);
INSERT INTO `db_site_news` VALUES ('e236b649c19d48a69809a9a243ac7e53', '3', '2019暑期志愿者活动精彩回顾', '', '', '这个温暖的夏天，你可曾期待走过一段也许会铭记一生的时光？ <br /><br /><p>乡村村落，所拥有的并不只是贫瘠、落魄。那里有可爱的孩子在期待着来自远方的声音，期待着不一样的老师和丰富多彩的课外知识…… </p><p><img src=\"https://img3.doubanio.com/view/group_topic/l/public/p81143971.webp\" alt=\"\" /><br /></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">在这里，孩子们的爸爸妈妈大多去大城市打工了，很少有时间陪伴孩子。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">爸爸妈妈不在身边的日子里，总是孤单多一点。也许因为你的一次行动，也许因为你付出的那点滴的爱，他们就会倍感温暖</span><br /></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><img src=\"https://img3.doubanio.com/view/group_topic/l/public/p81144020.webp\" alt=\"\" /><br /></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">不必担心经验不充分，不必担心储备的知识不够多，能够教与孩子的内容如此丰富——&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">让孩子们了解乡土文化知识，发现家乡之美；带孩子们走出去，聆听流水声，鸟鸣声，模仿劳作，动物的姿势，发现生活里的音乐与舞蹈；还有多姿多彩的科学探秘……&nbsp;</span><br /></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><img src=\"https://img1.doubanio.com/view/group_topic/l/public/p81144089.webp\" alt=\"\" /><br /></span></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">雨露滋润才有绿荫苍苍，阳光普照才有满园芬芳。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">收获到那一句“我们爱你们”，是孩子们发自内心的感恩之言。这些相处的日子，会温馨在志愿者、孩子们的心底。而过不久，也许会在你的心底。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">只要开始，公益永远不会晚……&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">来一场说走就走的爱之旅吧！&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">和青年社团一起&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">走到乡村孩子的身边&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">带他们一起探索这未知的世界&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">友情、师生情&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\" /><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">等你来收获&nbsp;</span><br /></span></span></p>', 'maker', '2021-07-05 15:28:43', '1', 'c500a06df04742728ab82d7d1728cf43', '1', NULL, NULL, NULL);
INSERT INTO `db_site_news` VALUES ('e67134782e514672825423fefbffbed7', '2', '太极公益，健康传承', '\\upload\\u9.jpg', '', '为什么要去农村支教？<br />因为，中国很缺老师，尤其是在资源匮乏、地处偏远的农村地区，老师更加紧缺。条件艰苦，工作和生活都不便利，使得越来越多的青年老师不愿意去农村。<br /><br />因为缺乏老师，一些教学点只能被迫撤掉，就会导致学生上学需要走更远的山路；因为缺乏老师，音乐、体育和美术等课程开不出，学校的音乐设备、体育器材只能整齐的放在器材室里，积着很厚的灰尘，使孩子们没有办法全面发展；因为缺乏老师，尤其缺少新的年轻教师，知识就得不到更新，我们的孩子接受的教育就会落后，城乡教育之间的差距就会越拉越大。<br /><br />我们可以做什么？<br />那就让更多的年轻人看见农村教育的现状，尝试去做一些努力，中国每年有近千万的大学毕业生，他们中间肯定曾经有教师理想的，也肯定有想要为农村教育做一些事情的，更有想要终身投入到中国农村教育事业中的。集合他们的力量，努力尝试为农村教育做出一些改变，进而推动社会关注农村教育，关注中国教育问题，我们相信，通过这样的努力，中国农村教育的现状会得到改变。<br />现在，为中国而教2019级志愿者教师招募正式开启，在这里你能找到一群志同道合的伙伴，你可以在你的教室里做有趣的教育尝试，更有针对性的培训让你能迅速成长为一名合格的志愿者老师。<br />还等什么，赶快来申请吧！<br /><br />任教要求：<br />1、应届或毕业两年内的统招全日制本科毕业生及研究生（专业不限）；<br />2、关注教育公平，热爱教育，乐于合作，坚韧不拔，立志用两年时间投身农村一线教育。<br /><br />任教时间：2019年9月至2021年7月 <br /><br />任教地点：河北、贵州、湖南、云南、四川地区农村学校<br /><br />任教职责：<br />1、完成教学工作，帮助学生全面发展；<br />2、参加培训、团建、游学等活动，按时提交工作报告和学期总结；<br />3、根据学校、社区情况，开展社会调研，组织小型公益项目。<br /><br />任教保障：<br />1、选校：在农村地区选择适合、稳定的合作学校；<br />2、保障：发放每月生活补贴、春节返家路费，购买保险；任教学校安排住宿；<br />3、培训：1个月岗前培训，3次假期培训，4次中期培训；<br />4、探访：每学期1-2次工作人员探访；<br />5、资源：为你的社会调研与公益项目整合资源、提供支持与指导；<br />6、团队：提供团队经费，集结区域团队进行游学等团建活动，相互交流、支持与合作；<br />7、游学：2次团队吃苦旅行，在旅途中磨砺与成长；<br />8、职业发展：为完成支教的志愿者提供支教证明，提供职业规划辅导、推荐就业机会；<br />9、校友会：聚集多元化人才的校友会，两年之后仍为你的发展提供持续支持。<br /><br />青年社团宣2019年3月29号', 'maker', '2021-07-05 15:28:43', '1', '89073b89b82d4b649820a6a1a44c4c2f', '1', '2021-03-27 22:23:55', '2021-04-06 22:23:57', NULL);
INSERT INTO `db_site_news` VALUES ('e7eaf21444f045fe8a445e2f7e1d6454', '2', '第19届舞动人生晚会', '\\upload\\u7.jpg', '', '为什么要去农村支教？<br />因为，中国很缺老师，尤其是在资源匮乏、地处偏远的农村地区，老师更加紧缺。条件艰苦，工作和生活都不便利，使得越来越多的青年老师不愿意去农村。<br /><br />因为缺乏老师，一些教学点只能被迫撤掉，就会导致学生上学需要走更远的山路；因为缺乏老师，音乐、体育和美术等课程开不出，学校的音乐设备、体育器材只能整齐的放在器材室里，积着很厚的灰尘，使孩子们没有办法全面发展；因为缺乏老师，尤其缺少新的年轻教师，知识就得不到更新，我们的孩子接受的教育就会落后，城乡教育之间的差距就会越拉越大。<br /><br />我们可以做什么？<br />那就让更多的年轻人看见农村教育的现状，尝试去做一些努力，中国每年有近千万的大学毕业生，他们中间肯定曾经有教师理想的，也肯定有想要为农村教育做一些事情的，更有想要终身投入到中国农村教育事业中的。集合他们的力量，努力尝试为农村教育做出一些改变，进而推动社会关注农村教育，关注中国教育问题，我们相信，通过这样的努力，中国农村教育的现状会得到改变。<br />现在，为中国而教2019级志愿者教师招募正式开启，在这里你能找到一群志同道合的伙伴，你可以在你的教室里做有趣的教育尝试，更有针对性的培训让你能迅速成长为一名合格的志愿者老师。<br />还等什么，赶快来申请吧！<br /><br />任教要求：<br />1、应届或毕业两年内的统招全日制本科毕业生及研究生（专业不限）；<br />2、关注教育公平，热爱教育，乐于合作，坚韧不拔，立志用两年时间投身农村一线教育。<br /><br />任教时间：2019年9月至2021年7月 <br /><br />任教地点：河北、贵州、湖南、云南、四川地区农村学校<br /><br />任教职责：<br />1、完成教学工作，帮助学生全面发展；<br />2、参加培训、团建、游学等活动，按时提交工作报告和学期总结；<br />3、根据学校、社区情况，开展社会调研，组织小型公益项目。<br /><br />任教保障：<br />1、选校：在农村地区选择适合、稳定的合作学校；<br />2、保障：发放每月生活补贴、春节返家路费，购买保险；任教学校安排住宿；<br />3、培训：1个月岗前培训，3次假期培训，4次中期培训；<br />4、探访：每学期1-2次工作人员探访；<br />5、资源：为你的社会调研与公益项目整合资源、提供支持与指导；<br />6、团队：提供团队经费，集结区域团队进行游学等团建活动，相互交流、支持与合作；<br />7、游学：2次团队吃苦旅行，在旅途中磨砺与成长；<br />8、职业发展：为完成支教的志愿者提供支教证明，提供职业规划辅导、推荐就业机会；<br />9、校友会：聚集多元化人才的校友会，两年之后仍为你的发展提供持续支持。<br /><br />                                                                                      青年社团宣2019年3月29号', 'maker', '2021-07-05 15:28:43', '1', '1657bce76d19409ca110515b518985ef', '1', '2021-03-27 22:23:55', '2021-04-06 22:23:57', NULL);
INSERT INTO `db_site_news` VALUES ('f375c87c6fb84f119eec5ff5a40de322', '1', '大家好，我是公告', '\\upload\\3.jpg', '', '', 'maker', '2021-07-05 15:28:44', '0', '1657bce76d19409ca110515b518985ef', '0', NULL, NULL, NULL);
INSERT INTO `db_site_news` VALUES ('ffb8e1d0db974daea641828cf2838d50', '3', '太极传承活动精彩画面', '', '', '<p>极作为中华传统文化的代表之一，一直在全球范围内享有盛誉，为了更好的“弘扬中华文明，传播太极文化”，以此为初衷，举办了一带一路中国太极文化自由行活动，此次活动将以太极文化为载体，以“一带一路”为国际平台和渠道，向海外更大限度的传播中国文化软实力，向全世界推广中华传统文化精髓，传播和谐共赢的中国智慧，为促进全球文化协调发展和构建人类命运共同体做出积极贡献。</p><p><img src=\"http://www.cntjq.net/file/upload/201709/03/100046671.jpg\" alt=\"\" /><br /></p><p><img src=\"http://www.cntjq.net/file/upload/201709/03/100022351.jpg\" alt=\"\" /><br /></p><p><img src=\"http://www.cntjq.net/file/upload/201709/03/100728321.jpg\" alt=\"\" /><br /></p>', 'maker', '2021-07-05 15:28:44', '1', '89073b89b82d4b649820a6a1a44c4c2f', '1', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for db_stu_tem
-- ----------------------------
DROP TABLE IF EXISTS `db_stu_tem`;
CREATE TABLE `db_stu_tem`  (
  `stu_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生编号',
  `team_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社团编号'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_stu_tem
-- ----------------------------
INSERT INTO `db_stu_tem` VALUES ('8a32a58f085644268389ebf113e866d6', '9359bbbacdf44680862bd0d05c81ddcc');
INSERT INTO `db_stu_tem` VALUES ('8a32a58f085644268389ebf113e866d6', '9359bbbacdf44680862bd0d05c81ddcc');
INSERT INTO `db_stu_tem` VALUES ('8a32a58f085644268389ebf113e866d6', '9359bbbacdf44680862bd0d05c81ddcc');
INSERT INTO `db_stu_tem` VALUES ('543ef458d13f4e5281ab1f47e187b438', '9359bbbacdf44680862bd0d05c81ddcc');
INSERT INTO `db_stu_tem` VALUES ('543ef458d13f4e5281ab1f47e187b438', '625c04fe2ed048b4acb9831e107db8b0');
INSERT INTO `db_stu_tem` VALUES ('398329941e6c4dda867f17a2948fa401', '625c04fe2ed048b4acb9831e107db8b0');
INSERT INTO `db_stu_tem` VALUES ('398329941e6c4dda867f17a2948fa401', '9359bbbacdf44680862bd0d05c81ddcc');
INSERT INTO `db_stu_tem` VALUES ('3ab03a89859c46498125e35eaf09cd8d', '1657bce76d19409ca110515b518985ef');
INSERT INTO `db_stu_tem` VALUES ('e16473678e3e4f6e9e2a5ff28f616b51', 'f7ca442feb6049298ff1f8834a009369');
INSERT INTO `db_stu_tem` VALUES ('9077bed873db4a9c943e003978f55e65', '5ac7f0c757a347cc97db54e30823c10d');

-- ----------------------------
-- Table structure for db_student
-- ----------------------------
DROP TABLE IF EXISTS `db_student`;
CREATE TABLE `db_student`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `login_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名称',
  `login_password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `regit_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `audit_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核状态',
  `stu_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `sex` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `school_room` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `class_room` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_student
-- ----------------------------
INSERT INTO `db_student` VALUES ('05df94f4feac49ee9b6f62c8be971017', '苏c', '123', '2019-03-27 11:59:00', '0', '苏cc', '男', '计算计科学与技术', '计本3班', '18178326353', '', '');
INSERT INTO `db_student` VALUES ('119836c63bd54248a77d1ecbae90b86f', '苏悲', '123', '2019-03-15 11:59:18', '0', '苏悲1', '男', '计算计科学与技术', '计本2班', '1817832600', '', '世界');
INSERT INTO `db_student` VALUES ('1659537f2ca5453093137c7a2abdc3ef', '苏i', '123', '2019-03-02 11:59:27', '0', '苏ii', '女', '计算计科学与技术', '计本3班', '18593913908', '', '');
INSERT INTO `db_student` VALUES ('16842845d98748d19ed94c3e600f4bbc', '苏扇', '123', '2019-03-14 11:59:39', '0', '苏扇1', '男', '计算计科学与技术', '计本3班', '18178326345', '', '远方');
INSERT INTO `db_student` VALUES ('1b41e8a426a44270840436f278a046cd', '苏事', '123', '2019-03-12 11:59:52', '0', '苏事1', '男', '计算计科学与技术', '计本4班', '18178326311', '', '流星');
INSERT INTO `db_student` VALUES ('1e993929186b4f70b8d96f51dba98480', '苏k', '123', '2019-03-10 12:00:01', '0', '苏kk', '女', '计算计科学与技术', '计本2班', '18178326351', '', '');
INSERT INTO `db_student` VALUES ('1f5f6375ff904007b5ee1bb718316d6d', '苏风', '123', '2019-03-08 12:00:10', '0', '苏风1', '男', '计算计科学与技术', '计本4班', '181783263333', '', '微信');
INSERT INTO `db_student` VALUES ('2ac0dcfd9e1646f9b379faca0266973d', '苏只', '123', '2019-03-08 12:00:18', '0', '苏只1', '男', '计算计科学与技术', '计本2班', '18178326353', '', '点点滴滴都是');
INSERT INTO `db_student` VALUES ('2f1f574523534274904e1849141f8a26', '苏若', '123', '2019-03-18 12:00:26', '0', '苏若1', '女', '计算计科学与技术', '计本2班', '18178326351', '', '活泼');
INSERT INTO `db_student` VALUES ('398329941e6c4dda867f17a2948fa401', '苏人1', '123', '2019-03-15 12:00:40', '0', '苏人', '男', '计算计科学与技术', '计本1班', '18178326352', '', 'asdfsadf');
INSERT INTO `db_student` VALUES ('3ab03a89859c46498125e35eaf09cd8d', '苏a', '123', '2019-03-08 12:00:57', '0', '苏aa ', '男', '计算计科学与技术', '计本1班', '18178326350', '', '');
INSERT INTO `db_student` VALUES ('3f20f87684fd4cd3a1608ccf66592fd0', 'maker1', '111111', NULL, '0', '小张', '女', '大江东高级技术学院', '软件一班', '15056408321', '', '');
INSERT INTO `db_student` VALUES ('425964f610404cdc8715e81c49fcc3f7', '苏生', '123', '2019-03-23 12:01:07', '0', '苏生1', '男', '计算计科学与技术', '计本1班', '18178326350', '', '责任');
INSERT INTO `db_student` VALUES ('42bf39e8d86f4006bd703744a630b27d', '苏p', '123', '2019-03-08 12:02:48', '0', '苏pp', '女', '计算计科学与技术', '计本4班', '18178326350', '', '');
INSERT INTO `db_student` VALUES ('4c32326f36df43e291316f11dec52fc5', '苏g', '123', '2019-03-11 12:02:58', '0', '苏g', '男', '计算计科学与技术', '计本1班', '18593913908', '', '');
INSERT INTO `db_student` VALUES ('4fd57eabd678423db9892d00b0bf3309', '苏d', '123', '2019-03-15 12:03:08', '0', '苏dd', '男', '计算计科学与技术', '计本2班', '18178326352', '', '');
INSERT INTO `db_student` VALUES ('5128ce0f7f3041199dc6bc31514f9588', '苏何', '123', '2019-03-29 12:03:21', '0', '苏何1', '女', '计算计科学与技术', '计本3班', '18593913903', '', '见面');
INSERT INTO `db_student` VALUES ('543ef458d13f4e5281ab1f47e187b438', 'stu1', '123', '2018-04-18 21:48:54', '0', '学生修改', '男', '电子信息工程', '自动化', '10089', '\\upload\\17.jpg', '我是一个好学哦噢噢噢噢');
INSERT INTO `db_student` VALUES ('58822ae098114416a472d7fe7304487e', '苏z', '123', '2019-03-19 12:03:32', '0', '苏zz', '男', '计算计科学与技术', '计本1班', '18178326353', '', '');
INSERT INTO `db_student` VALUES ('5a646ecf97e44bb183f30ca7dd0a0c32', '苏y', '123', '2019-04-06 12:03:49', '0', '苏y', '女', '计算计科学与技术', '计本2班', '18178326350', '', '');
INSERT INTO `db_student` VALUES ('5b8b20bb9cd9474b843306a116b44bb2', 'ceshi', '111111', '2021-07-05 08:52:25', '0', '测试用的', '男', '测试学院', '测试班级', '1111110', '', '');
INSERT INTO `db_student` VALUES ('5cc5cac7269d475499293478a5e34bbd', '苏初', '123', '2019-03-24 12:03:59', '0', '苏初1', '女', '计算计科学与技术', '计本3班', '18178326356', '', '得到大多数');
INSERT INTO `db_student` VALUES ('5e06e6e526f442c7a29279af2cd20ab0', '苏q', '123', '2019-03-16 12:04:28', '0', '苏qq', '男', '计算计科学与技术', '计本1班', '18178326352', '', '');
INSERT INTO `db_student` VALUES ('6247824839f640f287aefb624035b213', '苏l', '123', '2019-02-28 12:04:38', '0', '苏ll', '女', '计算计科学与技术', '计本2班', '18178326354', '', '');
INSERT INTO `db_student` VALUES ('64f2c3bd93da4fcb9be192d74510e589', '苏秋', '123', '2019-03-29 12:04:49', '0', '苏秋1', '女', '计算计科学与技术', '计本4班', '18178326312', '', '天际');
INSERT INTO `db_student` VALUES ('676aa3301c654d4198b3eb722f614af5', '苏s', '123', '2019-03-24 12:05:00', '0', '苏ss', '女', '计算计科学与技术', '计本1班', '18178326353', '', '');
INSERT INTO `db_student` VALUES ('74092f4b3d2a4de4b93384f4643225d0', '苏画', '123', '2019-03-06 12:05:11', '0', '苏画1', '女', '计算计科学与技术', '计本3班', '18593913333', '', '幸运');
INSERT INTO `db_student` VALUES ('80aec8a6d82b4a9e8fa67425671484d7', '苏x', '123', '2019-03-29 12:05:21', '0', '苏xx', '女', '计算计科学与技术', '计本4班', '18593913908', '', '');
INSERT INTO `db_student` VALUES ('8a32a58f085644268389ebf113e866d6', 'stu2', '123', '2018-03-27 23:23:53', '0', '学生2', '男', '计算机科学与技术', '计算机', '10090', '\\upload\\17.jpg', '测试祖册');
INSERT INTO `db_student` VALUES ('8af48a12d1474a289b5dde8f6e2a5ffe', 'maker2', '111111', NULL, '0', 'cs', '男', '22', '11', '110', '', 'dd');
INSERT INTO `db_student` VALUES ('9077bed873db4a9c943e003978f55e65', 'maker1', '111111', NULL, '0', 'mt', '男', '大江东高级技术学院', '软件一班', '110', '\\upload\\c4aa3a08627f4a8989d452aab8928109.jpeg', '我是大江东坑把子');
INSERT INTO `db_student` VALUES ('99b7c841e0144f9ca40d95855d21a7a2', '苏如', '123', '2019-03-06 12:05:32', '0', '苏如1', '男', '计算计科学与技术', '计本3班', '18178326355', '', '等等');
INSERT INTO `db_student` VALUES ('acf8213924b346b6b588e1f20e02855b', '苏m', '123', '2019-03-01 12:04:18', '0', '苏mm', '女', '计算计科学与技术', '计本2班', '18178326354', '', '');
INSERT INTO `db_student` VALUES ('bd88e3a396c742f6b3984226e102736f', '苏h', '123', '2019-03-02 12:02:38', '0', '苏hh', '女', '计算计科学与技术', '计本1班', '18178326354', '', '');
INSERT INTO `db_student` VALUES ('c3d27a0853c94830bab68fac2900f6d3', 'admin22', '111111', '2021-07-22 08:37:27', '0', '小张', '女', '大江东高级技术学院', '软件一班', '', '', '');
INSERT INTO `db_student` VALUES ('d715559315be44c4a8c4a0d931777db5', '苏j', '123', '2019-03-08 12:02:20', '0', '苏jj', '女', '计算计科学与技术', '计本1班', '18593913900', '', '');
INSERT INTO `db_student` VALUES ('ddd4958f9bb54b3bafdd4c42b07f9ebd', '苏f', '123', '2019-03-09 12:02:07', '0', '苏ff', '男', '计算计科学与技术', '计本3班', '18593913908', '', '');
INSERT INTO `db_student` VALUES ('e16473678e3e4f6e9e2a5ff28f616b51', '苏b', '123', '2019-03-29 12:01:59', '0', '苏bb', '男', '计算计科学与技术', '计本1班', '18178326352', '', '');
INSERT INTO `db_student` VALUES ('e18a0c5b40254529ad609b689000c62a', '苏见', '123', '2019-03-16 12:01:46', '0', '苏见1', '女', '计算计科学与技术', '计本3班', '18593913908', '', '职业');
INSERT INTO `db_student` VALUES ('f14e1fffa8ee487fbfb69326750ebe09', '苏o', '123', '2019-03-22 12:01:38', '0', '苏oo', '男', '计算计科学与技术', '计本3班', '18178326351', '', '');
INSERT INTO `db_student` VALUES ('f772495b265b4003a82b3e36adc523d5', '苏n', '123', '2019-03-09 12:01:29', '0', '苏nn', '男', '计算计科学与技术', '计本3班', '18178326350', '', '');
INSERT INTO `db_student` VALUES ('fbacb8baed2a430f9e2b7a6481788b86', '苏e', '123', '2019-03-23 12:01:19', '0', '苏ee', '男', '计算计科学与技术', '计本1班', '18178326351', '', '');

-- ----------------------------
-- Table structure for db_team_applay
-- ----------------------------
DROP TABLE IF EXISTS `db_team_applay`;
CREATE TABLE `db_team_applay`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `applay_team` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请社团编号',
  `applay_stu` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请学生',
  `applay_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '申请理由',
  `applay_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '申请时间',
  `applay_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_team_applay
-- ----------------------------
INSERT INTO `db_team_applay` VALUES ('27c9bcfa1d9642e8a44b505addd52f28', 'c500a06df04742728ab82d7d1728cf43', '3ab03a89859c46498125e35eaf09cd8d', '申请加入社团！', '2019-03-27 19:33:57', '0');
INSERT INTO `db_team_applay` VALUES ('2f7202e8ccd34774a2120401353b57ec', '1657bce76d19409ca110515b518985ef', '3ab03a89859c46498125e35eaf09cd8d', '申请加入社团！', '2019-03-27 12:18:32', '1');
INSERT INTO `db_team_applay` VALUES ('3708d26631ef45ada609957a89945592', 'f7ca442feb6049298ff1f8834a009369', 'e16473678e3e4f6e9e2a5ff28f616b51', '申请加入社团！', '2019-03-27 13:07:28', '1');
INSERT INTO `db_team_applay` VALUES ('b1363a0264ac427498dd8ade93bffa7d', '5ac7f0c757a347cc97db54e30823c10d', '9077bed873db4a9c943e003978f55e65', '申请加入社团！', '2021-07-05 07:35:38', '1');

-- ----------------------------
-- Table structure for db_teams
-- ----------------------------
DROP TABLE IF EXISTS `db_teams`;
CREATE TABLE `db_teams`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '社团',
  `team_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社团名字',
  `pic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社团宣传图',
  `team_intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '社团介绍',
  `build_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '成立时间',
  `build_stu` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人（社长）',
  `audit_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核状态',
  `members` int(11) NULL DEFAULT NULL COMMENT '成员数',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_teams
-- ----------------------------
INSERT INTO `db_teams` VALUES ('1657bce76d19409ca110515b518985ef', '舞蹈社', '/upload/舞蹈社.jpg', '<p>舞蹈社成立于2003年，舞蹈可以让人身材曲线变得更美，大腿肌肉和手臂肌肉也更紧实。是纾解情绪的好方法。舞蹈是一种有益身心健康活动，增强体质，性格变得开朗，身体变得柔软，全面刺激肌肉。舞蹈对肌肉的刺激则是全面性、综合性的，它的动作兼顾到头、颈、胸、腿、髋等部位。比如爵士舞对小关节、小肌肉的运动较多，这些地方是平日健身不大容易活动到的地方。另外，舞蹈还具备有氧运动的效果，使练习者在提高主肺功能的同时，达到减肥的目的。</p><p><img src=\"https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=02e10d725943fbf2c52ca1258845adbd/43a7d933c895d14369f6cc5979f082025baf07c3.jpg\" alt=\"\" /><br /></p><p><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%88%9E%E8%B9%88/6228\" data-lemmaid=\"6228\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">舞蹈</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">是一种</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%A1%A8%E6%BC%94%E8%89%BA%E6%9C%AF/7803083\" data-lemmaid=\"7803083\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">表演艺术</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">，使用身体来完成各种</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BC%98%E9%9B%85/1591303\" data-lemmaid=\"1591303\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">优雅</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">或高难度的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8A%A8%E4%BD%9C/33802\" data-lemmaid=\"33802\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">动作</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">，一般有音乐伴奏，以有节奏的动作为主要表现手段的艺术形式。它一般借助音乐，也借助其他的道具。舞蹈本身有多元的社会意义及作用，包括</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%BF%90%E5%8A%A8/522\" data-lemmaid=\"522\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">运动</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">、社交/求偶、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A5%AD%E7%A5%80/646557\" data-lemmaid=\"646557\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">祭祀</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A4%BC%E4%BB%AA/225\" data-lemmaid=\"225\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">礼仪</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">等。在</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BA%BA%E7%B1%BB%E6%96%87%E6%98%8E/3533075\" data-lemmaid=\"3533075\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">人类文明</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">起源前，舞蹈在仪式，礼仪，</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%BA%86%E5%85%B8/6767212\" data-lemmaid=\"6767212\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">庆典</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">和娱乐方面都十分重要。中国在五千年以前就已经出现了舞蹈，它产生于</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%A5%B4%E9%9A%B6%E7%A4%BE%E4%BC%9A/551903\" data-lemmaid=\"551903\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">奴隶社会</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">，发展到</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A7%A6%E6%B1%89%E4%B9%8B%E9%99%85\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">秦汉之际</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">已形成一定特色。</span><br /></p>', '2021-07-05 15:24:27', '2ac0dcfd9e1646f9b379faca0266973d', '1', 60, '舞蹈');
INSERT INTO `db_teams` VALUES ('1e776e07b66d454789f2dc89cc5097cd', '科技创新社团', '/upload/科技创新社.jpg', '<p>科技创新社团在2008年成立。科技社团核心竞争力是科技社团整合内外部优势资源，建构社团特有知识和文化体系，保持持续发展优势的知识和能力的集合体。科技社团的核心资源集中体现在科技学术智力优势、社会组织网络体系以及宗旨价值使命三个方面，科技社团的核心能力集中体现为整合资源和建构知识，科技社团的核心价值集中表现为科技共同体价值文化体系。</p><p><img src=\"https://gss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D600%2C800/sign=5b89bf097f0e0cf3a0a246fd3a76de27/eac4b74543a982260427393c8782b9014b90ebc3.jpg\" alt=\"\" /><br /></p><p></p><p style=\"margin: 20px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc=\"\" lantinghei=\"\" microsoft=\"\" yahei=\"\" arial=\"\" sans-serif=\"\" tahoma=\"\" font-size:=\"\" 16px=\"\">科技发展推动了社会的前进和人类进步。如第一次工业革命中蒸汽机的发明和改进，将人类推进到了蒸汽时代，社会生产力极大发展。第二次工业革命中电力的应用使人类进入到电气时代，第三次科技革命的电子计算机的发明应用，信息技术的应用，使人类进入了信息时代。</p><p style=\"margin: 20px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" pingfang=\"\" sc=\"\" lantinghei=\"\" microsoft=\"\" yahei=\"\" arial=\"\" sans-serif=\"\" tahoma=\"\" font-size:=\"\" 16px=\"\">再如第二次工业革命中的电话电报的发明与应用，促进了人类电讯事业的发展，使人们的交流更加便捷，促进了经济的发展和社会的进步。还有现在的互联网，能使人们尽早的了解国家大事，时事新闻，在家饱览群书，就是“秀才不出门，全知天下事。”。还有交通工具的发展，能使在远方的亲人到异地去看望亲人。医学发展使很多大病痊愈，失去器官的还可以克隆。</p><br /><p><br /></p>', '2021-07-05 15:24:33', '99b7c841e0144f9ca40d95855d21a7a2', '1', 30, '科技');
INSERT INTO `db_teams` VALUES ('5ac7f0c757a347cc97db54e30823c10d', '围棋社', '/upload/围棋社.jpg', '围棋社团成立于2009年。围棋，是一种策略型两人棋类游戏，中国古时称“弈”，西方名称“Go”。流行于东亚国家（中、日、韩、朝），属琴棋书画四艺之一。围棋起源于中国，传为帝尧所作，春秋战国时期即有记载。隋唐时经朝鲜传入日本，流传到欧美各国。围棋蕴含着中华文化的丰富内涵，它是中国文化与文明的体现。<br />围棋使用方形格状棋盘及黑白二色圆形棋子进行对弈，棋盘上有纵横各19条线段将棋盘分成361个交叉点，棋子走在交叉点上，双方交替行棋，落子后不能移动，以围地多者为胜。因为黑方先走占了便宜，所以人为规定黑方局终时要给白方贴子。中国古代围棋是黑白双方在对角星位处各摆放两子（对角星布局），为座子制，由白方先行。现代围棋取消了座子规则，黑先白后，使围棋的变化更加复杂多变。围棋也被认为是世界上最复杂的棋盘游戏。围棋，起源于中国，中国古代称为“弈”，可以说是棋类之鼻祖，围棋至今已有4000多年的历史。据先秦典籍《世本》记载，“尧造围棋，丹朱善之。”晋张华在《博物志》中继承并发展了这种说法：“尧造围棋，以教子丹朱。若白：舜以子商均愚，故作围棋以教之。”<br />1964年版的《大英百科全书》就采纳这种说法，甚至将其确切年代定在公元前2356年。<br />唐代诗人皮日休所作的《原弈》认为：“弈之始作，必起自战国，有害诈争伪之道，当纵横者流之作矣。岂曰尧哉！”<br />明朝陈仁锡在《潜确类书》中又提出“乌曹作博、围棋”。乌曹相传是尧的臣子，有的人又说他是夏桀的臣子。后来，董斯张的《广博物志》、张英的《渊鉴类函》等也采录了这种说法。<br /><p>明朝林应龙在《适情录》中认为，围棋是容成公发明的。据《列仙传》记载：“容成公者自称黄帝师，见于周穆王，能善辅导之事。</p><p><img src=\"http://img1.imgtn.bdimg.com/it/u=3059691848,307845875&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></p>', '2021-07-05 15:24:44', '1f5f6375ff904007b5ee1bb718316d6d', '1', 50, '围棋');
INSERT INTO `db_teams` VALUES ('640f8b8184204a85933db67375799ef0', '英语社团', '/upload\\英语社.jpg', '<p>英语社团成立于2005年。英语社团是课堂教学的补充和延伸，在于培养学生对英语的兴趣、爱好、增长知识、提高技能、丰富学生的课余文化生活，与课堂教学相比更具灵活性、可塑性，因而学生非常乐意参加。本学期我们将根据学校的具体情况有计划有目的的开展活动，重视教学质量，调动学生的极积性，努力把英语社团活动搞得有声有色。为了给爱好英语的同学一个良好的学习环境通过社团活动，使学生进一步体验英语的快乐，进一步激发学生学习英语的兴趣，培养学生良好的习惯，发展学生的个性，提高学生的综合素质，促进学生的全面发展，展示学生的英语才华。</p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">现代</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%8B%B1%E8%AF%AD/109997\" data-lemmaid=\"109997\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">英语</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">所使用的拼写字母，也是完全借用了26个</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%AD%97%E6%AF%8D\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">字母</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">。所谓“英语字母”，就是</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8F%A4%E7%BD%97%E9%A9%AC%E4%BA%BA\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">古罗马人</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">在书写时所使用的拼写字母。英语开始以拉丁字母作为拼写系统大约是在公元六世纪</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%9B%8E%E6%A0%BC%E9%B2%81%E6%92%92%E5%85%8B%E9%80%8A\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">盎格鲁撒克逊</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">时代。当时的传教士们为了把当地语言记录成文字而引进字母，他们所面临的问题是当时的英语共有超过</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/40/6559529\" data-lemmaid=\"6559529\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">40</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">种不同的音，而</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%8B%89%E4%B8%81%E5%AD%97%E6%AF%8D\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">拉丁字母</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">无法一一对应，于是他们用增加字母、在字母上加变音符号、两个字母连写等方法来对应不同的发音，之后慢慢形成了古英语用26个拉丁字母+&amp;来拼写并伴有一些拼写规则的文字系统。</span><br /></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\"><img src=\"http://img5.imgtn.bdimg.com/it/u=72316578,509047583&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></span></p>', '2021-07-05 15:24:49', '5128ce0f7f3041199dc6bc31514f9588', '1', 60, '英语');
INSERT INTO `db_teams` VALUES ('77a2e5e7376f4d2796ae3d00b5825390', '红十字协会社团', '/upload\\红十字协会社.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">红十字协会社团自1994年成立。以发扬人道、博爱、奉献的红十字精神，保护人的生命和健康，促进人类和平进步事业为宗旨。在新的世纪里，红十字会将继续深入学习、宣传、贯彻《中华人民共和国红十字会法》，突出抓好备灾救灾、卫生救护知识培训、社会服务、传播国际人道法及红十字运动基础知识、推动无偿献血和红十字青少年道德教育、中国造血干细胞捐献者资料库、预防艾滋病等主要工作；加强人才培养、向社会宣传和多渠道筹集资金等工作，配合社会主义精神文明建设和社会保障制度的建立，努力建设中国特色的红十字事业。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\"></span><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\">中国红十字会是中华人民共和国统一的红十字组织，是从事人道主义工作的社会救助团体，是国际红十字运动的成员。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\">中国红十字会1904年成立。建会以后从事救助难民、救护伤兵和赈济灾民活动，为减轻遭受战乱和自然灾害侵袭的民众的痛苦工作，并参加国际人道主义救援活动。新中国成立后，中国红十字会于1950年进行了协商改组，周恩来总理亲自主持并修改了《中国红十字会章程》。1952年中国红十字会恢复了在国际红十字运动中的合法席位。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\"><img src=\"http://img2.imgtn.bdimg.com/it/u=2966847822,1724617380&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></div><br /></p>', '2021-07-05 15:24:55', '425964f610404cdc8715e81c49fcc3f7', '1', 68, '爱心');
INSERT INTO `db_teams` VALUES ('89073b89b82d4b649820a6a1a44c4c2f', '武术社', '/upload/武术社.jpg', '<p>武术社成立于2000年。武术拥有消停战事、维护和平的实力。作为中华民族炎黄子孙的生存技能，中国传统武术伴随着中国历史与文明发展，走过了几千年的风雨历程，成为维系这个民族生存和发展的魂、和承载中华儿女基因构成的魄，止戈为武。武，是拥有维护自身安全和权益的实力。我们修习武术，是让我们从身到心、由魂而魄得到提升而充满安全感，精壮神足，具有安然自胜的实力。这是我族历代沉淀而成、安魂守魄的法宝</p><p>武术，拥有消停战事、维护和平的实力。作为中华民族炎黄子孙的生存技能，中国传统武术伴随着中国历史与文明发展，走过了几千年的风雨历程，成为维系这个民族生存和发展的魂、和承载中华儿女基因构成的魄，止戈为武。武，是拥有维护自身安全和权益的实力。我们修习武术，是让我们从身到心、由魂而魄得到提升而充满安全感，精壮神足，具有安然自胜的实力。这是我族历代沉淀而成、安魂守魄的法宝。 [1]&nbsp;</p><p><img src=\"http://img3.imgtn.bdimg.com/it/u=3701819407,1856917854&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /><br /></p>', '2021-07-05 15:25:00', '2f1f574523534274904e1849141f8a26', '1', 40, '强身健体');
INSERT INTO `db_teams` VALUES ('98e1a42176d74890a8e05f10cd917a3e', '文学社团', '/upload\\文学社.jpg', '文学是一种语言艺术，是话语蕴藉中的审美意识形态。诗歌、散文、小说、剧本、寓言、童话等不同体裁，是文学的重要表现形式。文学以不同的形式即体裁，表现内心情感，再现一定时期和一定地域的社会生活。作为学科门类理解的文学，包括中国语言文学、外国语言文学及新闻传播学。<br />文学是属于人文学科的学科分类之一，与哲学、宗教、法律、政治并驾于社会建筑上层。它起源于人类的思维活动。最先出现的是口头文学，一般是与音乐联结为可以演唱的抒情诗歌。最早形成书面文学的有中国的《诗经》、印度的《罗摩衍那》和古希腊的《伊利昂纪》等。中国先秦时期将以文字写成的作品都统称为文学，魏晋以后才逐渐将文学作品单独列出。欧洲传统文学理论分类法将文学分为诗、散文、戏剧三大类。现代通常将文学分为诗歌、小说、散文、戏剧四大类别。<br /><p>文学是语言文字的艺术，是社会文化的一种重要表现形式，是对美的体现。文学作品是作家用独特的语言艺术表现其独特的心灵世界的作品，离开了这样两个极具个性特点的独特性就没有真正的文学作品。一个杰出的文学家就是一个民族心灵世界的英雄。文学代表一个民族的艺术和智慧。文学，是一种将语言文字用于表达社会生活和心理活动的学科，属社会意识形态范畴。</p><p><img src=\"https://f10.baidu.com/it/u=3184775709,3252060411&amp;fm=72\" alt=\"\" /><br /></p>', '2021-07-05 15:25:04', '16842845d98748d19ed94c3e600f4bbc', '0', 0, '文学');
INSERT INTO `db_teams` VALUES ('9e0adafa962848a68e94b2b5cf45e949', '宠物社团', '\\upload\\82ac490d5d844cf3b6e1eb20fbe3e5bd.jpeg', '宠物现在是我们必不可少的生活伙伴', '2021-07-05 07:36:36', '9077bed873db4a9c943e003978f55e65', '0', 0, '请抓紧时间审核');
INSERT INTO `db_teams` VALUES ('c500a06df04742728ab82d7d1728cf43', '青年社团', '/upload\\青年社.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">青年社团成立于1994年12月5日，是学校由志愿从事校园公益事业与社会公益事业的各界青年组成的全国性社会团体 。社团的主旨<span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">：一是传递爱心，传播文明。志愿者在把关怀带给社会的同时，也传递了爱心，传播了文明，这种“爱心”和“文明”从一个人身上传到另一个人身上，最终会汇聚成一股强大的社会暖流；二是有助于建立和谐社会。 志愿工作，提供了社交和互相帮助的机会，加强了人与人之间的交往及关怀，减低 彼此间的疏远感，促进社会和谐；三是促进社会进步。社会的进步需要全社会的共同参与和努力。志愿工作正是鼓励越来越多的人参与到服务社会的行列中来，对促进社会进步有一定的积极作用。</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\"></span></span></p><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\">根据中国的具体情况来说，志愿者是这样定义的：“在自身条件许可的情况下，参加相关团体，在不谋求任何物质、金钱及相关利益回报的前提下，在非本职职责范围内，合理运用社会现有的资源，服务于社会公益事业，为帮助有一定需要的人士，开展力所能及的、切合实际的，具一定专业性、技能性、长期性服务活动的人。&quot;</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\">自愿参与社会公益活动的人。享受乘坐公交车，地铁免费，免费进公园及旅游景点。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\">志愿者也叫<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%B9%89\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">义</a>工、义务工作者或志工。他们致力于免费、无偿地为社会进步贡献自己的力量。 志愿工作是指一种具有组织性的助人及基于社会公益责任的参与行为，其发展可追溯至第二次世界大战后，<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A6%8F%E5%88%A9%E4%B8%BB%E4%B9%89/6030986\" data-lemmaid=\"6030986\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">福利主义</a>抬头导致各国政府支出崩塌，发展义务工作以解决社会上不胜负荷的需求。</div><img src=\"http://img4.imgtn.bdimg.com/it/u=3746664044,1163985792&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /><p></p>', '2021-07-05 15:25:08', '398329941e6c4dda867f17a2948fa401', '1', 30, '志愿者');
INSERT INTO `db_teams` VALUES ('c890ea557309427fa15852ce56137f86', '篮球社团', '/upload\\篮球社.jpg', '<p>篮球运动是一项集体性，综合性的活动性游戏，现代篮球运动是当世界最受欢迎的体育运动之一，也是我国人们关注和喜爱的体育运动项目之一。适量参加篮球运动对促进人的生理机能，心理修养特别是提高内脏器官功能、中抠神经系统的支配能力，提高身体的生命基础水平，增进健康以及发展速度、耐力、力量、灵敏以及协调等身体素质，锻练意志品质，培养集体主义精神起着积极的作用。我社团是为同学服务性质的社团，为热爱篮球，热爱体育运动，热爱生活的本校学生提供一个锻炼身体，自我展示，挥洒激情与汗水的平台。随着网络和媒体的发展，尤其是大学生的课余时间。于是出现了越来越多的“宅男” 、“宅女”。这样就急需一些类似于篮球社的社团把同学们从各种荧幕前拉到运动场，给同学们增加一个锻炼身体的方式。我社便是为提倡更多人参与到体育锻炼中的一个团体。特别是对于女生而言，篮球是一项难得的适合的运动。“身体是革命的本钱！”作为新时代的大学生，我们将要迎接更严峻的挑战，更需要过硬的身体素质来追随时代的脚步。让强健的体魄成为我们睿智头脑最有力的后盾！</p><p><img src=\"https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1687265969,2269488541&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></p>', '2021-07-05 15:25:11', '1b41e8a426a44270840436f278a046cd', '1', 90, '篮球');
INSERT INTO `db_teams` VALUES ('f7ca442feb6049298ff1f8834a009369', '书法社团', '/upload\\书法社.jpg', '<p>书法社团成立于1990年。书法是中国特有的一种传统艺术。中国汉字是劳动人民创造的，开始以图画记事，经过几千年的发展，演变成了当今的文字，又因祖先发明了用毛笔书写，便产生了书法，古往今来，均以毛笔书写汉字为主，至于其他书写形式，如硬笔、指书等，其书写规律与毛笔字相比，并非迥然不同，而是基本相通。书法艺术的背景是中国传统文化。书法植根于中国传统文化土壤，传统文化是书法赖以生存、发展的背景。我们今天能够看到的汉代以来的书法理论，具有自己的系统性、完整性与条理性。与其他文艺理论一样，书法理论既包括书法本身的技法理论，又包含其美学理论，而在这些理论中又无不闪耀着中国古代文人的智慧光芒。比如关于书法中如何表现“神、气、骨、肉、血”等范畴的理论，关于笔法、字法、章法等技法的理论以及创作论、品评论等等，都是有着自身的体系的。</p><p><img src=\"http://img5.imgtn.bdimg.com/it/u=283195606,404698747&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></p>', '2021-07-05 15:25:16', '5cc5cac7269d475499293478a5e34bbd', '1', 320, '书法');
INSERT INTO `db_teams` VALUES ('fb395bb505f844e38b267912977cb933', '羽毛球社', '/upload\\羽毛球.jpg', '<p>羽毛球社团成立于2001年。将热爱羽毛球运动的人聚在一起，在属于自己的天空中，锻炼身体、增强体质、同时也提高大家的羽毛球技术，让爱好者有一个展示自我的舞台，并为大家提供一个交流的平台。主要是为同学们提供一个休闲娱乐，锻炼身体的平台。本社的活动具有大众性，在广大同学中具有普遍性，倍受同学们的欢迎。随着热爱羽毛球这项运动的人逐渐增多，羽毛球社也在不断壮大。</p><p>羽毛球是一项室内、室外都可以进行的体育运动。依据参与的人数，可以分为单打与双打，及新兴的3打3。羽毛球拍由拍面、拍杆、拍柄及拍框与拍杆的接头构成。一支球拍的长度不超过680毫米，其中球拍柄与球拍杆长度不超过41厘米，拍框长度为28厘米，宽为23厘米，随着科学技术的发展，球拍的发展向着重量更轻、拍框更硬、拍杆弹性更好的方向发展。<br /></p><p><img src=\"https://f12.baidu.com/it/u=230543614,4079668075&amp;fm=72\" alt=\"\" /><br /></p>', '2021-07-05 15:25:20', 'e18a0c5b40254529ad609b689000c62a', '1', 90, '羽毛球');
INSERT INTO `db_teams` VALUES ('fe8383f1c3874d4fba725755e300c0f5', '动漫社团', '/upload\\动漫社.jpg', '动漫，即动画、漫画的合称，指动画与漫画的集合，取这两个词的第一个字合二为一称之为“动漫”，与游戏无关，并非专业术语。其中，日本动漫是动漫领域中的典型代表，是动漫领域的领军人。<br />在很多场合，“动漫”一词被误用于指“动画”，十分容易引发歧义。漫画是一种艺术形式，是用简单而夸张的手法来描绘生活或时事的图画。一般运用变形、比拟、象征、暗示、影射的方法。构成幽默诙谐的画面或画面组，以取得讽刺或歌颂的效果。常采用夸张、比喻、象征等手法，讽刺、批评或歌颂某些人和事，具有较强的社会性，也有纯为娱乐的作品，有较强娱乐性，娱乐性质的作品往往存在搞笑型和人物创造型。近年的作品主导一般为日本漫画 [6]  和美国漫画。<br /><p>漫画艺术在现代呈现出三种表现形式：一种是在报刊杂志上十分常见的单幅或者四格漫画，以讽刺、幽默为主要目的；另一种是与动画结合非常紧密的故事漫画，一般在专业的漫画杂志上连载或者集结成册出版；其中现代故事漫画是如今最常见的漫画形式，其中尤以日本漫画最为突出，集娱乐性、艺术性、商业性于一身。还有一种是现代已经比较少见、但在20世纪乃至19世纪却兴盛一时的连环画</p><p><img src=\"https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=4276588454,3651927368&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></p>', '2021-07-05 15:25:26', '119836c63bd54248a77d1ecbae90b86f', '1', 40, '动漫');
INSERT INTO `db_teams` VALUES ('fead403c34934343880e9d5faedb8da5', '街舞社团', '/upload\\街舞社.jpg', '中国青少年最早接触街舞，始自20世纪80年代的美国电影《霹雳舞》，当时的霹雳舞（Break Dance）就是Breaking的前身。随着中国青少年对街舞理解的深入，他们逐步回归街舞的本源，以中国青少年自己的眼光和特点来实践街舞。<br />除了早期的霹雳舞，自上世纪90年代中开始，全国各地青少年就已经开始习练街舞。北京、上海、广州因为资讯发达，街舞开展比较早；河南郑州由于中原武术文化与街舞关系密切，Breaking舞蹈也起步较早。经过 多年发展全国各地都有练习街舞的青少年，在各个城市的街头广场都可以他们扎堆训练的身影。他们还经常组织小型的比赛（Battle，碴舞、拼舞），功夫最好的舞者能够赢得众多青少年的推崇街舞教学视频。<br /><p>随着全民健身活动的兴起，街舞作为健身运动的一种也进入了各大城市的健身中心。许多舞蹈、戏曲、杂技的专业从业者也开始练习街舞，街舞在各个艺术院校中广为传播。在大学校园中，许多舞蹈社团也组织起来练习街舞；中学生利用课余时间从事街舞活动则更为普遍，他们在各大城市的居民社区中形成了青少年所特有的社区文化。</p><p><img src=\"http://img0.imgtn.bdimg.com/it/u=3373455140,1514063030&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></p>', '2021-07-05 15:25:30', '74092f4b3d2a4de4b93384f4643225d0', '1', 60, '街舞');
INSERT INTO `db_teams` VALUES ('fecd555d660b4e2eac07e7548f1a3864', '足球社团', '/upload\\足球社.jpg', '现代足球起源地是在英格兰。传说在11世纪，英格兰与丹麦之间有过一场战争，战争结束后，英格兰人在清理战争废墟时发现一个丹麦入侵者的头骨，出于愤恨，他们便用脚去踢这个头骨，一群小孩见了便也来踢，不过他们发现头骨踢起来脚痛，于是用牛膀胱吹气来代替它——这就是现代足球的诞生。 [2] <br /><p>12世纪初，英格兰开始有了足球赛。英国国王亨利四世提出最早的英语词汇foteball定义为足球 [3]  ，比赛是娱乐活动，一年两次，一般在两个城市之间举行。主持人把球往空中一抛，比赛就算开始。双方就会一拥而上，大叫大喊，又踢又抱，哪一方能将球踢进对方的闹市区，哪一方就算胜利。如果球中途窜入居民屋里，人们也就一窝蜂的冲进去乱打乱踢，常常把屋里的东西砸得稀巴烂，房主只好自叹倒霉。路上行人碰到球滚来，就会遭受一场飞来的横祸。因此在当时，球赛一来，人们就得躲避灾难，关门闭户，一直到球赛结束，才恢复正常。这样的球赛遭到市民的强烈反对，英格兰政府便下了一道禁令：规定足球比赛要在空地上进行，进入闹市区者重罚，于是就出现了专门的足球场。到19世纪初期，足球运动在当时欧洲及拉美一些国家特别是在英格兰已经相当盛行。</p><p><img src=\"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1525297929,4288908927&amp;fm=26&amp;gp=0.jpg\" alt=\"\" /><br /></p>', '2021-07-05 15:25:37', '64f2c3bd93da4fcb9be192d74510e589', '1', 60, '足球');

-- ----------------------------
-- Table structure for money_manger
-- ----------------------------
DROP TABLE IF EXISTS `money_manger`;
CREATE TABLE `money_manger`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `act_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动编号',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易类型（1.支出 2.收入）',
  `money` double NULL DEFAULT NULL COMMENT '交易金额',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '交易备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of money_manger
-- ----------------------------
INSERT INTO `money_manger` VALUES ('0cbc147d-5eae-4fd4-b66f-c5c706f76529', 'e7eaf21444f045fe8a445e2f7e1d6454', '2', 12, 'w');
INSERT INTO `money_manger` VALUES ('114b8423-010b-4d63-a8e4-1d5aca5df9d6', '16d20a493eb247fba1b55d80f9c1f42d', '1', 10, 'ff ');
INSERT INTO `money_manger` VALUES ('2886a6d4-9457-4b0a-a7c0-adae55749be9', '22d9536bf0524c6194a330b94e6ff9a4', '1', 10, 's');
INSERT INTO `money_manger` VALUES ('95140703-2885-4a09-a51a-70c86884e79e', 'e1b8f3fba08a4e92a3cf01c3e63b4eba', '2', 500, '移动公司赞助500');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单菜名称',
  `href` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问地址',
  `target` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标',
  `is_show` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否显示',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级ID',
  `parent_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '级父ids',
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('024fe34ed9f645e08f535ef46a5c5d88', '留言管理', '/message?method=list', '', '1', 35, '9fb149d417be412c827eee8c404ade45', NULL, '');
INSERT INTO `sys_menu` VALUES ('0dd1c820f0b4433c89fb8b9c1dbae2a5', '社团管理', '', '', '1', 30, '0', NULL, '');
INSERT INTO `sys_menu` VALUES ('20fdd67512804c1c8e0e60d9021e8f08', '学生管理', '/student?method=list', '', '1', 36, '0dd1c820f0b4433c89fb8b9c1dbae2a5', NULL, '');
INSERT INTO `sys_menu` VALUES ('30517759024547d2a10adb847e222cfc', '活动申请', '/activeStu?method=list', '', '1', 34, '0dd1c820f0b4433c89fb8b9c1dbae2a5', NULL, '');
INSERT INTO `sys_menu` VALUES ('3f0e5d8bc52541d78d5f7bc04fda6938', '个人中心', '', '', '1', 10, '0', NULL, '');
INSERT INTO `sys_menu` VALUES ('43dce0db639844058550f8be9eeefe14', '社团风采', '/siteNews?method=list&newsType=3', '', '1', 33, '0dd1c820f0b4433c89fb8b9c1dbae2a5', NULL, '');
INSERT INTO `sys_menu` VALUES ('7d554b290fba4ef6aa3fea766808e849', '密码修改', '/views/system/repassword.jsp', '', '1', 11, '3f0e5d8bc52541d78d5f7bc04fda6938', NULL, '');
INSERT INTO `sys_menu` VALUES ('7fe02f6f5ef945ae9cb0f30d376090bd', '角色管理', '/role?method=list', '', '1', 21, '9fb149d417be412c827eee8c404ade45', NULL, '');
INSERT INTO `sys_menu` VALUES ('8fd141c7abdc4c62a380dc343da2bd3b', '新闻管理', '/siteNews?method=list&newsType=1', '', '1', 32, '9fb149d417be412c827eee8c404ade45', NULL, '');
INSERT INTO `sys_menu` VALUES ('90b0f70c33aa44089f6feb0a9b5abe74', '社团列表', '/teams?method=list', '', '1', 31, '0dd1c820f0b4433c89fb8b9c1dbae2a5', NULL, '');
INSERT INTO `sys_menu` VALUES ('9fb149d417be412c827eee8c404ade45', '系统管理', '', '', '1', 20, '0', NULL, '');
INSERT INTO `sys_menu` VALUES ('a5e002b33ae7409d81b708bb09d66b1b', '社团活动', '/siteNews?method=list&newsType=2', '', '1', 33, '0dd1c820f0b4433c89fb8b9c1dbae2a5', NULL, '');
INSERT INTO `sys_menu` VALUES ('b685e1a860b841b2b96f1cef4a384caf', '菜单管理', '/menu?method=list', '', '1', 22, '9fb149d417be412c827eee8c404ade45', NULL, '');
INSERT INTO `sys_menu` VALUES ('f749b9c6348c485ea454e043384e7c06', '财务管理', '/moneyManger?method=list', '', '1', 30, '0dd1c820f0b4433c89fb8b9c1dbae2a5', NULL, '');
INSERT INTO `sys_menu` VALUES ('fb106ceb39324d32801d14e6e44667c2', '社团申请', '/teamApplay?method=list', '', '1', 37, '0dd1c820f0b4433c89fb8b9c1dbae2a5', NULL, '');
INSERT INTO `sys_menu` VALUES ('fc97f4187f18440f91f7d07b00d9c0be', '用户管理', '/user?method=list', '', '1', 20, '9fb149d417be412c827eee8c404ade45', NULL, '');

-- ----------------------------
-- Table structure for sys_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role`  (
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单编号',
  INDEX `menu_id`(`menu_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  CONSTRAINT `sys_menu_role_ibfk_3` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_menu_role_ibfk_4` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------
INSERT INTO `sys_menu_role` VALUES ('1', '3f0e5d8bc52541d78d5f7bc04fda6938');
INSERT INTO `sys_menu_role` VALUES ('1', '7d554b290fba4ef6aa3fea766808e849');
INSERT INTO `sys_menu_role` VALUES ('1', '9fb149d417be412c827eee8c404ade45');
INSERT INTO `sys_menu_role` VALUES ('1', '7fe02f6f5ef945ae9cb0f30d376090bd');
INSERT INTO `sys_menu_role` VALUES ('1', 'b685e1a860b841b2b96f1cef4a384caf');
INSERT INTO `sys_menu_role` VALUES ('1', 'fc97f4187f18440f91f7d07b00d9c0be');
INSERT INTO `sys_menu_role` VALUES ('1', '0dd1c820f0b4433c89fb8b9c1dbae2a5');
INSERT INTO `sys_menu_role` VALUES ('1', '90b0f70c33aa44089f6feb0a9b5abe74');
INSERT INTO `sys_menu_role` VALUES ('1', '8fd141c7abdc4c62a380dc343da2bd3b');
INSERT INTO `sys_menu_role` VALUES ('1', 'a5e002b33ae7409d81b708bb09d66b1b');
INSERT INTO `sys_menu_role` VALUES ('1', '30517759024547d2a10adb847e222cfc');
INSERT INTO `sys_menu_role` VALUES ('1', '024fe34ed9f645e08f535ef46a5c5d88');
INSERT INTO `sys_menu_role` VALUES ('1', '20fdd67512804c1c8e0e60d9021e8f08');
INSERT INTO `sys_menu_role` VALUES ('1', 'fb106ceb39324d32801d14e6e44667c2');
INSERT INTO `sys_menu_role` VALUES ('1', '43dce0db639844058550f8be9eeefe14');
INSERT INTO `sys_menu_role` VALUES ('1', 'f749b9c6348c485ea454e043384e7c06');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', '0dd1c820f0b4433c89fb8b9c1dbae2a5');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', '20fdd67512804c1c8e0e60d9021e8f08');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', '30517759024547d2a10adb847e222cfc');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', '43dce0db639844058550f8be9eeefe14');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', 'a5e002b33ae7409d81b708bb09d66b1b');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', 'f749b9c6348c485ea454e043384e7c06');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', 'fb106ceb39324d32801d14e6e44667c2');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', '3f0e5d8bc52541d78d5f7bc04fda6938');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', '7d554b290fba4ef6aa3fea766808e849');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', '9fb149d417be412c827eee8c404ade45');
INSERT INTO `sys_menu_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', '8fd141c7abdc4c62a380dc343da2bd3b');
INSERT INTO `sys_menu_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', '0dd1c820f0b4433c89fb8b9c1dbae2a5');
INSERT INTO `sys_menu_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', '43dce0db639844058550f8be9eeefe14');
INSERT INTO `sys_menu_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', '90b0f70c33aa44089f6feb0a9b5abe74');
INSERT INTO `sys_menu_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', 'a5e002b33ae7409d81b708bb09d66b1b');
INSERT INTO `sys_menu_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', '3f0e5d8bc52541d78d5f7bc04fda6938');
INSERT INTO `sys_menu_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', '7d554b290fba4ef6aa3fea766808e849');
INSERT INTO `sys_menu_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', '9fb149d417be412c827eee8c404ade45');
INSERT INTO `sys_menu_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', '024fe34ed9f645e08f535ef46a5c5d88');
INSERT INTO `sys_menu_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', '8fd141c7abdc4c62a380dc343da2bd3b');
INSERT INTO `sys_menu_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', 'fc97f4187f18440f91f7d07b00d9c0be');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `role_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_flag` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色标志',
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '系统数据，不能删除');
INSERT INTO `sys_role` VALUES ('74c1755bcde54a6092a63765bdfb130b', '管理员', 'admin1', '管理人员');
INSERT INTO `sys_role` VALUES ('b00068530a06485b8c4b5b5bf348e1cf', '社长', 'leader', '社团创始人');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `is_bolck` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否锁定',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'sys', 'e10adc3949ba59abbe56e057f20f883e', '\\upload\\pic.jpg', '1', '0');
INSERT INTO `sys_user` VALUES ('119836c63bd54248a77d1ecbae90b86f', '苏悲', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('1b41e8a426a44270840436f278a046cd', '苏事', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('1f5f6375ff904007b5ee1bb718316d6d', '苏风', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('2ac0dcfd9e1646f9b379faca0266973d', '苏只', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('2f1f574523534274904e1849141f8a26', '苏若', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('398329941e6c4dda867f17a2948fa401', '苏人1', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('425964f610404cdc8715e81c49fcc3f7', '苏生', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('5128ce0f7f3041199dc6bc31514f9588', '苏何', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('5cc5cac7269d475499293478a5e34bbd', '苏初', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('64f2c3bd93da4fcb9be192d74510e589', '苏秋', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('6c78bb931126493886c66e8025702f7a', 'maker', 'e10adc3949ba59abbe56e057f20f883e', '\\upload\\timg8.jpg', 'b00068530a06485b8c4b5b5bf348e1cf', '0');
INSERT INTO `sys_user` VALUES ('74092f4b3d2a4de4b93384f4643225d0', '苏画', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('8a32a58f085644268389ebf113e866d6', 'stu2', 'e10adc3949ba59abbe56e057f20f883e', '\\upload\\17.jpg', 'b00068530a06485b8c4b5b5bf348e1cf', '0');
INSERT INTO `sys_user` VALUES ('99b7c841e0144f9ca40d95855d21a7a2', '苏如', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');
INSERT INTO `sys_user` VALUES ('bc3e4fc6b6f4451ca20bd24993362749', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', '74c1755bcde54a6092a63765bdfb130b', '0');
INSERT INTO `sys_user` VALUES ('e18a0c5b40254529ad609b689000c62a', '苏见', 'e10adc3949ba59abbe56e057f20f883e', '', 'b00068530a06485b8c4b5b5bf348e1cf', '1');

-- ----------------------------
-- Triggers structure for table sys_menu
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_menu_role`;
delimiter ;;
CREATE TRIGGER `insert_menu_role` AFTER INSERT ON `sys_menu` FOR EACH ROW insert sys_menu_role values('1',new.id)
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
