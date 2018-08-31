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

 Date: 31/08/2018 15:12:33
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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_company
-- ----------------------------
INSERT INTO `user_manager_company` VALUES (1, '北京雪迪龙科技股份有限公司', '1', '2010-01-09 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (2, '河北先河环保科技股份有限公司', '1', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (3, '浙江新界泵业股份有限公司', '1', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (4, '广西博世科环保科技股份有限公司', '1', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (5, '北京碧水源科技股份有限公司', '1', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (6, '北京韩建河山管业股份有限公司', '1', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');
INSERT INTO `user_manager_company` VALUES (7, '河北先河环保科技股份有限公司', '1', '2010-01-01 00:00:00.000000', '1', 1, '1', '1');

-- ----------------------------
-- Table structure for user_manager_company_industry_relationship
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_company_industry_relationship`;
CREATE TABLE `user_manager_company_industry_relationship`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id_id` int(11) NOT NULL,
  `industry_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_manager_company_company_id_id_29037351_fk_user_mana`(`company_id_id`) USING BTREE,
  INDEX `user_manager_company_industry_id_id_5d5da3ad_fk_user_mana`(`industry_id_id`) USING BTREE,
  CONSTRAINT `user_manager_company_company_id_id_29037351_fk_user_mana` FOREIGN KEY (`company_id_id`) REFERENCES `user_manager_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_manager_company_industry_id_id_5d5da3ad_fk_user_mana` FOREIGN KEY (`industry_id_id`) REFERENCES `user_manager_industry` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_company_user
-- ----------------------------
INSERT INTO `user_manager_company_user` VALUES (1, '陈一', '123456', '1900-01-01 00:00:00.000000', '山东省', '济南市', '12345678910', '001', '001');

-- ----------------------------
-- Table structure for user_manager_field
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_field`;
CREATE TABLE `user_manager_field`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_info` varchar(320) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_goverment_user
-- ----------------------------
INSERT INTO `user_manager_goverment_user` VALUES (1, '阿里', '123456', '水利', '1900-01-01 00:00:00.000000', '山东省', '临沂市', '12345679810');
INSERT INTO `user_manager_goverment_user` VALUES (2, '阿里', '123456', '水利', '2018-08-24 08:11:40.000000', '山东省', '临沂市', '12345679810');

-- ----------------------------
-- Table structure for user_manager_industry
-- ----------------------------
DROP TABLE IF EXISTS `user_manager_industry`;
CREATE TABLE `user_manager_industry`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_manager_industry
-- ----------------------------
INSERT INTO `user_manager_industry` VALUES (1, '水处理', '111');

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
