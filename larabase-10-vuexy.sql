/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : larabase-10-vuexy

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 29/08/2023 00:14:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audits
-- ----------------------------
DROP TABLE IF EXISTS `audits`;
CREATE TABLE `audits`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_values` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `new_values` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `audits_auditable_id_auditable_type_index`(`auditable_id` ASC, `auditable_type` ASC) USING BTREE,
  INDEX `audits_auditable_type_auditable_id_index`(`auditable_type` ASC, `auditable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of audits
-- ----------------------------
INSERT INTO `audits` VALUES (1, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'created', 'App\\Models\\Group', '821cadf4-3e27-465a-b308-18d00a8e94c3', '[]', '{\"id\":\"821cadf4-3e27-465a-b308-18d00a8e94c3\",\"name\":\"Users\",\"code\":\"USERS\",\"created_by\":\"ac6060ac-705b-4b2a-9b96-fdbb30273d43\"}', 'http://127.0.0.1:8000/administrator/group', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-07-06 03:36:04', '2023-07-06 03:36:04');
INSERT INTO `audits` VALUES (2, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', '{\"password\":\"$2y$10$mkAxWji5DaAI.iPizvugC.KmDhS6KoGkDHLzZObUDzHxo5p3fVaKq\",\"profile_picture\":null,\"updated_by\":\"SYSTEM\"}', '{\"password\":\"$2y$10$0wleDdRpen8.HOt9SwlymeaxVAGjT5gPmlAr4MBMwVsoQ1MXhlJC6\",\"profile_picture\":\"profile_picture\\/bkpjgts3jl4bi7o9e6qu.jpg\",\"updated_by\":\"ac6060ac-705b-4b2a-9b96-fdbb30273d43\"}', 'http://127.0.0.1:8000/administrator/profile', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-07-06 03:41:46', '2023-07-06 03:41:46');
INSERT INTO `audits` VALUES (3, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', '{\"password\":\"$2y$10$0wleDdRpen8.HOt9SwlymeaxVAGjT5gPmlAr4MBMwVsoQ1MXhlJC6\",\"profile_picture\":\"profile_picture\\/bkpjgts3jl4bi7o9e6qu.jpg\"}', '{\"password\":\"$2y$10$w7WAZl7PTuHioDQezbBYVe06iqK67ER\\/biUX.eOEwwtpKI3xP\\/GS.\",\"profile_picture\":\"profile_picture\\/ftivlz3iy50mf7zf24kl.jpg\"}', 'http://127.0.0.1:9000/administrator/profile', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, '2023-08-04 06:06:42', '2023-08-04 06:06:42');
INSERT INTO `audits` VALUES (4, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', '{\"password\":\"$2y$10$w7WAZl7PTuHioDQezbBYVe06iqK67ER\\/biUX.eOEwwtpKI3xP\\/GS.\",\"profile_picture\":\"profile_picture\\/ftivlz3iy50mf7zf24kl.jpg\"}', '{\"password\":\"$2y$10$9SX3kNRj0g9wU4ZDmh.RFOIzf6F5vbkazrYvsOTn.wopiSPRyataa\",\"profile_picture\":\"profile_picture\\/8blsjhctu4g39zva2je7.jpg\"}', 'http://127.0.0.1:9000/administrator/profile', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, '2023-08-04 06:06:56', '2023-08-04 06:06:56');
INSERT INTO `audits` VALUES (5, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', '{\"password\":\"$2y$10$9SX3kNRj0g9wU4ZDmh.RFOIzf6F5vbkazrYvsOTn.wopiSPRyataa\",\"profile_picture\":\"profile_picture\\/8blsjhctu4g39zva2je7.jpg\"}', '{\"password\":\"$2y$10$jaq3yCGc0hT0\\/DpkQ4zA\\/.7uzpnwpw28SmvNoYx\\/dQy2jdZYnbPvu\",\"profile_picture\":\"profile_picture\\/jwgbpxc4wrr8134f12yv.jpg\"}', 'http://127.0.0.1:8000/administrator/profile', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-27 16:32:41', '2023-08-27 16:32:41');
INSERT INTO `audits` VALUES (6, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'created', 'App\\Models\\User', 'be200315-4b49-4fba-b004-c28851392dc7', '[]', '{\"id\":\"be200315-4b49-4fba-b004-c28851392dc7\",\"group_id\":\"821cadf4-3e27-465a-b308-18d00a8e94c3\",\"fullname\":\"Users\",\"username\":\"user\",\"password\":\"$2y$10$lZ\\/o7hyoCJRYfZ5hcKcUn.3iDwzzJdpqmcp7pcdoVaxjcfY7HFhbe\",\"created_by\":\"ac6060ac-705b-4b2a-9b96-fdbb30273d43\"}', 'http://127.0.0.1:8000/administrator/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-28 16:18:12', '2023-08-28 16:18:12');
INSERT INTO `audits` VALUES (7, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'be200315-4b49-4fba-b004-c28851392dc7', '{\"group_id\":\"821cadf4-3e27-465a-b308-18d00a8e94c3\",\"password\":\"$2y$10$lZ\\/o7hyoCJRYfZ5hcKcUn.3iDwzzJdpqmcp7pcdoVaxjcfY7HFhbe\",\"updated_by\":null}', '{\"group_id\":\"2f5716c5-60d8-4661-a876-19758eb9f69d\",\"password\":\"$2y$10$3cx5.vca4cdtBIhzmGSwCe.LzJNaLa8etkgULTkPye1HYPwdYkIia\",\"updated_by\":\"ac6060ac-705b-4b2a-9b96-fdbb30273d43\"}', 'http://127.0.0.1:8000/administrator/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-28 16:18:52', '2023-08-28 16:18:52');
INSERT INTO `audits` VALUES (8, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'be200315-4b49-4fba-b004-c28851392dc7', '{\"group_id\":\"2f5716c5-60d8-4661-a876-19758eb9f69d\",\"password\":\"$2y$10$3cx5.vca4cdtBIhzmGSwCe.LzJNaLa8etkgULTkPye1HYPwdYkIia\"}', '{\"group_id\":\"821cadf4-3e27-465a-b308-18d00a8e94c3\",\"password\":\"$2y$10$1Z8\\/8.WHadVG3f7tj6VyiOTBt\\/NWahr9PfrFdfHmx3PeVZDG8kGVe\"}', 'http://127.0.0.1:8000/administrator/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-28 16:19:35', '2023-08-28 16:19:35');
INSERT INTO `audits` VALUES (9, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'be200315-4b49-4fba-b004-c28851392dc7', '{\"group_id\":\"821cadf4-3e27-465a-b308-18d00a8e94c3\",\"password\":\"$2y$10$1Z8\\/8.WHadVG3f7tj6VyiOTBt\\/NWahr9PfrFdfHmx3PeVZDG8kGVe\"}', '{\"group_id\":\"2f5716c5-60d8-4661-a876-19758eb9f69d\",\"password\":\"$2y$10$Xo\\/c8pP\\/yCTHQkuui7wyuOowUG.LITrvcHSnJBmFCpdhC9\\/2p61P.\"}', 'http://127.0.0.1:8000/administrator/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-28 16:25:10', '2023-08-28 16:25:10');
INSERT INTO `audits` VALUES (10, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'be200315-4b49-4fba-b004-c28851392dc7', '{\"group_id\":\"2f5716c5-60d8-4661-a876-19758eb9f69d\",\"password\":\"$2y$10$Xo\\/c8pP\\/yCTHQkuui7wyuOowUG.LITrvcHSnJBmFCpdhC9\\/2p61P.\"}', '{\"group_id\":\"821cadf4-3e27-465a-b308-18d00a8e94c3\",\"password\":\"$2y$10$Ymuw1SKfk0LXlI1fmxgnlu74lsYDjldm3qbk5XZ4VCDV0zktAulRa\"}', 'http://127.0.0.1:8000/administrator/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-28 16:26:03', '2023-08-28 16:26:03');
INSERT INTO `audits` VALUES (11, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'be200315-4b49-4fba-b004-c28851392dc7', '{\"password\":\"$2y$10$Ymuw1SKfk0LXlI1fmxgnlu74lsYDjldm3qbk5XZ4VCDV0zktAulRa\"}', '{\"password\":\"$2y$10$9I9nvU7hJtgaH\\/IpMA29h.MPdoo6Uq2iu1YW67t\\/xkZPIU2YRN5JO\"}', 'http://127.0.0.1:8000/administrator/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-28 16:34:12', '2023-08-28 16:34:12');
INSERT INTO `audits` VALUES (12, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'be200315-4b49-4fba-b004-c28851392dc7', '{\"password\":\"$2y$10$9I9nvU7hJtgaH\\/IpMA29h.MPdoo6Uq2iu1YW67t\\/xkZPIU2YRN5JO\"}', '{\"password\":\"$2y$10$WZ6fFHlMiamoU1jXiKCudeQ7CoatGciFbWg9ZrANZKHfMdUnL9ic.\"}', 'http://127.0.0.1:8000/administrator/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-28 16:40:38', '2023-08-28 16:40:38');
INSERT INTO `audits` VALUES (13, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'be200315-4b49-4fba-b004-c28851392dc7', '{\"password\":\"$2y$10$WZ6fFHlMiamoU1jXiKCudeQ7CoatGciFbWg9ZrANZKHfMdUnL9ic.\"}', '{\"password\":\"$2y$10$P0EXNOLfoznloIFGUrjBf.ZN1XO8V1HCj08txhLRTBGEnvH5l.tsu\"}', 'http://127.0.0.1:8000/administrator/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-28 16:44:10', '2023-08-28 16:44:10');
INSERT INTO `audits` VALUES (14, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'be200315-4b49-4fba-b004-c28851392dc7', '{\"password\":\"$2y$10$P0EXNOLfoznloIFGUrjBf.ZN1XO8V1HCj08txhLRTBGEnvH5l.tsu\"}', '{\"password\":\"$2y$10$UCNHRXmtmWBZLtIkRGbW\\/.FINxGbZAwx3prPiVIs0Njs6D2udzW6i\"}', 'http://127.0.0.1:8000/administrator/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-28 16:54:17', '2023-08-28 16:54:17');
INSERT INTO `audits` VALUES (15, 'App\\Models\\User', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'updated', 'App\\Models\\User', 'be200315-4b49-4fba-b004-c28851392dc7', '{\"password\":\"$2y$10$UCNHRXmtmWBZLtIkRGbW\\/.FINxGbZAwx3prPiVIs0Njs6D2udzW6i\"}', '{\"password\":\"$2y$10$OLg24vmTJf7Wo0LeWDviR.JQlClIEbrKVnQbHQMQMSwz6mB19GxYW\"}', 'http://127.0.0.1:8000/administrator/user', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, '2023-08-28 16:59:27', '2023-08-28 16:59:27');

-- ----------------------------
-- Table structure for conf_group
-- ----------------------------
DROP TABLE IF EXISTS `conf_group`;
CREATE TABLE `conf_group`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of conf_group
-- ----------------------------
INSERT INTO `conf_group` VALUES ('2f5716c5-60d8-4661-a876-19758eb9f69d', 'ADM', 'Admin', NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_group` VALUES ('3b9b5ccf-0a80-437b-be46-d511e0821d47', 'SPRADM', 'Super Admin', NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_group` VALUES ('821cadf4-3e27-465a-b308-18d00a8e94c3', 'USERS', 'Users', NULL, '2023-07-06 03:36:04', '2023-07-06 03:36:04', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', NULL, NULL);

-- ----------------------------
-- Table structure for conf_group_menu
-- ----------------------------
DROP TABLE IF EXISTS `conf_group_menu`;
CREATE TABLE `conf_group_menu`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_addable` tinyint(1) NULL DEFAULT 0,
  `is_editable` tinyint(1) NULL DEFAULT 0,
  `is_viewable` tinyint(1) NULL DEFAULT 0,
  `is_deletable` tinyint(1) NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `conf_group_menu_group_id_foreign`(`group_id` ASC) USING BTREE,
  INDEX `conf_group_menu_menu_id_foreign`(`menu_id` ASC) USING BTREE,
  CONSTRAINT `conf_group_menu_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `conf_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `conf_group_menu_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `conf_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of conf_group_menu
-- ----------------------------
INSERT INTO `conf_group_menu` VALUES ('09189cc7-b40b-45bb-b102-6405780861ed', '821cadf4-3e27-465a-b308-18d00a8e94c3', '1a984c13-9a73-46ec-b6d9-0aa8da7f9fad', 0, 0, 0, 0, NULL, '2023-07-06 03:36:04', '2023-07-06 03:36:04');
INSERT INTO `conf_group_menu` VALUES ('20fc0510-2680-4488-b5be-098468b792da', '2f5716c5-60d8-4661-a876-19758eb9f69d', '1a984c13-9a73-46ec-b6d9-0aa8da7f9fad', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('26684fa1-745b-4b08-a232-8cae9ea36a3d', '3b9b5ccf-0a80-437b-be46-d511e0821d47', 'f9f2bf9b-6ebc-4ddb-8b50-0aa0f98f0435', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('314f456a-87a9-4627-b51a-4b84cd13353c', '2f5716c5-60d8-4661-a876-19758eb9f69d', '56b39714-3c36-4476-b20d-5c7f4eb6eaf4', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('3e1c1c95-23c0-4c8a-ba0a-8711905ec622', '3b9b5ccf-0a80-437b-be46-d511e0821d47', '56b39714-3c36-4476-b20d-5c7f4eb6eaf4', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('42c54e5a-8cc2-4d0b-9f18-1502dbd4b3f4', '2f5716c5-60d8-4661-a876-19758eb9f69d', '8805d732-80ca-4a3a-93d4-64e4ab8d1101', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('44948386-9cd9-4f33-9783-ace8a6956d1a', '3b9b5ccf-0a80-437b-be46-d511e0821d47', '95e3539e-9c6b-49e5-b313-0dfdb5dccda8', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('4655a35d-ca23-49e0-a854-e9b155b5c855', '821cadf4-3e27-465a-b308-18d00a8e94c3', 'f9f2bf9b-6ebc-4ddb-8b50-0aa0f98f0435', 0, 0, 0, 0, NULL, '2023-07-06 03:36:04', '2023-07-06 03:36:04');
INSERT INTO `conf_group_menu` VALUES ('477b6058-801b-4b93-83e0-eacf0a8ecd7a', '821cadf4-3e27-465a-b308-18d00a8e94c3', '7be13297-bcb3-466b-897b-743fd40bb2a0', 1, 1, 1, 1, NULL, '2023-07-06 03:36:04', '2023-07-06 03:36:04');
INSERT INTO `conf_group_menu` VALUES ('5dd9933d-e81e-4800-931e-690c03f13b52', '2f5716c5-60d8-4661-a876-19758eb9f69d', '07bc6987-805f-4266-9efc-d89cbb79ad39', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('64322646-11d8-4e13-975d-3ce78494f573', '821cadf4-3e27-465a-b308-18d00a8e94c3', '95e3539e-9c6b-49e5-b313-0dfdb5dccda8', 1, 1, 1, 1, NULL, '2023-07-06 03:36:04', '2023-07-06 03:36:04');
INSERT INTO `conf_group_menu` VALUES ('6bde6e7b-ae2b-41f5-b528-67966a76132d', '3b9b5ccf-0a80-437b-be46-d511e0821d47', '1a984c13-9a73-46ec-b6d9-0aa8da7f9fad', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('6fdc8cba-64d6-4ab9-a27d-00d9d8715efe', '821cadf4-3e27-465a-b308-18d00a8e94c3', '8805d732-80ca-4a3a-93d4-64e4ab8d1101', 0, 0, 0, 0, NULL, '2023-07-06 03:36:04', '2023-07-06 03:36:04');
INSERT INTO `conf_group_menu` VALUES ('735bfbfb-7d16-49c5-afba-5427392c96e3', '2f5716c5-60d8-4661-a876-19758eb9f69d', '95e3539e-9c6b-49e5-b313-0dfdb5dccda8', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('965b0f48-61b8-445e-af18-99213720c169', '821cadf4-3e27-465a-b308-18d00a8e94c3', '56b39714-3c36-4476-b20d-5c7f4eb6eaf4', 0, 0, 0, 0, NULL, '2023-07-06 03:36:04', '2023-07-06 03:36:04');
INSERT INTO `conf_group_menu` VALUES ('a9b0fb7b-e1fc-464a-ac62-06d8bd611d02', '3b9b5ccf-0a80-437b-be46-d511e0821d47', '07bc6987-805f-4266-9efc-d89cbb79ad39', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('b1ecc5eb-1a62-4dfa-88f0-4734bc102e61', '3b9b5ccf-0a80-437b-be46-d511e0821d47', '8805d732-80ca-4a3a-93d4-64e4ab8d1101', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('c5b574c2-0bad-45fb-acde-dbc914122411', '2f5716c5-60d8-4661-a876-19758eb9f69d', '7be13297-bcb3-466b-897b-743fd40bb2a0', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('dccbf1f9-8152-4abc-b92d-d984a8800094', '821cadf4-3e27-465a-b308-18d00a8e94c3', '07bc6987-805f-4266-9efc-d89cbb79ad39', 0, 0, 0, 0, NULL, '2023-07-06 03:36:04', '2023-07-06 03:36:04');
INSERT INTO `conf_group_menu` VALUES ('de6330bd-7b76-4e03-92d0-823dd12b67f3', '3b9b5ccf-0a80-437b-be46-d511e0821d47', '7be13297-bcb3-466b-897b-743fd40bb2a0', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');
INSERT INTO `conf_group_menu` VALUES ('f1a6f7f8-23e4-4965-adb3-27d8a4f5c4b5', '2f5716c5-60d8-4661-a876-19758eb9f69d', 'f9f2bf9b-6ebc-4ddb-8b50-0aa0f98f0435', 1, 1, 1, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14');

-- ----------------------------
-- Table structure for conf_menu
-- ----------------------------
DROP TABLE IF EXISTS `conf_menu`;
CREATE TABLE `conf_menu`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_order` int NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_showed` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `conf_menu_parent_id_foreign`(`parent_id` ASC) USING BTREE,
  CONSTRAINT `conf_menu_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `conf_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of conf_menu
-- ----------------------------
INSERT INTO `conf_menu` VALUES ('07bc6987-805f-4266-9efc-d89cbb79ad39', '56b39714-3c36-4476-b20d-5c7f4eb6eaf4', 'MENU', 'Menu', 13000, '', 'dashboard_menu', 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_menu` VALUES ('1a984c13-9a73-46ec-b6d9-0aa8da7f9fad', '56b39714-3c36-4476-b20d-5c7f4eb6eaf4', 'SETTING', 'Setting', 15000, '', 'dashboard_setting', 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_menu` VALUES ('56b39714-3c36-4476-b20d-5c7f4eb6eaf4', NULL, 'ADMININSTRATOR', 'Administrator', 10000, 'ti-settings', NULL, 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_menu` VALUES ('7be13297-bcb3-466b-897b-743fd40bb2a0', NULL, 'PROFILE', 'PROFILE', 100000, '-', 'dashboard_profile', 0, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_menu` VALUES ('8805d732-80ca-4a3a-93d4-64e4ab8d1101', '56b39714-3c36-4476-b20d-5c7f4eb6eaf4', 'USER', 'User', 11000, '', 'dashboard_user', 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_menu` VALUES ('95e3539e-9c6b-49e5-b313-0dfdb5dccda8', NULL, 'DASHBOARD', 'Dashboard', 1000, 'ti-smart-home', 'dashboard', 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_menu` VALUES ('f9f2bf9b-6ebc-4ddb-8b50-0aa0f98f0435', '56b39714-3c36-4476-b20d-5c7f4eb6eaf4', 'GROUP', 'Group', 12000, '', 'dashboard_group', 1, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);

-- ----------------------------
-- Table structure for conf_setting
-- ----------------------------
DROP TABLE IF EXISTS `conf_setting`;
CREATE TABLE `conf_setting`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of conf_setting
-- ----------------------------
INSERT INTO `conf_setting` VALUES ('0ab160fd-6008-4924-b74b-ccce1d758a11', 'logo', 'text', 'setting/ceca63c1baf77c9cc635fdf9af4ef331.png', NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_setting` VALUES ('2c3729f3-2fac-41c9-93fd-eea58a37e253', 'app_name_short', 'text', 'LBase', NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_setting` VALUES ('4b191502-a08c-419f-8326-0b90afe60f80', 'app_name', 'text', 'LARABASE', NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_setting` VALUES ('8c7520ee-23f5-441a-aeb9-a69b7d036af4', 'footer', 'text', '2022 © Larabase Development', NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_setting` VALUES ('93ca0780-897a-4756-95c2-563ae10c578f', 'super_password', 'text', 'larabase123', NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);
INSERT INTO `conf_setting` VALUES ('c096de99-7985-4799-baf0-c999e0fe8b4b', 'logo_icon', 'text', 'setting/ceca63c1baf77c9cc635fdf9af4ef331.png', NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);

-- ----------------------------
-- Table structure for conf_users
-- ----------------------------
DROP TABLE IF EXISTS `conf_users`;
CREATE TABLE `conf_users`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `conf_users_group_id_foreign`(`group_id` ASC) USING BTREE,
  CONSTRAINT `conf_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `conf_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of conf_users
-- ----------------------------
INSERT INTO `conf_users` VALUES ('ac6060ac-705b-4b2a-9b96-fdbb30273d43', '3b9b5ccf-0a80-437b-be46-d511e0821d47', 'Super Admin', 'spradmin', 'spradmin@gmail.com', '$2y$10$jaq3yCGc0hT0/DpkQ4zA/.7uzpnwpw28SmvNoYx/dQy2jdZYnbPvu', 'profile_picture/jwgbpxc4wrr8134f12yv.jpg', NULL, NULL, '2023-07-05 08:37:14', '2023-08-27 16:32:41', 'SYSTEM', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', NULL);
INSERT INTO `conf_users` VALUES ('be200315-4b49-4fba-b004-c28851392dc7', '821cadf4-3e27-465a-b308-18d00a8e94c3', 'Users', 'user', NULL, '$2y$10$OLg24vmTJf7Wo0LeWDviR.JQlClIEbrKVnQbHQMQMSwz6mB19GxYW', NULL, NULL, NULL, '2023-08-28 16:18:12', '2023-08-28 16:59:27', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', 'ac6060ac-705b-4b2a-9b96-fdbb30273d43', NULL);
INSERT INTO `conf_users` VALUES ('e7b32a9a-4973-499d-b274-e67a80b70e8b', '2f5716c5-60d8-4661-a876-19758eb9f69d', 'Admin', 'admin', 'admin@gmail.com', '$2y$10$NK/FNHwUuXAY6D.gsAVVEusZ/7TAXzO.wrsqX84vUD0SGPh0gybui', NULL, NULL, NULL, '2023-07-05 08:37:14', '2023-07-05 08:37:14', 'SYSTEM', 'SYSTEM', NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_04_19_122601_setup_migration', 1);
INSERT INTO `migrations` VALUES (5, '2021_04_19_124542_setup_relation', 1);
INSERT INTO `migrations` VALUES (6, '2022_12_15_102117_create_audits_table', 1);
INSERT INTO `migrations` VALUES (7, '2023_02_20_000000_create_categories_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
