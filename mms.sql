/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql
 Source Server Type    : MySQL
 Source Server Version : 80035 (8.0.35)
 Source Host           : localhost:3306
 Source Schema         : mms

 Target Server Type    : MySQL
 Target Server Version : 80035 (8.0.35)
 File Encoding         : 65001

 Date: 11/12/2023 01:10:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for att_attendance
-- ----------------------------
DROP TABLE IF EXISTS `att_attendance`;
CREATE TABLE `att_attendance`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_id` int NULL DEFAULT NULL COMMENT '员工id',
  `mor_start_time` time NULL DEFAULT NULL COMMENT '上午上班时间',
  `mor_end_time` time NULL DEFAULT NULL COMMENT '上午下班时间',
  `aft_start_time` time NULL DEFAULT NULL COMMENT '下午上班时间',
  `aft_end_time` time NULL DEFAULT NULL COMMENT '下午下班时间',
  `attendance_date` date NOT NULL COMMENT '考勤日期',
  `status` tinyint NULL DEFAULT NULL COMMENT '0正常，1迟到，2早退，3旷工，4休假',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 261 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工考勤表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of att_attendance
-- ----------------------------
INSERT INTO `att_attendance` VALUES (197, 1, '07:30:00', '11:30:00', '13:30:00', '18:00:00', '2023-12-09', 0, NULL, '2023-12-06 16:52:25', '2023-12-06 17:35:20', 0);
INSERT INTO `att_attendance` VALUES (198, 1, '06:50:00', '12:00:00', '13:00:00', '17:00:16', '2023-12-10', 0, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (199, 1, '09:00:00', '10:30:00', '13:01:55', '16:00:16', '2023-12-11', 3, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (200, 2, '07:00:00', '12:35:00', '13:12:55', '19:20:16', '2023-12-09', 1, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (201, 2, '07:40:00', '12:20:00', '13:09:55', '18:10:16', '2023-12-10', 0, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (202, 2, '07:40:00', '12:30:00', NULL, '18:49:00', '2023-12-11', 0, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (203, 3, '06:12:00', '11:00:00', '13:01:55', '16:00:16', '2023-12-09', 2, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (204, 3, '07:00:00', '11:30:00', '13:30:00', '18:00:00', '2023-12-10', 3, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (205, 3, '07:20:00', '12:30:00', '13:00:00', '18:00:16', '2023-12-11', 0, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (206, 4, '09:30:00', '10:40:00', '13:10:55', '16:30:16', '2023-12-09', 3, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (207, 4, '05:00:00', '12:35:00', '13:00:55', '19:20:16', '2023-12-10', 0, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (208, 4, '05:40:00', '13:00:00', '13:00:55', '18:10:16', '2023-12-11', 0, NULL, '2023-12-06 16:52:25', '2023-12-06 16:52:25', 0);
INSERT INTO `att_attendance` VALUES (209, 1, NULL, NULL, NULL, NULL, '2023-12-06', 0, NULL, '2023-12-06 17:35:20', '2023-12-06 17:35:20', 0);
INSERT INTO `att_attendance` VALUES (210, 1, NULL, NULL, NULL, NULL, '2023-12-16', 0, NULL, '2023-12-06 17:38:40', '2023-12-06 17:38:40', 0);
INSERT INTO `att_attendance` VALUES (211, 1, NULL, NULL, NULL, NULL, '2023-12-17', 1, NULL, '2023-12-06 17:38:40', '2023-12-06 17:38:40', 0);
INSERT INTO `att_attendance` VALUES (212, 3, '07:20:00', '12:30:00', '13:00:00', '18:00:16', '2023-11-06', 0, NULL, '2023-12-06 17:54:37', '2023-12-13 15:09:39', 0);
INSERT INTO `att_attendance` VALUES (213, 4, NULL, NULL, NULL, NULL, '2023-08-12', 0, NULL, '2023-12-06 17:54:43', '2023-12-06 17:54:43', 0);
INSERT INTO `att_attendance` VALUES (214, 1, NULL, NULL, NULL, NULL, '2023-08-12', 2, NULL, '2023-12-06 17:54:50', '2023-12-06 17:54:50', 0);
INSERT INTO `att_attendance` VALUES (215, 2, NULL, NULL, NULL, NULL, '2023-08-14', 1, NULL, '2023-12-06 17:54:56', '2023-12-06 17:54:56', 0);
INSERT INTO `att_attendance` VALUES (216, 6, NULL, NULL, NULL, NULL, '2023-08-13', 3, NULL, '2023-12-06 17:55:03', '2023-12-06 17:55:03', 0);
INSERT INTO `att_attendance` VALUES (217, 6, NULL, NULL, NULL, NULL, '2023-12-13', 2, NULL, '2023-12-06 18:05:27', '2023-12-06 18:05:27', 0);
INSERT INTO `att_attendance` VALUES (218, 9, NULL, NULL, NULL, NULL, '2023-12-13', 1, NULL, '2023-12-06 18:05:34', '2023-12-06 18:05:34', 0);
INSERT INTO `att_attendance` VALUES (219, 1, '06:00:00', '12:00:00', '13:00:55', '18:00:16', '2023-10-08', 1, NULL, '2023-12-12 20:50:04', '2023-02-16 07:48:16', 0);
INSERT INTO `att_attendance` VALUES (220, 1, '09:00:00', '10:30:00', '13:01:55', '16:00:16', '2023-10-11', 1, NULL, '2023-12-12 20:50:04', '2023-02-01 21:59:35', 0);
INSERT INTO `att_attendance` VALUES (221, 2, '06:45:00', '11:40:00', '13:10:55', '16:30:16', '2023-10-08', 1, NULL, '2023-12-12 20:50:04', '2023-02-16 07:48:16', 0);
INSERT INTO `att_attendance` VALUES (222, 2, '07:40:00', '12:30:00', NULL, '18:49:16', '2023-10-11', 3, NULL, '2023-12-12 20:50:04', '2023-02-01 21:59:35', 0);
INSERT INTO `att_attendance` VALUES (223, 3, '07:34:00', '12:10:00', '15:11:55', '21:00:16', '2023-10-08', 1, NULL, '2023-12-12 20:50:04', '2023-02-16 07:48:16', 0);
INSERT INTO `att_attendance` VALUES (224, 3, '07:20:00', '12:30:00', '13:00:00', '18:00:16', '2023-10-11', 1, NULL, '2023-12-12 20:50:04', '2023-02-01 21:59:35', 0);
INSERT INTO `att_attendance` VALUES (225, 4, '08:00:00', '11:00:00', '13:01:55', '16:00:16', '2023-10-08', 3, NULL, '2023-12-12 20:50:04', '2023-02-16 07:48:16', 0);
INSERT INTO `att_attendance` VALUES (226, 4, '05:40:00', '13:00:00', '13:00:55', '18:10:16', '2023-10-11', 0, NULL, '2023-12-12 20:50:04', '2023-12-12 20:50:04', 0);
INSERT INTO `att_attendance` VALUES (227, 4, NULL, NULL, NULL, NULL, '2023-08-26', 2, NULL, '2023-12-12 20:53:46', '2023-12-12 20:53:46', 0);
INSERT INTO `att_attendance` VALUES (228, 1, NULL, NULL, NULL, NULL, '2023-08-20', 3, NULL, '2023-12-13 09:27:18', '2023-12-13 09:27:18', 0);
INSERT INTO `att_attendance` VALUES (229, 5, NULL, NULL, NULL, NULL, '2023-12-05', 2, NULL, '2023-12-13 14:20:43', '2023-12-13 14:20:43', 0);
INSERT INTO `att_attendance` VALUES (230, 1, '07:30:00', '11:30:00', '13:30:00', '18:00:00', '2023-08-04', 3, NULL, '2023-12-13 15:09:38', '2023-12-13 15:09:38', 0);
INSERT INTO `att_attendance` VALUES (231, 1, '06:50:00', '12:00:00', '13:00:00', '17:00:16', '2023-08-05', 0, NULL, '2023-12-13 15:09:38', '2023-12-13 15:09:38', 0);
INSERT INTO `att_attendance` VALUES (232, 1, '09:00:00', '10:30:00', '13:01:55', '16:00:16', '2023-08-06', 3, NULL, '2023-12-13 15:09:38', '2023-12-13 15:09:38', 0);
INSERT INTO `att_attendance` VALUES (233, 2, '07:00:00', '12:35:00', '13:12:55', '19:20:16', '2023-08-04', 1, NULL, '2023-12-13 15:09:38', '2023-12-13 15:09:38', 0);
INSERT INTO `att_attendance` VALUES (234, 2, '07:40:00', '12:20:00', '13:09:55', '18:10:16', '2023-08-05', 0, NULL, '2023-12-13 15:09:38', '2023-12-13 15:09:38', 0);
INSERT INTO `att_attendance` VALUES (235, 2, '07:40:00', '12:30:00', NULL, '18:49:16', '2023-08-06', 3, NULL, '2023-12-13 15:09:38', '2023-12-13 15:09:38', 0);
INSERT INTO `att_attendance` VALUES (236, 3, '06:12:00', '11:00:00', '13:01:55', '16:00:16', '2023-08-04', 2, NULL, '2023-12-13 15:09:39', '2023-12-13 15:09:39', 0);
INSERT INTO `att_attendance` VALUES (237, 3, '07:00:00', '11:30:00', '13:30:00', '18:00:00', '2023-08-05', 3, NULL, '2023-12-13 15:09:39', '2023-12-13 15:09:39', 0);
INSERT INTO `att_attendance` VALUES (238, 4, '09:30:00', '10:40:00', '13:10:55', '16:30:16', '2023-08-04', 3, NULL, '2023-12-13 15:09:40', '2023-12-13 15:09:40', 0);
INSERT INTO `att_attendance` VALUES (239, 4, '05:00:00', '12:35:00', '13:00:55', '19:20:16', '2023-08-05', 0, NULL, '2023-12-13 15:09:40', '2023-12-13 15:09:40', 0);
INSERT INTO `att_attendance` VALUES (240, 4, '05:40:00', '13:00:00', '13:00:55', '18:10:16', '2023-08-06', 0, NULL, '2023-12-13 15:09:40', '2023-12-13 15:09:40', 0);
INSERT INTO `att_attendance` VALUES (241, 1, NULL, NULL, NULL, NULL, '2023-12-19', 4, NULL, '2023-12-13 15:12:39', '2023-12-13 15:12:39', 0);
INSERT INTO `att_attendance` VALUES (242, 1, NULL, NULL, NULL, NULL, '2023-12-20', 4, NULL, '2023-12-13 15:12:39', '2023-12-13 15:12:39', 0);
INSERT INTO `att_attendance` VALUES (247, 1, NULL, NULL, NULL, NULL, '2023-01-01', 2, NULL, '2023-01-02 13:50:02', '2023-01-02 13:50:02', 0);
INSERT INTO `att_attendance` VALUES (250, 1, NULL, NULL, NULL, NULL, '2023-01-02', 1, NULL, '2023-01-25 21:13:29', '2023-01-25 21:13:29', 0);
INSERT INTO `att_attendance` VALUES (251, 3, NULL, NULL, NULL, NULL, '2023-01-04', 4, NULL, '2023-01-25 21:17:59', '2023-01-25 21:17:59', 0);
INSERT INTO `att_attendance` VALUES (252, 2, NULL, NULL, NULL, NULL, '2023-02-07', 3, NULL, '2023-02-14 12:10:00', '2023-02-14 12:10:00', 0);
INSERT INTO `att_attendance` VALUES (253, 1, NULL, NULL, NULL, NULL, '2023-02-16', 4, NULL, '2023-02-14 22:07:48', '2023-02-14 22:07:48', 0);
INSERT INTO `att_attendance` VALUES (254, 1, NULL, NULL, NULL, NULL, '2023-02-17', 3, NULL, '2023-02-14 22:07:49', '2023-02-14 22:07:49', 0);
INSERT INTO `att_attendance` VALUES (255, 1, NULL, NULL, NULL, NULL, '2023-02-15', 4, NULL, '2023-02-14 22:09:39', '2023-02-14 22:09:39', 0);
INSERT INTO `att_attendance` VALUES (256, 1, NULL, NULL, NULL, NULL, '2023-02-21', 4, NULL, '2023-02-14 22:15:58', '2023-02-14 22:15:58', 0);
INSERT INTO `att_attendance` VALUES (257, 1, NULL, NULL, NULL, NULL, '2023-02-22', 4, NULL, '2023-02-14 22:15:58', '2023-02-14 22:15:58', 0);
INSERT INTO `att_attendance` VALUES (258, 1, NULL, NULL, NULL, NULL, '2023-02-08', 2, NULL, '2023-02-15 01:04:56', '2023-02-15 01:04:56', 0);
INSERT INTO `att_attendance` VALUES (259, 1, NULL, NULL, NULL, NULL, '2023-02-23', 1, NULL, '2023-02-15 01:05:17', '2023-02-15 01:05:17', 0);
INSERT INTO `att_attendance` VALUES (260, 10, NULL, NULL, NULL, NULL, '2023-12-12', 1, NULL, '2023-12-11 01:01:24', '2023-12-11 01:01:24', 0);

-- ----------------------------
-- Table structure for att_leave
-- ----------------------------
DROP TABLE IF EXISTS `att_leave`;
CREATE TABLE `att_leave`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dept_id` int NULL DEFAULT NULL COMMENT '部门id',
  `days` int UNSIGNED NULL DEFAULT NULL COMMENT '休假天数',
  `type_num` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '休假类型',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT '0禁用，1正常，默认1',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '请假表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of att_leave
-- ----------------------------
INSERT INTO `att_leave` VALUES (1, 2, 40, 1, 1, NULL, '2023-12-11 11:53:04', '2023-12-11 00:50:15', 0);
INSERT INTO `att_leave` VALUES (2, 2, 4, 2, 0, NULL, '2023-12-10 12:00:32', '2023-12-11 00:50:36', 0);
INSERT INTO `att_leave` VALUES (3, 3, NULL, 1, 1, NULL, '2023-12-08 08:58:39', '2023-12-11 00:50:32', 0);
INSERT INTO `att_leave` VALUES (4, 3, NULL, 4, 1, NULL, '2023-12-11 08:58:46', '2023-12-11 00:50:26', 0);
INSERT INTO `att_leave` VALUES (5, 3, NULL, 5, 1, NULL, '2023-12-09 08:58:58', '2023-12-11 00:50:40', 0);
INSERT INTO `att_leave` VALUES (6, 2, 3, 4, 0, NULL, '2023-12-12 12:03:52', '2023-12-11 00:50:44', 0);
INSERT INTO `att_leave` VALUES (7, 2, 10, 0, 1, NULL, '2023-12-14 12:05:14', '2023-12-11 00:50:48', 0);
INSERT INTO `att_leave` VALUES (8, 2, 4, 3, 1, NULL, '2023-12-15 13:50:04', '2023-12-11 00:50:52', 0);
INSERT INTO `att_leave` VALUES (9, 5, 10, 2, 1, NULL, '2023-12-06 20:22:36', '2023-12-11 00:50:56', 0);
INSERT INTO `att_leave` VALUES (10, 5, 10, 4, 0, NULL, '2023-12-16 20:22:49', '2023-12-11 00:50:59', 0);
INSERT INTO `att_leave` VALUES (11, 5, 10, 0, 1, NULL, '2023-12-14 20:23:01', '2023-12-11 00:51:04', 0);
INSERT INTO `att_leave` VALUES (12, 5, 30, 1, 0, NULL, '2023-12-06 15:21:20', '2023-12-11 00:51:07', 0);
INSERT INTO `att_leave` VALUES (13, 5, 10, 3, 1, NULL, '2023-12-08 15:21:34', '2023-12-11 00:51:11', 0);
INSERT INTO `att_leave` VALUES (14, 12, 10, 2, 1, NULL, '2023-12-09 17:33:14', '2023-12-11 00:51:15', 0);
INSERT INTO `att_leave` VALUES (15, 12, 10, 4, 0, NULL, '2023-12-22 17:33:27', '2023-12-11 00:51:19', 0);
INSERT INTO `att_leave` VALUES (16, 12, 10, 0, 1, NULL, '2023-12-13 17:33:36', '2023-12-11 00:51:23', 0);
INSERT INTO `att_leave` VALUES (17, 2, 2, 5, 1, NULL, '2023-12-01 19:49:15', '2023-12-11 00:51:27', 0);

-- ----------------------------
-- Table structure for att_overtime
-- ----------------------------
DROP TABLE IF EXISTS `att_overtime`;
CREATE TABLE `att_overtime`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `salary_multiple` decimal(5, 2) NULL DEFAULT NULL COMMENT '工资倍数，如按照小时计算，就是员工平均小时工资乘以倍数',
  `bonus` decimal(10, 3) NULL DEFAULT NULL COMMENT '加班奖金',
  `type_num` int NULL DEFAULT NULL COMMENT '加班类型',
  `dept_id` int NULL DEFAULT NULL COMMENT '部门id',
  `count_type` tinyint NULL DEFAULT NULL COMMENT '0小时，1天，默认0，计数加班工资的类型',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_time_off` tinyint UNSIGNED NULL DEFAULT 0 COMMENT '0不补休，1补休，默认0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '加班表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of att_overtime
-- ----------------------------
INSERT INTO `att_overtime` VALUES (1, 4.00, 200.000, 1, 2, 1, NULL, 0, '2023-12-13 19:16:06', '2023-12-11 00:51:59', 0);
INSERT INTO `att_overtime` VALUES (2, 0.00, 0.000, 3, 15, 0, NULL, 1, '2023-12-08 22:00:05', '2023-12-11 00:52:07', 0);
INSERT INTO `att_overtime` VALUES (3, 0.10, NULL, 1, 5, 0, NULL, 0, '2023-12-10 22:24:08', '2023-12-11 00:52:11', 0);
INSERT INTO `att_overtime` VALUES (4, 0.30, NULL, 2, 5, 1, NULL, 0, '2023-12-12 22:26:03', '2023-12-11 00:52:16', 0);
INSERT INTO `att_overtime` VALUES (5, 0.00, 0.000, 2, 2, 1, NULL, 1, '2023-12-08 22:28:01', '2023-12-11 00:52:19', 0);
INSERT INTO `att_overtime` VALUES (6, 0.00, 0.000, 3, 2, 0, NULL, 1, '2023-12-15 20:00:21', '2023-12-11 00:52:23', 0);
INSERT INTO `att_overtime` VALUES (7, 2.00, 150.000, 0, 2, 0, NULL, 0, '2023-12-02 20:44:26', '2023-12-11 00:52:28', 0);

-- ----------------------------
-- Table structure for att_staff_leave
-- ----------------------------
DROP TABLE IF EXISTS `att_staff_leave`;
CREATE TABLE `att_staff_leave`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_id` int NULL DEFAULT NULL COMMENT '员工id',
  `days` int NULL DEFAULT NULL COMMENT '请假的天数',
  `type_num` int NULL DEFAULT NULL COMMENT '请假类型id',
  `start_date` date NULL DEFAULT NULL COMMENT '请假的开始日期',
  `status` tinyint UNSIGNED NULL DEFAULT 0 COMMENT '0未审核，1审核通过，2驳回，3撤销',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工请假表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of att_staff_leave
-- ----------------------------
INSERT INTO `att_staff_leave` VALUES (18, 1, 4, 4, '2023-12-11', 1, '回家喽', '2023-12-11 17:34:33', '2023-12-11 00:53:05', 0);
INSERT INTO `att_staff_leave` VALUES (19, 1, 4, 4, '2023-12-08', 1, '回家喽', '2023-12-08 17:38:32', '2023-12-11 00:53:09', 0);
INSERT INTO `att_staff_leave` VALUES (20, 1, 4, 4, '2023-12-11', 1, NULL, '2023-12-09 15:11:41', '2023-12-11 00:53:16', 0);
INSERT INTO `att_staff_leave` VALUES (21, 1, 5, 0, '2023-12-12', 3, '努力复习中！', '2023-12-10 21:44:24', '2023-12-11 00:53:25', 1);
INSERT INTO `att_staff_leave` VALUES (22, 1, 2, 2, '2023-12-09', 1, NULL, '2023-12-08 20:45:44', '2023-12-11 00:53:31', 0);
INSERT INTO `att_staff_leave` VALUES (23, 1, 5, 0, '2023-12-12', 1, '有事情需要处理', '2023-12-10 22:09:05', '2023-12-11 00:53:36', 0);
INSERT INTO `att_staff_leave` VALUES (24, 1, 2, 0, '2023-12-09', 1, '有事', '2023-12-08 22:15:35', '2023-12-11 00:53:41', 0);
INSERT INTO `att_staff_leave` VALUES (25, 1, 3, 2, '2023-12-11', 0, NULL, '2023-12-11 01:00:57', '2023-12-11 01:00:57', 0);

-- ----------------------------
-- Table structure for per_menu
-- ----------------------------
DROP TABLE IF EXISTS `per_menu`;
CREATE TABLE `per_menu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单编码',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `parent_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '父菜单id，0代表根菜单，默认0',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of per_menu
-- ----------------------------
INSERT INTO `per_menu` VALUES (1, 'staff', '员工管理', 'user', '/staff', 5, NULL, '2023-12-11 19:47:58', '2023-12-11 00:53:48', 0);
INSERT INTO `per_menu` VALUES (2, 'docs', '文件管理', 'folder', '/docs', 5, NULL, '2023-12-11 19:48:47', '2023-12-11 00:53:51', 1);
INSERT INTO `per_menu` VALUES (3, 'role', '角色管理', 's-custom', '/role', 6, '', '2023-12-11 19:49:42', '2023-12-11 00:53:53', 0);
INSERT INTO `per_menu` VALUES (4, 'menu', '菜单管理', 'collection', '/menu', 6, NULL, '2023-12-11 14:32:37', '2023-12-11 00:53:56', 0);
INSERT INTO `per_menu` VALUES (5, 'system', '人事管理', 's-management', '/system', 0, '', '2023-12-11 14:36:17', '2023-12-11 00:53:58', 0);
INSERT INTO `per_menu` VALUES (6, 'permission', '权限管理', 's-cooperation\r\n', '/permission', 0, NULL, '2023-12-11 18:00:21', '2023-12-11 00:54:02', 0);
INSERT INTO `per_menu` VALUES (13, 'department', '部门管理', 's-operation', '/department', 5, NULL, '2023-12-11 15:36:59', '2023-12-11 00:54:05', 0);
INSERT INTO `per_menu` VALUES (14, 'attendance', '考勤管理', 'edit', '/attendance', 0, NULL, '2023-12-11 23:30:38', '2023-12-11 00:54:08', 0);
INSERT INTO `per_menu` VALUES (19, 'leave', '请假审批', 'suitcase', '/leave', 14, NULL, '2023-12-11 09:40:15', '2023-12-11 00:54:11', 0);
INSERT INTO `per_menu` VALUES (20, 'performance', '考勤表现', 'reading', '/performance', 14, NULL, '2023-12-11 09:46:24', '2023-12-11 00:54:14', 0);
INSERT INTO `per_menu` VALUES (21, 'warehouse', '仓库管理', 'box', '/warehouse', 0, NULL, '2023-12-09 16:49:09', '2023-12-09 16:51:21', 0);
INSERT INTO `per_menu` VALUES (22, 'inventory', '库存管理', 'coin', '/inventory', 21, NULL, '2023-12-09 16:49:36', '2023-12-09 16:50:14', 0);
INSERT INTO `per_menu` VALUES (23, 'purchase', '进补货记录', 'sell', '/purchase', 21, NULL, '2023-12-09 16:50:08', '2023-12-09 16:55:56', 0);

-- ----------------------------
-- Table structure for per_role
-- ----------------------------
DROP TABLE IF EXISTS `per_role`;
CREATE TABLE `per_role`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `code` varchar(20) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色备注',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of per_role
-- ----------------------------
INSERT INTO `per_role` VALUES (1, 'admin', '管理员', '', '2023-12-11 19:46:27', '2023-12-11 00:54:21', 0);
INSERT INTO `per_role` VALUES (2, 'operation_supervisor', '运营主管', '', '2023-12-11 19:47:58', '2023-12-11 00:54:24', 0);
INSERT INTO `per_role` VALUES (3, 'hr_manager', '人事主管', '', '2023-12-11 17:08:48', '2023-12-11 00:54:28', 0);
INSERT INTO `per_role` VALUES (4, 'director_of_sales', '销售总监', '', '2023-12-11 21:57:42', '2023-12-11 00:54:32', 0);
INSERT INTO `per_role` VALUES (5, 'treasurer', '财务主管', NULL, '2023-12-11 21:58:39', '2023-12-11 00:54:34', 0);
INSERT INTO `per_role` VALUES (6, 'marketing_manage', '市场主管', NULL, '2023-12-11 21:58:54', '2023-12-11 00:54:36', 0);
INSERT INTO `per_role` VALUES (7, 'hr', '人事', NULL, '2023-12-11 21:59:30', '2023-12-11 00:54:39', 0);
INSERT INTO `per_role` VALUES (8, 'ceo_assistant', '总经理助理', NULL, '2023-12-11 21:59:47', '2023-12-11 00:54:43', 0);
INSERT INTO `per_role` VALUES (9, 'warehouse_supervisor', '仓库主管', NULL, '2023-12-11 22:00:05', '2023-12-11 00:54:46', 0);
INSERT INTO `per_role` VALUES (10, 'clerk', '普通员工', NULL, '2023-12-10 23:53:17', NULL, 0);

-- ----------------------------
-- Table structure for per_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `per_role_menu`;
CREATE TABLE `per_role_menu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int UNSIGNED NOT NULL COMMENT '角色id',
  `menu_id` int UNSIGNED NOT NULL COMMENT '菜单id',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '0禁用，1正常，默认1',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of per_role_menu
-- ----------------------------
INSERT INTO `per_role_menu` VALUES (1, 1, 2, 0, '2023-12-11 16:14:31', '2023-12-11 00:55:02', 0);
INSERT INTO `per_role_menu` VALUES (2, 1, 5, 1, '2023-12-11 16:18:01', '2023-12-11 00:55:05', 0);
INSERT INTO `per_role_menu` VALUES (3, 1, 6, 1, '2023-12-11 16:56:04', '2023-12-11 00:55:07', 0);
INSERT INTO `per_role_menu` VALUES (5, 1, 3, 1, '2023-12-11 17:01:42', '2023-12-11 00:55:10', 0);
INSERT INTO `per_role_menu` VALUES (6, 1, 4, 1, '2023-12-11 17:01:42', '2023-12-11 00:55:12', 0);
INSERT INTO `per_role_menu` VALUES (7, 1, 1, 1, '2023-12-11 17:01:57', '2023-12-11 00:55:16', 0);
INSERT INTO `per_role_menu` VALUES (9, 2, 3, 1, '2023-12-11 15:12:09', '2023-12-11 00:55:19', 0);
INSERT INTO `per_role_menu` VALUES (10, 2, 4, 1, '2023-12-11 15:12:09', '2023-12-11 00:55:22', 0);
INSERT INTO `per_role_menu` VALUES (11, 2, 6, 1, '2023-12-11 15:12:09', '2023-12-11 00:55:24', 0);
INSERT INTO `per_role_menu` VALUES (13, 3, 1, 1, '2023-12-11 15:54:00', '2023-12-11 00:55:28', 0);
INSERT INTO `per_role_menu` VALUES (14, 3, 5, 1, '2023-12-11 15:54:00', '2023-12-11 00:55:30', 0);
INSERT INTO `per_role_menu` VALUES (16, 2, 1, 0, '2023-12-11 21:47:35', '2023-12-11 00:55:33', 0);
INSERT INTO `per_role_menu` VALUES (17, 2, 5, 0, '2023-12-11 21:47:36', '2023-12-11 00:55:35', 0);
INSERT INTO `per_role_menu` VALUES (18, 1, 13, 1, '2023-12-11 21:47:36', '2023-12-11 00:55:40', 0);
INSERT INTO `per_role_menu` VALUES (19, 9, 13, 0, '2023-12-11 21:47:36', '2023-12-11 00:55:41', 0);
INSERT INTO `per_role_menu` VALUES (20, 9, 5, 0, '2023-12-11 21:47:36', '2023-12-11 00:55:43', 0);
INSERT INTO `per_role_menu` VALUES (21, 7, 1, 1, '2023-12-11 21:47:36', '2023-12-11 00:55:44', 0);
INSERT INTO `per_role_menu` VALUES (22, 7, 13, 0, '2023-12-11 21:47:36', '2023-12-11 00:55:47', 0);
INSERT INTO `per_role_menu` VALUES (23, 7, 5, 1, '2023-12-11 21:47:36', '2023-12-11 00:55:49', 0);
INSERT INTO `per_role_menu` VALUES (24, 1, 15, 0, '2023-12-11 21:47:36', '2023-12-11 00:55:50', 0);
INSERT INTO `per_role_menu` VALUES (25, 1, 17, 0, '2023-12-11 21:47:36', '2023-12-11 00:55:52', 0);
INSERT INTO `per_role_menu` VALUES (26, 1, 18, 0, '2023-12-11 21:47:36', '2023-12-11 00:55:53', 0);
INSERT INTO `per_role_menu` VALUES (27, 1, 14, 1, '2023-12-11 21:47:36', '2023-12-11 00:55:55', 0);
INSERT INTO `per_role_menu` VALUES (28, 1, 19, 1, '2023-12-11 21:47:36', '2023-12-11 00:55:56', 0);
INSERT INTO `per_role_menu` VALUES (29, 1, 20, 1, '2023-12-11 21:47:36', '2023-12-11 00:55:59', 0);
INSERT INTO `per_role_menu` VALUES (30, 1, 16, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:01', 0);
INSERT INTO `per_role_menu` VALUES (31, 9, 17, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:03', 0);
INSERT INTO `per_role_menu` VALUES (32, 9, 15, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:04', 0);
INSERT INTO `per_role_menu` VALUES (33, 9, 16, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:07', 0);
INSERT INTO `per_role_menu` VALUES (34, 9, 18, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:13', 0);
INSERT INTO `per_role_menu` VALUES (35, 3, 13, 1, '2023-12-11 21:47:36', '2023-12-11 00:56:11', 0);
INSERT INTO `per_role_menu` VALUES (36, 2, 19, 1, '2023-01-02 22:19:09', NULL, 0);
INSERT INTO `per_role_menu` VALUES (37, 2, 14, 1, '2023-01-02 22:19:09', NULL, 0);
INSERT INTO `per_role_menu` VALUES (38, 4, 6, 0, '2023-01-10 20:38:22', '2023-12-10 23:56:06', 0);
INSERT INTO `per_role_menu` VALUES (39, 4, 3, 0, '2023-01-10 20:38:22', '2023-12-10 23:56:06', 0);
INSERT INTO `per_role_menu` VALUES (40, 4, 4, 0, '2023-01-10 20:38:22', '2023-12-10 23:56:06', 0);
INSERT INTO `per_role_menu` VALUES (41, 1, 21, 1, '2023-12-09 16:56:04', NULL, 0);
INSERT INTO `per_role_menu` VALUES (42, 1, 22, 1, '2023-12-09 16:56:04', NULL, 0);
INSERT INTO `per_role_menu` VALUES (43, 1, 23, 1, '2023-12-09 16:56:04', NULL, 0);
INSERT INTO `per_role_menu` VALUES (44, 10, 21, 1, '2023-12-10 23:53:31', NULL, 0);
INSERT INTO `per_role_menu` VALUES (45, 10, 22, 1, '2023-12-10 23:53:31', NULL, 0);
INSERT INTO `per_role_menu` VALUES (46, 10, 23, 1, '2023-12-10 23:53:31', NULL, 0);
INSERT INTO `per_role_menu` VALUES (47, 9, 14, 1, '2023-12-10 23:53:45', NULL, 0);
INSERT INTO `per_role_menu` VALUES (48, 9, 19, 1, '2023-12-10 23:53:45', NULL, 0);
INSERT INTO `per_role_menu` VALUES (49, 9, 20, 1, '2023-12-10 23:53:45', NULL, 0);
INSERT INTO `per_role_menu` VALUES (50, 9, 21, 1, '2023-12-10 23:53:45', NULL, 0);
INSERT INTO `per_role_menu` VALUES (51, 9, 22, 1, '2023-12-10 23:53:45', NULL, 0);
INSERT INTO `per_role_menu` VALUES (52, 9, 23, 1, '2023-12-10 23:53:45', NULL, 0);
INSERT INTO `per_role_menu` VALUES (53, 8, 6, 1, '2023-12-10 23:54:55', NULL, 0);
INSERT INTO `per_role_menu` VALUES (54, 8, 3, 1, '2023-12-10 23:54:55', NULL, 0);
INSERT INTO `per_role_menu` VALUES (55, 8, 4, 1, '2023-12-10 23:54:55', NULL, 0);
INSERT INTO `per_role_menu` VALUES (56, 8, 14, 1, '2023-12-10 23:54:55', NULL, 0);
INSERT INTO `per_role_menu` VALUES (57, 8, 19, 1, '2023-12-10 23:54:55', NULL, 0);
INSERT INTO `per_role_menu` VALUES (58, 8, 20, 1, '2023-12-10 23:54:55', NULL, 0);
INSERT INTO `per_role_menu` VALUES (59, 8, 21, 1, '2023-12-10 23:54:55', NULL, 0);
INSERT INTO `per_role_menu` VALUES (60, 8, 22, 1, '2023-12-10 23:54:55', NULL, 0);
INSERT INTO `per_role_menu` VALUES (61, 8, 23, 1, '2023-12-10 23:54:55', NULL, 0);
INSERT INTO `per_role_menu` VALUES (62, 3, 14, 1, '2023-12-10 23:55:21', NULL, 0);
INSERT INTO `per_role_menu` VALUES (63, 3, 19, 1, '2023-12-10 23:55:21', NULL, 0);
INSERT INTO `per_role_menu` VALUES (64, 3, 20, 1, '2023-12-10 23:55:21', NULL, 0);
INSERT INTO `per_role_menu` VALUES (65, 2, 20, 1, '2023-12-10 23:55:47', NULL, 0);
INSERT INTO `per_role_menu` VALUES (66, 4, 14, 1, '2023-12-10 23:56:06', NULL, 0);
INSERT INTO `per_role_menu` VALUES (67, 4, 19, 1, '2023-12-10 23:56:06', NULL, 0);
INSERT INTO `per_role_menu` VALUES (68, 4, 20, 1, '2023-12-10 23:56:06', NULL, 0);
INSERT INTO `per_role_menu` VALUES (69, 4, 21, 1, '2023-12-10 23:56:06', NULL, 0);
INSERT INTO `per_role_menu` VALUES (70, 4, 22, 1, '2023-12-10 23:56:06', NULL, 0);
INSERT INTO `per_role_menu` VALUES (71, 4, 23, 1, '2023-12-10 23:56:06', NULL, 0);
INSERT INTO `per_role_menu` VALUES (72, 2, 21, 1, '2023-12-10 23:56:12', NULL, 0);
INSERT INTO `per_role_menu` VALUES (73, 2, 22, 1, '2023-12-10 23:56:12', NULL, 0);
INSERT INTO `per_role_menu` VALUES (74, 2, 23, 1, '2023-12-10 23:56:12', NULL, 0);
INSERT INTO `per_role_menu` VALUES (75, 8, 5, 1, '2023-12-10 23:56:31', NULL, 0);
INSERT INTO `per_role_menu` VALUES (76, 8, 1, 1, '2023-12-10 23:56:31', NULL, 0);
INSERT INTO `per_role_menu` VALUES (77, 8, 13, 1, '2023-12-10 23:56:31', NULL, 0);
INSERT INTO `per_role_menu` VALUES (78, 7, 21, 1, '2023-12-10 23:56:42', NULL, 0);
INSERT INTO `per_role_menu` VALUES (79, 7, 22, 1, '2023-12-10 23:56:42', NULL, 0);
INSERT INTO `per_role_menu` VALUES (80, 7, 23, 1, '2023-12-10 23:56:42', NULL, 0);

-- ----------------------------
-- Table structure for per_staff_role
-- ----------------------------
DROP TABLE IF EXISTS `per_staff_role`;
CREATE TABLE `per_staff_role`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_id` int UNSIGNED NULL DEFAULT NULL COMMENT '员工id',
  `role_id` int UNSIGNED NULL DEFAULT NULL COMMENT '角色id',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '0禁用，1正常，默认1',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工角色关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of per_staff_role
-- ----------------------------
INSERT INTO `per_staff_role` VALUES (1, 1, 1, 1, '2023-12-11 21:47:36', '2023-12-11 00:56:21', 0);
INSERT INTO `per_staff_role` VALUES (2, 29, 2, 1, '2023-12-11 21:47:36', '2023-12-11 00:56:22', 0);
INSERT INTO `per_staff_role` VALUES (3, 29, 3, 1, '2023-12-11 21:47:36', '2023-12-11 00:56:24', 0);
INSERT INTO `per_staff_role` VALUES (4, 3, 3, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:25', 0);
INSERT INTO `per_staff_role` VALUES (5, 3, 9, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:27', 0);
INSERT INTO `per_staff_role` VALUES (6, 3, 5, 1, '2023-12-11 21:47:36', '2023-12-11 00:56:28', 0);
INSERT INTO `per_staff_role` VALUES (7, 31, 9, 1, '2023-12-11 21:47:36', '2023-12-11 00:56:31', 0);
INSERT INTO `per_staff_role` VALUES (8, 1, 9, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:32', 0);
INSERT INTO `per_staff_role` VALUES (9, 6, 9, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:33', 0);
INSERT INTO `per_staff_role` VALUES (10, 6, 2, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:36', 0);
INSERT INTO `per_staff_role` VALUES (11, 9, 7, 1, '2023-12-11 21:47:36', '2023-12-11 00:56:37', 0);
INSERT INTO `per_staff_role` VALUES (12, 2, 9, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:38', 0);
INSERT INTO `per_staff_role` VALUES (13, 3, 6, 0, '2023-12-11 21:47:36', '2023-12-11 00:56:40', 0);
INSERT INTO `per_staff_role` VALUES (14, 3, 8, 1, '2023-12-11 21:47:36', '2023-12-11 00:56:43', 0);
INSERT INTO `per_staff_role` VALUES (15, 2, 2, 0, '2023-01-02 22:19:27', '2023-02-02 21:29:58', 0);
INSERT INTO `per_staff_role` VALUES (16, 1, 4, 0, '2023-01-08 22:01:12', '2023-01-08 22:01:23', 0);
INSERT INTO `per_staff_role` VALUES (17, 2, 4, 1, '2023-02-02 21:51:59', '2023-12-10 23:57:17', 0);
INSERT INTO `per_staff_role` VALUES (18, 2, 3, 0, '2023-12-10 23:57:17', '2023-12-10 23:57:24', 0);
INSERT INTO `per_staff_role` VALUES (19, 4, 2, 1, '2023-12-10 23:57:38', NULL, 0);
INSERT INTO `per_staff_role` VALUES (20, 5, 7, 1, '2023-12-10 23:57:52', NULL, 0);
INSERT INTO `per_staff_role` VALUES (21, 6, 3, 1, '2023-12-10 23:57:59', NULL, 0);
INSERT INTO `per_staff_role` VALUES (22, 6, 7, 1, '2023-12-10 23:57:59', NULL, 0);
INSERT INTO `per_staff_role` VALUES (23, 7, 4, 1, '2023-12-10 23:58:09', NULL, 0);
INSERT INTO `per_staff_role` VALUES (24, 8, 10, 1, '2023-12-10 23:58:15', NULL, 0);
INSERT INTO `per_staff_role` VALUES (25, 10, 10, 1, '2023-12-10 23:58:23', NULL, 0);
INSERT INTO `per_staff_role` VALUES (26, 11, 10, 1, '2023-12-10 23:59:07', NULL, 0);
INSERT INTO `per_staff_role` VALUES (27, 24, 8, 1, '2023-12-11 00:00:43', NULL, 0);
INSERT INTO `per_staff_role` VALUES (28, 23, 2, 1, '2023-12-11 00:00:59', NULL, 0);
INSERT INTO `per_staff_role` VALUES (29, 21, 10, 1, '2023-12-11 00:01:02', NULL, 0);
INSERT INTO `per_staff_role` VALUES (30, 17, 10, 1, '2023-12-11 00:01:06', NULL, 0);
INSERT INTO `per_staff_role` VALUES (31, 15, 10, 1, '2023-12-11 00:01:08', NULL, 0);
INSERT INTO `per_staff_role` VALUES (32, 13, 10, 1, '2023-12-11 00:01:10', NULL, 0);
INSERT INTO `per_staff_role` VALUES (33, 43, 10, 0, '2023-12-11 00:02:11', '2023-12-11 00:22:13', 0);
INSERT INTO `per_staff_role` VALUES (34, 43, 9, 1, '2023-12-11 00:22:13', NULL, 0);
INSERT INTO `per_staff_role` VALUES (35, 27, 10, 1, '2023-12-11 00:27:16', NULL, 0);
INSERT INTO `per_staff_role` VALUES (36, 45, 10, 1, '2023-12-11 00:36:16', NULL, 0);
INSERT INTO `per_staff_role` VALUES (37, 44, 10, 1, '2023-12-11 00:39:01', '2023-12-11 00:39:07', 0);
INSERT INTO `per_staff_role` VALUES (38, 44, 9, 1, '2023-12-11 00:39:07', NULL, 0);

-- ----------------------------
-- Table structure for sal_salary
-- ----------------------------
DROP TABLE IF EXISTS `sal_salary`;
CREATE TABLE `sal_salary`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_id` int UNSIGNED NULL DEFAULT NULL COMMENT '员工id',
  `base_salary` decimal(10, 3) NULL DEFAULT NULL COMMENT '基础工资',
  `overtime_salary` decimal(10, 3) NULL DEFAULT NULL COMMENT '加班费',
  `subsidy` decimal(10, 3) UNSIGNED NULL DEFAULT NULL COMMENT '生活补贴',
  `bonus` decimal(10, 3) UNSIGNED NULL DEFAULT NULL COMMENT '奖金',
  `total_salary` decimal(10, 3) UNSIGNED NULL DEFAULT NULL COMMENT '总工资',
  `late_deduct` decimal(10, 3) NULL DEFAULT NULL COMMENT '早退扣款',
  `leave_deduct` decimal(10, 3) NULL DEFAULT NULL COMMENT '休假扣款',
  `leave_early_deduct` decimal(10, 3) NULL DEFAULT NULL COMMENT '早退扣款',
  `absenteeism_deduct` decimal(10, 3) NULL DEFAULT NULL COMMENT '旷工扣款',
  `month` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '月份',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工工资表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sal_salary
-- ----------------------------
INSERT INTO `sal_salary` VALUES (1, 1, 7000.000, NULL, 400.000, 200.000, 5595.000, 0.000, 640.000, 0.000, 100.000, '202204', 'jack的工资明细', '2023-12-11 21:47:36', '2023-12-11 00:56:54', 0);
INSERT INTO `sal_salary` VALUES (2, 1, 6800.000, NULL, 0.000, 100.000, 4795.000, 50.000, 160.000, 50.000, 100.000, '202205', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:08', 0);
INSERT INTO `sal_salary` VALUES (3, 1, 6500.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202105', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:12', 0);
INSERT INTO `sal_salary` VALUES (4, 1, 7000.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202112', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:15', 0);
INSERT INTO `sal_salary` VALUES (5, 2, 6000.000, NULL, 600.000, 200.000, 5270.000, 0.000, 240.000, 50.000, 0.000, '202204', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:16', 0);
INSERT INTO `sal_salary` VALUES (6, 2, 7000.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202104', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:17', 0);
INSERT INTO `sal_salary` VALUES (7, 3, 6000.000, NULL, 0.000, 0.000, 5175.000, NULL, NULL, NULL, NULL, '202204', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:18', 0);
INSERT INTO `sal_salary` VALUES (8, 1, 6000.000, NULL, 0.000, 0.000, 4735.000, NULL, NULL, NULL, NULL, '202202', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:19', 0);
INSERT INTO `sal_salary` VALUES (9, 4, 6000.000, NULL, 500.000, 300.000, 5710.000, NULL, NULL, NULL, NULL, '202204', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:21', 0);
INSERT INTO `sal_salary` VALUES (10, 5, 7000.000, NULL, 0.000, 0.000, 5368.000, NULL, NULL, NULL, NULL, '202204', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:25', 0);
INSERT INTO `sal_salary` VALUES (11, 6, 8000.000, NULL, 0.000, 0.000, 6340.000, 0.000, 0.000, 50.000, 0.000, '202204', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:26', 0);
INSERT INTO `sal_salary` VALUES (12, 7, 6000.000, NULL, 1000.000, 0.000, 5710.000, 0.000, 0.000, 0.000, 0.000, '202204', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:27', 0);
INSERT INTO `sal_salary` VALUES (13, 8, 6000.000, NULL, 0.000, 0.000, 2100.000, 0.000, 0.000, 0.000, 0.000, '202204', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:29', 0);
INSERT INTO `sal_salary` VALUES (14, 9, 6000.000, NULL, 0.000, 0.000, 5275.000, 0.000, 0.000, 0.000, 0.000, '202204', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:30', 0);
INSERT INTO `sal_salary` VALUES (15, 1, 6666.000, NULL, 0.000, 0.000, 5401.000, 0.000, 0.000, 0.000, 0.000, '202203', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:32', 0);
INSERT INTO `sal_salary` VALUES (16, 10, 8000.000, NULL, 0.000, 0.000, 5030.000, 0.000, 0.000, 0.000, 0.000, '202205', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:33', 0);
INSERT INTO `sal_salary` VALUES (17, 2, 6050.000, NULL, 0.000, 0.000, 4660.000, 50.000, 0.000, 0.000, 100.000, '202205', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:37', 0);
INSERT INTO `sal_salary` VALUES (18, 3, 6000.000, NULL, 0.000, 0.000, 4632.000, 50.000, 0.000, 100.000, 300.000, '202205', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:38', 0);
INSERT INTO `sal_salary` VALUES (19, 4, 7000.000, NULL, 0.000, 0.000, 5510.000, 100.000, 0.000, 0.000, 300.000, '202205', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:40', 0);
INSERT INTO `sal_salary` VALUES (20, 5, 7500.000, NULL, 0.000, 0.000, 5868.000, 0.000, 0.000, 0.000, 0.000, '202205', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:41', 0);
INSERT INTO `sal_salary` VALUES (21, 6, 6500.000, NULL, 0.000, 0.000, 4890.000, 0.000, 0.000, 0.000, 0.000, '202205', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:42', 0);
INSERT INTO `sal_salary` VALUES (22, 7, 7878.000, NULL, 0.000, 0.000, 6588.000, 0.000, 0.000, 0.000, 0.000, '202205', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:44', 0);
INSERT INTO `sal_salary` VALUES (23, 8, 7999.000, NULL, 0.000, 0.000, 4099.000, 0.000, 0.000, 0.000, 0.000, '202205', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:45', 0);
INSERT INTO `sal_salary` VALUES (24, 9, 7000.000, NULL, 0.000, 0.000, 6275.000, 0.000, 0.000, 0.000, 0.000, '202205', NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:47', 0);
INSERT INTO `sal_salary` VALUES (25, 11, 7000.000, NULL, 200.000, 0.000, 5345.000, 0.000, 0.000, 0.000, 0.000, '202205', NULL, '2022-05-13 08:28:04', '2022-05-13 08:28:04', 0);

-- ----------------------------
-- Table structure for sal_salary_deduct
-- ----------------------------
DROP TABLE IF EXISTS `sal_salary_deduct`;
CREATE TABLE `sal_salary_deduct`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dept_id` int UNSIGNED NULL DEFAULT NULL COMMENT '部门id',
  `type_num` int UNSIGNED NULL DEFAULT NULL COMMENT '扣款类型，0迟到，1早退，2旷工，3休假',
  `deduct` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '每次扣款金额',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '工资扣除表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sal_salary_deduct
-- ----------------------------
INSERT INTO `sal_salary_deduct` VALUES (1, 2, 2, 200, '旷工绝不姑息', '2023-12-11 21:47:36', '2023-12-11 00:57:53', 0);
INSERT INTO `sal_salary_deduct` VALUES (2, 2, 1, 0, NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:55', 0);
INSERT INTO `sal_salary_deduct` VALUES (3, 2, 3, 0, NULL, '2023-12-11 21:47:36', '2023-12-11 00:57:58', 0);
INSERT INTO `sal_salary_deduct` VALUES (4, 2, 0, 100, NULL, '2023-01-01 21:38:28', '2023-01-01 21:38:28', 0);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门编码',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `mor_start_time` time NULL DEFAULT NULL COMMENT '上午上班时间',
  `mor_end_time` time NULL DEFAULT NULL COMMENT '上午下班时间',
  `aft_start_time` time NULL DEFAULT NULL COMMENT '下午上班时间',
  `aft_end_time` time NULL DEFAULT NULL COMMENT '下午下班时间',
  `total_work_time` decimal(3, 1) NULL DEFAULT NULL COMMENT '员工工作总时长',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门备注',
  `parent_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级部门id，0根部门',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除，0未删除，1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, NULL, '运营部门', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-08 16:15:57', '2023-12-10 18:51:59', 0);
INSERT INTO `sys_dept` VALUES (2, NULL, '运营1部', '08:30:00', '11:30:00', '13:00:00', '18:00:00', 8.0, '核心部门', 1, '2023-12-08 16:16:11', '2023-12-10 18:52:08', 0);
INSERT INTO `sys_dept` VALUES (3, NULL, '运营2部', '08:30:00', '11:30:00', '13:30:00', '18:30:00', 8.0, NULL, 1, '2023-12-08 16:16:30', '2023-12-10 18:52:13', 0);
INSERT INTO `sys_dept` VALUES (4, NULL, '销售部门', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-08 16:16:46', '2023-12-10 18:52:25', 0);
INSERT INTO `sys_dept` VALUES (5, NULL, '销售1部', '06:00:00', '10:00:00', '13:00:00', '16:30:00', 7.5, NULL, 4, '2023-12-08 16:16:57', '2023-12-10 18:52:29', 0);
INSERT INTO `sys_dept` VALUES (6, NULL, '销售2部', '06:00:00', '10:30:00', '13:30:00', '17:00:00', 8.0, NULL, 4, '2023-12-08 16:17:10', '2023-12-10 18:52:34', 0);
INSERT INTO `sys_dept` VALUES (7, NULL, '财务部门', NULL, NULL, NULL, NULL, NULL, '财务', 0, '2023-12-08 16:17:40', '2023-12-10 18:52:39', 0);
INSERT INTO `sys_dept` VALUES (8, NULL, '财务1部', '06:00:00', '10:00:00', '14:00:00', '18:00:00', 8.0, NULL, 7, '2023-12-08 16:17:49', '2023-12-10 18:52:43', 0);
INSERT INTO `sys_dept` VALUES (9, NULL, '财务2部', '06:00:00', '10:00:00', '13:00:00', '16:30:00', 7.5, NULL, 7, '2023-12-09 16:18:02', '2023-12-10 18:52:48', 0);
INSERT INTO `sys_dept` VALUES (10, NULL, '财务3部', '06:00:00', '11:30:00', '13:00:00', '16:30:00', 9.0, NULL, 7, '2023-12-09 16:18:32', '2023-12-10 18:52:53', 1);
INSERT INTO `sys_dept` VALUES (11, NULL, '市场部门', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-09 16:18:41', '2023-12-10 18:52:57', 0);
INSERT INTO `sys_dept` VALUES (12, NULL, '市场1部', '08:00:00', '12:00:00', '13:30:00', '18:30:00', 9.0, NULL, 11, '2023-12-09 16:19:00', '2023-12-10 18:53:01', 0);
INSERT INTO `sys_dept` VALUES (13, NULL, '市场2部', '08:30:00', '12:00:00', '13:30:00', '18:30:00', 8.5, NULL, 11, '2023-12-09 22:21:39', '2023-12-10 18:53:05', 0);
INSERT INTO `sys_dept` VALUES (14, NULL, '财务4部', '06:00:00', '10:30:00', '14:30:00', '18:00:00', 8.0, NULL, 7, '2023-12-09 12:08:16', '2023-12-10 18:53:09', 1);
INSERT INTO `sys_dept` VALUES (16, NULL, '人事部门', NULL, NULL, NULL, NULL, NULL, '人力资源管理', 0, '2023-12-09 17:13:01', '2023-12-10 18:53:18', 0);
INSERT INTO `sys_dept` VALUES (17, NULL, '人事1部', '08:00:00', '12:00:00', '13:30:00', '17:30:00', 8.0, NULL, 16, '2023-12-09 17:17:26', '2023-12-10 18:53:22', 0);
INSERT INTO `sys_dept` VALUES (18, NULL, '人事2部', '08:00:00', '11:40:00', '13:40:00', '18:00:00', 8.0, NULL, 16, '2023-12-09 22:17:00', '2023-12-10 18:53:27', 0);
INSERT INTO `sys_dept` VALUES (19, NULL, '人事3部', '09:00:00', '12:10:00', '13:10:00', '18:00:00', 8.0, NULL, 16, '2023-12-09 22:17:31', '2023-12-10 18:53:32', 0);
INSERT INTO `sys_dept` VALUES (21, NULL, '仓库部门', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-12-11 00:20:16', '2023-12-11 00:20:16', 0);
INSERT INTO `sys_dept` VALUES (22, NULL, '仓库一部', '08:00:00', '12:00:00', '13:30:00', '18:30:00', 9.0, NULL, 21, '2023-12-11 00:20:43', '2023-12-11 00:20:43', 0);

-- ----------------------------
-- Table structure for sys_docs
-- ----------------------------
DROP TABLE IF EXISTS `sys_docs`;
CREATE TABLE `sys_docs`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `old_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件的原名称',
  `md5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件md5信息',
  `size` bigint UNSIGNED NULL DEFAULT NULL COMMENT '文件大小KB',
  `staff_id` int NULL DEFAULT NULL COMMENT '文件上传者id',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件备注',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '0未删除，1已删除，默认为0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_docs
-- ----------------------------
INSERT INTO `sys_docs` VALUES (1, '321ed1773f4ab3883e73.jpg', 'jpg', 'p7.jpg', '04989f48db70d5be991081da9207cc8d', 664, 1, '用户头像！', '2023-12-11 20:43:59', '2023-12-11 20:43:59', 0);
INSERT INTO `sys_docs` VALUES (2, '1837fd34d247d79facff.jpg', 'jpg', 'p8.jpg', '65e9462e351242ecf79a99237d528008', 463, 2, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (3, '321ed1773f4ab3883e73.jpg', 'jpg', 'p7.jpg', '04989f48db70d5be991081da9207cc8d', 664, 3, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 1);
INSERT INTO `sys_docs` VALUES (4, '246e3ac2454a6e999e4d.jpg', 'jpg', 'p4.jpg', 'd181f02527a7100ad940edb7d238f3a6', 366, 4, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 1);
INSERT INTO `sys_docs` VALUES (5, '246e3ac2454a6e999e4d.jpg', 'jpg', 'p4.jpg', 'd181f02527a7100ad940edb7d238f3a6', 366, 5, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (6, '246e3ac2454a6e999e4d.jpg', 'jpg', 'p4.jpg', 'd181f02527a7100ad940edb7d238f3a6', 366, 7, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 1);
INSERT INTO `sys_docs` VALUES (7, 'f86049588a426787050c.jpg', 'jpg', 'p16.jpg', '14a7858c87be310c48a5429577d63371', 706, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (8, '549625fc3a4d79b823d4.xlsx', 'xlsx', '部门数据.xlsx', '25b47f6a70f4c4f2bc14aecacef6a05b', 9, 1, '部门考勤时间表', '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (9, 'a9d818afca4b93a05047.xlsx', 'xlsx', '七月考勤机数据.xlsx', '2a5582c8f2edd6b3f19e4529952df622', 9, 1, '七月考勤数据', '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (10, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (11, '1de345e365444686d351.jpg', 'jpg', 'p14.jpg', 'd5e7f1b67e63ede94533476864a35009', 673, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (12, '1de345e365444686d351.jpg', 'jpg', 'p14.jpg', 'd5e7f1b67e63ede94533476864a35009', 673, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 1);
INSERT INTO `sys_docs` VALUES (13, '321ed1773f4ab3883e73.jpg', 'jpg', 'p7.jpg', '04989f48db70d5be991081da9207cc8d', 664, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 1);
INSERT INTO `sys_docs` VALUES (14, '1de345e365444686d351.jpg', 'jpg', 'p14.jpg', 'd5e7f1b67e63ede94533476864a35009', 673, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 1);
INSERT INTO `sys_docs` VALUES (15, '1de345e365444686d351.jpg', 'jpg', 'p14.jpg', 'd5e7f1b67e63ede94533476864a35009', 673, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 1);
INSERT INTO `sys_docs` VALUES (16, '1de345e365444686d351.jpg', 'jpg', 'p14.jpg', 'd5e7f1b67e63ede94533476864a35009', 673, 3, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 1);
INSERT INTO `sys_docs` VALUES (17, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 4, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (18, 'd24549d1ec4625b8985b.jpg', 'jpg', 'p21.jpg', 'b3db091864202253467dfdcde6e686ae', 428, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (19, '679faa1f07427f9eb408.jpg', 'jpg', 'p1.jpg', 'e5384b8b89b47e3d0d12c98919e9fbd3', 368, 3, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (20, 'ea278b7591476992a89f.jpg', 'jpg', 'p2.jpg', '47479bb6ee1859b2a4bac82f2b48f7b3', 553, 4, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (21, '367decaff941e98ae727.jpg', 'jpg', 'p24.jpg', '48dba2b6d3f625db3d71a8aeafaad146', 314, 5, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (22, '7af58033ce4a4cafce49.jpg', 'jpg', 'p11.jpg', 'f29eab97e6c04bc8a359cc7325ccdafe', 56, 6, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (23, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 7, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (24, '2d9822743d437d995588.jpg', 'jpg', 'p23.jpg', '92c34b1357757bd99a6030963e7eca16', 343, 8, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (25, '1de345e365444686d351.jpg', 'jpg', 'p14.jpg', 'd5e7f1b67e63ede94533476864a35009', 673, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (26, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (27, 'f86049588a426787050c.jpg', 'jpg', 'p16.jpg', '14a7858c87be310c48a5429577d63371', 706, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (28, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (29, 'fdafbb9d8e486f8173bc.png', 'png', 'bike-riding.png', '8ee3e6d8ff326944177ada97ac0eddcd', 244, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (30, '9a3483096a4fbfbc9ddd.jfif', 'jfif', 'p18.jfif', '6c7a6dde84a2ef5bc1f865676a6d1e1a', 14, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (31, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 2, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (32, 'd0447f06f44ffc855176.jfif', 'jfif', '桥.jfif', '8937c895a6ba22b846e36bf483711514', 11, 2, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (33, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 2, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (34, '7af58033ce4a4cafce49.jpg', 'jpg', 'p11.jpg', 'f29eab97e6c04bc8a359cc7325ccdafe', 56, 2, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (35, '7b2be351244c07a73c17.png', 'png', '13283136664411027.png', '562fe80ad04680c07a21905cd76bfaa6', 335, 1, '打卡记录', '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (36, 'f73f03365e46559e3be9.png', 'png', 'aliyun.png', '2b2ac5f2166cf0da5de168f82e6a51d4', 4, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (37, 'b6288dc6084cb699385c.png', 'png', '微信图片_20210908091611.png', '3272a84fefdd5ccca3083fb2c39e3291', 99, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (38, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (39, '91d5bfc50e4a84957389.md', 'md', '2020.09.29.md', '702741908915a942f115d26f7ee37dd6', 0, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 1);
INSERT INTO `sys_docs` VALUES (40, '6f4b8d87af4fa6abed20.md', 'md', '2020.09.29.md', '702741908915a942f115d26f7ee37dd6', 0, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (41, 'e168193b9b478fada3a8.jpg', 'jpg', 'avatar.jpg', '14a7a57de1e33443c21a2b383959b5fb', 524, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (42, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (43, 'd55fc716c641b58b90ec.png', 'png', 'shop.png', 'd4bb42a03dee0ff3f0fab44bc758f23c', 8, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (44, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (45, '846edf4ee54082ab74fb.png', 'png', 'centos.png', 'ef846128702e81d2db5ec2de0f39d752', 4, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (46, '1de345e365444686d351.jpg', 'jpg', 'p14.jpg', 'd5e7f1b67e63ede94533476864a35009', 673, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (47, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (48, 'b6288dc6084cb699385c.png', 'png', '微信图片_20210908091611.png', '3272a84fefdd5ccca3083fb2c39e3291', 99, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (49, '7fa8f6cff14e978f6ce6.jpg', 'jpg', '微信图片_20210908091756.jpg', '5ee74edb84709e570a7653f8c3d278cb', 104, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (50, 'b6288dc6084cb699385c.png', 'png', '微信图片_20210908091611.png', '3272a84fefdd5ccca3083fb2c39e3291', 99, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);
INSERT INTO `sys_docs` VALUES (51, '9ee44e0dc945e5a41828.jpg', 'jpg', 'p19.jpg', '176b8a51e4f96c3dcd6806bbdf9de678', 5, 1, NULL, '2023-12-11 20:43:59', '2023-12-11 00:59:20', 0);

-- ----------------------------
-- Table structure for sys_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_item`;
CREATE TABLE `sys_item`  (
  `id` int NOT NULL COMMENT '商品id',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品名称',
  `item_img` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品图片',
  `item_nums` int NULL DEFAULT NULL COMMENT '商品库存',
  `item_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品单价',
  `item_warehouse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库位置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_item
-- ----------------------------
INSERT INTO `sys_item` VALUES (1, '手机', 'https://t13.baidu.com/it/u=599198227,3515971765&fm=224&app=112&size=h200&n=0&f=JPEG&fmt=auto?sec=1702314000&t=fa859dc28e72e79ea70369329bd569b1', 20, 1999.99, '仓库A');
INSERT INTO `sys_item` VALUES (2, '电视', 'https://img1.360buyimg.com/n6/jfs/t1/237708/36/6181/89334/65740e08F5bac0985/21ca9ee6cac15e1a.jpg', 5, 2999.99, '仓库B');
INSERT INTO `sys_item` VALUES (3, '笔记本电脑', 'https://img1.360buyimg.com/n6/jfs/t1/237238/39/6836/110654/6573e081Fd3ecefc5/7d258c6f775fc49e.jpg', 15, 5999.99, '仓库C');
INSERT INTO `sys_item` VALUES (4, '耳机', 'https://img1.360buyimg.com/n6/jfs/t1/92051/12/36364/40641/6569b2f5F37b3bcd6/fbe20aa2597f8ae6.jpg', 40, 299.99, '仓库A');
INSERT INTO `sys_item` VALUES (5, '平板电脑', 'https://img1.360buyimg.com/n6/jfs/t1/228052/38/7304/33867/6572e6a6F92e35663/e02d69e9c74a10f2.jpg', 8, 1999.99, '仓库B');
INSERT INTO `sys_item` VALUES (6, '相机', 'https://img1.360buyimg.com/n6/jfs/t1/197863/31/38715/78113/6572eb38Fc3c880f8/50bdb886ec9b086c.jpg', 12, 3999.99, '仓库C');
INSERT INTO `sys_item` VALUES (7, '音箱', 'https://img1.360buyimg.com/n6/jfs/t1/237417/33/6144/55411/65727495F8479308f/ae5e33714506033f.jpg', 3, 999.99, '仓库A');
INSERT INTO `sys_item` VALUES (8, '洗衣机', 'https://img1.360buyimg.com/n6/jfs/t1/231584/24/6982/138635/6572f586F338074c0/363f3c59cdeca58c.jpg', 18, 1999.99, '仓库B');
INSERT INTO `sys_item` VALUES (9, '冰箱', 'https://img1.360buyimg.com/n6/jfs/t1/191668/19/40455/58913/656dc4cbF77053808/83f2dcb47b0bf1b1.jpg', 6, 3999.99, '仓库C');
INSERT INTO `sys_item` VALUES (10, '空调', 'https://img1.360buyimg.com/n6/jfs/t1/222772/39/35435/60889/6572da1fF53315875/f31e216c9c6a7037.jpg', 25, 4999.99, '仓库A');
INSERT INTO `sys_item` VALUES (11, '微波炉', 'https://img1.360buyimg.com/n6/jfs/t1/231826/27/6962/177544/6572be5aFc91165db/7185bf7e45013402.jpg', 4, 299.99, '仓库B');
INSERT INTO `sys_item` VALUES (12, '电风扇', 'https://img1.360buyimg.com/n6/jfs/t1/142917/7/36701/81087/649a8959Fc313fe9a/9a272e2c2bb2022d.jpg', 16, 199.99, '仓库C');
INSERT INTO `sys_item` VALUES (13, '吸尘器', 'https://img1.360buyimg.com/n6/jfs/t1/177183/26/41153/66927/657194d8F533f28dd/7a44407355b4ea0e.jpg', 2, 599.99, '仓库A');
INSERT INTO `sys_item` VALUES (14, '咖啡机', 'https://img1.360buyimg.com/n6/jfs/t1/151509/40/32614/98763/6574614bF8897232d/cb7271945d5c488e.jpg', 22, 999.99, '仓库B');
INSERT INTO `sys_item` VALUES (15, '电饭煲', 'https://img1.360buyimg.com/n6/jfs/t1/231893/33/6999/123198/6574658dFb9a481a2/c6e7fcf3188fe334.jpg', 12, 399.99, '仓库C');
INSERT INTO `sys_item` VALUES (16, '电动牙刷', 'https://img1.360buyimg.com/n6/jfs/t1/224793/15/5687/55877/65686ba2Fc5a67ff2/9fe8311d55a52b68.jpg', 9, 199.99, '仓库A');
INSERT INTO `sys_item` VALUES (17, '电动剃须刀', 'https://img1.360buyimg.com/n6/jfs/t1/232118/16/6947/102300/657461acF3cbd1348/b24382f1ecb1ee9f.png', 14, 499.99, '仓库B');
INSERT INTO `sys_item` VALUES (18, '电动车', 'https://img1.360buyimg.com/n6/jfs/t1/235767/12/6978/100455/657423d7F13ef9224/bf597e4c78fbf0fc.jpg', 11, 2999.99, '仓库C');
INSERT INTO `sys_item` VALUES (907128833, '无线路由器', 'https://img1.360buyimg.com/n6/jfs/t1/223618/6/39681/69899/6572e48fF69418ee8/de6154f2c98b580d.jpg', 10, 199.00, '仓库B');

-- ----------------------------
-- Table structure for sys_staff
-- ----------------------------
DROP TABLE IF EXISTS `sys_staff`;
CREATE TABLE `sys_staff`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '员工编码',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '员工姓名',
  `gender` tinyint UNSIGNED NULL DEFAULT 0 COMMENT '性别，0男，1女，默认0',
  `pwd` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工密码',
  `avatar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工头像',
  `birthday` date NULL DEFAULT NULL COMMENT '员工生日',
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工电话',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工备注',
  `dept_id` int UNSIGNED NULL DEFAULT NULL COMMENT '部门id',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '员工状态，0异常，1正常',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除，0未删除，1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_staff
-- ----------------------------
INSERT INTO `sys_staff` VALUES (1, 'admin', 'admin', 0, '202CB7007152D234B962AC59075B964B', '9ee44e0dc945e5a41828.jpg', '2000-12-06', '13888888888', '上海', '', 12, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (2, 'staff_2', 'lucy', 1, '202CB7007152D234B962AC59075B964B', '', '1998-04-17', '', '长沙', NULL, 5, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (3, 'staff_3', '清河', 0, '202CB7007152D234B962AC59075B964B', '', '1996-12-14', '13888888880', '南京', NULL, 9, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (4, 'staff_4', 'john', 0, '202CB7007152D234B962AC59075B964B', '', '1996-12-05', NULL, NULL, '博士', 3, 0, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (5, 'staff_5', 'joy', 0, '202CB7007152D234B962AC59075B964B', '', '1997-01-01', NULL, NULL, NULL, 17, 0, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (6, 'staff_6', 'harden', 0, '202CB7007152D234B962AC59075B964B', '', '1996-06-01', NULL, NULL, '硕士', 17, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (7, 'staff_7', 'alice', 1, '202CB7007152D234B962AC59075B964B', 'avatar.png', NULL, NULL, NULL, NULL, 5, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (8, 'staff_8', '温婉', 1, '202CB7007152D234B962AC59075B964B', 'avatar.png', '2000-10-19', NULL, '南充', NULL, 12, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (9, 'staff_9', '司藤', 1, '827CE7BA16891F84CB0EEA8A706C4C34', '9ee44e0dc945e5a41828.jpg', NULL, NULL, '达那', NULL, 17, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (10, 'staff_10', '秦放', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', NULL, NULL, NULL, NULL, 5, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (11, 'staff_11', '小雨', 1, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1969-12-31', NULL, NULL, '退休', 3, 0, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (12, 'staff_12', '小明', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', NULL, '南充', NULL, 12, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (13, 'staff_13', '梧桐', 1, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', NULL, '北京', NULL, 3, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (14, 'staff_14', '福瑞', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1997-02-13', NULL, '苍城山', NULL, 10, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (15, 'staff_15', '瓦房', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '2011-06-08', NULL, '苍城山', NULL, 8, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (16, 'staff_16', '白金', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1999-06-25', NULL, '金陵', '解雇', 3, 0, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (17, 'staff_17', '小王', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', NULL, '上海', NULL, 13, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (18, 'staff_18', '白英', 1, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', '13991849316', '申海', '邵严宽的二太太', 8, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (19, 'staff_19', '西竹', 1, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', '13991849316', '禹航', '富豪', 5, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (20, 'staff_20', '跳跳', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', '13966666666', '北京', '离职', 3, 0, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (21, 'staff_21', '何呵', 1, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', '13991849316', '杭州', '', 9, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (22, 'staff_22', '秋冬', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', '13991849316', '成都', '', 10, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (23, 'staff_23', '林拜', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', NULL, NULL, NULL, NULL, 3, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (24, 'staff_24', '助理', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', NULL, NULL, NULL, NULL, 2, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (25, 'staff_25', '林致', 1, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', '13991849316', '武汉', '', 5, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (26, 'staff_26', '柱子', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', '13991849316', '武汉', '', 13, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (27, 'staff_27', '秋天', 1, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', '13991849316', '武汉', '', 9, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (28, 'staff_28', '李振', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', '', '北京', '富豪', 10, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (29, 'staff_29', '擎天', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', NULL, NULL, NULL, NULL, 10, 0, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (30, 'staff_30', '秦汉', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1996-12-05', NULL, NULL, NULL, 9, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (31, 'staff_31', '林玥', 1, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', '1997-03-13', NULL, NULL, NULL, 5, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (32, 'staff_32', 'jooo', 0, '202CB7007152D234B962AC59075B964B', 'avatar.png', '1998-03-16', NULL, NULL, NULL, 12, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (33, 'staff_33', '张三', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', NULL, '13991849316', '天津', NULL, 2, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (34, 'staff_34', '李四', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', NULL, '13991849316', '北京', NULL, 2, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (35, 'staff_35', '王五', 0, '827CE7BA16891F84CB0EEA8A706C4C34', 'avatar.png', NULL, '13991849316', '上海', NULL, 5, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (36, 'staff_36', 'harden', 0, '202CB7007152D234B962AC59075B964B', 'avatar.png', NULL, NULL, NULL, NULL, 13, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (37, 'staff_37', '李云龙', 0, '202CB7007152D234B962AC59075B964B', 'avatar.png', '1989-07-12', '13990839927', '平安县', '独立团团长', 19, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 1);
INSERT INTO `sys_staff` VALUES (43, 'staff_43', '橙灰', 0, 'E10A83EE057F20F8DC3949BA59ABBE56', NULL, '2001-09-05', '18470558967', '江西', '', 22, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (44, 'staff_44', '王浩', 0, '202CB7007152D234B962AC59075B964B', NULL, '1996-07-11', '13966666688', '长沙', NULL, 22, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);
INSERT INTO `sys_staff` VALUES (45, 'staff_45', '苏尔', 1, '202CB7007152D234B962AC59075B964B', NULL, '2001-12-12', NULL, NULL, NULL, 12, 1, '2023-12-11 20:43:59', '2023-12-11 00:59:59', 0);

-- ----------------------------
-- Table structure for sys_stock
-- ----------------------------
DROP TABLE IF EXISTS `sys_stock`;
CREATE TABLE `sys_stock`  (
  `id` int NOT NULL COMMENT '进货表id',
  `item_id` int NULL DEFAULT NULL COMMENT '商品id',
  `item_nums` int NULL DEFAULT NULL COMMENT '进货数量',
  `stock_date` datetime NULL DEFAULT NULL COMMENT '进货时间',
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品名称',
  `stock_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '进货单价',
  `stock_sum_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '进货总价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_stock
-- ----------------------------
INSERT INTO `sys_stock` VALUES (-380547070, 4, 20, '2023-12-10 23:22:53', '耳机', 79.00, 1580.00);

-- ----------------------------
-- Table structure for sys_work
-- ----------------------------
DROP TABLE IF EXISTS `sys_work`;
CREATE TABLE `sys_work`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int NULL DEFAULT NULL,
  `work_date` datetime NULL DEFAULT NULL,
  `work_msg` int NULL DEFAULT NULL,
  `work_staff_id` int NULL DEFAULT NULL COMMENT '值班时间 1上午 2下午 3晚上',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1913753603 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_work
-- ----------------------------
INSERT INTO `sys_work` VALUES (-1606311934, 43, '2023-12-01 08:00:00', 1, 1);
INSERT INTO `sys_work` VALUES (-1538240510, 1, '2023-12-07 08:00:00', 2, 1);
INSERT INTO `sys_work` VALUES (-482238463, 43, '2023-12-02 08:00:00', 3, 1);
INSERT INTO `sys_work` VALUES (3, 1, '2023-12-06 00:00:00', 3, 1);
INSERT INTO `sys_work` VALUES (25272322, 43, '2023-12-13 08:00:00', 1, 1);
INSERT INTO `sys_work` VALUES (491802626, 2, '2023-12-07 08:00:00', 3, 1);
INSERT INTO `sys_work` VALUES (516968449, 1, '2023-12-01 08:00:00', 2, 1);
INSERT INTO `sys_work` VALUES (1010933761, 43, '2023-12-15 08:00:00', 3, 1);
INSERT INTO `sys_work` VALUES (1333895170, 43, '2023-12-03 08:00:00', 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
