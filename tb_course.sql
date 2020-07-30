/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 31/07/2020 01:30:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course`  (
  `c_id` int(0) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_course
-- ----------------------------
INSERT INTO `tb_course` VALUES (1, '语文', 1);
INSERT INTO `tb_course` VALUES (2, '数学', 2);
INSERT INTO `tb_course` VALUES (3, '英语', 3);
INSERT INTO `tb_course` VALUES (4, '物理', 4);

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student`  (
  `s_id` int(0) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `sex` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES (1, '刘一', 18, '男');
INSERT INTO `tb_student` VALUES (2, '钱二', 19, '女');
INSERT INTO `tb_student` VALUES (3, '张三', 17, '男');
INSERT INTO `tb_student` VALUES (4, '李四', 18, '女');
INSERT INTO `tb_student` VALUES (5, '王五', 17, '男');
INSERT INTO `tb_student` VALUES (6, '赵六', 19, '女');

-- ----------------------------
-- Table structure for tb_student_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_student_course`;
CREATE TABLE `tb_student_course`  (
  `s_id` int(0) NULL DEFAULT NULL,
  `c_id` int(0) NULL DEFAULT NULL,
  `score` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_student_course
-- ----------------------------
INSERT INTO `tb_student_course` VALUES (1, 1, 56);
INSERT INTO `tb_student_course` VALUES (1, 2, 78);
INSERT INTO `tb_student_course` VALUES (1, 3, 67);
INSERT INTO `tb_student_course` VALUES (1, 4, 58);
INSERT INTO `tb_student_course` VALUES (2, 1, 79);
INSERT INTO `tb_student_course` VALUES (2, 2, 81);
INSERT INTO `tb_student_course` VALUES (2, 3, 92);
INSERT INTO `tb_student_course` VALUES (2, 4, 68);
INSERT INTO `tb_student_course` VALUES (3, 1, 91);
INSERT INTO `tb_student_course` VALUES (3, 2, 47);
INSERT INTO `tb_student_course` VALUES (3, 3, 88);
INSERT INTO `tb_student_course` VALUES (3, 4, 56);
INSERT INTO `tb_student_course` VALUES (4, 2, 88);
INSERT INTO `tb_student_course` VALUES (4, 3, 90);
INSERT INTO `tb_student_course` VALUES (4, 4, 93);
INSERT INTO `tb_student_course` VALUES (5, 1, 46);
INSERT INTO `tb_student_course` VALUES (5, 3, 78);
INSERT INTO `tb_student_course` VALUES (5, 4, 53);
INSERT INTO `tb_student_course` VALUES (6, 1, 35);
INSERT INTO `tb_student_course` VALUES (6, 2, 68);
INSERT INTO `tb_student_course` VALUES (6, 4, 71);

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher`  (
  `t_id` int(0) NOT NULL,
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES (1, '叶平');
INSERT INTO `tb_teacher` VALUES (2, '贺高');
INSERT INTO `tb_teacher` VALUES (3, '杨艳');
INSERT INTO `tb_teacher` VALUES (4, '周磊');
INSERT INTO `tb_teacher` VALUES (5, '李雷');
INSERT INTO `tb_teacher` VALUES (6, '李想');

SET FOREIGN_KEY_CHECKS = 1;
