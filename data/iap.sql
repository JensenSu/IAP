/*
 Navicat MySQL Data Transfer

 Source Server         : mysql57
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : iap

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 01/09/2018 09:59:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add company', 1, 'add_company');
INSERT INTO `auth_permission` VALUES (2, 'Can change company', 1, 'change_company');
INSERT INTO `auth_permission` VALUES (3, 'Can delete company', 1, 'delete_company');
INSERT INTO `auth_permission` VALUES (4, 'Can add company_industry_relationship', 2, 'add_company_industry_relationship');
INSERT INTO `auth_permission` VALUES (5, 'Can change company_industry_relationship', 2, 'change_company_industry_relationship');
INSERT INTO `auth_permission` VALUES (6, 'Can delete company_industry_relationship', 2, 'delete_company_industry_relationship');
INSERT INTO `auth_permission` VALUES (7, 'Can add company_user', 3, 'add_company_user');
INSERT INTO `auth_permission` VALUES (8, 'Can change company_user', 3, 'change_company_user');
INSERT INTO `auth_permission` VALUES (9, 'Can delete company_user', 3, 'delete_company_user');
INSERT INTO `auth_permission` VALUES (10, 'Can add field', 4, 'add_field');
INSERT INTO `auth_permission` VALUES (11, 'Can change field', 4, 'change_field');
INSERT INTO `auth_permission` VALUES (12, 'Can delete field', 4, 'delete_field');
INSERT INTO `auth_permission` VALUES (13, 'Can add finance_user', 5, 'add_finance_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change finance_user', 5, 'change_finance_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete finance_user', 5, 'delete_finance_user');
INSERT INTO `auth_permission` VALUES (16, 'Can add goverment_user', 6, 'add_goverment_user');
INSERT INTO `auth_permission` VALUES (17, 'Can change goverment_user', 6, 'change_goverment_user');
INSERT INTO `auth_permission` VALUES (18, 'Can delete goverment_user', 6, 'delete_goverment_user');
INSERT INTO `auth_permission` VALUES (19, 'Can add industry', 7, 'add_industry');
INSERT INTO `auth_permission` VALUES (20, 'Can change industry', 7, 'change_industry');
INSERT INTO `auth_permission` VALUES (21, 'Can delete industry', 7, 'delete_industry');
INSERT INTO `auth_permission` VALUES (22, 'Can add jadministrator', 8, 'add_jadministrator');
INSERT INTO `auth_permission` VALUES (23, 'Can change jadministrator', 8, 'change_jadministrator');
INSERT INTO `auth_permission` VALUES (24, 'Can delete jadministrator', 8, 'delete_jadministrator');
INSERT INTO `auth_permission` VALUES (25, 'Can add log entry', 9, 'add_logentry');
INSERT INTO `auth_permission` VALUES (26, 'Can change log entry', 9, 'change_logentry');
INSERT INTO `auth_permission` VALUES (27, 'Can delete log entry', 9, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (28, 'Can add permission', 10, 'add_permission');
INSERT INTO `auth_permission` VALUES (29, 'Can change permission', 10, 'change_permission');
INSERT INTO `auth_permission` VALUES (30, 'Can delete permission', 10, 'delete_permission');
INSERT INTO `auth_permission` VALUES (31, 'Can add group', 11, 'add_group');
INSERT INTO `auth_permission` VALUES (32, 'Can change group', 11, 'change_group');
INSERT INTO `auth_permission` VALUES (33, 'Can delete group', 11, 'delete_group');
INSERT INTO `auth_permission` VALUES (34, 'Can add user', 12, 'add_user');
INSERT INTO `auth_permission` VALUES (35, 'Can change user', 12, 'change_user');
INSERT INTO `auth_permission` VALUES (36, 'Can delete user', 12, 'delete_user');
INSERT INTO `auth_permission` VALUES (37, 'Can add content type', 13, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (38, 'Can change content type', 13, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (39, 'Can delete content type', 13, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (40, 'Can add session', 14, 'add_session');
INSERT INTO `auth_permission` VALUES (41, 'Can change session', 14, 'change_session');
INSERT INTO `auth_permission` VALUES (42, 'Can delete session', 14, 'delete_session');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (9, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (11, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (10, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (12, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (13, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (14, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (1, 'user_manager', 'company');
INSERT INTO `django_content_type` VALUES (2, 'user_manager', 'company_industry_relationship');
INSERT INTO `django_content_type` VALUES (3, 'user_manager', 'company_user');
INSERT INTO `django_content_type` VALUES (4, 'user_manager', 'field');
INSERT INTO `django_content_type` VALUES (5, 'user_manager', 'finance_user');
INSERT INTO `django_content_type` VALUES (6, 'user_manager', 'goverment_user');
INSERT INTO `django_content_type` VALUES (7, 'user_manager', 'industry');
INSERT INTO `django_content_type` VALUES (8, 'user_manager', 'jadministrator');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-08-22 02:43:13.055649');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2018-08-22 02:43:13.616639');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2018-08-22 02:43:13.758612');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2018-08-22 02:43:13.775614');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2018-08-22 02:43:13.891638');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2018-08-22 02:43:13.939613');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2018-08-22 02:43:13.996643');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2018-08-22 02:43:14.007614');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2018-08-22 02:43:14.055612');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2018-08-22 02:43:14.059639');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2018-08-22 02:43:14.069640');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2018-08-22 02:43:14.116639');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0009_alter_user_last_name_max_length', '2018-08-22 02:43:14.172639');
INSERT INTO `django_migrations` VALUES (14, 'sessions', '0001_initial', '2018-08-22 02:43:14.212612');
INSERT INTO `django_migrations` VALUES (15, 'user_manager', '0001_initial', '2018-08-22 02:43:14.911613');
INSERT INTO `django_migrations` VALUES (16, 'user_manager', '0002_auto_20180822_1630', '2018-08-22 08:47:23.708819');
INSERT INTO `django_migrations` VALUES (17, 'user_manager', '0003_auto_20180822_1646', '2018-08-22 08:47:23.737820');
INSERT INTO `django_migrations` VALUES (18, 'user_manager', '0004_auto_20180822_1651', '2018-08-22 08:51:15.462405');
INSERT INTO `django_migrations` VALUES (19, 'user_manager', '0005_auto_20180903_1708', '2018-09-03 09:08:39.759364');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('5dylsyvyv0xfomgr2l3rqbhb5u0yn8ch', 'NTMwMmY5YWEwYWE3ZTQxZGQ5Mjg0YWQwYzExY2VlNjkxMjY4MzNhMjp7InVzZXJfbmFtZSI6Ilx1OTY0OFx1NGUwMCJ9', '2018-09-06 02:24:13.240314');

-- ----------------------------
-- Table structure for user_manager_company
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_company`;
CREATE TABLE `user_manager_company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_to_market` datetime(6) NOT NULL,
  `legal_person` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `assets` int(11) NOT NULL,
  `business_property` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `scale` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_company
-- ----------------------------
INSERT INTO `user_manager_company` VALUES (1, '北京雪迪龙科技股份有限公司', '从事分析仪器仪表、环境监测系统、工业过程分析系统的研发、生产、销售以及运营维护服务的高新技术企业。公司主营业务围绕环境监测和工业过程分析领域“产品+系统应用+运维服务”展开,主要产品和服务包括:红外\r\n气体分析仪、便携式烟气分析仪等各类分析仪器;烟气排放连续监测系统、环境空气质量监测系统、垃圾焚烧烟气监测系统等环境监测系统;水泥高温气体分析系统、石化化工过程分析系统、冶金过程分析系统、空分过程分析系统等工业过程分析系统;分析仪器系统改造服务、环境监测系统运营维护服务。\r\n公司产品广泛应用于环保、电力、石化、建材、冶金、化工等行业的污染源在线监测和工业过程在线分析,以及环保部门和科研机构用检测设备,并向客户提供量身定制的分析检测、系统应用和自动控制、运行维护等综合解决方案。\r\n', '2010-01-09 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (2, '河北先河环保科技股份有限公司', '高端环境监测仪器仪表研发、生产和销售,以及根据客户要求提供环境监测设施运营服务。公司主要产品包括:空气质量连续自动监测系统、水质连续自动监测系统、污水在线自动监测系统、烟气在线自动监测系统、\r\n酸雨自动监测系统等五大在线监测系统以及数字应急监测车等。主要客户包括各地环境监测、水资源管理、水环境监测、水务、垃圾处理、市政等部门以及电力、煤炭、石油化工、建材、冶金、食品等排污企业\r\n', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (3, '浙江新界泵业股份有限公司', '一家专业从事各类农用水泵研发、生产和销售的高新技术企业。', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (4, '广西博世科环保科技股份有限公司', '系水污染治理整体解决方案提供商,为国家火炬计划重点高新技术企业,致力于为客户提供系统方案设计、系统集成、关键设备设计制造、工程施工、项目管理及其他技术服务等,核心业务包括高浓度有机废水厌氧处理及难降解废水深度处理、重金属污染治理、制浆造纸清洁漂白二氧化氯制备等。\r\n', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (5, '北京碧水源科技股份有限公司', '从事污水处理与污水资源化技术的开发应用,主要为客户一揽子提供应用 MBR 技术建造污水处理厂或再生水厂的整体技术解决方案,包括技术方案设计、工程设计、技术实施与系统集成、运营技术支持和托管运营服务,并生产和提供应用 MBR技术的核心设备膜组器和其核心部件膜材料等。\r\n', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (6, '北京韩建河山管业股份有限公司', '产品主要为预应力钢筒混凝土管(PCCP)、钢筋混凝土排水管(RCP)和商品混凝土。主导产品 PCCP 主要用于大中型引水、调水等水利工程,市政给排水等水务工程。\r\n', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (7, '东江环保股份有限公司', '立足于工业废物处理业务,积极拓展市政废物处理业务,配套发展环境工程及服务和贸易及其他等增值性业务,充分发挥完整的产业链优势,秉承“保护环境、再造资源”的绿色理念,打造符合低碳经济特色的综合性高科技固废处理环保服务商。\r\n', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (8, '杭州聚光科技股份有限公司', '主营业务是研发、生产和销售应用于环境监测、工业过程分析和安全监测领域的仪器仪表。以先进的检测、信息化软件技术和产品为核心,为环境保护、工业过程、公共安全和工业安全提供分析测量、信息化和运维服务的综合解决方案。公司主要产品包括:激光在线气体分析系统、紫外在线气体分析系统、环境气体监测系统、环境水质监测系统、数字环保信息系统、近红外光谱分析系统等。\r\n', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (9, '山东龙泉管道工程股份有限公司', '专业从事预应力钢筒混凝土管、预应力混凝土管、钢筋混凝土排水管的制造、销售及安装等相关业务。\r\n', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (10, '浙江巨龙管业股份有限公司', '主要从事混凝土输水管道的研发、生产和销售,包括 PCCP、PCP、RCP 和自应力管等四大系列 100 多个规格,其中 PCCP 为主导产品。\r\n', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (11, '博天环境集团股份有限公司', '主要服务和产品包括水环境解决方案(工程总承包)、水处理装备和水务投资运营管理。公司在工业与能源水系统、城市水环境、生态修复和土壤修复等领域提供检测监测、咨询设计、系统集成、项目管理、核心设备制造、投资运营等一体化的解决方案。\r\n', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');

-- ----------------------------
-- Table structure for user_manager_company_industry_relationship
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_company_industry_relationship`;
CREATE TABLE `user_manager_company_industry_relationship`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `industry_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_company_industry_relationship
-- ----------------------------
INSERT INTO `user_manager_company_industry_relationship` VALUES (1, '北京碧水源科技股份有限公司', '生活污水处理');
INSERT INTO `user_manager_company_industry_relationship` VALUES (2, '北京雪迪龙科技股份有限公司', '设备厂');
INSERT INTO `user_manager_company_industry_relationship` VALUES (3, '北京雪迪龙科技股份有限公司', '元器件/零件供应商');
INSERT INTO `user_manager_company_industry_relationship` VALUES (4, '河北先河环保科技股份有限公司', '元器件/零件供应商');
INSERT INTO `user_manager_company_industry_relationship` VALUES (5, '浙江新界泵业股份有限公司', '自来水厂');
INSERT INTO `user_manager_company_industry_relationship` VALUES (6, '浙江新界泵业股份有限公司', '元器件/零件供应商');
INSERT INTO `user_manager_company_industry_relationship` VALUES (7, '广西博世科环保科技股份有限公司', '污水排放');
INSERT INTO `user_manager_company_industry_relationship` VALUES (8, '广西博世科环保科技股份有限公司', '污泥处理');
INSERT INTO `user_manager_company_industry_relationship` VALUES (9, '广西博世科环保科技股份有限公司', '生活污水处理');
INSERT INTO `user_manager_company_industry_relationship` VALUES (10, '广西博世科环保科技股份有限公司', '工业废水处理');
INSERT INTO `user_manager_company_industry_relationship` VALUES (11, '北京碧水源科技股份有限公司', '工业废水处理');
INSERT INTO `user_manager_company_industry_relationship` VALUES (12, '北京韩建河山管业股份有限公司', '元器件/零件供应商');
INSERT INTO `user_manager_company_industry_relationship` VALUES (13, '杭州聚光科技股份有限公司', '元器件/零件供应商');
INSERT INTO `user_manager_company_industry_relationship` VALUES (14, '杭州聚光科技股份有限公司', '设备厂');
INSERT INTO `user_manager_company_industry_relationship` VALUES (15, '山东龙泉管道工程股份有限公司', '元器件/零件供应商');
INSERT INTO `user_manager_company_industry_relationship` VALUES (16, '山东龙泉管道工程股份有限公司', '设备厂');
INSERT INTO `user_manager_company_industry_relationship` VALUES (17, '东江环保股份有限公司', '污水排放');
INSERT INTO `user_manager_company_industry_relationship` VALUES (18, '东江环保股份有限公司', '污泥处理');
INSERT INTO `user_manager_company_industry_relationship` VALUES (19, '东江环保股份有限公司', '生活污水处理');
INSERT INTO `user_manager_company_industry_relationship` VALUES (20, '东江环保股份有限公司', '工业废水处理');
INSERT INTO `user_manager_company_industry_relationship` VALUES (21, '浙江巨龙管业股份有限公司', '元器件/零件供应商');
INSERT INTO `user_manager_company_industry_relationship` VALUES (22, '博天环境集团股份有限公司', '污水排放');
INSERT INTO `user_manager_company_industry_relationship` VALUES (23, '博天环境集团股份有限公司', '污泥处理');
INSERT INTO `user_manager_company_industry_relationship` VALUES (24, '博天环境集团股份有限公司', '生活污水处理');
INSERT INTO `user_manager_company_industry_relationship` VALUES (25, '博天环境集团股份有限公司', '工业废水处理');

-- ----------------------------
-- Table structure for user_manager_company_user
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_company_user`;
CREATE TABLE `user_manager_company_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `register_time` datetime(6) NOT NULL,
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_number` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `industry_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_company_user
-- ----------------------------
INSERT INTO `user_manager_company_user` VALUES (1, '陈一', '123456', '1900-01-01 00:00:00.000000', '山东省', '济南市', '12345678910', '001', '001');
INSERT INTO `user_manager_company_user` VALUES (2, '阿嗷嗷', '123456', '2018-09-02 02:17:23.000000', '山东省', '临沂市', '17865169608', '水处理', '生活用水处理');

-- ----------------------------
-- Table structure for user_manager_field
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_field`;
CREATE TABLE `user_manager_field`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_info` varchar(320) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_field
-- ----------------------------
INSERT INTO `user_manager_field` VALUES (1, '水处理领域', '水处理是指为使水质达到一定使用标准而采取的物理、化学措施。饮用水的最低标准由环保部门制定。工业用水有自己的要求。水的温度、颜色、透明度、气味、味道等物理特性是判断水质好坏的基本标准。水的化学特性，如其酸碱度、所溶解的固体物浓度和氧气含量等，也是判断水质的重要标准。如有些草原自然水中全溶固体物浓度高达1000毫克/升，而加拿大规定饮用水中全溶固体物浓度不得超过500毫克/升，许多工业用水还要求浓度不得高于200毫克/升。这种水，即便其物理性质符合要求，也不能随便使用。另外，来自自然界、核事故和核电站等的放射性元素含量，也是必须进行监测的重要特性。');

-- ----------------------------
-- Table structure for user_manager_finance_user
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_finance_user`;
CREATE TABLE `user_manager_finance_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apartment` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `register_time` datetime(6) NOT NULL,
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_number` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_finance_user
-- ----------------------------
INSERT INTO `user_manager_finance_user` VALUES (1, '阿里', '123456', '营业部', '2018-08-24 08:16:53.000000', '北京', '北京', '98765432100');

-- ----------------------------
-- Table structure for user_manager_goverment_user
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_goverment_user`;
CREATE TABLE `user_manager_goverment_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apartment` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `register_time` datetime(6) NOT NULL,
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_number` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_goverment_user
-- ----------------------------
INSERT INTO `user_manager_goverment_user` VALUES (1, '阿里', '123456', '水利', '1900-01-01 00:00:00.000000', '山东省', '临沂市', '12345679810');
INSERT INTO `user_manager_goverment_user` VALUES (2, '阿里', '123456', '水利', '2018-08-24 08:11:40.000000', '山东省', '临沂市', '12345679810');
INSERT INTO `user_manager_goverment_user` VALUES (3, 'dag', '123456', '卫计局', '2018-09-04 11:10:41.000000', '安徽省', '合肥市', '12345678910');

-- ----------------------------
-- Table structure for user_manager_industry
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_industry`;
CREATE TABLE `user_manager_industry`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_industry
-- ----------------------------
INSERT INTO `user_manager_industry` VALUES (2, '污泥处理', '对污泥进行浓缩、调质、脱水、稳定、干化或焚烧等减量化、稳定化、无害化的加工过程。');
INSERT INTO `user_manager_industry` VALUES (3, '自来水厂', '有一定生产设备，能完成自来水整个生产过程，水质符合一般生产用水和生活用水要求，并可作为公司（厂）内部一级核算的生产单位');
INSERT INTO `user_manager_industry` VALUES (4, '污水排放', '根据国家标准，控制水污染的情况下，污水排放去向。');
INSERT INTO `user_manager_industry` VALUES (5, '工业用水', '工业用水指工业生产过程中使用的生产用水及厂区内职工生活用水的总称。生产用水主要用途是：1、原料用水，直接作为原料或作为原料一部分而使用的水；2、产品处理用水；3、锅炉用水；4、冷却用水等。其中冷却用水在工业用水中一般占60%～70%。工业用水量虽较大，但实际消耗量并不多，一般耗水量约为其总用水量的0.5%～10%，即有90%以上的水量使用后经适当处理仍可以重复利用。');
INSERT INTO `user_manager_industry` VALUES (6, '工业废水处理', '工业废水治理（industrial wastewater management），指的是工业生产过程用过的水经过适当处理回用于生产或妥善地排放出厂，包括生产用水的管理和为便于治理废水而采取的措施。');
INSERT INTO `user_manager_industry` VALUES (7, '居民生活用水', '城市污水（municipal sewage,municipal wastewater）排入城镇污水系统的污水的统称。在合流制排水系统中，还包括生产废水和截留的雨水。');
INSERT INTO `user_manager_industry` VALUES (8, '设备厂', '污水处理厂设备是工业污水处理工艺技术成熟、经济合理的原则进行总体设计，力求节能降耗、工程投资低、运行成本低、操作管理方便、工艺技术先进成熟的废水处理工艺流程。');
INSERT INTO `user_manager_industry` VALUES (9, '元器件/零件供应商', '供应商是向企业及其竞争对手供应各种所需资源的企业和个人，包括提供原材料、设备、能源、劳务和资金等。它们的情况如何会对企业的营销活动产生巨大的影响，如原材料价格变化、短缺等都会影响企业产品的价格和交货期，并会因而削弱企业与客户的长期合作与利益，因此，营销人员必须对供应商的情况有比较全面的了解和透彻的分析。供应商既是商务谈判中的对手更是合作伙伴');
INSERT INTO `user_manager_industry` VALUES (10, '生活污水处理', '城市污水（municipal sewage,municipal wastewater）排入城镇污水系统的污水的统称。在合流制排水系统中，还包括生产废水和截留的雨水');

-- ----------------------------
-- Table structure for user_manager_jadministrator
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_jadministrator`;
CREATE TABLE `user_manager_jadministrator`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `register_time` datetime(6) NOT NULL,
  `phone_number` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
