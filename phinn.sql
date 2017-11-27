/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100113
 Source Host           : localhost:3306
 Source Schema         : phinn

 Target Server Type    : MySQL
 Target Server Version : 100113
 File Encoding         : 65001

 Date: 27/11/2017 08:20:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bolsones
-- ----------------------------
DROP TABLE IF EXISTS `bolsones`;
CREATE TABLE `bolsones`  (
  `IdBolson` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Peso` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Estado` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`IdBolson`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bolsones
-- ----------------------------
INSERT INTO `bolsones` VALUES (1, 'ECO PLUS 24/1 (bols)', '4.99', b'1');
INSERT INTO `bolsones` VALUES (2, 'ECO PLUS 6/4 (bol)', '4.99', b'1');
INSERT INTO `bolsones` VALUES (3, 'CHOLIN 1000 8/6(bols)', '9.98', b'1');
INSERT INTO `bolsones` VALUES (4, 'CHOLIN 900 (bols)', '4.51', b'1');
INSERT INTO `bolsones` VALUES (5, 'GENERICO ECO 1000 (bol)', '4.99', b'1');
INSERT INTO `bolsones` VALUES (6, 'GENERICO ECO 900 (bol)', '4.51', b'1');
INSERT INTO `bolsones` VALUES (7, 'CHOLIN HD 32/1 (bol)', '5.85', b'1');
INSERT INTO `bolsones` VALUES (8, 'Bolson  SERVILLETA', '3', b'1');
INSERT INTO `bolsones` VALUES (9, 'CHOLIN HD Gen32/1 (bol)', '5.85', b'1');

-- ----------------------------
-- Table structure for cargas_pulper
-- ----------------------------
DROP TABLE IF EXISTS `cargas_pulper`;
CREATE TABLE `cargas_pulper`  (
  `IdCargaPulper` int(11) NOT NULL AUTO_INCREMENT,
  `IdInsumo` int(11) NOT NULL,
  `Cantidad` float(11, 1) NULL DEFAULT NULL,
  `IdReporteDiario` int(11) NOT NULL,
  PRIMARY KEY (`IdCargaPulper`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 553 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cargas_pulper
-- ----------------------------
INSERT INTO `cargas_pulper` VALUES (1, 27, 68.5, 2);
INSERT INTO `cargas_pulper` VALUES (2, 28, 95.0, 2);
INSERT INTO `cargas_pulper` VALUES (3, 27, 65.5, 2);
INSERT INTO `cargas_pulper` VALUES (4, 30, 588.0, 2);
INSERT INTO `cargas_pulper` VALUES (5, 30, 788.0, 2);
INSERT INTO `cargas_pulper` VALUES (6, 30, 899.0, 2);
INSERT INTO `cargas_pulper` VALUES (7, 30, 300.0, 2);
INSERT INTO `cargas_pulper` VALUES (8, 30, 300.4, 2);
INSERT INTO `cargas_pulper` VALUES (9, 27, 4555.0, 2);
INSERT INTO `cargas_pulper` VALUES (10, 27, 555.0, 4);
INSERT INTO `cargas_pulper` VALUES (11, 27, 25.0, 4);
INSERT INTO `cargas_pulper` VALUES (12, 27, 3665.0, 4);
INSERT INTO `cargas_pulper` VALUES (13, 27, 584.0, 4);
INSERT INTO `cargas_pulper` VALUES (14, 27, 362.0, 4);
INSERT INTO `cargas_pulper` VALUES (15, 28, 455.0, 4);
INSERT INTO `cargas_pulper` VALUES (16, 28, 254.0, 4);
INSERT INTO `cargas_pulper` VALUES (17, 28, 214.0, 4);
INSERT INTO `cargas_pulper` VALUES (18, 28, 21.0, 4);
INSERT INTO `cargas_pulper` VALUES (19, 28, 89.9, 4);
INSERT INTO `cargas_pulper` VALUES (20, 28, 91.3, 4);
INSERT INTO `cargas_pulper` VALUES (21, 28, 500.0, 8);
INSERT INTO `cargas_pulper` VALUES (22, 27, 640.0, 8);
INSERT INTO `cargas_pulper` VALUES (23, 29, 160.0, 8);
INSERT INTO `cargas_pulper` VALUES (24, 27, 640.0, 9);
INSERT INTO `cargas_pulper` VALUES (25, 29, 160.0, 9);
INSERT INTO `cargas_pulper` VALUES (26, 27, 640.0, 9);
INSERT INTO `cargas_pulper` VALUES (27, 29, 160.0, 9);
INSERT INTO `cargas_pulper` VALUES (28, 27, 640.0, 9);
INSERT INTO `cargas_pulper` VALUES (29, 29, 160.0, 9);
INSERT INTO `cargas_pulper` VALUES (30, 27, 320.0, 9);
INSERT INTO `cargas_pulper` VALUES (31, 28, 320.0, 9);
INSERT INTO `cargas_pulper` VALUES (32, 29, 160.0, 9);
INSERT INTO `cargas_pulper` VALUES (33, 27, 320.0, 9);
INSERT INTO `cargas_pulper` VALUES (34, 28, 320.0, 9);
INSERT INTO `cargas_pulper` VALUES (35, 29, 160.0, 9);
INSERT INTO `cargas_pulper` VALUES (36, 27, 320.0, 9);
INSERT INTO `cargas_pulper` VALUES (37, 28, 320.0, 9);
INSERT INTO `cargas_pulper` VALUES (38, 29, 160.0, 9);
INSERT INTO `cargas_pulper` VALUES (39, 29, 160.0, 9);
INSERT INTO `cargas_pulper` VALUES (40, 33, 30.0, 9);
INSERT INTO `cargas_pulper` VALUES (41, 30, 15.0, 9);
INSERT INTO `cargas_pulper` VALUES (42, 27, 719.0, 13);
INSERT INTO `cargas_pulper` VALUES (43, 27, 758.0, 13);
INSERT INTO `cargas_pulper` VALUES (44, 27, 734.0, 13);
INSERT INTO `cargas_pulper` VALUES (45, 28, 160.0, 13);
INSERT INTO `cargas_pulper` VALUES (46, 28, 160.0, 13);
INSERT INTO `cargas_pulper` VALUES (47, 28, 160.0, 13);
INSERT INTO `cargas_pulper` VALUES (48, 30, 160.0, 13);
INSERT INTO `cargas_pulper` VALUES (49, 29, 160.0, 13);
INSERT INTO `cargas_pulper` VALUES (50, 27, 480.0, 14);
INSERT INTO `cargas_pulper` VALUES (51, 27, 480.0, 14);
INSERT INTO `cargas_pulper` VALUES (52, 28, 160.0, 14);
INSERT INTO `cargas_pulper` VALUES (53, 29, 160.0, 14);
INSERT INTO `cargas_pulper` VALUES (54, 30, 5.0, 14);
INSERT INTO `cargas_pulper` VALUES (56, 33, 10.0, 14);
INSERT INTO `cargas_pulper` VALUES (57, 28, 160.0, 14);
INSERT INTO `cargas_pulper` VALUES (58, 29, 160.0, 14);
INSERT INTO `cargas_pulper` VALUES (60, 27, 480.0, 14);
INSERT INTO `cargas_pulper` VALUES (61, 28, 160.0, 14);
INSERT INTO `cargas_pulper` VALUES (62, 29, 160.0, 14);
INSERT INTO `cargas_pulper` VALUES (65, 27, 480.0, 14);
INSERT INTO `cargas_pulper` VALUES (67, 28, 160.0, 14);
INSERT INTO `cargas_pulper` VALUES (68, 29, 160.0, 14);
INSERT INTO `cargas_pulper` VALUES (69, 30, 5.0, 14);
INSERT INTO `cargas_pulper` VALUES (71, 27, 480.0, 17);
INSERT INTO `cargas_pulper` VALUES (72, 28, 160.0, 17);
INSERT INTO `cargas_pulper` VALUES (73, 29, 160.0, 17);
INSERT INTO `cargas_pulper` VALUES (74, 30, 5.0, 17);
INSERT INTO `cargas_pulper` VALUES (75, 33, 10.0, 17);
INSERT INTO `cargas_pulper` VALUES (76, 27, 480.0, 17);
INSERT INTO `cargas_pulper` VALUES (77, 28, 160.0, 17);
INSERT INTO `cargas_pulper` VALUES (78, 29, 160.0, 17);
INSERT INTO `cargas_pulper` VALUES (79, 27, 480.0, 17);
INSERT INTO `cargas_pulper` VALUES (80, 28, 160.0, 17);
INSERT INTO `cargas_pulper` VALUES (81, 29, 160.0, 17);
INSERT INTO `cargas_pulper` VALUES (82, 27, 480.0, 17);
INSERT INTO `cargas_pulper` VALUES (83, 28, 160.0, 17);
INSERT INTO `cargas_pulper` VALUES (84, 29, 160.0, 17);
INSERT INTO `cargas_pulper` VALUES (85, 27, 480.0, 20);
INSERT INTO `cargas_pulper` VALUES (86, 28, 160.0, 20);
INSERT INTO `cargas_pulper` VALUES (87, 29, 160.0, 20);
INSERT INTO `cargas_pulper` VALUES (88, 27, 480.0, 20);
INSERT INTO `cargas_pulper` VALUES (89, 28, 160.0, 20);
INSERT INTO `cargas_pulper` VALUES (90, 29, 160.0, 20);
INSERT INTO `cargas_pulper` VALUES (91, 27, 480.0, 21);
INSERT INTO `cargas_pulper` VALUES (92, 28, 160.0, 21);
INSERT INTO `cargas_pulper` VALUES (93, 29, 160.0, 21);
INSERT INTO `cargas_pulper` VALUES (94, 30, 0.0, 21);
INSERT INTO `cargas_pulper` VALUES (95, 33, 0.0, 21);
INSERT INTO `cargas_pulper` VALUES (96, 27, 480.0, 23);
INSERT INTO `cargas_pulper` VALUES (97, 28, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (98, 29, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (99, 27, 480.0, 23);
INSERT INTO `cargas_pulper` VALUES (100, 28, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (101, 29, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (102, 27, 480.0, 23);
INSERT INTO `cargas_pulper` VALUES (103, 28, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (104, 29, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (105, 27, 480.0, 23);
INSERT INTO `cargas_pulper` VALUES (106, 28, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (107, 29, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (108, 27, 480.0, 23);
INSERT INTO `cargas_pulper` VALUES (109, 28, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (110, 29, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (111, 27, 480.0, 23);
INSERT INTO `cargas_pulper` VALUES (112, 28, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (113, 29, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (114, 27, 480.0, 23);
INSERT INTO `cargas_pulper` VALUES (115, 28, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (116, 29, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (117, 27, 480.0, 23);
INSERT INTO `cargas_pulper` VALUES (118, 28, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (119, 29, 160.0, 23);
INSERT INTO `cargas_pulper` VALUES (120, 27, 480.0, 24);
INSERT INTO `cargas_pulper` VALUES (121, 28, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (122, 29, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (123, 27, 480.0, 24);
INSERT INTO `cargas_pulper` VALUES (124, 28, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (125, 29, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (126, 27, 480.0, 24);
INSERT INTO `cargas_pulper` VALUES (127, 28, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (128, 29, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (129, 27, 480.0, 24);
INSERT INTO `cargas_pulper` VALUES (130, 28, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (131, 29, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (132, 27, 480.0, 24);
INSERT INTO `cargas_pulper` VALUES (133, 28, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (134, 29, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (135, 27, 480.0, 24);
INSERT INTO `cargas_pulper` VALUES (136, 28, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (137, 29, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (138, 27, 480.0, 24);
INSERT INTO `cargas_pulper` VALUES (139, 28, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (140, 29, 160.0, 24);
INSERT INTO `cargas_pulper` VALUES (141, 27, 480.0, 27);
INSERT INTO `cargas_pulper` VALUES (142, 28, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (143, 29, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (144, 27, 480.0, 27);
INSERT INTO `cargas_pulper` VALUES (145, 28, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (146, 29, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (147, 27, 480.0, 27);
INSERT INTO `cargas_pulper` VALUES (148, 28, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (149, 29, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (150, 27, 480.0, 27);
INSERT INTO `cargas_pulper` VALUES (151, 28, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (152, 29, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (153, 27, 480.0, 27);
INSERT INTO `cargas_pulper` VALUES (154, 28, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (155, 29, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (156, 30, 5.0, 27);
INSERT INTO `cargas_pulper` VALUES (157, 30, 5.0, 27);
INSERT INTO `cargas_pulper` VALUES (158, 30, 5.0, 27);
INSERT INTO `cargas_pulper` VALUES (159, 30, 5.0, 27);
INSERT INTO `cargas_pulper` VALUES (160, 30, 5.0, 27);
INSERT INTO `cargas_pulper` VALUES (161, 33, 10.0, 27);
INSERT INTO `cargas_pulper` VALUES (162, 33, 10.0, 27);
INSERT INTO `cargas_pulper` VALUES (163, 33, 10.0, 27);
INSERT INTO `cargas_pulper` VALUES (164, 33, 10.0, 27);
INSERT INTO `cargas_pulper` VALUES (165, 33, 10.0, 27);
INSERT INTO `cargas_pulper` VALUES (166, 27, 480.0, 27);
INSERT INTO `cargas_pulper` VALUES (167, 29, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (168, 28, 160.0, 27);
INSERT INTO `cargas_pulper` VALUES (169, 30, 5.0, 27);
INSERT INTO `cargas_pulper` VALUES (170, 33, 10.0, 27);
INSERT INTO `cargas_pulper` VALUES (171, 27, 480.0, 26);
INSERT INTO `cargas_pulper` VALUES (172, 28, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (173, 29, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (174, 27, 480.0, 26);
INSERT INTO `cargas_pulper` VALUES (175, 28, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (176, 29, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (177, 27, 480.0, 26);
INSERT INTO `cargas_pulper` VALUES (178, 28, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (179, 29, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (180, 27, 480.0, 26);
INSERT INTO `cargas_pulper` VALUES (181, 28, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (182, 29, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (183, 27, 480.0, 26);
INSERT INTO `cargas_pulper` VALUES (184, 28, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (185, 29, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (186, 27, 480.0, 26);
INSERT INTO `cargas_pulper` VALUES (187, 28, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (188, 29, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (189, 27, 480.0, 26);
INSERT INTO `cargas_pulper` VALUES (190, 28, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (191, 29, 160.0, 26);
INSERT INTO `cargas_pulper` VALUES (192, 27, 640.0, 32);
INSERT INTO `cargas_pulper` VALUES (193, 29, 160.0, 32);
INSERT INTO `cargas_pulper` VALUES (194, 27, 640.0, 32);
INSERT INTO `cargas_pulper` VALUES (195, 27, 640.0, 32);
INSERT INTO `cargas_pulper` VALUES (196, 27, 640.0, 32);
INSERT INTO `cargas_pulper` VALUES (197, 27, 640.0, 32);
INSERT INTO `cargas_pulper` VALUES (198, 29, 160.0, 32);
INSERT INTO `cargas_pulper` VALUES (199, 29, 160.0, 32);
INSERT INTO `cargas_pulper` VALUES (200, 29, 160.0, 32);
INSERT INTO `cargas_pulper` VALUES (201, 29, 160.0, 32);
INSERT INTO `cargas_pulper` VALUES (202, 27, 640.0, 32);
INSERT INTO `cargas_pulper` VALUES (203, 29, 160.0, 32);
INSERT INTO `cargas_pulper` VALUES (204, 27, 640.0, 33);
INSERT INTO `cargas_pulper` VALUES (205, 27, 640.0, 33);
INSERT INTO `cargas_pulper` VALUES (206, 27, 640.0, 33);
INSERT INTO `cargas_pulper` VALUES (207, 27, 640.0, 33);
INSERT INTO `cargas_pulper` VALUES (208, 29, 160.0, 33);
INSERT INTO `cargas_pulper` VALUES (209, 29, 160.0, 33);
INSERT INTO `cargas_pulper` VALUES (210, 29, 160.0, 33);
INSERT INTO `cargas_pulper` VALUES (211, 29, 160.0, 33);
INSERT INTO `cargas_pulper` VALUES (212, 27, 640.0, 33);
INSERT INTO `cargas_pulper` VALUES (213, 27, 640.0, 33);
INSERT INTO `cargas_pulper` VALUES (214, 29, 160.0, 33);
INSERT INTO `cargas_pulper` VALUES (215, 29, 160.0, 33);
INSERT INTO `cargas_pulper` VALUES (216, 27, 640.0, 33);
INSERT INTO `cargas_pulper` VALUES (217, 29, 160.0, 33);
INSERT INTO `cargas_pulper` VALUES (218, 30, 35.0, 33);
INSERT INTO `cargas_pulper` VALUES (220, 33, 70.0, 33);
INSERT INTO `cargas_pulper` VALUES (221, 27, 640.0, 34);
INSERT INTO `cargas_pulper` VALUES (222, 29, 160.0, 34);
INSERT INTO `cargas_pulper` VALUES (223, 33, 50.0, 34);
INSERT INTO `cargas_pulper` VALUES (224, 30, 25.0, 34);
INSERT INTO `cargas_pulper` VALUES (225, 27, 640.0, 34);
INSERT INTO `cargas_pulper` VALUES (226, 29, 160.0, 34);
INSERT INTO `cargas_pulper` VALUES (227, 27, 640.0, 34);
INSERT INTO `cargas_pulper` VALUES (228, 29, 160.0, 34);
INSERT INTO `cargas_pulper` VALUES (230, 29, 160.0, 34);
INSERT INTO `cargas_pulper` VALUES (232, 27, 480.0, 35);
INSERT INTO `cargas_pulper` VALUES (233, 28, 160.0, 35);
INSERT INTO `cargas_pulper` VALUES (234, 29, 160.0, 35);
INSERT INTO `cargas_pulper` VALUES (235, 29, 160.0, 35);
INSERT INTO `cargas_pulper` VALUES (236, 28, 160.0, 35);
INSERT INTO `cargas_pulper` VALUES (237, 27, 160.0, 35);
INSERT INTO `cargas_pulper` VALUES (238, 27, 480.0, 35);
INSERT INTO `cargas_pulper` VALUES (239, 27, 480.0, 35);
INSERT INTO `cargas_pulper` VALUES (240, 29, 160.0, 35);
INSERT INTO `cargas_pulper` VALUES (241, 29, 160.0, 35);
INSERT INTO `cargas_pulper` VALUES (242, 28, 160.0, 35);
INSERT INTO `cargas_pulper` VALUES (243, 28, 160.0, 35);
INSERT INTO `cargas_pulper` VALUES (244, 30, 5.0, 35);
INSERT INTO `cargas_pulper` VALUES (245, 30, 5.0, 35);
INSERT INTO `cargas_pulper` VALUES (246, 30, 5.0, 35);
INSERT INTO `cargas_pulper` VALUES (247, 30, 5.0, 35);
INSERT INTO `cargas_pulper` VALUES (248, 33, 10.0, 35);
INSERT INTO `cargas_pulper` VALUES (249, 33, 10.0, 35);
INSERT INTO `cargas_pulper` VALUES (250, 33, 10.0, 35);
INSERT INTO `cargas_pulper` VALUES (251, 33, 10.0, 35);
INSERT INTO `cargas_pulper` VALUES (252, 27, 480.0, 36);
INSERT INTO `cargas_pulper` VALUES (253, 27, 480.0, 36);
INSERT INTO `cargas_pulper` VALUES (254, 27, 480.0, 36);
INSERT INTO `cargas_pulper` VALUES (255, 28, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (256, 28, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (257, 28, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (258, 29, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (259, 29, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (260, 29, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (261, 27, 480.0, 36);
INSERT INTO `cargas_pulper` VALUES (262, 27, 480.0, 36);
INSERT INTO `cargas_pulper` VALUES (263, 28, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (264, 28, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (265, 29, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (266, 29, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (267, 27, 480.0, 36);
INSERT INTO `cargas_pulper` VALUES (268, 27, 480.0, 36);
INSERT INTO `cargas_pulper` VALUES (269, 27, 480.0, 36);
INSERT INTO `cargas_pulper` VALUES (270, 28, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (271, 28, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (272, 29, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (275, 28, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (277, 29, 160.0, 36);
INSERT INTO `cargas_pulper` VALUES (278, 30, 40.0, 36);
INSERT INTO `cargas_pulper` VALUES (279, 33, 80.0, 36);
INSERT INTO `cargas_pulper` VALUES (280, 28, 640.0, 38);
INSERT INTO `cargas_pulper` VALUES (281, 28, 640.0, 38);
INSERT INTO `cargas_pulper` VALUES (282, 28, 640.0, 38);
INSERT INTO `cargas_pulper` VALUES (283, 28, 640.0, 38);
INSERT INTO `cargas_pulper` VALUES (284, 29, 50.0, 38);
INSERT INTO `cargas_pulper` VALUES (285, 29, 30.0, 38);
INSERT INTO `cargas_pulper` VALUES (286, 29, 100.0, 38);
INSERT INTO `cargas_pulper` VALUES (287, 29, 50.0, 38);
INSERT INTO `cargas_pulper` VALUES (288, 28, 160.0, 38);
INSERT INTO `cargas_pulper` VALUES (289, 27, 480.0, 38);
INSERT INTO `cargas_pulper` VALUES (290, 30, 5.0, 38);
INSERT INTO `cargas_pulper` VALUES (291, 30, 5.0, 38);
INSERT INTO `cargas_pulper` VALUES (292, 30, 5.0, 38);
INSERT INTO `cargas_pulper` VALUES (293, 30, 5.0, 38);
INSERT INTO `cargas_pulper` VALUES (294, 30, 5.0, 38);
INSERT INTO `cargas_pulper` VALUES (295, 30, 5.0, 38);
INSERT INTO `cargas_pulper` VALUES (296, 33, 10.0, 38);
INSERT INTO `cargas_pulper` VALUES (297, 33, 10.0, 38);
INSERT INTO `cargas_pulper` VALUES (298, 33, 10.0, 38);
INSERT INTO `cargas_pulper` VALUES (299, 33, 10.0, 38);
INSERT INTO `cargas_pulper` VALUES (300, 33, 10.0, 38);
INSERT INTO `cargas_pulper` VALUES (301, 33, 10.0, 38);
INSERT INTO `cargas_pulper` VALUES (302, 27, 480.0, 38);
INSERT INTO `cargas_pulper` VALUES (303, 27, 480.0, 38);
INSERT INTO `cargas_pulper` VALUES (304, 28, 160.0, 38);
INSERT INTO `cargas_pulper` VALUES (305, 28, 160.0, 38);
INSERT INTO `cargas_pulper` VALUES (306, 30, 5.0, 38);
INSERT INTO `cargas_pulper` VALUES (307, 33, 10.0, 38);
INSERT INTO `cargas_pulper` VALUES (308, 27, 480.0, 39);
INSERT INTO `cargas_pulper` VALUES (309, 27, 480.0, 39);
INSERT INTO `cargas_pulper` VALUES (310, 27, 480.0, 39);
INSERT INTO `cargas_pulper` VALUES (311, 28, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (312, 29, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (313, 28, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (314, 29, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (315, 28, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (316, 29, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (317, 28, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (318, 29, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (319, 27, 480.0, 39);
INSERT INTO `cargas_pulper` VALUES (320, 27, 480.0, 39);
INSERT INTO `cargas_pulper` VALUES (321, 28, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (322, 29, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (323, 27, 480.0, 39);
INSERT INTO `cargas_pulper` VALUES (324, 28, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (325, 29, 160.0, 39);
INSERT INTO `cargas_pulper` VALUES (326, 30, 30.0, 39);
INSERT INTO `cargas_pulper` VALUES (327, 33, 60.0, 39);
INSERT INTO `cargas_pulper` VALUES (328, 27, 640.0, 41);
INSERT INTO `cargas_pulper` VALUES (329, 27, 640.0, 41);
INSERT INTO `cargas_pulper` VALUES (330, 29, 160.0, 41);
INSERT INTO `cargas_pulper` VALUES (331, 29, 160.0, 41);
INSERT INTO `cargas_pulper` VALUES (332, 27, 555.0, 44);
INSERT INTO `cargas_pulper` VALUES (333, 27, 698.0, 44);
INSERT INTO `cargas_pulper` VALUES (334, 27, 633.0, 44);
INSERT INTO `cargas_pulper` VALUES (335, 27, 644.0, 44);
INSERT INTO `cargas_pulper` VALUES (336, 27, 791.0, 44);
INSERT INTO `cargas_pulper` VALUES (337, 27, 673.0, 44);
INSERT INTO `cargas_pulper` VALUES (338, 28, 160.0, 44);
INSERT INTO `cargas_pulper` VALUES (339, 28, 160.0, 44);
INSERT INTO `cargas_pulper` VALUES (340, 28, 160.0, 44);
INSERT INTO `cargas_pulper` VALUES (341, 29, 160.0, 44);
INSERT INTO `cargas_pulper` VALUES (342, 29, 160.0, 44);
INSERT INTO `cargas_pulper` VALUES (343, 29, 160.0, 44);
INSERT INTO `cargas_pulper` VALUES (344, 29, 320.0, 44);
INSERT INTO `cargas_pulper` VALUES (345, 29, 320.0, 44);
INSERT INTO `cargas_pulper` VALUES (346, 29, 320.0, 44);
INSERT INTO `cargas_pulper` VALUES (347, 30, 5.0, 44);
INSERT INTO `cargas_pulper` VALUES (348, 30, 5.0, 44);
INSERT INTO `cargas_pulper` VALUES (349, 30, 5.0, 44);
INSERT INTO `cargas_pulper` VALUES (350, 30, 5.0, 44);
INSERT INTO `cargas_pulper` VALUES (351, 30, 5.0, 44);
INSERT INTO `cargas_pulper` VALUES (352, 30, 5.0, 44);
INSERT INTO `cargas_pulper` VALUES (353, 33, 10.0, 44);
INSERT INTO `cargas_pulper` VALUES (354, 33, 10.0, 44);
INSERT INTO `cargas_pulper` VALUES (355, 33, 10.0, 44);
INSERT INTO `cargas_pulper` VALUES (356, 33, 10.0, 44);
INSERT INTO `cargas_pulper` VALUES (357, 33, 10.0, 44);
INSERT INTO `cargas_pulper` VALUES (358, 33, 10.0, 44);
INSERT INTO `cargas_pulper` VALUES (359, 27, 656.0, 49);
INSERT INTO `cargas_pulper` VALUES (360, 27, 760.0, 49);
INSERT INTO `cargas_pulper` VALUES (361, 27, 760.0, 49);
INSERT INTO `cargas_pulper` VALUES (362, 29, 160.0, 49);
INSERT INTO `cargas_pulper` VALUES (363, 29, 160.0, 49);
INSERT INTO `cargas_pulper` VALUES (364, 29, 160.0, 49);
INSERT INTO `cargas_pulper` VALUES (365, 30, 5.0, 49);
INSERT INTO `cargas_pulper` VALUES (366, 30, 5.0, 49);
INSERT INTO `cargas_pulper` VALUES (367, 30, 5.0, 49);
INSERT INTO `cargas_pulper` VALUES (368, 33, 10.0, 49);
INSERT INTO `cargas_pulper` VALUES (369, 33, 10.0, 49);
INSERT INTO `cargas_pulper` VALUES (370, 33, 10.0, 49);
INSERT INTO `cargas_pulper` VALUES (371, 27, 595.0, 49);
INSERT INTO `cargas_pulper` VALUES (372, 27, 610.0, 49);
INSERT INTO `cargas_pulper` VALUES (373, 27, 480.0, 49);
INSERT INTO `cargas_pulper` VALUES (374, 29, 160.0, 49);
INSERT INTO `cargas_pulper` VALUES (375, 29, 160.0, 49);
INSERT INTO `cargas_pulper` VALUES (376, 29, 160.0, 49);
INSERT INTO `cargas_pulper` VALUES (377, 30, 5.0, 49);
INSERT INTO `cargas_pulper` VALUES (378, 30, 5.0, 49);
INSERT INTO `cargas_pulper` VALUES (379, 30, 5.0, 49);
INSERT INTO `cargas_pulper` VALUES (380, 33, 10.0, 49);
INSERT INTO `cargas_pulper` VALUES (381, 33, 10.0, 49);
INSERT INTO `cargas_pulper` VALUES (382, 33, 10.0, 49);
INSERT INTO `cargas_pulper` VALUES (383, 27, 480.0, 55);
INSERT INTO `cargas_pulper` VALUES (384, 27, 480.0, 55);
INSERT INTO `cargas_pulper` VALUES (385, 27, 480.0, 55);
INSERT INTO `cargas_pulper` VALUES (386, 28, 160.0, 55);
INSERT INTO `cargas_pulper` VALUES (387, 29, 160.0, 55);
INSERT INTO `cargas_pulper` VALUES (388, 29, 160.0, 55);
INSERT INTO `cargas_pulper` VALUES (389, 29, 160.0, 55);
INSERT INTO `cargas_pulper` VALUES (390, 28, 160.0, 55);
INSERT INTO `cargas_pulper` VALUES (391, 28, 160.0, 55);
INSERT INTO `cargas_pulper` VALUES (392, 30, 15.0, 55);
INSERT INTO `cargas_pulper` VALUES (393, 33, 30.0, 55);
INSERT INTO `cargas_pulper` VALUES (394, 27, 616.0, 62);
INSERT INTO `cargas_pulper` VALUES (395, 27, 591.0, 62);
INSERT INTO `cargas_pulper` VALUES (396, 27, 810.0, 62);
INSERT INTO `cargas_pulper` VALUES (397, 28, 80.0, 62);
INSERT INTO `cargas_pulper` VALUES (398, 28, 80.0, 62);
INSERT INTO `cargas_pulper` VALUES (399, 29, 160.0, 62);
INSERT INTO `cargas_pulper` VALUES (400, 29, 160.0, 62);
INSERT INTO `cargas_pulper` VALUES (401, 29, 160.0, 62);
INSERT INTO `cargas_pulper` VALUES (402, 30, 5.0, 62);
INSERT INTO `cargas_pulper` VALUES (403, 30, 5.0, 62);
INSERT INTO `cargas_pulper` VALUES (404, 30, 5.0, 62);
INSERT INTO `cargas_pulper` VALUES (405, 33, 10.0, 62);
INSERT INTO `cargas_pulper` VALUES (406, 33, 10.0, 62);
INSERT INTO `cargas_pulper` VALUES (407, 33, 10.0, 62);
INSERT INTO `cargas_pulper` VALUES (408, 27, 746.0, 62);
INSERT INTO `cargas_pulper` VALUES (409, 27, 720.0, 62);
INSERT INTO `cargas_pulper` VALUES (410, 28, 80.0, 62);
INSERT INTO `cargas_pulper` VALUES (411, 28, 80.0, 62);
INSERT INTO `cargas_pulper` VALUES (412, 29, 160.0, 62);
INSERT INTO `cargas_pulper` VALUES (413, 29, 160.0, 62);
INSERT INTO `cargas_pulper` VALUES (414, 30, 5.0, 62);
INSERT INTO `cargas_pulper` VALUES (415, 30, 5.0, 62);
INSERT INTO `cargas_pulper` VALUES (416, 33, 10.0, 62);
INSERT INTO `cargas_pulper` VALUES (417, 33, 10.0, 62);
INSERT INTO `cargas_pulper` VALUES (418, 27, 961.0, 62);
INSERT INTO `cargas_pulper` VALUES (419, 28, 80.0, 62);
INSERT INTO `cargas_pulper` VALUES (420, 29, 160.0, 62);
INSERT INTO `cargas_pulper` VALUES (421, 30, 5.0, 62);
INSERT INTO `cargas_pulper` VALUES (422, 33, 10.0, 62);
INSERT INTO `cargas_pulper` VALUES (423, 27, 732.0, 62);
INSERT INTO `cargas_pulper` VALUES (424, 28, 80.0, 62);
INSERT INTO `cargas_pulper` VALUES (425, 29, 160.0, 62);
INSERT INTO `cargas_pulper` VALUES (426, 30, 5.0, 62);
INSERT INTO `cargas_pulper` VALUES (427, 33, 10.0, 62);
INSERT INTO `cargas_pulper` VALUES (428, 28, 80.0, 62);
INSERT INTO `cargas_pulper` VALUES (429, 27, 630.0, 66);
INSERT INTO `cargas_pulper` VALUES (430, 27, 710.0, 66);
INSERT INTO `cargas_pulper` VALUES (431, 29, 160.0, 66);
INSERT INTO `cargas_pulper` VALUES (432, 29, 160.0, 66);
INSERT INTO `cargas_pulper` VALUES (433, 30, 5.0, 66);
INSERT INTO `cargas_pulper` VALUES (434, 30, 5.0, 66);
INSERT INTO `cargas_pulper` VALUES (436, 33, 10.0, 66);
INSERT INTO `cargas_pulper` VALUES (437, 33, 10.0, 66);
INSERT INTO `cargas_pulper` VALUES (438, 27, 712.0, 66);
INSERT INTO `cargas_pulper` VALUES (439, 27, 705.0, 66);
INSERT INTO `cargas_pulper` VALUES (440, 29, 160.0, 66);
INSERT INTO `cargas_pulper` VALUES (441, 29, 160.0, 66);
INSERT INTO `cargas_pulper` VALUES (442, 30, 5.0, 66);
INSERT INTO `cargas_pulper` VALUES (443, 30, 5.0, 66);
INSERT INTO `cargas_pulper` VALUES (444, 33, 10.0, 66);
INSERT INTO `cargas_pulper` VALUES (445, 33, 10.0, 66);
INSERT INTO `cargas_pulper` VALUES (446, 27, 632.0, 67);
INSERT INTO `cargas_pulper` VALUES (447, 29, 160.0, 67);
INSERT INTO `cargas_pulper` VALUES (448, 27, 739.0, 67);
INSERT INTO `cargas_pulper` VALUES (449, 29, 160.0, 67);
INSERT INTO `cargas_pulper` VALUES (450, 27, 706.0, 67);
INSERT INTO `cargas_pulper` VALUES (451, 29, 160.0, 67);
INSERT INTO `cargas_pulper` VALUES (452, 27, 675.0, 67);
INSERT INTO `cargas_pulper` VALUES (453, 29, 160.0, 67);
INSERT INTO `cargas_pulper` VALUES (454, 27, 670.0, 67);
INSERT INTO `cargas_pulper` VALUES (455, 29, 160.0, 67);
INSERT INTO `cargas_pulper` VALUES (456, 27, 767.0, 67);
INSERT INTO `cargas_pulper` VALUES (457, 27, 657.0, 67);
INSERT INTO `cargas_pulper` VALUES (458, 29, 150.0, 67);
INSERT INTO `cargas_pulper` VALUES (459, 29, 150.0, 67);
INSERT INTO `cargas_pulper` VALUES (460, 27, 759.0, 67);
INSERT INTO `cargas_pulper` VALUES (461, 29, 180.0, 67);
INSERT INTO `cargas_pulper` VALUES (462, 27, 627.0, 67);
INSERT INTO `cargas_pulper` VALUES (463, 29, 155.0, 67);
INSERT INTO `cargas_pulper` VALUES (464, 27, 594.5, 67);
INSERT INTO `cargas_pulper` VALUES (465, 29, 160.0, 67);
INSERT INTO `cargas_pulper` VALUES (466, 30, 50.0, 67);
INSERT INTO `cargas_pulper` VALUES (467, 33, 200.0, 67);
INSERT INTO `cargas_pulper` VALUES (468, 33, 200.0, 67);
INSERT INTO `cargas_pulper` VALUES (469, 30, 50.0, 67);
INSERT INTO `cargas_pulper` VALUES (470, 27, 630.0, 71);
INSERT INTO `cargas_pulper` VALUES (471, 27, 678.0, 71);
INSERT INTO `cargas_pulper` VALUES (472, 27, 643.0, 71);
INSERT INTO `cargas_pulper` VALUES (473, 27, 669.0, 71);
INSERT INTO `cargas_pulper` VALUES (474, 27, 700.0, 71);
INSERT INTO `cargas_pulper` VALUES (475, 27, 640.0, 71);
INSERT INTO `cargas_pulper` VALUES (476, 27, 725.0, 71);
INSERT INTO `cargas_pulper` VALUES (477, 29, 160.0, 71);
INSERT INTO `cargas_pulper` VALUES (478, 29, 160.0, 71);
INSERT INTO `cargas_pulper` VALUES (479, 29, 160.0, 71);
INSERT INTO `cargas_pulper` VALUES (480, 29, 160.0, 71);
INSERT INTO `cargas_pulper` VALUES (481, 29, 160.0, 71);
INSERT INTO `cargas_pulper` VALUES (482, 29, 160.0, 71);
INSERT INTO `cargas_pulper` VALUES (483, 29, 160.0, 71);
INSERT INTO `cargas_pulper` VALUES (484, 29, 160.0, 71);
INSERT INTO `cargas_pulper` VALUES (485, 30, 5.0, 71);
INSERT INTO `cargas_pulper` VALUES (486, 30, 5.0, 71);
INSERT INTO `cargas_pulper` VALUES (487, 30, 5.0, 71);
INSERT INTO `cargas_pulper` VALUES (488, 30, 5.0, 71);
INSERT INTO `cargas_pulper` VALUES (489, 30, 5.0, 71);
INSERT INTO `cargas_pulper` VALUES (490, 30, 5.0, 71);
INSERT INTO `cargas_pulper` VALUES (491, 30, 5.0, 71);
INSERT INTO `cargas_pulper` VALUES (492, 30, 5.0, 71);
INSERT INTO `cargas_pulper` VALUES (493, 33, 10.0, 71);
INSERT INTO `cargas_pulper` VALUES (494, 33, 10.0, 71);
INSERT INTO `cargas_pulper` VALUES (495, 33, 10.0, 71);
INSERT INTO `cargas_pulper` VALUES (496, 33, 10.0, 71);
INSERT INTO `cargas_pulper` VALUES (497, 33, 10.0, 71);
INSERT INTO `cargas_pulper` VALUES (498, 33, 10.0, 71);
INSERT INTO `cargas_pulper` VALUES (499, 33, 10.0, 71);
INSERT INTO `cargas_pulper` VALUES (500, 33, 10.0, 71);
INSERT INTO `cargas_pulper` VALUES (501, 27, 674.0, 71);
INSERT INTO `cargas_pulper` VALUES (502, 27, 546.0, 74);
INSERT INTO `cargas_pulper` VALUES (503, 27, 625.0, 74);
INSERT INTO `cargas_pulper` VALUES (504, 27, 648.0, 74);
INSERT INTO `cargas_pulper` VALUES (505, 27, 633.0, 74);
INSERT INTO `cargas_pulper` VALUES (506, 27, 671.0, 74);
INSERT INTO `cargas_pulper` VALUES (507, 29, 160.0, 74);
INSERT INTO `cargas_pulper` VALUES (508, 29, 160.0, 74);
INSERT INTO `cargas_pulper` VALUES (509, 29, 160.0, 74);
INSERT INTO `cargas_pulper` VALUES (510, 29, 160.0, 74);
INSERT INTO `cargas_pulper` VALUES (511, 29, 160.0, 74);
INSERT INTO `cargas_pulper` VALUES (512, 30, 5.0, 74);
INSERT INTO `cargas_pulper` VALUES (513, 30, 5.0, 74);
INSERT INTO `cargas_pulper` VALUES (514, 30, 5.0, 74);
INSERT INTO `cargas_pulper` VALUES (515, 30, 5.0, 74);
INSERT INTO `cargas_pulper` VALUES (516, 30, 5.0, 74);
INSERT INTO `cargas_pulper` VALUES (517, 33, 10.0, 74);
INSERT INTO `cargas_pulper` VALUES (518, 33, 10.0, 74);
INSERT INTO `cargas_pulper` VALUES (519, 33, 10.0, 74);
INSERT INTO `cargas_pulper` VALUES (520, 33, 10.0, 74);
INSERT INTO `cargas_pulper` VALUES (521, 33, 10.0, 74);
INSERT INTO `cargas_pulper` VALUES (522, 27, 746.0, 74);
INSERT INTO `cargas_pulper` VALUES (523, 29, 160.0, 74);
INSERT INTO `cargas_pulper` VALUES (524, 30, 5.0, 74);
INSERT INTO `cargas_pulper` VALUES (525, 33, 10.0, 74);
INSERT INTO `cargas_pulper` VALUES (526, 27, 754.0, 74);
INSERT INTO `cargas_pulper` VALUES (527, 29, 160.0, 74);
INSERT INTO `cargas_pulper` VALUES (528, 30, 5.0, 74);
INSERT INTO `cargas_pulper` VALUES (529, 33, 10.0, 74);
INSERT INTO `cargas_pulper` VALUES (530, 27, 705.0, 88);
INSERT INTO `cargas_pulper` VALUES (531, 27, 540.0, 88);
INSERT INTO `cargas_pulper` VALUES (532, 27, 685.0, 88);
INSERT INTO `cargas_pulper` VALUES (533, 27, 675.0, 88);
INSERT INTO `cargas_pulper` VALUES (534, 27, 662.0, 88);
INSERT INTO `cargas_pulper` VALUES (535, 29, 160.0, 88);
INSERT INTO `cargas_pulper` VALUES (536, 29, 160.0, 88);
INSERT INTO `cargas_pulper` VALUES (537, 29, 160.0, 88);
INSERT INTO `cargas_pulper` VALUES (538, 29, 160.0, 88);
INSERT INTO `cargas_pulper` VALUES (539, 29, 160.0, 88);
INSERT INTO `cargas_pulper` VALUES (540, 30, 5.0, 88);
INSERT INTO `cargas_pulper` VALUES (541, 30, 5.0, 88);
INSERT INTO `cargas_pulper` VALUES (542, 30, 5.0, 88);
INSERT INTO `cargas_pulper` VALUES (543, 30, 5.0, 88);
INSERT INTO `cargas_pulper` VALUES (544, 30, 5.0, 88);
INSERT INTO `cargas_pulper` VALUES (545, 27, 645.0, 88);
INSERT INTO `cargas_pulper` VALUES (546, 29, 160.0, 88);
INSERT INTO `cargas_pulper` VALUES (547, 30, 5.0, 88);
INSERT INTO `cargas_pulper` VALUES (548, 27, 717.0, 88);
INSERT INTO `cargas_pulper` VALUES (549, 29, 160.0, 88);
INSERT INTO `cargas_pulper` VALUES (550, 30, 5.0, 88);
INSERT INTO `cargas_pulper` VALUES (551, 27, 0.0, 93);
INSERT INTO `cargas_pulper` VALUES (552, 27, 0.0, 93);

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria`  (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`IdCategoria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES (1, 'RPTD CARGAS PULPER');
INSERT INTO `categoria` VALUES (2, 'RPTD INSUMOS');
INSERT INTO `categoria` VALUES (3, 'LDP MATERIA PRIMA');
INSERT INTO `categoria` VALUES (4, 'RPTD  PASTA');

-- ----------------------------
-- Table structure for consumoelectrico
-- ----------------------------
DROP TABLE IF EXISTS `consumoelectrico`;
CREATE TABLE `consumoelectrico`  (
  `idConsumoElec` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `horaInicio` time(0) NOT NULL,
  `horaFinal` time(0) NOT NULL,
  `consumoInicial` decimal(10, 2) NOT NULL,
  `consumoFinal` decimal(10, 2) NOT NULL,
  `consecutivo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idConsumoElec`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of consumoelectrico
-- ----------------------------
INSERT INTO `consumoelectrico` VALUES (1, '2017-07-28', '2017-07-28', '06:00:00', '06:00:00', 7934.00, 7900.00, '1-5657');
INSERT INTO `consumoelectrico` VALUES (2, '2017-08-29', '2017-08-30', '06:00:00', '06:00:00', 8436.00, 8449.00, '1-1708');
INSERT INTO `consumoelectrico` VALUES (3, '2017-09-18', '2017-09-18', '06:00:00', '06:00:00', 4500.00, 1500.00, '1-4545');
INSERT INTO `consumoelectrico` VALUES (4, '2017-11-10', '2017-11-11', '06:00:00', '06:00:00', 9343.00, 9356.00, '1-1893');

-- ----------------------------
-- Table structure for control_piso
-- ----------------------------
DROP TABLE IF EXISTS `control_piso`;
CREATE TABLE `control_piso`  (
  `idControlPiso` int(11) NOT NULL AUTO_INCREMENT,
  `noOrden` int(11) NOT NULL,
  `consecutivo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinalizacion` date NOT NULL,
  `fechaCreacion` date NOT NULL,
  `producto` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `grupo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `maquina` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `horaInicio` time(0) NULL DEFAULT NULL,
  `horaFinal` time(0) NOT NULL,
  `rptPasta` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idControlPiso`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of control_piso
-- ----------------------------
INSERT INTO `control_piso` VALUES (1, 5657, '1-5657', '2017-07-28', '2017-07-29', '2017-08-02', 'higienico', 'grupo 1- grupo 3', '1-2', '06:00:00', '06:00:00', b'1');
INSERT INTO `control_piso` VALUES (2, 1708, '1-1708', '2017-08-28', '2017-08-28', '2017-08-30', 'higienico', '1-2-3', '1-2', '06:00:00', '14:00:00', b'1');
INSERT INTO `control_piso` VALUES (4, 1725, '1-1725', '2017-09-11', '2017-09-12', '2017-09-20', 'higienico', '1-2-3', '1-2', '06:00:00', '06:00:00', b'0');
INSERT INTO `control_piso` VALUES (5, 4545, '1-4545', '2017-09-18', '2017-09-18', '2017-09-22', 'higienico', '1-2-3', '1-2', '06:00:00', '14:00:00', b'1');
INSERT INTO `control_piso` VALUES (6, 1893, '1-1893', '2017-11-10', '2017-11-11', '2017-11-17', 'higiénico', '1;2;', '1-2', '06:00:00', '06:00:00', b'1');

-- ----------------------------
-- Table structure for control_piso_detalle
-- ----------------------------
DROP TABLE IF EXISTS `control_piso_detalle`;
CREATE TABLE `control_piso_detalle`  (
  `idDetalle` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `codigo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripcion` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `unidadMedida` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `requisado` decimal(11, 2) NOT NULL,
  `piso` decimal(11, 2) NOT NULL,
  `consumo` decimal(11, 2) NOT NULL,
  `idControlPiso` int(11) NOT NULL,
  `IdInsumo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idDetalle`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of control_piso_detalle
-- ----------------------------
INSERT INTO `control_piso_detalle` VALUES (1, 'quimico', '45', 'Peroxido', 'kg', 55.00, 5.00, 50.00, 1, 14);
INSERT INTO `control_piso_detalle` VALUES (2, 'QUIMICO', '55', 'policloruro de aluminio (PAC)', 'KG', 55.00, 5.00, 50.00, 1, 16);
INSERT INTO `control_piso_detalle` VALUES (3, 'Fibra', '788', 'Mezclado de primera', 'kg', 888.00, 8.00, 880.00, 1, 21);
INSERT INTO `control_piso_detalle` VALUES (4, 'Fibra', '0', 'Blanco impreso', 'kg', 89067.23, 80420.30, 8646.93, 2, 27);
INSERT INTO `control_piso_detalle` VALUES (5, 'Fibra', '55', 'MEZCLADO (COLOR)', 'kg', 788.00, 88.00, 455.00, 2, 28);
INSERT INTO `control_piso_detalle` VALUES (6, 'quimico', '0', 'Peroxido', 'kg', 175.00, 125.00, 50.00, 2, 30);
INSERT INTO `control_piso_detalle` VALUES (7, 'Fibra', '0', 'Blanco impreso', 'kg', 89067.23, 80420.30, 8646.93, 3, 27);
INSERT INTO `control_piso_detalle` VALUES (8, 'Fibra', '55', 'MEZCLADO (COLOR)', 'kg', 455.00, 55.00, 450.00, 3, 28);
INSERT INTO `control_piso_detalle` VALUES (9, 'Fibra', '0', 'Blanco impreso', 'kg', 89067.23, 80420.30, 8646.93, 4, 27);
INSERT INTO `control_piso_detalle` VALUES (10, 'Fibra', '0', 'Blanco impreso', 'kg', 89067.23, 80420.30, 8646.93, 5, 27);
INSERT INTO `control_piso_detalle` VALUES (11, 'Fibra', '0', 'Blanco impreso', 'kg', 89067.23, 80420.30, 8646.93, 6, 27);
INSERT INTO `control_piso_detalle` VALUES (12, 'Fibra', '0', 'Merma', 'kg', 2268.00, 450.00, 1818.00, 6, 29);
INSERT INTO `control_piso_detalle` VALUES (13, 'QUIMICO', '0', 'oxido de polietileno(PEO)', 'KG', 563.00, 563.00, 0.00, 6, 31);
INSERT INTO `control_piso_detalle` VALUES (14, 'quimico', '0', 'Peroxido', 'kg', 175.00, 125.00, 50.00, 6, 30);
INSERT INTO `control_piso_detalle` VALUES (15, 'quimico', '0', 'Policrialamida(PAM)', 'kg', 544.00, 489.00, 55.00, 6, 34);
INSERT INTO `control_piso_detalle` VALUES (16, 'Quimico', '0', 'Policloruro de Aluminio(PAC)', 'KG', 550.00, 400.00, 150.00, 6, 66);
INSERT INTO `control_piso_detalle` VALUES (17, 'quimico', '0', 'CMC', 'kg', 535.00, 535.00, 0.00, 6, 60);

-- ----------------------------
-- Table structure for detalle_planes
-- ----------------------------
DROP TABLE IF EXISTS `detalle_planes`;
CREATE TABLE `detalle_planes`  (
  `IdDetallePlan` int(11) NOT NULL AUTO_INCREMENT,
  `IdPlan` int(11) NOT NULL,
  `Categoria` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IdInsumo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`IdDetallePlan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detalle_planes
-- ----------------------------
INSERT INTO `detalle_planes` VALUES (1, 10, '2', 14);
INSERT INTO `detalle_planes` VALUES (2, 10, '2', 16);
INSERT INTO `detalle_planes` VALUES (3, 10, '2', 17);
INSERT INTO `detalle_planes` VALUES (4, 10, '2', 19);
INSERT INTO `detalle_planes` VALUES (5, 10, '1', 27);
INSERT INTO `detalle_planes` VALUES (6, 10, '4', 1);
INSERT INTO `detalle_planes` VALUES (7, 10, '4', 2);
INSERT INTO `detalle_planes` VALUES (8, 10, '4', 3);
INSERT INTO `detalle_planes` VALUES (9, 10, '1', 28);
INSERT INTO `detalle_planes` VALUES (10, 10, '1', 29);
INSERT INTO `detalle_planes` VALUES (11, 10, '1', 30);
INSERT INTO `detalle_planes` VALUES (12, 11, '2', 31);
INSERT INTO `detalle_planes` VALUES (13, 11, '2', 32);
INSERT INTO `detalle_planes` VALUES (14, 11, '2', 34);
INSERT INTO `detalle_planes` VALUES (15, 11, '2', 35);
INSERT INTO `detalle_planes` VALUES (16, 11, '2', 36);
INSERT INTO `detalle_planes` VALUES (17, 11, '2', 39);
INSERT INTO `detalle_planes` VALUES (18, 11, '2', 49);
INSERT INTO `detalle_planes` VALUES (19, 11, '2', 54);
INSERT INTO `detalle_planes` VALUES (20, 11, '2', 55);
INSERT INTO `detalle_planes` VALUES (21, 11, '2', 56);
INSERT INTO `detalle_planes` VALUES (22, 11, '2', 57);
INSERT INTO `detalle_planes` VALUES (23, 11, '2', 58);
INSERT INTO `detalle_planes` VALUES (24, 11, '2', 59);
INSERT INTO `detalle_planes` VALUES (25, 11, '2', 60);
INSERT INTO `detalle_planes` VALUES (26, 11, '2', 61);
INSERT INTO `detalle_planes` VALUES (27, 11, '2', 62);
INSERT INTO `detalle_planes` VALUES (28, 11, '1', 27);
INSERT INTO `detalle_planes` VALUES (29, 11, '1', 28);
INSERT INTO `detalle_planes` VALUES (30, 11, '1', 29);
INSERT INTO `detalle_planes` VALUES (31, 11, '1', 30);
INSERT INTO `detalle_planes` VALUES (32, 11, '1', 33);
INSERT INTO `detalle_planes` VALUES (33, 11, '4', 1);
INSERT INTO `detalle_planes` VALUES (34, 11, '4', 2);
INSERT INTO `detalle_planes` VALUES (35, 11, '4', 3);
INSERT INTO `detalle_planes` VALUES (36, 11, '4', 4);
INSERT INTO `detalle_planes` VALUES (37, 11, '4', 5);
INSERT INTO `detalle_planes` VALUES (38, 11, '4', 6);
INSERT INTO `detalle_planes` VALUES (39, 11, '2', 63);
INSERT INTO `detalle_planes` VALUES (40, 11, '2', 66);

-- ----------------------------
-- Table structure for horas_molienda
-- ----------------------------
DROP TABLE IF EXISTS `horas_molienda`;
CREATE TABLE `horas_molienda`  (
  `IdHora` int(11) NOT NULL AUTO_INCREMENT,
  `carga` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `horaInicio` time(0) NOT NULL,
  `horaFin` time(0) NOT NULL,
  `IdReporteDiario` int(11) NOT NULL,
  PRIMARY KEY (`IdHora`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of horas_molienda
-- ----------------------------
INSERT INTO `horas_molienda` VALUES (1, 'BATIDO', '06:10:00', '07:30:00', 2);
INSERT INTO `horas_molienda` VALUES (2, 'BATIDO', '07:40:00', '08:05:00', 2);
INSERT INTO `horas_molienda` VALUES (3, 'BATIDO', '19:00:00', '19:30:00', 4);
INSERT INTO `horas_molienda` VALUES (4, 'BATIDO', '07:00:00', '07:50:00', 8);
INSERT INTO `horas_molienda` VALUES (5, 'BATIDO', '07:00:00', '08:00:00', 9);
INSERT INTO `horas_molienda` VALUES (6, 'BATIDO', '08:20:00', '09:10:00', 9);
INSERT INTO `horas_molienda` VALUES (7, 'BATIDO', '09:30:00', '10:30:00', 9);
INSERT INTO `horas_molienda` VALUES (8, 'BATIDO', '11:30:00', '00:00:00', 9);
INSERT INTO `horas_molienda` VALUES (9, 'BATIDO', '12:10:00', '12:40:00', 9);
INSERT INTO `horas_molienda` VALUES (10, 'BATIDO', '13:30:00', '14:00:00', 9);
INSERT INTO `horas_molienda` VALUES (11, 'BATIDO', '08:00:00', '09:00:00', 14);
INSERT INTO `horas_molienda` VALUES (12, 'BATIDO', '09:00:00', '10:00:00', 14);
INSERT INTO `horas_molienda` VALUES (13, 'BATIDO', '10:30:00', '11:30:00', 14);
INSERT INTO `horas_molienda` VALUES (14, 'BATIDO', '13:00:00', '14:00:00', 14);
INSERT INTO `horas_molienda` VALUES (15, 'BATIDO', '08:00:00', '09:00:00', 17);
INSERT INTO `horas_molienda` VALUES (16, 'BATIDO', '10:00:00', '11:00:00', 17);
INSERT INTO `horas_molienda` VALUES (17, 'BATIDO', '11:30:00', '12:30:00', 17);
INSERT INTO `horas_molienda` VALUES (18, 'BATIDO', '13:00:00', '14:00:00', 17);
INSERT INTO `horas_molienda` VALUES (19, 'BATIDO', '08:00:00', '09:00:00', 20);
INSERT INTO `horas_molienda` VALUES (20, 'BATIDO', '10:00:00', '11:00:00', 20);
INSERT INTO `horas_molienda` VALUES (21, 'BATIDO', '21:10:00', '21:40:00', 21);
INSERT INTO `horas_molienda` VALUES (22, 'BATIDO', '06:30:00', '07:00:00', 23);
INSERT INTO `horas_molienda` VALUES (23, 'BATIDO', '08:00:00', '08:30:00', 23);
INSERT INTO `horas_molienda` VALUES (24, 'BATIDO', '09:00:00', '09:30:00', 23);
INSERT INTO `horas_molienda` VALUES (25, 'BATIDO', '10:00:00', '10:30:00', 23);
INSERT INTO `horas_molienda` VALUES (26, 'BATIDO', '11:00:00', '11:30:00', 23);
INSERT INTO `horas_molienda` VALUES (27, 'BATIDO', '00:00:00', '12:30:00', 23);
INSERT INTO `horas_molienda` VALUES (28, 'BATIDO', '12:30:00', '13:00:00', 23);
INSERT INTO `horas_molienda` VALUES (29, 'BATIDO', '13:30:00', '14:00:00', 23);
INSERT INTO `horas_molienda` VALUES (30, 'BATIDO', '15:00:00', '15:30:00', 24);
INSERT INTO `horas_molienda` VALUES (31, 'BATIDO', '16:00:00', '16:30:00', 24);
INSERT INTO `horas_molienda` VALUES (32, 'BATIDO', '17:30:00', '18:00:00', 24);
INSERT INTO `horas_molienda` VALUES (33, 'BATIDO', '19:00:00', '19:30:00', 24);
INSERT INTO `horas_molienda` VALUES (34, 'BATIDO', '20:00:00', '20:30:00', 24);
INSERT INTO `horas_molienda` VALUES (35, 'BATIDO', '20:30:00', '21:00:00', 24);
INSERT INTO `horas_molienda` VALUES (36, 'BATIDO', '21:00:00', '21:30:00', 24);
INSERT INTO `horas_molienda` VALUES (37, 'BATIDO', '18:00:00', '18:30:00', 27);
INSERT INTO `horas_molienda` VALUES (38, 'BATIDO', '18:30:00', '19:00:00', 27);
INSERT INTO `horas_molienda` VALUES (39, 'BATIDO', '19:00:00', '19:30:00', 27);
INSERT INTO `horas_molienda` VALUES (40, 'BATIDO', '19:40:00', '20:10:00', 27);
INSERT INTO `horas_molienda` VALUES (41, 'BATIDO', '20:10:00', '20:40:00', 27);
INSERT INTO `horas_molienda` VALUES (42, 'BATIDO', '20:40:00', '21:10:00', 27);
INSERT INTO `horas_molienda` VALUES (43, 'BATIDO', '09:00:00', '09:30:00', 26);
INSERT INTO `horas_molienda` VALUES (44, 'BATIDO', '09:30:00', '10:00:00', 26);
INSERT INTO `horas_molienda` VALUES (45, 'BATIDO', '10:30:00', '11:00:00', 26);
INSERT INTO `horas_molienda` VALUES (46, 'BATIDO', '11:00:00', '11:30:00', 26);
INSERT INTO `horas_molienda` VALUES (47, 'BATIDO', '11:30:00', '12:30:00', 26);
INSERT INTO `horas_molienda` VALUES (48, 'BATIDO', '12:30:00', '13:00:00', 26);
INSERT INTO `horas_molienda` VALUES (49, 'BATIDO', '13:30:00', '14:00:00', 26);
INSERT INTO `horas_molienda` VALUES (50, 'BATIDO', '13:30:00', '14:00:00', 26);
INSERT INTO `horas_molienda` VALUES (51, 'BATIDO', '06:00:00', '06:30:00', 32);
INSERT INTO `horas_molienda` VALUES (52, 'BATIDO', '07:00:00', '07:30:00', 32);
INSERT INTO `horas_molienda` VALUES (53, 'BATIDO', '08:00:00', '08:30:00', 32);
INSERT INTO `horas_molienda` VALUES (54, 'BATIDO', '09:00:00', '09:30:00', 32);
INSERT INTO `horas_molienda` VALUES (55, 'BATIDO', '10:00:00', '10:30:00', 32);
INSERT INTO `horas_molienda` VALUES (56, 'BATIDO', '13:00:00', '13:30:00', 32);
INSERT INTO `horas_molienda` VALUES (57, 'BATIDO', '15:40:00', '16:40:00', 33);
INSERT INTO `horas_molienda` VALUES (58, 'BATIDO', '16:45:00', '17:45:00', 33);
INSERT INTO `horas_molienda` VALUES (59, 'BATIDO', '17:50:00', '18:30:00', 33);
INSERT INTO `horas_molienda` VALUES (60, 'BATIDO', '18:45:00', '19:15:00', 33);
INSERT INTO `horas_molienda` VALUES (61, 'BATIDO', '19:20:00', '20:20:00', 33);
INSERT INTO `horas_molienda` VALUES (62, 'BATIDO', '20:45:00', '21:19:00', 33);
INSERT INTO `horas_molienda` VALUES (63, 'BATIDO', '20:45:00', '21:20:00', 33);
INSERT INTO `horas_molienda` VALUES (64, 'BATIDO', '21:25:00', '22:00:00', 33);
INSERT INTO `horas_molienda` VALUES (65, 'BATIDO', '11:00:00', '11:30:00', 35);
INSERT INTO `horas_molienda` VALUES (66, 'BATIDO', '11:30:00', '12:30:00', 35);
INSERT INTO `horas_molienda` VALUES (67, 'BATIDO', '13:00:00', '13:30:00', 35);
INSERT INTO `horas_molienda` VALUES (68, 'BATIDO', '13:30:00', '14:00:00', 35);
INSERT INTO `horas_molienda` VALUES (69, 'BATIDO', '14:30:00', '14:50:00', 36);
INSERT INTO `horas_molienda` VALUES (70, 'BATIDO', '15:00:00', '15:20:00', 36);
INSERT INTO `horas_molienda` VALUES (71, 'BATIDO', '15:30:00', '16:20:00', 36);
INSERT INTO `horas_molienda` VALUES (72, 'BATIDO', '16:30:00', '17:10:00', 36);
INSERT INTO `horas_molienda` VALUES (73, 'BATIDO', '17:30:00', '18:30:00', 36);
INSERT INTO `horas_molienda` VALUES (74, 'BATIDO', '19:00:00', '19:50:00', 36);
INSERT INTO `horas_molienda` VALUES (75, 'BATIDO', '20:15:00', '20:30:00', 36);
INSERT INTO `horas_molienda` VALUES (76, 'BATIDO', '21:00:00', '22:00:00', 36);
INSERT INTO `horas_molienda` VALUES (77, 'BATIDO', '06:00:00', '06:30:00', 38);
INSERT INTO `horas_molienda` VALUES (78, 'BATIDO', '07:00:00', '07:30:00', 38);
INSERT INTO `horas_molienda` VALUES (79, 'BATIDO', '08:00:00', '08:30:00', 38);
INSERT INTO `horas_molienda` VALUES (80, 'BATIDO', '12:00:00', '12:30:00', 38);
INSERT INTO `horas_molienda` VALUES (81, 'BATIDO', '09:00:00', '09:30:00', 38);
INSERT INTO `horas_molienda` VALUES (82, 'BATIDO', '13:00:00', '13:30:00', 38);
INSERT INTO `horas_molienda` VALUES (83, 'BATIDO', '13:30:00', '14:00:00', 38);
INSERT INTO `horas_molienda` VALUES (84, 'BATIDO', '14:20:00', '15:00:00', 39);
INSERT INTO `horas_molienda` VALUES (85, 'BATIDO', '15:30:00', '16:10:00', 39);
INSERT INTO `horas_molienda` VALUES (86, 'BATIDO', '16:30:00', '17:10:00', 39);
INSERT INTO `horas_molienda` VALUES (87, 'BATIDO', '17:40:00', '18:30:00', 39);
INSERT INTO `horas_molienda` VALUES (88, 'BATIDO', '18:40:00', '19:40:00', 39);
INSERT INTO `horas_molienda` VALUES (89, 'BATIDO', '20:30:00', '22:00:00', 39);
INSERT INTO `horas_molienda` VALUES (90, 'BATIDO', '07:00:00', '07:30:00', 41);
INSERT INTO `horas_molienda` VALUES (91, 'BATIDO', '06:00:00', '06:30:00', 41);
INSERT INTO `horas_molienda` VALUES (92, 'BATIDO', '23:00:00', '12:00:00', 49);
INSERT INTO `horas_molienda` VALUES (93, 'BATIDO', '12:10:00', '01:10:00', 49);
INSERT INTO `horas_molienda` VALUES (94, 'BATIDO', '01:30:00', '02:10:00', 49);
INSERT INTO `horas_molienda` VALUES (95, 'BATIDO', '02:40:00', '03:40:00', 49);
INSERT INTO `horas_molienda` VALUES (96, 'BATIDO', '04:00:00', '05:00:00', 49);
INSERT INTO `horas_molienda` VALUES (97, 'BATIDO', '05:10:00', '06:00:00', 49);
INSERT INTO `horas_molienda` VALUES (98, 'BATIDO', '07:00:00', '08:00:00', 55);
INSERT INTO `horas_molienda` VALUES (99, 'BATIDO', '20:10:00', '20:40:00', 55);
INSERT INTO `horas_molienda` VALUES (100, 'BATIDO', '20:50:00', '21:40:00', 55);
INSERT INTO `horas_molienda` VALUES (101, 'BATIDO', '14:00:00', '14:30:00', 62);
INSERT INTO `horas_molienda` VALUES (102, 'BATIDO', '15:00:00', '15:30:00', 62);
INSERT INTO `horas_molienda` VALUES (103, 'BATIDO', '16:00:00', '16:30:00', 62);
INSERT INTO `horas_molienda` VALUES (104, 'BATIDO', '17:00:00', '17:30:00', 62);
INSERT INTO `horas_molienda` VALUES (105, 'BATIDO', '18:00:00', '18:30:00', 62);
INSERT INTO `horas_molienda` VALUES (106, 'BATIDO', '19:00:00', '19:30:00', 62);
INSERT INTO `horas_molienda` VALUES (107, 'BATIDO', '20:30:00', '21:00:00', 62);
INSERT INTO `horas_molienda` VALUES (108, 'BATIDO', '06:00:00', '06:30:00', 66);
INSERT INTO `horas_molienda` VALUES (109, 'BATIDO', '09:30:00', '10:00:00', 66);
INSERT INTO `horas_molienda` VALUES (110, 'BATIDO', '10:30:00', '11:00:00', 66);
INSERT INTO `horas_molienda` VALUES (111, 'BATIDO', '11:30:00', '12:00:00', 66);
INSERT INTO `horas_molienda` VALUES (112, 'BATIDO', '12:30:00', '13:30:00', 67);
INSERT INTO `horas_molienda` VALUES (113, 'BATIDO', '13:30:00', '14:30:00', 67);
INSERT INTO `horas_molienda` VALUES (114, 'BATIDO', '14:40:00', '15:40:00', 67);
INSERT INTO `horas_molienda` VALUES (115, 'BATIDO', '15:45:00', '16:00:00', 67);
INSERT INTO `horas_molienda` VALUES (116, 'BATIDO', '16:15:00', '17:15:00', 67);
INSERT INTO `horas_molienda` VALUES (117, 'BATIDO', '17:20:00', '18:20:00', 67);
INSERT INTO `horas_molienda` VALUES (118, 'BATIDO', '18:40:00', '19:20:00', 67);
INSERT INTO `horas_molienda` VALUES (119, 'BATIDO', '19:30:00', '20:10:00', 67);
INSERT INTO `horas_molienda` VALUES (120, 'BATIDO', '20:30:00', '21:00:00', 67);
INSERT INTO `horas_molienda` VALUES (121, 'BATIDO', '21:10:00', '22:00:00', 67);
INSERT INTO `horas_molienda` VALUES (122, 'BATIDO', '22:00:00', '22:30:00', 71);
INSERT INTO `horas_molienda` VALUES (123, 'BATIDO', '23:00:00', '23:30:00', 71);
INSERT INTO `horas_molienda` VALUES (124, 'BATIDO', '12:00:00', '12:30:00', 71);
INSERT INTO `horas_molienda` VALUES (125, 'BATIDO', '01:00:00', '01:30:00', 71);
INSERT INTO `horas_molienda` VALUES (126, 'BATIDO', '02:00:00', '02:30:00', 71);
INSERT INTO `horas_molienda` VALUES (127, 'BATIDO', '03:00:00', '03:30:00', 71);
INSERT INTO `horas_molienda` VALUES (128, 'BATIDO', '04:00:00', '04:30:00', 71);
INSERT INTO `horas_molienda` VALUES (129, 'BATIDO', '22:00:00', '22:30:00', 74);
INSERT INTO `horas_molienda` VALUES (130, 'BATIDO', '23:00:00', '23:30:00', 74);
INSERT INTO `horas_molienda` VALUES (131, 'BATIDO', '12:00:00', '12:30:00', 74);
INSERT INTO `horas_molienda` VALUES (132, 'BATIDO', '01:00:00', '01:30:00', 74);
INSERT INTO `horas_molienda` VALUES (133, 'BATIDO', '02:00:00', '02:30:00', 74);
INSERT INTO `horas_molienda` VALUES (134, 'BATIDO', '03:00:00', '03:30:00', 74);
INSERT INTO `horas_molienda` VALUES (135, 'BATIDO', '04:00:00', '04:30:00', 74);
INSERT INTO `horas_molienda` VALUES (136, 'BATIDO', '14:00:00', '14:30:00', 88);
INSERT INTO `horas_molienda` VALUES (137, 'BATIDO', '15:00:00', '15:30:00', 88);
INSERT INTO `horas_molienda` VALUES (138, 'BATIDO', '16:00:00', '16:30:00', 88);
INSERT INTO `horas_molienda` VALUES (139, 'BATIDO', '17:00:00', '17:30:00', 88);
INSERT INTO `horas_molienda` VALUES (140, 'BATIDO', '18:00:00', '18:30:00', 88);
INSERT INTO `horas_molienda` VALUES (141, 'BATIDO', '20:00:00', '20:30:00', 88);

-- ----------------------------
-- Table structure for insumos
-- ----------------------------
DROP TABLE IF EXISTS `insumos`;
CREATE TABLE `insumos`  (
  `IdInsumo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IdCategoria` int(100) NOT NULL,
  `UnidadMedida` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Tipo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdInsumo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of insumos
-- ----------------------------
INSERT INTO `insumos` VALUES (27, 'Blanco impreso', 1, 'kg', 'Fibra');
INSERT INTO `insumos` VALUES (28, 'MEZCLADO (COLOR)', 1, 'kg', 'Fibra');
INSERT INTO `insumos` VALUES (29, 'Merma', 1, 'kg', 'Fibra');
INSERT INTO `insumos` VALUES (30, 'Peroxido', 1, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (31, 'oxido de polietileno(PEO)', 2, 'KG', 'QUIMICO');
INSERT INTO `insumos` VALUES (32, 'Buckman', 2, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (33, 'Soda Caustica', 1, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (34, 'Policrialamida(PAM)', 2, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (36, 'Brd 2369/GSP8', 2, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (39, 'Kymene', 2, 'kg', 'Quimico');
INSERT INTO `insumos` VALUES (49, 'Sal Industrial', 2, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (54, 'WT-BC-12', 2, 'gln', 'Quimico');
INSERT INTO `insumos` VALUES (55, 'WT-BS-12', 2, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (56, 'WT-AS 19/16', 2, 'gln', 'quimico');
INSERT INTO `insumos` VALUES (57, 'WT-2974/BI-14', 2, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (58, 'WT-AD-15', 2, 'gln', 'quimico');
INSERT INTO `insumos` VALUES (60, 'CMC', 2, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (61, 'DETAC', 2, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (62, 'Hercules', 2, 'kg', 'quimico');
INSERT INTO `insumos` VALUES (65, 'Buflock', 2, 'kg', 'Quimico');
INSERT INTO `insumos` VALUES (66, 'Policloruro de Aluminio(PAC)', 2, 'KG', 'Quimico');

-- ----------------------------
-- Table structure for llaves
-- ----------------------------
DROP TABLE IF EXISTS `llaves`;
CREATE TABLE `llaves`  (
  `Concepto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Valor` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of llaves
-- ----------------------------
INSERT INTO `llaves` VALUES ('Metas', 0);
INSERT INTO `llaves` VALUES ('Metas', 1);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `IdUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Accion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Fecha` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA EXITOSO', '2017-07-26 16:08:31');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA EXITOSO', '2017-07-26 16:15:44');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA EXITOSO', '2017-07-26 16:27:37');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA EXITOSO', '2017-07-26 17:58:26');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-27 17:40:33');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 08:57:51');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO BISMARCKESCOBAR CON ROL 1', '2017-07-28 08:59:46');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 09:00:16');
INSERT INTO `log` VALUES ('11', 'INGRESO AL SISTEMA', '2017-07-28 09:00:30');
INSERT INTO `log` VALUES ('11', 'CERRO SESION ', '2017-07-28 09:00:35');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 09:01:15');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO JOSE.JIMENEZ CON ROL 3', '2017-07-28 09:08:09');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 09:08:19');
INSERT INTO `log` VALUES ('12', 'INGRESO AL SISTEMA', '2017-07-28 09:08:30');
INSERT INTO `log` VALUES ('12', 'INSERTO ORDEN DE PRODUCCION NUMERO 7878', '2017-07-28 09:10:46');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 14:15:03');
INSERT INTO `log` VALUES ('8', 'AGREGO MAQUINA YANKEE UNO', '2017-07-28 14:18:17');
INSERT INTO `log` VALUES ('8', 'AGREGO MAQUINA YANKEE DOS', '2017-07-28 14:18:43');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO BLANCO IMPRESO', '2017-07-28 14:21:24');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO MEZCLADO DE PRIMERA', '2017-07-28 14:21:40');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO COLOR', '2017-07-28 14:21:49');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO TETRAPRAQC', '2017-07-28 14:22:16');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO FIBRA VIRGEN', '2017-07-28 14:22:31');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO MERMA CONVERSION', '2017-07-28 14:22:50');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO MERMA PROCESO', '2017-07-28 14:23:01');
INSERT INTO `log` VALUES ('8', 'GUARDO TANQUE #1', '2017-07-28 14:24:20');
INSERT INTO `log` VALUES ('8', 'GUARDO TANQUE #2', '2017-07-28 14:24:33');
INSERT INTO `log` VALUES ('8', 'GUARDO TANQUE #3', '2017-07-28 14:24:43');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 10', '2017-07-28 14:26:53');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 10', '2017-07-28 14:26:53');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 10', '2017-07-28 14:26:53');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 10', '2017-07-28 14:26:53');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO BLANCO%20IMPRESO', '2017-07-28 14:28:23');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO BLANCO IMPRESO', '2017-07-28 14:29:12');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 10', '2017-07-28 14:29:43');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 6688', '2017-07-28 14:34:36');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-6688 DEL TURNO 1', '2017-07-28 14:42:41');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO JOSEHERNANDEZ CON ROL 4', '2017-07-28 14:43:32');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 10', '2017-07-28 14:50:10');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 10', '2017-07-28 14:50:10');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 10', '2017-07-28 14:50:10');
INSERT INTO `log` VALUES ('8', 'CAMBIO EL ESTADO AL REPORTE CON ID 1', '2017-07-28 14:52:41');
INSERT INTO `log` VALUES ('8', 'CAMBIO EL ESTADO AL REPORTE CON ID 1', '2017-07-28 14:52:55');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 1', '2017-07-28 14:55:10');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 1', '2017-07-28 14:55:11');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 14:57:13');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 14:57:57');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 14:58:46');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 14:59:04');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 5656', '2017-07-28 14:59:39');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 9999', '2017-07-28 15:01:58');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 5657', '2017-07-28 15:03:03');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-5657 DEL TURNO 1', '2017-07-28 15:03:33');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-5657 DEL TURNO 2', '2017-07-28 15:04:06');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 15:04:29');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:04:37');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:07:49');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 15:08:11');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO KEVINBLANCO CON ROL 5', '2017-07-28 15:09:19');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 15:09:24');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:09:35');
INSERT INTO `log` VALUES ('13', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 2', '2017-07-28 15:11:22');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 2', '2017-07-28 15:11:22');
INSERT INTO `log` VALUES ('13', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 2', '2017-07-28 15:12:08');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 2', '2017-07-28 15:12:08');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO EL REGISTRO DE LA MERMA DEL RPT CON ID 2 DE LA MAQUINA 1', '2017-07-28 15:13:46');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO EL REGISTRO DE LA MERMA DEL RPT CON ID 2 DE LA MAQUINA 2', '2017-07-28 15:14:52');
INSERT INTO `log` VALUES ('13', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-5657 DEL TURNO 6:00am-6:00pm', '2017-07-28 15:16:00');
INSERT INTO `log` VALUES ('13', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-5657 DEL TURNO 6:00am-6:00pm', '2017-07-28 15:16:30');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-07-28 15:20:23');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:20:49');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 15:21:01');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO MEZCLADO (COLOR)', '2017-07-28 15:21:45');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO MERMA', '2017-07-28 15:21:53');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 15:22:01');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:22:08');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:22:21');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 15:22:31');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 10', '2017-07-28 15:22:44');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 10', '2017-07-28 15:22:44');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 15:22:52');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:22:59');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-07-28 15:23:12');
INSERT INTO `log` VALUES ('13', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 2', '2017-07-28 15:24:05');
INSERT INTO `log` VALUES ('13', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 2', '2017-07-28 15:24:30');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-07-28 15:24:59');
INSERT INTO `log` VALUES ('13', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 1 AL RPT CON ID 2', '2017-07-28 15:32:15');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:39:04');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 15:39:19');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 15:42:02');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:42:09');
INSERT INTO `log` VALUES ('13', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 2', '2017-07-28 15:43:58');
INSERT INTO `log` VALUES ('13', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 2', '2017-07-28 15:46:38');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:47:39');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:47:53');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:48:09');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:48:36');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:48:49');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 15:49:00');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-07-28 15:49:37');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-07-28 15:49:39');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-07-28 15:49:54');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-07-28 15:49:56');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-5657', '2017-07-28 15:58:38');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-5657', '2017-07-28 15:58:39');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 16:01:58');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 16:26:48');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 16:31:17');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 16:31:24');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-31 07:38:17');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-31 07:38:37');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-31 07:39:00');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-31 07:40:58');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-31 07:41:07');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-31 07:42:23');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-31 07:43:30');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-31 07:47:52');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-31 08:22:53');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-31 11:55:15');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 07:46:48');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-08-02 07:47:31');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-08-02 07:47:33');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 07:47:58');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 07:48:00');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 07:51:37');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 08:05:44');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 16:15:36');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 7898', '2017-08-02 16:16:30');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 17:06:27');
INSERT INTO `log` VALUES (NULL, 'CERRO SESION ', '2017-08-02 17:06:31');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:06:50');
INSERT INTO `log` VALUES (NULL, 'CERRO SESION ', '2017-08-02 17:08:03');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:08:20');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 17:08:59');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:09:08');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:17:09');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 17:17:19');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:17:27');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 2', '2017-08-02 17:17:58');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 2', '2017-08-02 17:18:08');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 2', '2017-08-02 17:18:15');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:23:12');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:23:46');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:27:05');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:27:13');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:28:12');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:28:27');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:28:40');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:28:46');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:29:02');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:29:14');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO MEZCLADO%20DE%20PRIMERA', '2017-08-02 17:29:46');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO COLOR', '2017-08-02 17:29:50');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO TETRAPRAQC', '2017-08-02 17:29:53');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO FIBRA%20VIRGEN', '2017-08-02 17:29:56');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO NUEVA', '2017-08-02 17:31:05');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO CUALQUIERA', '2017-08-02 17:31:15');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO CUALQUIERA', '2017-08-02 17:32:51');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO MERMA%20PROCESO', '2017-08-02 17:32:55');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO MERMA%20CONVERSION', '2017-08-02 17:32:58');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 17:33:08');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:33:17');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:33:29');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:33:37');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 10', '2017-08-02 17:34:25');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 17:34:36');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:34:44');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-02 17:34:53');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-02 17:35:06');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-02 17:35:08');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-02 17:35:10');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-02 17:35:15');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:36:06');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:36:17');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-5657', '2017-08-02 17:52:50');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-02 17:53:20');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 17:53:55');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-08-02 17:54:03');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 17:54:15');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:05:36');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:05:46');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:06:33');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:07:29');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:07:47');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:08:05');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:08:41');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:08:58');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:09:15');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:09:45');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 08:31:34');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO NUEVA', '2017-08-03 08:31:57');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-03 08:32:26');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-03 08:33:06');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-03 08:33:55');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-03 08:34:37');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 08:34:46');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-08-03 08:35:13');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-03 08:35:42');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 08:36:20');
INSERT INTO `log` VALUES ('8', 'ELIMINO EL REPORTE DIARIO NO. 1-5657 DEL TURNO 6:00pm-6:00am', '2017-08-03 08:36:29');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-5657 DEL TURNO 2', '2017-08-03 08:36:58');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-03 08:37:45');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-03 08:37:51');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:01');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:03');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:05');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:07');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:09');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:14');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:16');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:18');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:19');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:42');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 4', '2017-08-03 08:38:52');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 11:30:06');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-03 11:30:23');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-03 11:30:32');
INSERT INTO `log` VALUES ('13', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 4', '2017-08-03 11:31:23');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 11:32:25');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-03 11:32:46');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-03 11:33:02');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-03 11:35:04');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 2', '2017-08-03 11:35:41');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-03 11:35:46');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 11:35:57');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 11:36:09');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 4', '2017-08-03 11:36:16');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-03 11:36:51');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-03 11:37:02');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-03 11:57:07');
INSERT INTO `log` VALUES ('13', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 2', '2017-08-03 12:01:46');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 2', '2017-08-03 12:01:46');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO EL REGISTRO DE LA MERMA DEL RPT CON ID 2 DE LA MAQUINA 1', '2017-08-03 12:02:05');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-03 12:02:13');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 12:02:48');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 12:02:56');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-03 12:16:58');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-03 12:17:04');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 12:24:18');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-03 12:24:45');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 12:24:53');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-03 12:25:10');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 12:25:18');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 12:26:21');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 12:26:47');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 12:30:44');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 12:32:03');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 13:04:36');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 13:05:35');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 13:19:17');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 13:20:16');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 4', '2017-08-03 13:20:45');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-5657', '2017-08-03 13:37:08');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 13:37:25');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-03 13:37:55');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 13:38:13');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-03 13:38:20');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-03 13:38:30');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:19:02');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:25:54');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:25:56');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:27:52');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-03 14:29:29');
INSERT INTO `log` VALUES ('13', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-5657 DEL TURNO 6:00pm-6:00am', '2017-08-03 14:30:25');
INSERT INTO `log` VALUES ('13', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-5657 DEL TURNO 6:00pm-6:00am', '2017-08-03 14:30:48');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:30:54');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:30:57');
INSERT INTO `log` VALUES ('13', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 4', '2017-08-03 14:36:24');
INSERT INTO `log` VALUES ('13', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-5657 DEL TURNO 6:00pm-6:00am', '2017-08-03 14:36:55');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:37:04');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:37:06');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:37:32');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:44:19');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:44:21');
INSERT INTO `log` VALUES ('13', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 14:52:26');
INSERT INTO `log` VALUES ('13', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-5657 DEL TURNO 6:00am-6:00pm', '2017-08-03 14:55:00');
INSERT INTO `log` VALUES ('13', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-5657 DEL TURNO 6:00am-6:00pm', '2017-08-03 14:55:40');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-03 15:52:07');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-03 15:52:17');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-03 15:53:30');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 4', '2017-08-03 15:53:40');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-03 15:54:13');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-5657', '2017-08-03 15:54:22');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-04 08:14:31');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-04 08:16:19');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 4', '2017-08-04 08:31:06');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-5657', '2017-08-04 08:32:35');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-04 08:33:12');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-04 08:51:07');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-04 08:55:55');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-04 08:55:58');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-04 08:57:45');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-04 08:57:51');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-04 08:58:12');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-04 08:58:18');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-04 08:58:40');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-04 08:58:47');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-04 08:58:58');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-04 08:59:10');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-04 08:59:18');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-04 08:59:46');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-04 09:05:50');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-04 10:38:32');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-04 10:42:23');
INSERT INTO `log` VALUES ('15', 'GUARDO USUARIO WHAYMAN MARTINEZ CON ROL 2', '2017-08-04 10:43:10');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-04 10:43:23');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-08-04 10:44:47');
INSERT INTO `log` VALUES ('16', 'CERRO SESION ', '2017-08-04 10:45:11');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-08-04 12:28:33');
INSERT INTO `log` VALUES ('16', 'CERRO SESION ', '2017-08-04 12:28:51');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-04 15:04:12');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-07 17:24:47');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-07 17:25:38');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-08 08:04:36');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-08 08:05:54');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-08 08:17:44');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-08 08:26:56');
INSERT INTO `log` VALUES ('17', 'INGRESO AL SISTEMA', '2017-08-08 08:27:53');
INSERT INTO `log` VALUES ('17', 'CERRO SESION ', '2017-08-08 08:29:26');
INSERT INTO `log` VALUES ('17', 'INGRESO AL SISTEMA', '2017-08-08 09:01:31');
INSERT INTO `log` VALUES ('17', 'CERRO SESION ', '2017-08-08 09:01:40');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-08 13:59:01');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-08 13:59:46');
INSERT INTO `log` VALUES ('8', 'AGREGO MAQUINA MAQUINA 3', '2017-08-08 14:00:54');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO PEROXIDO', '2017-08-08 14:03:45');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-08 14:06:29');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO OXIDO DE POLIETILENO(PEO)', '2017-08-08 14:09:56');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO BUCKMAN', '2017-08-08 14:10:34');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO SODA CAUSTICA', '2017-08-08 14:10:55');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO POLICRIALAMIDA(PAM)', '2017-08-08 14:11:29');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO ACEITE VEGETAL', '2017-08-08 14:12:30');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO BRD 2369/GSP8', '2017-08-08 14:18:42');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO POLICLORURO DE ALUMINIO(PAC)', '2017-08-08 14:19:10');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO POLICLORURO DE ALUMINIO(PAC)', '2017-08-08 14:31:00');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO KYMENE', '2017-08-08 14:31:44');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO SAL INDUSTRIAL', '2017-08-08 14:32:12');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-BC-12', '2017-08-08 14:32:45');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-BS-12', '2017-08-08 14:33:18');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-AS-19/16', '2017-08-08 14:34:42');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-2974/BI-14', '2017-08-08 14:35:26');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-08 14:35:52');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-AD-15', '2017-08-08 14:35:54');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-08 14:36:02');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO BUFLOCK', '2017-08-08 14:36:18');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO CMC', '2017-08-08 14:36:41');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO DETAC', '2017-08-08 14:37:15');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-08 14:40:47');
INSERT INTO `log` VALUES ('8', 'GUARDO TANQUE #4', '2017-08-08 14:43:24');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO WT-BS-12', '2017-08-08 14:43:59');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO WT-BC-12', '2017-08-08 14:44:08');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO SAL%20INDUSTRIAL', '2017-08-08 14:44:26');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO DETAC', '2017-08-08 14:44:34');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO CMC', '2017-08-08 14:44:39');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO BUFLOCK', '2017-08-08 14:44:44');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO WT-AD-15', '2017-08-08 14:45:33');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO PEROXIDO', '2017-08-08 14:50:51');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO POLICRILAMIDA', '2017-08-08 14:52:57');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO SAL INDUSTRIAL', '2017-08-08 14:55:42');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO KIMENE', '2017-08-08 14:56:22');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-BC-12', '2017-08-08 14:58:57');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-BS-12', '2017-08-08 14:59:57');
INSERT INTO `log` VALUES (NULL, 'CERRO SESION ', '2017-08-08 15:01:55');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-08 15:02:25');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO WT-BS-12', '2017-08-08 15:02:36');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO WT-BC-12', '2017-08-08 15:02:41');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO SDFSD/FDS', '2017-08-08 15:02:56');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO DSDSFDSFSDF', '2017-08-08 15:03:01');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-BC-12', '2017-08-08 15:09:27');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-BS-12', '2017-08-08 15:10:39');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-AS 19/16', '2017-08-08 15:12:02');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-2974/BI-14', '2017-08-08 15:13:08');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO WT-AD-15', '2017-08-08 15:14:20');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO BUFLOCK', '2017-08-08 15:14:59');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO CMC', '2017-08-08 15:15:36');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO DETAC', '2017-08-08 15:17:40');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO HERCULES', '2017-08-08 15:19:48');
INSERT INTO `log` VALUES ('8', 'GUARDO TANQUE #5', '2017-08-08 15:24:27');
INSERT INTO `log` VALUES ('8', 'GUARDO TANQUE #6', '2017-08-08 15:25:42');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO EDWING DOMINGUEZ CON ROL 4', '2017-08-08 15:36:23');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO CRISTIAN MALTEZ CON ROL 4', '2017-08-08 15:40:48');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-08 15:43:29');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO MENDEZ CON ROL 5', '2017-08-08 15:45:21');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO RICARDO CON ROL 5', '2017-08-08 15:46:01');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO CESAR CON ROL 5', '2017-08-08 15:46:36');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO AXEL CON ROL 5', '2017-08-08 15:47:21');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO ARIEL CON ROL 5', '2017-08-08 15:47:46');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO ARIEL CON ROL 5', '2017-08-08 15:50:15');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID null', '2017-08-08 15:54:25');
INSERT INTO `log` VALUES ('8', 'AGREGO EL NUEVO PLAN OP 1690', '2017-08-08 15:55:50');
INSERT INTO `log` VALUES ('8', 'ACTUALIZO INFORMACION DEL PLAN 11', '2017-08-08 15:56:49');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-08-08 16:03:09');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 11', '2017-08-08 16:03:47');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 11', '2017-08-08 16:03:47');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 11', '2017-08-08 16:03:47');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 11', '2017-08-08 16:03:47');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 11', '2017-08-08 16:03:47');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-08 16:05:25');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-08 16:05:44');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-08 16:06:38');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-08 16:06:48');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 11', '2017-08-08 16:07:37');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 11', '2017-08-08 16:07:37');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 11', '2017-08-08 16:07:38');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 11', '2017-08-08 16:07:38');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 11', '2017-08-08 16:07:38');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 11', '2017-08-08 16:07:38');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1690', '2017-08-08 16:18:25');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1690 DEL TURNO 1', '2017-08-08 16:37:54');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-08 17:11:52');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-08 17:14:11');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-08 18:06:41');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-09 07:30:28');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-09 07:33:39');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-09 07:34:32');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-09 07:34:35');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-09 07:41:10');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-09 08:02:00');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-09 08:04:52');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-09 10:18:56');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-09 10:19:28');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-08-09 10:22:31');
INSERT INTO `log` VALUES ('16', 'CERRO SESION ', '2017-08-09 10:31:55');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-09 11:12:15');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-09 11:12:28');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-09 11:12:30');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-09 11:12:42');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-11 08:00:25');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-11 08:00:56');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-11 08:01:26');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-13 17:49:56');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-13 17:50:42');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-13 17:50:44');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-13 17:51:21');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-14 08:39:25');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-14 08:41:01');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-14 08:48:10');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-14 08:48:32');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-14 09:10:57');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1690', '2017-08-14 09:12:51');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-17 07:57:59');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-17 07:59:52');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-17 17:21:06');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-18 08:00:46');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-18 08:00:58');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-18 08:26:16');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-18 16:49:40');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-21 07:58:36');
INSERT INTO `log` VALUES (NULL, 'CERRO SESION ', '2017-08-21 09:53:41');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-21 11:17:22');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-21 11:18:01');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-21 17:19:23');
INSERT INTO `log` VALUES ('8', 'AGREGO EL NUEVO PLAN OP JUMBO ROLL 1702', '2017-08-21 17:23:03');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-21 17:24:36');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-21 17:24:48');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-21 17:25:57');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-21 17:31:00');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1702', '2017-08-21 17:48:05');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-22 07:58:49');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-22 08:00:40');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-22 10:12:00');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-22 16:09:26');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-22 16:12:28');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-22 16:17:30');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-22 16:26:36');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO KPERALTA CON ROL 4', '2017-08-22 16:30:30');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-08-22 16:33:39');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1702 DEL TURNO 1', '2017-08-22 16:36:02');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-22 16:39:58');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-22 16:40:24');
INSERT INTO `log` VALUES ('26', 'INGRESO AL SISTEMA', '2017-08-22 16:42:03');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-22 16:42:32');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-22 16:44:13');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-22 16:48:29');
INSERT INTO `log` VALUES ('26', 'INGRESO AL SISTEMA', '2017-08-22 16:50:42');
INSERT INTO `log` VALUES ('26', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 16:55:45');
INSERT INTO `log` VALUES ('26', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 16:55:45');
INSERT INTO `log` VALUES ('26', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 16:56:00');
INSERT INTO `log` VALUES ('26', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 16:56:00');
INSERT INTO `log` VALUES ('26', 'INGRESO AL SISTEMA', '2017-08-22 16:59:32');
INSERT INTO `log` VALUES ('26', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 6', '2017-08-22 16:59:46');
INSERT INTO `log` VALUES ('26', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:03:14');
INSERT INTO `log` VALUES ('26', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:03:14');
INSERT INTO `log` VALUES ('26', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:25:16');
INSERT INTO `log` VALUES ('26', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:25:16');
INSERT INTO `log` VALUES ('26', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:26:50');
INSERT INTO `log` VALUES ('26', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:26:50');
INSERT INTO `log` VALUES ('26', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:30:35');
INSERT INTO `log` VALUES ('26', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:30:35');
INSERT INTO `log` VALUES ('26', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:36:13');
INSERT INTO `log` VALUES ('26', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:36:13');
INSERT INTO `log` VALUES ('26', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:38:00');
INSERT INTO `log` VALUES ('26', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:38:00');
INSERT INTO `log` VALUES ('26', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:38:32');
INSERT INTO `log` VALUES ('26', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:38:33');
INSERT INTO `log` VALUES ('26', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:41:58');
INSERT INTO `log` VALUES ('26', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 6', '2017-08-22 17:41:58');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-23 08:07:10');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 6', '2017-08-23 08:07:22');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-23 11:38:14');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-23 11:38:22');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-23 11:38:29');
INSERT INTO `log` VALUES ('26', 'INGRESO AL SISTEMA', '2017-08-23 11:41:02');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-25 15:06:46');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-1702', '2017-08-25 15:06:56');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-25 15:07:04');
INSERT INTO `log` VALUES (NULL, 'CERRO SESION ', '2017-08-28 15:14:20');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-28 15:15:25');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 6', '2017-08-28 15:16:34');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-28 15:17:31');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-29 13:20:00');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 6', '2017-08-29 13:31:45');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 6', '2017-08-29 13:32:46');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-29 15:15:21');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-29 15:15:39');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-29 15:15:57');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-29 15:16:00');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-29 16:24:37');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-29 18:10:01');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-30 09:05:34');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1702', '2017-08-30 09:06:27');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1702', '2017-08-30 09:06:38');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-30 09:53:51');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 6', '2017-08-30 09:54:01');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 6', '2017-08-30 09:55:19');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 1', '2017-08-30 09:55:29');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-30 09:56:21');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-30 09:57:27');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-30 09:58:12');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-30 09:58:22');
INSERT INTO `log` VALUES ('15', 'INSERTO ORDEN DE PRODUCCION NUMERO 8989', '2017-08-30 09:59:03');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-30 09:59:54');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-30 10:14:14');
INSERT INTO `log` VALUES ('15', 'ELIMINO EL REGISTRO DE TURNO ID 2', '2017-08-30 10:18:02');
INSERT INTO `log` VALUES ('15', 'ELIMINO EL REGISTRO DE TURNO ID 1', '2017-08-30 10:18:07');
INSERT INTO `log` VALUES ('15', 'AGREGO EL NUEVO TURNO Matutino', '2017-08-30 10:19:06');
INSERT INTO `log` VALUES ('15', 'RESTAURO EL REGISTRO DE TURNO ID 2', '2017-08-30 10:20:16');
INSERT INTO `log` VALUES ('15', 'ELIMINO EL REGISTRO DE TURNO ID 2', '2017-08-30 10:20:27');
INSERT INTO `log` VALUES ('15', 'AGREGO EL NUEVO TURNO Mixto', '2017-08-30 10:20:58');
INSERT INTO `log` VALUES ('15', 'AGREGO EL NUEVO TURNO Nocturno', '2017-08-30 10:21:33');
INSERT INTO `log` VALUES ('15', 'AGREGO EL CONSECUTIVO NO. 1-8989 DEL TURNO 3', '2017-08-30 10:25:41');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-30 10:26:15');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-30 10:26:49');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-30 10:28:44');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-30 10:28:54');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 6', '2017-08-30 10:29:31');
INSERT INTO `log` VALUES ('15', 'INSERTO ORDEN DE PRODUCCION NUMERO 1708', '2017-08-30 10:35:04');
INSERT INTO `log` VALUES ('15', 'AGREGO EL CONSECUTIVO NO. 1-1708 DEL TURNO 3', '2017-08-30 10:40:38');
INSERT INTO `log` VALUES ('15', 'CAMBIO EL ESTADO AL REPORTE CON ID 8', '2017-08-30 10:41:19');
INSERT INTO `log` VALUES ('15', 'CAMBIO EL ESTADO AL REPORTE CON ID 8', '2017-08-30 10:41:31');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-30 10:42:04');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-08-30 10:44:04');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-08-30 10:44:18');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-08-30 10:45:10');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 8', '2017-08-30 10:50:10');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 8', '2017-08-30 10:50:10');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 8', '2017-08-30 10:51:47');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 8', '2017-08-30 10:51:47');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO EL REGISTRO DE LA MERMA DEL RPT CON ID 8 DE LA MAQUINA 1', '2017-08-30 10:52:35');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO EL REGISTRO DE LA MERMA DEL RPT CON ID 8 DE LA MAQUINA 2', '2017-08-30 10:52:55');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 8', '2017-08-30 10:58:10');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 8', '2017-08-30 10:59:55');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 8', '2017-08-30 10:59:55');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1708 DEL TURNO 06:00AM-02:00PM', '2017-08-30 11:02:38');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 8', '2017-08-30 11:05:47');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 8', '2017-08-30 11:06:19');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 8', '2017-08-30 11:06:45');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-08-30 11:09:53');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 1 AL RPT CON ID 8', '2017-08-30 11:17:22');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 8', '2017-08-30 11:17:58');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 8', '2017-08-30 11:20:48');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 8', '2017-08-30 11:22:47');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-08-30 11:24:46');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-08-30 11:24:50');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-30 11:25:52');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 7', '2017-08-30 11:39:05');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 8', '2017-08-30 11:39:35');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-30 11:41:36');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-30 11:41:57');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-30 11:42:25');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-30 11:42:50');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-30 12:12:06');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-30 12:15:10');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-30 13:03:27');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-30 13:47:57');
INSERT INTO `log` VALUES ('26', 'INGRESO AL SISTEMA', '2017-08-30 14:55:54');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-30 14:56:37');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-30 14:58:09');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-30 15:53:48');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-31 07:03:32');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-31 08:24:13');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-31 08:35:26');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-31 08:37:13');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-31 11:06:00');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-31 11:07:16');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-08-31 11:10:38');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-08-31 11:19:15');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-31 11:27:32');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-31 11:45:51');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-08-31 12:36:00');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 8', '2017-08-31 12:45:09');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 8', '2017-08-31 12:45:09');
INSERT INTO `log` VALUES (NULL, 'CERRO SESION ', '2017-08-31 15:37:53');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-31 15:38:11');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-31 15:38:40');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-08-31 17:56:03');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-08-31 17:56:17');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-01 08:20:03');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-11 17:05:28');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1727', '2017-09-11 17:07:33');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-11 17:08:10');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-11 17:08:11');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-11 17:11:38');
INSERT INTO `log` VALUES ('15', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID57', '2017-09-11 17:12:59');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1725', '2017-09-11 17:13:37');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1725 DEL TURNO 3', '2017-09-11 17:15:37');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1725 DEL TURNO 4', '2017-09-11 17:16:02');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1725 DEL TURNO 5', '2017-09-11 17:16:24');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-11 17:18:16');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-11 17:19:43');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-11 17:20:04');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-11 17:20:30');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:23:31');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:23:31');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:23:39');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:23:39');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-11 17:25:36');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-11 17:27:29');
INSERT INTO `log` VALUES ('18', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 9', '2017-09-11 17:28:07');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:29:45');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:29:45');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:31:13');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:31:13');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:32:19');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:32:19');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:33:47');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:33:47');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:35:48');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:35:48');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:36:58');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 9', '2017-09-11 17:36:58');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1725 DEL TURNO 06:00AM-02:00PM', '2017-09-11 17:38:47');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1725 DEL TURNO 06:00AM-02:00PM', '2017-09-11 17:40:08');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1725 DEL TURNO 06:00AM-02:00PM', '2017-09-11 17:40:26');
INSERT INTO `log` VALUES ('18', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 9', '2017-09-11 17:41:32');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1725 DEL TURNO 06:00AM-02:00PM', '2017-09-11 17:42:44');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1725 DEL TURNO 06:00AM-02:00PM', '2017-09-11 17:44:19');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1725 DEL TURNO 06:00AM-02:00PM', '2017-09-11 17:46:11');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1725 DEL TURNO 06:00AM-02:00PM', '2017-09-11 17:47:02');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1725 DEL TURNO 06:00AM-02:00PM', '2017-09-11 17:47:52');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1725 DEL TURNO 06:00AM-02:00PM', '2017-09-11 17:48:45');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:49:12');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:50:02');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:50:39');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:50:59');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:51:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:51:28');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:51:45');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:51:59');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:52:23');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:52:49');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:53:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:53:31');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:53:55');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:54:17');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:54:37');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:55:07');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:56:06');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 9', '2017-09-11 17:56:37');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 9', '2017-09-11 17:57:40');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 9', '2017-09-11 17:58:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 9', '2017-09-11 17:58:59');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 9', '2017-09-11 17:59:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 9', '2017-09-11 18:01:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 9', '2017-09-11 18:01:32');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-11 18:01:46');
INSERT INTO `log` VALUES ('17', 'INGRESO AL SISTEMA', '2017-09-13 17:57:52');
INSERT INTO `log` VALUES ('17', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 11', '2017-09-13 17:59:12');
INSERT INTO `log` VALUES ('17', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 9', '2017-09-13 17:59:39');
INSERT INTO `log` VALUES ('17', 'INGRESO AL SISTEMA', '2017-09-19 17:11:54');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-20 08:43:49');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-20 09:35:41');
INSERT INTO `log` VALUES ('15', 'AGREGO INSUMO PRUEBA BORRAR', '2017-09-20 09:36:37');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-20 13:09:54');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-20 14:13:53');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 9', '2017-09-20 15:01:10');
INSERT INTO `log` VALUES ('15', 'ELIMINO INSUMO CON ID: 63', '2017-09-20 15:03:31');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-20 15:04:43');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-20 15:04:50');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 9', '2017-09-20 15:12:41');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 9', '2017-09-20 15:23:23');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-20 15:43:23');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-20 17:52:43');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1725', '2017-09-20 17:52:57');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 9', '2017-09-20 17:53:02');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 10', '2017-09-20 17:53:10');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 11', '2017-09-20 17:53:18');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-20 17:59:57');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-09-20 18:02:05');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-09-20 18:03:52');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-20 18:03:57');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 9', '2017-09-20 18:04:07');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-21 08:32:35');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-22 09:52:32');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-22 10:26:31');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-09-22 10:26:40');
INSERT INTO `log` VALUES ('16', 'CERRO SESION ', '2017-09-22 11:25:20');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-22 11:25:28');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-22 14:08:46');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-09-22 14:08:58');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 9', '2017-09-22 14:11:20');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1725', '2017-09-22 14:11:40');
INSERT INTO `log` VALUES ('16', 'CERRO SESION ', '2017-09-22 14:46:28');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-22 14:49:37');
INSERT INTO `log` VALUES ('15', 'AGREGO INSUMO PIGMENTO BLANCO', '2017-09-22 14:59:08');
INSERT INTO `log` VALUES ('15', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-09-22 15:00:35');
INSERT INTO `log` VALUES ('15', 'INSERTO ORDEN DE PRODUCCION NUMERO 4545', '2017-09-22 15:06:33');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-22 15:10:20');
INSERT INTO `log` VALUES ('15', 'AGREGO EL CONSECUTIVO NO. 1-4545 DEL TURNO 3', '2017-09-22 15:13:36');
INSERT INTO `log` VALUES ('15', 'CAMBIO EL ESTADO AL REPORTE CON ID 12', '2017-09-22 15:15:24');
INSERT INTO `log` VALUES ('15', 'CAMBIO EL ESTADO AL REPORTE CON ID 12', '2017-09-22 15:16:35');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-22 15:20:41');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-22 15:21:16');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-22 15:21:20');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-22 15:40:52');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-22 15:41:09');
INSERT INTO `log` VALUES ('15', 'AGREGO EL CONSECUTIVO NO. 1-4545 DEL TURNO 4', '2017-09-22 15:41:29');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-22 15:41:35');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-22 15:42:02');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 13', '2017-09-22 15:46:48');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 13', '2017-09-22 15:46:48');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 13', '2017-09-22 15:52:23');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 13', '2017-09-22 15:52:24');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 13', '2017-09-22 15:53:06');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 13', '2017-09-22 15:53:06');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO EL REGISTRO DE LA MERMA DEL RPT CON ID 13 DE LA MAQUINA 1', '2017-09-22 15:53:58');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO EL REGISTRO DE LA MERMA DEL RPT CON ID 13 DE LA MAQUINA 2', '2017-09-22 15:54:29');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-4545 DEL TURNO 02:00PM-10:00PM', '2017-09-22 15:57:18');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-4545 DEL TURNO 02:00PM-10:00PM', '2017-09-22 15:57:36');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-4545 DEL TURNO 02:00PM-10:00PM', '2017-09-22 15:57:36');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-4545 DEL TURNO 02:00PM-10:00PM', '2017-09-22 15:57:56');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 13', '2017-09-22 15:58:06');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 13', '2017-09-22 15:58:12');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 13', '2017-09-22 16:08:44');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 13', '2017-09-22 16:08:50');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 13', '2017-09-22 16:08:55');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 13', '2017-09-22 16:09:05');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 13', '2017-09-22 16:09:08');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 13', '2017-09-22 16:09:12');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 13', '2017-09-22 16:10:29');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 13', '2017-09-22 16:10:47');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-22 16:39:10');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-22 16:39:19');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-09-22 16:46:30');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 13', '2017-09-22 16:47:23');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-4545', '2017-09-22 16:47:53');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 13', '2017-09-22 16:49:48');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 13', '2017-09-22 16:50:07');
INSERT INTO `log` VALUES ('16', 'CERRO SESION ', '2017-09-22 16:51:51');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-25 08:39:35');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-25 08:39:42');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-25 10:08:09');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1741', '2017-09-25 10:12:59');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-25 10:54:39');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-25 10:55:01');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-25 15:51:58');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1741 DEL TURNO 3', '2017-09-25 15:54:17');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1741 DEL TURNO 4', '2017-09-25 15:54:51');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1741 DEL TURNO 5', '2017-09-25 15:55:20');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1751', '2017-09-25 16:08:14');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-25 16:09:36');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-25 16:09:49');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-25 16:22:37');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-25 16:23:07');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-25 16:25:35');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-25 16:26:01');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-25 16:28:12');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-25 16:29:13');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-25 16:30:50');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-25 16:31:39');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-25 16:42:00');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID60', '2017-09-25 16:42:41');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID60', '2017-09-25 16:43:11');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID61', '2017-09-25 16:43:32');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-25 16:46:54');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-25 16:47:36');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-25 16:48:51');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-25 16:49:29');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-26 08:33:44');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 2-1741 DEL TURNO 3', '2017-09-26 08:34:22');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-26 08:34:30');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-26 08:34:42');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-26 08:35:28');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-26 08:35:42');
INSERT INTO `log` VALUES ('8', 'ELIMINO MAQUINA MAQUINA%203', '2017-09-26 08:36:06');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-26 08:36:17');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-26 08:36:19');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1702', '2017-09-26 08:37:28');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-26 08:37:56');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 2-1741 DEL TURNO 4', '2017-09-26 08:40:54');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 2-1741 DEL TURNO 5', '2017-09-26 08:41:23');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-26 08:48:01');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-26 09:10:17');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-26 09:11:45');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-26 09:12:46');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-26 09:13:17');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-26 09:16:58');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-26 09:17:09');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 14', '2017-09-26 09:23:34');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 14', '2017-09-26 09:23:34');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 14', '2017-09-26 09:27:43');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 14', '2017-09-26 09:27:43');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 14', '2017-09-26 09:29:21');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 14', '2017-09-26 09:29:21');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-26 09:31:11');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 09:39:12');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 09:39:31');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 09:40:39');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 09:40:51');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-26 09:41:22');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 09:41:57');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 09:42:01');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 09:42:16');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 14', '2017-09-26 09:43:31');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 14', '2017-09-26 09:44:53');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 09:47:09');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 09:47:22');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 09:47:43');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 14', '2017-09-26 09:55:05');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID  AL RPT CON ID 14', '2017-09-26 09:56:45');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 14', '2017-09-26 09:57:13');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 3 AL RPT CON ID 14', '2017-09-26 09:57:37');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 4 AL RPT CON ID 14', '2017-09-26 09:58:47');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 5 AL RPT CON ID 14', '2017-09-26 09:59:05');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 6 AL RPT CON ID 14', '2017-09-26 09:59:19');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:01:28');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:01:44');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:02:09');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:02:24');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:02:36');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 14', '2017-09-26 10:03:32');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 14', '2017-09-26 10:04:03');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 14', '2017-09-26 10:04:33');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 14', '2017-09-26 10:05:38');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:06:15');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:06:37');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:08:31');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:08:44');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:08:56');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 14', '2017-09-26 10:09:06');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 14', '2017-09-26 10:10:34');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-26 10:14:09');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 14', '2017-09-26 10:20:29');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE INSUMO DEL RPT CON ID 14', '2017-09-26 10:21:26');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 14', '2017-09-26 10:23:08');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE INSUMO DEL RPT CON ID 14', '2017-09-26 10:24:27');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-26 10:25:45');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 14', '2017-09-26 10:31:43');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 14', '2017-09-26 10:32:08');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 14', '2017-09-26 10:32:16');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 14', '2017-09-26 10:32:21');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 14', '2017-09-26 10:32:25');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 14', '2017-09-26 10:32:41');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 10:38:00');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 10:40:04');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 10:41:44');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-26 10:45:04');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE USUARIO 25', '2017-09-26 10:46:11');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE USUARIO 25', '2017-09-26 10:47:17');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE USUARIO 24', '2017-09-26 10:49:59');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE USUARIO 25', '2017-09-26 10:50:07');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 14', '2017-09-26 10:50:17');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 14', '2017-09-26 10:50:40');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO MICHAEL CON ROL 5', '2017-09-26 10:50:51');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 10:58:21');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 11:01:01');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 11:01:01');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 11:02:58');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 11:02:58');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-26 11:07:06');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-26 11:07:15');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 11:14:51');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 11:14:51');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 11:16:14');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 11:16:14');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 17', '2017-09-26 11:16:24');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 11:18:24');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 11:18:24');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 14', '2017-09-26 12:23:39');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 12:25:23');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 14', '2017-09-26 12:25:42');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 14', '2017-09-26 12:26:01');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 12:27:26');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 14', '2017-09-26 12:27:38');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 12:29:06');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 12:31:05');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 13:13:50');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 13:15:08');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 13:16:28');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:30:05');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:30:05');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:32:13');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:32:13');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:32:50');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:32:50');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 17', '2017-09-26 13:34:48');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 17', '2017-09-26 13:34:53');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 17', '2017-09-26 13:35:05');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 17', '2017-09-26 13:35:20');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:37:04');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:37:04');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:38:34');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:38:34');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 17', '2017-09-26 13:39:04');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:41:08');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 13:41:08');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:03:42');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:03:42');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:09:46');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:09:46');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:11:12');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:11:12');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:12:38');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:12:38');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-26 14:17:48');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-26 14:17:53');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-09-26 14:18:23');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:18:29');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:18:29');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 17', '2017-09-26 14:19:20');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:20:19');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:20:19');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:21:52');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:21:52');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:22:45');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 17', '2017-09-26 14:22:45');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 14:26:02');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-26 14:26:08');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 17', '2017-09-26 14:26:18');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:26:44');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:27:02');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:27:16');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:27:46');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:27:59');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:28:13');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:28:31');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:28:44');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:29:23');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:29:38');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:29:58');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:30:24');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:31:08');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 17', '2017-09-26 14:31:22');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 17', '2017-09-26 14:32:40');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 17', '2017-09-26 14:34:10');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 17', '2017-09-26 14:34:45');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 17', '2017-09-26 14:35:15');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 17', '2017-09-26 14:36:04');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 17', '2017-09-26 14:36:19');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-26 14:38:28');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 15:01:07');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 15:10:10');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 15:11:54');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 15', '2017-09-26 15:14:36');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 15', '2017-09-26 15:14:36');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-26 15:21:27');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-26 15:21:49');
INSERT INTO `log` VALUES ('18', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 15', '2017-09-26 15:22:14');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-26 15:24:25');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 15', '2017-09-26 15:26:47');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-26 15:29:09');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 15:30:04');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-26 15:30:33');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 15:31:21');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO CON ID: 63', '2017-09-26 15:33:36');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-26 15:33:54');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 15:34:34');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-26 15:34:51');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO POLICLORURO DE ALUMINIO (PAC)', '2017-09-26 15:35:43');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 15:37:02');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-26 15:41:32');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO CON ID: 35', '2017-09-26 15:41:35');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO CON ID: 59', '2017-09-26 15:42:23');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO BUFLOCK', '2017-09-26 15:43:02');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 15:45:43');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO CON ID: 64', '2017-09-26 15:48:11');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO POLICLORURO DE ALUMINIO(PAC)', '2017-09-26 15:49:19');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-26 15:49:37');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-26 15:49:41');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 11', '2017-09-26 15:51:36');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-26 15:56:36');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 16:35:33');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:37:46');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:37:46');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:39:43');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:39:43');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:40:57');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:40:57');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:42:20');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:42:20');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:43:25');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:43:25');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:44:22');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 18', '2017-09-26 16:44:22');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-26 16:47:06');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-26 17:22:43');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-26 17:24:09');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-26 17:24:14');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 17', '2017-09-26 17:24:30');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 19', '2017-09-26 17:26:03');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 18', '2017-09-26 17:26:10');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 18:15:40');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-26 18:18:04');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 18', '2017-09-26 18:18:54');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 18', '2017-09-26 18:20:06');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-26 18:22:10');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-26 18:51:04');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-26 18:52:50');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-26 18:53:54');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-09-27 02:43:50');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-09-27 05:29:36');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-27 06:25:23');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-27 06:25:55');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-09-27 06:26:40');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 10:00PM-06:00AM', '2017-09-27 06:31:24');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 10:00PM-06:00AM', '2017-09-27 06:35:24');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1741 DEL TURNO 10:00PM-06:00AM', '2017-09-27 06:36:57');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 16', '2017-09-27 06:38:06');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 16', '2017-09-27 06:38:53');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 4 AL RPT CON ID 16', '2017-09-27 06:39:11');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 5 AL RPT CON ID 16', '2017-09-27 06:39:24');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 6 AL RPT CON ID 16', '2017-09-27 06:39:37');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-09-27 06:39:54');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-27 08:13:10');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 17', '2017-09-27 08:13:19');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 19', '2017-09-27 08:13:29');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 18', '2017-09-27 08:13:36');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 17', '2017-09-27 08:52:10');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 16', '2017-09-27 08:52:25');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-27 09:35:36');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-27 09:35:47');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-27 10:32:00');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-27 10:33:11');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-27 10:33:24');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-27 10:33:27');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-27 11:06:30');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-27 11:06:44');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-27 12:01:57');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 14', '2017-09-27 12:02:20');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 17', '2017-09-27 12:02:42');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 15', '2017-09-27 12:03:29');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 18', '2017-09-27 12:03:47');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-27 12:04:11');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 3-1741 DEL TURNO 3', '2017-09-27 12:05:09');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 3-1741 DEL TURNO 4', '2017-09-27 12:05:35');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 3-1741 DEL TURNO 5', '2017-09-27 12:06:03');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-09-27 12:06:14');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-27 12:23:18');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:28:29');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:28:29');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:30:01');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:30:01');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:31:51');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:31:51');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:33:20');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:33:20');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 20', '2017-09-27 12:33:39');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:35:01');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:35:01');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:39:48');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 20', '2017-09-27 12:39:48');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 20', '2017-09-27 12:48:36');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 20', '2017-09-27 12:49:41');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 20', '2017-09-27 12:49:55');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 20', '2017-09-27 12:50:39');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 20', '2017-09-27 12:50:50');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 20', '2017-09-27 12:51:03');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 20', '2017-09-27 12:51:14');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-27 12:52:57');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 20', '2017-09-27 12:53:15');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-27 12:54:45');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-27 12:56:51');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-27 12:58:16');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-27 12:59:39');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-27 13:01:39');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 20', '2017-09-27 13:02:37');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 20', '2017-09-27 13:03:11');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 20', '2017-09-27 13:04:46');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-27 13:44:39');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 20', '2017-09-27 15:59:12');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 21', '2017-09-27 15:59:39');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 22', '2017-09-27 15:59:49');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 18', '2017-09-27 16:00:49');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-27 17:32:19');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-27 17:33:20');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-27 17:55:12');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 21', '2017-09-27 17:55:23');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 21', '2017-09-27 17:55:33');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 20', '2017-09-27 17:55:43');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-27 19:44:59');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-27 19:46:38');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-27 19:47:44');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-27 19:49:12');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-27 19:49:55');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-27 19:50:47');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-27 19:51:24');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-27 20:51:24');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-27 20:54:02');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-27 20:54:07');
INSERT INTO `log` VALUES ('18', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 21', '2017-09-27 20:54:20');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-27 20:56:03');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 21', '2017-09-27 20:57:13');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 21', '2017-09-27 20:57:49');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-27 21:06:38');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-27 21:11:17');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 21', '2017-09-27 21:11:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 21', '2017-09-27 21:12:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 21', '2017-09-27 21:12:19');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 21', '2017-09-27 21:13:16');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 21', '2017-09-27 21:14:19');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 21', '2017-09-27 21:14:29');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-27 21:14:53');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-27 21:34:49');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 21', '2017-09-27 21:36:33');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-27 21:39:50');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-27 21:47:20');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 21', '2017-09-27 21:53:09');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 21', '2017-09-27 21:53:09');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 21', '2017-09-27 21:57:16');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 21', '2017-09-27 21:57:16');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-27 21:57:40');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-09-27 22:58:27');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-09-27 23:23:36');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-09-27 23:28:18');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-09-27 23:38:37');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-28 05:54:07');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-28 05:54:21');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-09-28 05:55:09');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-09-28 05:56:32');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-28 08:00:39');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 21', '2017-09-28 08:00:51');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 22', '2017-09-28 08:01:58');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-28 09:16:37');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 4-1741 DEL TURNO 3', '2017-09-28 09:17:32');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 4-1741 DEL TURNO 4', '2017-09-28 09:17:56');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 4-1741 DEL TURNO 5', '2017-09-28 09:18:31');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-28 09:20:14');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 20', '2017-09-28 09:20:48');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 09:21:29');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 09:21:29');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 09:24:54');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 09:24:54');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 09:40:50');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 09:40:51');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 09:42:28');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 09:42:28');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 10:59:19');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 10:59:19');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 11:01:14');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 11:01:14');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 12:40:37');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 12:40:37');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 12:42:52');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 12:42:52');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-28 13:13:32');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-28 13:15:17');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-28 13:16:06');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-28 13:17:24');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 23', '2017-09-28 13:18:08');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-28 13:20:50');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 23', '2017-09-28 13:21:28');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 23', '2017-09-28 13:22:38');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:23:40');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:23:54');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:24:07');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:24:17');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:24:25');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:24:36');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:26:18');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:26:30');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:26:52');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:27:07');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:27:17');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:27:31');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:27:43');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:27:52');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:28:06');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:28:15');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:28:24');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:29:37');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:29:49');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:29:59');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:30:16');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:30:35');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:30:49');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 23', '2017-09-28 13:31:00');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 23', '2017-09-28 13:32:12');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 23', '2017-09-28 13:32:44');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 23', '2017-09-28 13:33:11');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 23', '2017-09-28 13:33:34');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 23', '2017-09-28 13:33:59');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 23', '2017-09-28 13:34:31');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 23', '2017-09-28 13:34:58');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 23', '2017-09-28 13:35:28');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 13:59:07');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 13:59:07');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 14:01:02');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 14:01:02');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 14:02:48');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 23', '2017-09-28 14:02:48');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 23', '2017-09-28 14:03:29');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-28 14:03:36');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 23', '2017-09-28 14:11:09');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-28 15:22:47');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-28 15:23:39');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-09-28 15:28:06');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 21', '2017-09-28 15:33:06');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 22', '2017-09-28 15:33:17');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-28 17:35:18');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 17:36:56');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 17:36:56');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 17:37:39');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 17:37:39');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 17:39:18');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 17:39:18');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 17:39:59');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 17:39:59');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-28 17:40:37');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-28 17:48:13');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 17:48:36');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 17:48:48');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 17:48:57');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 24', '2017-09-28 17:49:33');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 17:50:13');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 17:50:21');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 17:50:28');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 24', '2017-09-28 17:50:49');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 24', '2017-09-28 17:52:42');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 17:53:17');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 17:53:24');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 17:53:31');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 24', '2017-09-28 17:53:58');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-28 17:58:17');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-28 17:59:33');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-28 18:08:45');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 24', '2017-09-28 18:08:54');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 25', '2017-09-28 18:09:14');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 23', '2017-09-28 18:09:20');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-28 18:19:25');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 18:20:25');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 18:20:25');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-28 18:21:21');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-28 18:23:02');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-28 18:23:23');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-28 18:59:34');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-28 19:00:42');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-28 19:26:04');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 19:28:27');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 19:28:27');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 19:29:29');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 19:29:29');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-28 19:31:12');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-28 20:48:38');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 20:50:45');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 20:50:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 20:50:58');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 20:51:10');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 20:51:33');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 20:51:39');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 20:51:48');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 20:51:57');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 20:52:04');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 24', '2017-09-28 20:52:47');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 24', '2017-09-28 20:53:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 24', '2017-09-28 20:53:51');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-28 20:56:25');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-28 21:03:32');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 24', '2017-09-28 21:04:25');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 24', '2017-09-28 21:04:50');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-28 21:10:39');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-28 21:37:07');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 21:39:16');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 21:39:16');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 21:40:08');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 21:40:08');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 21:42:02');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 21:42:02');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 21:43:03');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 24', '2017-09-28 21:43:03');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 24', '2017-09-28 21:45:37');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-28 21:47:20');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 21:47:42');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 21:47:50');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 24', '2017-09-28 21:47:58');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 24', '2017-09-28 21:48:30');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-28 21:49:46');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-09-29 00:46:10');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-29 00:47:40');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-09-29 00:48:31');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-29 06:02:27');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-29 06:03:25');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-09-29 08:49:16');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 23', '2017-09-29 08:51:21');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 24', '2017-09-29 08:56:52');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 25', '2017-09-29 08:57:27');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 22', '2017-09-29 08:57:35');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 19', '2017-09-29 08:57:44');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 16', '2017-09-29 08:57:50');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-09-29 09:49:05');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 5-1741 DEL TURNO 3', '2017-09-29 09:50:09');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 5-1741 DEL TURNO 4', '2017-09-29 09:51:08');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 5-1741 DEL TURNO 5', '2017-09-29 09:51:56');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-29 10:50:52');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 10:54:14');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 10:54:14');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 10:55:40');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 10:55:40');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 10:56:53');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 10:56:53');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 10:57:53');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 10:57:53');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 10:59:33');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 10:59:33');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 11:00:54');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 11:00:55');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 11:02:09');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 11:02:09');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 11:04:32');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 11:04:32');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 26', '2017-09-29 11:49:09');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 12:48:29');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 12:48:29');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 12:50:15');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-29 12:50:15');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-29 13:54:28');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-29 14:32:03');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-29 14:32:15');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 26', '2017-09-29 17:17:27');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 27', '2017-09-29 17:17:38');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 26', '2017-09-29 17:26:19');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 26', '2017-09-29 17:26:32');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 27', '2017-09-29 17:26:42');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 26', '2017-09-29 17:54:06');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-29 18:07:10');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:09:21');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:09:21');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:10:00');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:10:00');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:10:40');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:10:40');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:11:22');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:11:22');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-29 18:12:29');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-29 18:24:46');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:26:07');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:26:07');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:28:03');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 18:28:03');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-29 18:32:46');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-29 19:01:36');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-29 19:01:50');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-29 19:52:03');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 19:53:26');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 19:53:27');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 19:54:18');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 19:54:18');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:57:24');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:57:34');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:57:41');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:57:49');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:57:56');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:58:03');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:58:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:58:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:58:21');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:58:28');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:58:34');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:58:40');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:58:46');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:58:52');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 19:58:57');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 20:00:20');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 20:00:24');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 20:00:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 20:00:33');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 20:00:37');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 20:00:52');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 20:00:56');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 20:00:59');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 20:01:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 20:01:01');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 27', '2017-09-29 20:02:24');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 27', '2017-09-29 20:02:45');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 27', '2017-09-29 20:03:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 27', '2017-09-29 20:04:04');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 27', '2017-09-29 20:05:30');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 21:09:32');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 21:09:32');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 21:12:00');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 21:12:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 21:19:08');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 21:20:06');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 21:20:29');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 21:20:58');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 27', '2017-09-29 21:21:05');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 27', '2017-09-29 21:21:41');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-29 21:23:25');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-29 21:24:01');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1741 DEL TURNO 02:00PM-10:00PM', '2017-09-29 21:24:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 27', '2017-09-29 21:26:12');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 27', '2017-09-29 21:26:28');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 27', '2017-09-29 21:31:54');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 21:55:39');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 21:55:39');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 21:57:50');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 27', '2017-09-29 21:57:51');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-29 21:58:30');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-09-29 23:08:20');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-30 07:34:52');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-30 07:36:27');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-30 07:36:27');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-30 07:38:24');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-30 07:38:24');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-30 07:39:44');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 26', '2017-09-30 07:39:44');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 26', '2017-09-30 07:47:46');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 26', '2017-09-30 07:48:11');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-30 07:56:55');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 26', '2017-09-30 07:57:21');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 07:57:54');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 07:58:15');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 07:58:30');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 07:58:41');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 07:58:53');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 07:59:03');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 07:59:20');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 07:59:37');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 07:59:52');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:00:13');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:00:25');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:00:38');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:00:51');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:01:02');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:01:12');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:01:27');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:01:38');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:01:55');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:02:43');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:02:55');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 26', '2017-09-30 08:03:14');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 26', '2017-09-30 08:05:33');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 26', '2017-09-30 08:05:59');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 26', '2017-09-30 08:06:24');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 26', '2017-09-30 08:06:46');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 26', '2017-09-30 08:07:27');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 26', '2017-09-30 08:08:28');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:09:53');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:20:37');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:21:54');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:23:02');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:24:59');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:28:32');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:29:02');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:29:36');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:29:59');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:33:21');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 26', '2017-09-30 08:35:10');
INSERT INTO `log` VALUES ('19', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 26', '2017-09-30 08:35:44');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:36:27');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 26', '2017-09-30 08:36:49');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-30 08:38:45');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-30 09:34:34');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-30 09:36:30');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 26', '2017-09-30 09:36:59');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-30 09:38:30');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-30 09:39:23');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-30 09:41:31');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-30 09:42:48');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1741 DEL TURNO 06:00AM-02:00PM', '2017-09-30 09:44:07');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-30 09:44:14');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-09-30 13:29:08');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-09-30 13:29:14');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-09-30 15:30:05');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-09-30 15:30:13');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-02 08:18:37');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 26', '2017-10-02 08:18:54');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 27', '2017-10-02 08:19:14');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 28', '2017-10-02 08:19:21');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1741', '2017-10-02 08:48:04');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 14', '2017-10-02 08:48:11');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-02 10:29:26');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1747', '2017-10-02 10:31:43');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1747 DEL TURNO 3', '2017-10-02 10:32:23');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1747 DEL TURNO 4', '2017-10-02 10:32:51');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1747 DEL TURNO 5', '2017-10-02 10:33:17');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-10-02 10:33:23');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-02 11:00:48');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-02 11:01:09');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-02 12:31:38');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-02 12:33:16');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-02 12:34:42');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-02 12:35:17');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-02 13:50:22');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 29', '2017-10-02 13:50:53');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 29', '2017-10-02 14:51:27');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 30', '2017-10-02 14:51:37');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 29', '2017-10-02 15:59:13');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 30', '2017-10-02 15:59:20');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 31', '2017-10-02 15:59:26');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 29', '2017-10-02 18:00:56');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 30', '2017-10-02 18:02:29');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-10-02 18:17:31');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-02 21:05:01');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-10-02 21:15:02');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-02 21:15:28');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-10-02 21:50:30');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-10-03 01:48:30');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-10-03 01:49:00');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-03 08:39:29');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-03 08:39:47');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-03 09:04:55');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 30', '2017-10-03 09:05:03');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 31', '2017-10-03 09:05:16');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 29', '2017-10-03 09:05:28');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-10-03 09:10:59');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-10-03 09:11:08');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-10-03 09:11:15');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-03 09:12:39');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-03 09:12:44');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-10-03 09:13:02');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-10-03 09:13:31');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-03 09:15:23');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 2-1747 DEL TURNO 3', '2017-10-03 09:17:11');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 2-1747 DEL TURNO 4', '2017-10-03 09:17:52');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 2-1747 DEL TURNO 5', '2017-10-03 09:18:14');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-03 09:23:12');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-03 09:23:55');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-03 09:25:24');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-10-03 09:25:35');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-10-03 09:28:23');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-10-03 09:29:30');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-03 09:29:40');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 31', '2017-10-03 09:29:48');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-03 09:29:56');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-03 09:31:07');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-03 11:07:25');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 11:08:18');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 11:08:19');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 11:09:12');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 11:09:12');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 11:10:17');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 11:10:17');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 11:11:39');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 11:11:39');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-03 11:12:16');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 32', '2017-10-03 11:13:45');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-03 11:28:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 11:35:18');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 11:35:26');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 11:35:37');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 11:35:45');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 11:35:49');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 11:35:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 11:36:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 11:36:18');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 11:36:20');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 11:36:22');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 32', '2017-10-03 11:36:55');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 32', '2017-10-03 11:37:32');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 32', '2017-10-03 11:38:17');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 32', '2017-10-03 11:38:38');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 32', '2017-10-03 11:39:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 32', '2017-10-03 11:39:37');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 32', '2017-10-03 11:40:21');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-03 11:41:43');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-03 13:05:43');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 13:07:10');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 13:07:10');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 13:08:12');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 13:08:12');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 13:08:50');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 32', '2017-10-03 13:08:59');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 32', '2017-10-03 13:09:35');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 32', '2017-10-03 13:29:02');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 32', '2017-10-03 13:29:16');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-03 13:31:08');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-03 13:31:49');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-03 13:32:29');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-03 13:34:02');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 32', '2017-10-03 13:48:27');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-03 13:52:42');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-03 13:53:12');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-03 13:53:37');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-03 13:59:54');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-03 14:02:13');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-03 14:02:49');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 14:04:51');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 14:04:51');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 14:05:37');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 32', '2017-10-03 14:05:37');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-03 14:06:01');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-03 16:10:41');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 32', '2017-10-03 16:11:43');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 16:13:05');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 16:13:06');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 16:14:51');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 16:14:51');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-03 16:15:29');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-03 17:46:35');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 17:48:17');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 17:48:17');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 18:18:26');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 18:18:26');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 20:00:02');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 20:00:03');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 20:06:11');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 20:06:28');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 20:06:41');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 20:06:50');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 20:07:02');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 20:07:08');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 20:07:14');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 20:07:21');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 33', '2017-10-03 20:08:09');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 33', '2017-10-03 20:09:14');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 33', '2017-10-03 20:16:27');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 33', '2017-10-03 20:19:47');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 33', '2017-10-03 20:22:17');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 33', '2017-10-03 20:27:37');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 33', '2017-10-03 20:28:44');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 33', '2017-10-03 20:29:52');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 33', '2017-10-03 20:40:26');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 33', '2017-10-03 20:42:04');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:02:37');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:02:37');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 33', '2017-10-03 21:43:14');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 33', '2017-10-03 21:43:20');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 33', '2017-10-03 21:43:27');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 33', '2017-10-03 21:43:31');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 33', '2017-10-03 21:43:36');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 33', '2017-10-03 21:43:42');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:45:24');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:45:25');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:46:21');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:46:21');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:47:30');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:47:30');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:48:33');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:48:33');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:49:56');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:49:56');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:50:46');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:50:46');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:51:48');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 21:51:48');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 21:54:49');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 21:55:19');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 21:55:30');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 21:55:36');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 33', '2017-10-03 21:56:16');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 33', '2017-10-03 21:57:48');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 33', '2017-10-03 21:58:30');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 22:01:32');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 33', '2017-10-03 22:01:32');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 33', '2017-10-03 22:03:43');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 33', '2017-10-03 22:05:43');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 33', '2017-10-03 22:06:39');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-03 22:09:19');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 22:10:50');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-03 22:11:06');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO EL REGISTRO DE LA MERMA DEL RPT CON ID 33 DE LA MAQUINA 1', '2017-10-03 22:12:55');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-04 05:14:29');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-04 05:15:18');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-04 05:17:30');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-04 05:18:38');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 33', '2017-10-04 05:19:11');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-04 05:20:17');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-04 05:20:50');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 33', '2017-10-04 05:21:15');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 33', '2017-10-04 05:21:41');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 33', '2017-10-04 05:22:00');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 4 AL RPT CON ID 33', '2017-10-04 05:22:37');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 5 AL RPT CON ID 33', '2017-10-04 05:22:52');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 6 AL RPT CON ID 33', '2017-10-04 05:23:28');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-04 05:23:50');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-10-04 05:24:04');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:26:55');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:26:55');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 34', '2017-10-04 05:27:11');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:28:18');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:28:18');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:29:35');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:29:35');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:30:41');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:30:41');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:32:10');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:32:10');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:33:15');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:33:15');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:34:30');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 05:34:30');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 10:00PM-06:00AM', '2017-10-04 05:35:39');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 10:00PM-06:00AM', '2017-10-04 05:36:45');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 10:00PM-06:00AM', '2017-10-04 05:37:55');
INSERT INTO `log` VALUES ('19', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 2-1747 DEL TURNO 10:00PM-06:00AM', '2017-10-04 05:38:45');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:39:15');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:39:28');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:40:17');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:40:32');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:40:58');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:41:10');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:41:29');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:41:40');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:41:54');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:42:05');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 34', '2017-10-04 05:42:30');
INSERT INTO `log` VALUES ('19', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 34', '2017-10-04 05:42:56');
INSERT INTO `log` VALUES ('19', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 34', '2017-10-04 05:43:03');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 34', '2017-10-04 05:43:40');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 34', '2017-10-04 05:44:14');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 06:00:48');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 06:00:48');
INSERT INTO `log` VALUES ('19', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 06:04:17');
INSERT INTO `log` VALUES ('19', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 34', '2017-10-04 06:04:17');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 4 AL RPT CON ID 34', '2017-10-04 06:04:37');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 5 AL RPT CON ID 34', '2017-10-04 06:04:51');
INSERT INTO `log` VALUES ('19', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 6 AL RPT CON ID 34', '2017-10-04 06:05:05');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-10-04 06:06:39');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-04 08:08:20');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 32', '2017-10-04 08:08:28');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 33', '2017-10-04 08:08:37');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 34', '2017-10-04 08:09:09');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-04 08:34:51');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 3-1747 DEL TURNO 3', '2017-10-04 08:35:33');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 3-1747 DEL TURNO 4', '2017-10-04 08:36:08');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-04 08:39:00');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 3-1747 DEL TURNO 5', '2017-10-04 08:40:21');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-04 08:40:49');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-10-04 08:41:32');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-04 10:34:56');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-04 10:34:57');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 10:36:42');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 10:36:42');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 10:37:47');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 10:37:47');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 10:39:11');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 10:39:11');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 10:40:14');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 10:40:14');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-04 10:41:24');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-04 12:56:20');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 12:57:21');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 12:57:31');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 12:57:45');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 12:57:58');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 12:58:08');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 12:58:16');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 35', '2017-10-04 12:58:47');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 35', '2017-10-04 12:59:08');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-04 13:00:27');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-04 13:01:25');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-04 13:02:11');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-04 13:17:13');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-04 13:42:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 35', '2017-10-04 13:42:21');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 35', '2017-10-04 13:42:34');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:46:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:46:29');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:46:36');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:46:39');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:46:49');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:46:53');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:47:12');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:47:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:47:16');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:47:16');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:47:24');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:47:25');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:47:26');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 35', '2017-10-04 13:47:27');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 35', '2017-10-04 13:48:23');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 35', '2017-10-04 13:48:37');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 35', '2017-10-04 13:49:06');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 13:50:33');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 13:50:33');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 13:51:16');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 13:51:16');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 13:55:01');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 13:55:01');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 14:01:19');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 35', '2017-10-04 14:01:19');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-04 14:02:42');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-04 14:13:02');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 35', '2017-10-04 14:13:10');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-04 14:40:59');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-04 14:42:57');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 35', '2017-10-04 15:41:36');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-04 16:21:27');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 16:23:05');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 16:23:05');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 16:24:00');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 16:24:01');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 17:18:53');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 17:19:01');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 17:19:14');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 17:19:49');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 17:19:53');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 17:19:57');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 17:45:17');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 17:45:21');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 17:45:28');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 36', '2017-10-04 17:46:47');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 36', '2017-10-04 17:48:18');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 36', '2017-10-04 18:45:20');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 36', '2017-10-04 18:45:51');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 18:49:09');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 18:49:09');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 18:50:20');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 18:50:20');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 18:56:24');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 18:56:33');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 18:56:51');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 18:56:56');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 18:57:16');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 18:57:21');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 36', '2017-10-04 18:58:01');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 36', '2017-10-04 18:58:21');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 20:24:59');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 20:25:00');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 20:26:05');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 20:26:05');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:40:42');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:40:49');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:41:34');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:42:19');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:42:28');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:42:47');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:43:51');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:44:00');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:44:08');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:44:15');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 21:44:24');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 36', '2017-10-04 21:45:02');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 36', '2017-10-04 21:45:14');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 36', '2017-10-04 21:45:23');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 36', '2017-10-04 21:46:16');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 36', '2017-10-04 21:46:36');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 36', '2017-10-04 21:51:46');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-04 21:55:25');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-04 21:57:10');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-04 21:58:05');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 3-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-04 21:59:53');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 1 AL RPT CON ID 36', '2017-10-04 22:00:40');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 1 AL RPT CON ID 36', '2017-10-04 22:00:52');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 36', '2017-10-04 22:02:25');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 36', '2017-10-04 22:02:36');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 36', '2017-10-04 22:02:38');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 36', '2017-10-04 22:02:38');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PASTA DEL RPT CON ID 36', '2017-10-04 22:02:53');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PASTA DEL RPT CON ID 36', '2017-10-04 22:02:59');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PASTA DEL RPT CON ID 36', '2017-10-04 22:03:05');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PASTA DEL RPT CON ID 36', '2017-10-04 22:03:13');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 22:05:06');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 22:05:06');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 22:06:30');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 36', '2017-10-04 22:06:30');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 5 AL RPT CON ID 36', '2017-10-04 22:07:23');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 5 AL RPT CON ID 36', '2017-10-04 22:07:52');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 22:08:49');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 36', '2017-10-04 22:09:02');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 36', '2017-10-04 22:11:07');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 36', '2017-10-04 22:12:16');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 36', '2017-10-04 22:13:13');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-04 22:13:19');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-10-05 05:02:03');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-10-05 05:03:26');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-05 09:02:09');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 36', '2017-10-05 09:02:21');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 37', '2017-10-05 09:02:43');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 35', '2017-10-05 09:02:51');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-05 11:31:18');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-05 11:39:14');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 4-1747 DEL TURNO 3', '2017-10-05 11:39:42');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 4-1747 DEL TURNO 4', '2017-10-05 11:40:05');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-05 11:40:10');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 4-1747 DEL TURNO 5', '2017-10-05 11:40:27');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 11:41:08');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 11:41:08');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 11:42:30');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 11:42:30');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 11:43:25');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 11:43:25');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 11:44:52');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 11:44:52');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-05 11:46:13');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-05 11:47:54');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-05 11:48:40');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-05 11:49:18');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-05 11:49:27');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-05 12:48:55');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 12:50:55');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 12:50:55');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 12:53:24');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 12:53:24');
INSERT INTO `log` VALUES ('18', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 38', '2017-10-05 12:54:37');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 12:56:54');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 12:56:54');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-05 12:57:31');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-05 13:01:59');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:02:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:02:32');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:02:34');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:02:35');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 38', '2017-10-05 13:02:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:03:11');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:03:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:03:18');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:03:20');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:03:44');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:03:56');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:04:41');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:04:42');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:04:43');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:04:44');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:04:44');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:04:45');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:04:55');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:04:57');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:04:58');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:04:59');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:05:01');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:05:02');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 38', '2017-10-05 13:06:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 38', '2017-10-05 13:06:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 38', '2017-10-05 13:06:46');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 38', '2017-10-05 13:07:17');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 38', '2017-10-05 13:08:00');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-05 13:08:37');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-05 13:22:28');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 38', '2017-10-05 13:22:46');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 38', '2017-10-05 13:22:59');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-05 13:23:14');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-05 13:24:01');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-05 13:24:51');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-05 13:25:43');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:42:40');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-05 13:44:38');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-05 13:51:01');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:57:42');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:59:41');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 13:59:59');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 14:00:46');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 38', '2017-10-05 14:00:52');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 38', '2017-10-05 14:03:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 38', '2017-10-05 14:03:32');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 14:05:15');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 14:05:15');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 14:06:10');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 38', '2017-10-05 14:06:10');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-05 14:06:56');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-05 17:09:49');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 17:12:19');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 17:12:19');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 17:15:28');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 17:15:28');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:16:10');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:16:20');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:16:28');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:17:36');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:17:51');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:18:02');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:18:13');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 39', '2017-10-05 17:18:38');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:19:04');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:19:20');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:21:15');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:21:27');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 17:22:00');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 39', '2017-10-05 17:22:57');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 39', '2017-10-05 17:23:46');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 39', '2017-10-05 17:25:13');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 39', '2017-10-05 17:25:55');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 18:43:33');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 18:43:33');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 18:45:48');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 18:45:48');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 18:46:12');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 18:46:12');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 39', '2017-10-05 18:46:43');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 39', '2017-10-05 18:46:50');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 18:48:25');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 18:48:25');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 18:49:49');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 18:49:49');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 39', '2017-10-05 18:58:10');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-05 20:28:59');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 20:30:11');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 20:30:11');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 20:31:45');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 20:31:45');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 20:32:22');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 20:32:30');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 20:32:38');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 39', '2017-10-05 20:33:15');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-05 21:07:42');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-05 21:10:16');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-05 21:11:55');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-05 21:15:25');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-05 21:16:29');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 4-1747 DEL TURNO 02:00PM-10:00PM', '2017-10-05 21:19:00');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 21:24:26');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 21:24:34');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 21:24:47');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 39', '2017-10-05 21:25:15');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 21:25:49');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 39', '2017-10-05 21:25:58');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 39', '2017-10-05 21:29:49');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 39', '2017-10-05 21:31:34');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE INSUMO DEL RPT CON ID 39', '2017-10-05 21:32:30');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 39', '2017-10-05 21:35:04');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 21:54:38');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 21:54:38');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 21:56:20');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 21:56:21');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 1 AL RPT CON ID 39', '2017-10-05 21:57:07');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 39', '2017-10-05 21:57:34');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 4 AL RPT CON ID 39', '2017-10-05 21:57:59');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 5 AL RPT CON ID 39', '2017-10-05 21:58:18');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 22:01:19');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 39', '2017-10-05 22:01:19');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-05 22:01:56');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-06 06:41:48');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-06 06:42:08');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-06 09:04:13');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 38', '2017-10-06 09:04:29');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 39', '2017-10-06 09:04:43');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 40', '2017-10-06 09:06:45');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-06 10:17:06');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-06 10:19:20');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-06 10:39:29');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-06 10:39:33');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-06 10:40:30');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 29', '2017-10-06 10:40:53');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 33', '2017-10-06 10:41:17');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-06 10:41:40');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 5-1747 DEL TURNO 3', '2017-10-06 10:42:04');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 5-1747 DEL TURNO 4', '2017-10-06 10:42:28');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 5-1747 DEL TURNO 5', '2017-10-06 10:42:48');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-06 11:03:32');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 41', '2017-10-06 11:04:15');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 41', '2017-10-06 11:04:15');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 41', '2017-10-06 11:05:00');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 41', '2017-10-06 11:05:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 41', '2017-10-06 11:05:33');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 41', '2017-10-06 11:05:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 41', '2017-10-06 11:06:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 41', '2017-10-06 11:06:34');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 41', '2017-10-06 11:06:38');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 41', '2017-10-06 11:06:46');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 41', '2017-10-06 11:06:48');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 41', '2017-10-06 11:07:22');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 41', '2017-10-06 11:07:49');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-06 11:08:41');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 5-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-06 11:09:16');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-06 11:09:30');
INSERT INTO `log` VALUES ('17', 'INGRESO AL SISTEMA', '2017-10-06 11:25:05');
INSERT INTO `log` VALUES ('17', 'INGRESO AL SISTEMA', '2017-10-06 11:25:48');
INSERT INTO `log` VALUES ('17', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1747', '2017-10-06 11:30:38');
INSERT INTO `log` VALUES ('17', 'INGRESO AL SISTEMA', '2017-10-06 11:31:05');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 1', '2017-10-06 13:36:49');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-10-06 13:37:02');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 1', '2017-10-06 14:12:33');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 8', '2017-10-06 14:13:20');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 5', '2017-10-06 14:14:16');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 9', '2017-10-06 14:30:04');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 10', '2017-10-06 14:30:16');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 11', '2017-10-06 14:30:23');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 14', '2017-10-06 14:36:20');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 15', '2017-10-06 14:36:45');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 16', '2017-10-06 14:37:00');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 17', '2017-10-06 14:37:37');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 18', '2017-10-06 14:37:55');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 19', '2017-10-06 14:38:13');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 20', '2017-10-06 14:38:50');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 21', '2017-10-06 14:39:07');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 22', '2017-10-06 14:39:22');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 23', '2017-10-06 14:39:37');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 24', '2017-10-06 14:39:51');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 25', '2017-10-06 14:40:03');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 26', '2017-10-06 14:40:19');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 27', '2017-10-06 14:40:32');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 28', '2017-10-06 14:40:41');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 29', '2017-10-06 14:48:45');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 30', '2017-10-06 14:49:08');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 31', '2017-10-06 14:49:26');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 32', '2017-10-06 14:49:44');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 33', '2017-10-06 14:50:00');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 34', '2017-10-06 14:50:14');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 35', '2017-10-06 14:51:12');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 36', '2017-10-06 14:51:25');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 37', '2017-10-06 14:51:39');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 38', '2017-10-06 14:51:54');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 39', '2017-10-06 14:52:20');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 40', '2017-10-06 14:52:29');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 41', '2017-10-06 14:52:42');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 42', '2017-10-06 14:52:59');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 42', '2017-10-06 14:53:33');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-06 16:37:30');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 41', '2017-10-06 16:59:18');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 42', '2017-10-06 16:59:38');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 38', '2017-10-06 16:59:46');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-10-06 18:07:01');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-07 07:57:20');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-07 08:14:02');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-07 12:44:37');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 6-1747 DEL TURNO 3', '2017-10-07 12:45:11');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 6-1747 DEL TURNO 4', '2017-10-07 12:45:32');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 6-1747 DEL TURNO 5', '2017-10-07 12:45:58');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-07 13:11:11');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:14:02');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:14:02');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:20:31');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:20:31');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:21:18');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:21:18');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:23:13');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:23:13');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:24:06');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:24:06');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:27:55');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:27:55');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 6-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-07 13:29:36');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 6-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-07 13:30:30');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 6-1747 DEL TURNO 06:00AM-02:00PM', '2017-10-07 13:31:21');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:42:24');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:42:28');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:42:31');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:42:34');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:42:38');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:42:42');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:42:54');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:02');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:12');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:18');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:27');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:33');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:56');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:58');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:58');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:43:59');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:44:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:44:01');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:44:34');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:44:36');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:44:37');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:44:38');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:44:39');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 44', '2017-10-07 13:44:41');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 44', '2017-10-07 13:46:04');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 44', '2017-10-07 13:46:22');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-07 13:46:37');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-07 13:47:41');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:48:59');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:48:59');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:49:52');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 44', '2017-10-07 13:49:52');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-07 13:50:07');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-07 13:54:41');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 44', '2017-10-07 13:55:10');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-07 13:55:13');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-07 18:52:03');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 45', '2017-10-07 18:56:18');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 45', '2017-10-07 18:56:18');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 45', '2017-10-07 18:57:17');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 45', '2017-10-07 18:57:17');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 45', '2017-10-07 19:04:07');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 45', '2017-10-07 19:04:07');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-07 21:18:51');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-09 08:02:43');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 44', '2017-10-09 08:02:56');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 45', '2017-10-09 08:03:11');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 46', '2017-10-09 08:03:15');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 20', '2017-10-09 08:05:14');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-09 09:32:59');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-09 11:30:16');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1755', '2017-10-09 11:31:23');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-09 11:31:37');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-09 11:32:28');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1755 DEL TURNO 3', '2017-10-09 11:33:01');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1755 DEL TURNO 4', '2017-10-09 11:33:26');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1755 DEL TURNO 5', '2017-10-09 11:33:47');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-10-09 21:52:24');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-10-09 21:52:58');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-10-09 21:53:19');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-09 23:06:17');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-09 23:06:37');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-10 00:15:30');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 00:16:41');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 00:16:41');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 00:17:24');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 00:17:24');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-10 00:18:06');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-10 02:12:26');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 02:13:36');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 02:13:36');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 02:14:33');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 02:14:33');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-10 02:15:14');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-10 02:15:39');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:16:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:16:05');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:16:11');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:16:29');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:16:31');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:16:34');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 49', '2017-10-10 02:17:11');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 49', '2017-10-10 02:17:33');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 49', '2017-10-10 02:17:48');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:18:44');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:18:46');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:18:47');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:18:52');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:18:53');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 02:18:54');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 04:39:36');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 04:39:36');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 04:40:20');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 04:40:20');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1755 DEL TURNO 10:00PM-06:00AM', '2017-10-10 04:41:42');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1755 DEL TURNO 10:00PM-06:00AM', '2017-10-10 04:42:19');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1755 DEL TURNO 10:00PM-06:00AM', '2017-10-10 04:43:26');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1755 DEL TURNO 10:00PM-06:00AM', '2017-10-10 04:44:20');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1755 DEL TURNO 10:00PM-06:00AM', '2017-10-10 04:45:08');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1755 DEL TURNO 10:00PM-06:00AM', '2017-10-10 04:45:46');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1755 DEL TURNO 10:00PM-06:00AM', '2017-10-10 04:46:20');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-10 04:50:24');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:27:22');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:27:29');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:27:36');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:27:48');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:27:50');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:27:53');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:28:02');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:28:03');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:28:04');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:28:13');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:28:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 49', '2017-10-10 05:28:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 49', '2017-10-10 05:28:42');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 49', '2017-10-10 05:29:02');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 49', '2017-10-10 05:29:16');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 1 AL RPT CON ID 49', '2017-10-10 05:30:25');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 49', '2017-10-10 05:30:54');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 3 AL RPT CON ID 49', '2017-10-10 05:31:05');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 4 AL RPT CON ID 49', '2017-10-10 05:31:23');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 5 AL RPT CON ID 49', '2017-10-10 05:31:27');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 6 AL RPT CON ID 49', '2017-10-10 05:31:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 49', '2017-10-10 05:32:22');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 49', '2017-10-10 05:32:35');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 49', '2017-10-10 05:40:50');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 05:48:01');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 05:48:01');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 05:52:35');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 49', '2017-10-10 05:52:35');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-10 05:52:50');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-10 08:35:31');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-10 08:56:36');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 47', '2017-10-10 08:56:51');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 48', '2017-10-10 08:56:57');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 49', '2017-10-10 08:57:01');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-10 10:52:49');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-10 10:54:29');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-10 11:07:19');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-10 12:09:41');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-10 13:00:33');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-10 13:01:12');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-10 13:01:14');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-10 13:40:38');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-10 15:01:42');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 2-1755 DEL TURNO 3', '2017-10-10 15:02:06');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 2-1755 DEL TURNO 4', '2017-10-10 15:02:26');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1762', '2017-10-10 15:03:05');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1762 DEL TURNO 3', '2017-10-10 15:05:54');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1762 DEL TURNO 4', '2017-10-10 15:06:14');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1762 DEL TURNO 5', '2017-10-10 15:06:35');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-11 01:17:30');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-11 01:17:41');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-11 01:18:58');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-11 06:49:08');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1767', '2017-10-11 06:49:58');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID64', '2017-10-11 06:50:32');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1767 DEL TURNO 3', '2017-10-11 06:51:19');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1767 DEL TURNO 4', '2017-10-11 06:51:40');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1767 DEL TURNO 5', '2017-10-11 06:52:11');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-11 07:17:18');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-11 07:18:59');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-11 08:47:11');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 08:48:42');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 08:48:42');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 08:49:40');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 08:49:40');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 10:10:06');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 10:10:12');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 10:10:25');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 10:10:58');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-11 10:35:00');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 11:48:06');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 11:48:12');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 11:48:27');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 11:48:51');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 11:49:00');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 55', '2017-10-11 11:49:34');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 55', '2017-10-11 11:50:09');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 55', '2017-10-11 11:50:33');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 11:50:57');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 55', '2017-10-11 11:51:07');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 11:53:42');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 11:53:42');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 11:55:05');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 11:55:05');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 11:57:09');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 11:57:09');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 11:58:04');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 11:58:04');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 55', '2017-10-11 11:58:56');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 55', '2017-10-11 11:59:08');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 55', '2017-10-11 11:59:36');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 12:01:32');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 12:01:32');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 12:16:53');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 12:16:53');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 13:29:15');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 13:29:15');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1767 DEL TURNO 06:00AM-02:00PM', '2017-10-11 13:36:25');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1767 DEL TURNO 06:00AM-02:00PM', '2017-10-11 13:38:41');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1767 DEL TURNO 06:00AM-02:00PM', '2017-10-11 13:40:29');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 55', '2017-10-11 13:53:42');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 55', '2017-10-11 13:54:35');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 55', '2017-10-11 13:55:08');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 55', '2017-10-11 14:10:22');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 4 AL RPT CON ID 55', '2017-10-11 14:10:59');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 5 AL RPT CON ID 55', '2017-10-11 14:11:12');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 6 AL RPT CON ID 55', '2017-10-11 14:11:24');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 14:13:53');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 14:13:53');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 14:15:53');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 55', '2017-10-11 14:15:53');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-11 14:16:11');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-11 23:48:35');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-11 23:48:46');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-12 15:22:25');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 55', '2017-10-12 15:23:13');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 56', '2017-10-12 15:23:20');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 57', '2017-10-12 15:23:25');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-10-12 15:23:30');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-13 08:36:18');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 55', '2017-10-13 08:39:42');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-13 11:14:41');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-10-13 11:16:05');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-17 11:29:56');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 57', '2017-10-17 11:30:23');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-18 08:55:12');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1800', '2017-10-18 08:56:55');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-10-18 08:58:40');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-18 08:58:58');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1800 DEL TURNO 3', '2017-10-18 08:59:50');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1800 DEL TURNO 4', '2017-10-18 09:00:15');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1800 DEL TURNO 5', '2017-10-18 09:00:43');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-19 11:30:07');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1805', '2017-10-19 11:30:38');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1805 DEL TURNO 3', '2017-10-19 11:32:19');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1805 DEL TURNO 4', '2017-10-19 11:32:40');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1805 DEL TURNO 5', '2017-10-19 11:33:01');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-19 14:58:14');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-19 16:37:40');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-19 16:48:00');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-19 16:49:52');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-19 16:54:26');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:55:58');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:56:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:56:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:56:34');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:56:37');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:56:46');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:56:49');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:56:52');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:57:02');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:57:03');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:57:04');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:57:10');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:57:12');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 16:57:13');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 62', '2017-10-19 16:57:41');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 62', '2017-10-19 16:57:53');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 62', '2017-10-19 16:58:07');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 16:59:39');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 16:59:39');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1805 DEL TURNO 02:00PM-10:00PM', '2017-10-19 17:00:41');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-19 17:00:54');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-19 19:08:36');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 19:09:42');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 19:09:42');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 19:12:34');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 19:12:34');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 19:14:12');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 19:14:12');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1805 DEL TURNO 02:00PM-10:00PM', '2017-10-19 19:15:35');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1805 DEL TURNO 02:00PM-10:00PM', '2017-10-19 19:16:05');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1805 DEL TURNO 02:00PM-10:00PM', '2017-10-19 19:16:56');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1805 DEL TURNO 02:00PM-10:00PM', '2017-10-19 19:17:31');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1805 DEL TURNO 02:00PM-10:00PM', '2017-10-19 19:18:11');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-19 19:18:41');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-19 20:02:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:03:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:03:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:03:26');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:03:29');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:03:38');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:03:41');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:03:48');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:03:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:03:58');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:04:01');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 62', '2017-10-19 20:04:24');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 62', '2017-10-19 20:04:34');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-19 20:15:51');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-19 20:17:05');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:17:25');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:17:32');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:17:40');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:17:46');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 20:17:53');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 62', '2017-10-19 20:18:39');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-19 20:18:59');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-19 20:48:36');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 62', '2017-10-19 20:49:16');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 62', '2017-10-19 20:49:48');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 21:14:16');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 21:14:16');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 21:15:04');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 21:15:04');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1805 DEL TURNO 02:00PM-10:00PM', '2017-10-19 21:18:04');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 21:42:39');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 21:43:06');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 21:43:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 21:43:19');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 21:43:24');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 62', '2017-10-19 21:43:54');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 62', '2017-10-19 21:44:36');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 62', '2017-10-19 21:45:17');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-19 21:46:49');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-19 21:52:41');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 21:59:01');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 21:59:01');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 22:01:20');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 62', '2017-10-19 22:01:20');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-19 22:03:05');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-20 10:18:11');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 61', '2017-10-20 10:18:27');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 62', '2017-10-20 10:18:31');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 63', '2017-10-20 10:20:33');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-20 15:41:28');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-10-20 17:59:16');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-23 11:32:52');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-10-23 18:05:15');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-24 15:37:28');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID67', '2017-10-24 15:38:18');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-24 16:06:37');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-24 16:44:47');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-25 17:22:10');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1815', '2017-10-25 17:23:38');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1815 DEL TURNO 4', '2017-10-25 17:24:23');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1815 DEL TURNO 5', '2017-10-25 17:24:47');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-26 08:14:57');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1820', '2017-10-26 08:16:03');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1820 DEL TURNO 3', '2017-10-26 08:18:04');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1820 DEL TURNO 4', '2017-10-26 08:18:35');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1820 DEL TURNO 5', '2017-10-26 08:19:09');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-26 09:11:55');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-26 09:13:01');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-26 09:15:08');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 66', '2017-10-26 09:16:14');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 66', '2017-10-26 09:16:14');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 66', '2017-10-26 09:16:56');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 66', '2017-10-26 09:16:56');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-26 09:20:49');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-26 10:04:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 10:05:33');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 10:05:39');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 10:05:50');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 10:05:53');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 10:06:10');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 10:06:13');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 10:06:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 10:06:22');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 10:06:25');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 66', '2017-10-26 10:07:04');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 66', '2017-10-26 10:07:22');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-26 10:07:37');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-26 10:42:17');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1820 DEL TURNO 06:00AM-02:00PM', '2017-10-26 10:43:01');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1820 DEL TURNO 06:00AM-02:00PM', '2017-10-26 10:43:41');
INSERT INTO `log` VALUES ('18', 'ELIMINO UN REGISTRO DE UNA CARGA DEL REPORTE CON ID 66', '2017-10-26 10:44:28');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 66', '2017-10-26 10:46:36');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 66', '2017-10-26 10:46:36');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 66', '2017-10-26 10:47:23');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 66', '2017-10-26 10:47:23');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-26 10:51:32');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-26 11:38:59');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 11:40:50');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 11:41:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 11:41:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 11:41:13');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 11:41:50');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 11:41:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 11:42:03');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 66', '2017-10-26 11:42:06');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 66', '2017-10-26 11:42:48');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 66', '2017-10-26 11:43:39');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 66', '2017-10-26 11:49:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 66', '2017-10-26 11:49:29');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 66', '2017-10-26 11:50:07');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-26 11:50:34');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-10-26 16:37:16');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 66', '2017-10-26 16:37:30');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 67', '2017-10-26 16:37:37');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 68', '2017-10-26 16:37:42');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-26 16:49:20');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 16:58:24');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 16:58:46');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 16:59:33');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 16:59:46');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 17:00:06');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 17:00:18');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 17:01:31');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 17:01:43');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 17:02:06');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 17:02:23');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 67', '2017-10-26 17:03:39');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 67', '2017-10-26 17:04:01');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 67', '2017-10-26 17:04:28');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 67', '2017-10-26 17:04:52');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 17:08:17');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 17:08:17');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 17:09:32');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 17:09:32');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-10-26 17:10:11');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:01:10');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:01:10');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:02:03');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:02:03');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 67', '2017-10-26 20:07:16');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 67', '2017-10-26 20:07:44');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 67', '2017-10-26 20:08:11');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 67', '2017-10-26 20:09:32');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 20:09:59');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 20:10:13');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 20:10:27');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 20:10:34');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 20:10:48');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 20:11:44');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:29:25');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:29:25');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:30:11');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:30:11');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:31:42');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:31:42');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:32:23');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 20:32:23');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 67', '2017-10-26 20:32:59');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 67', '2017-10-26 20:33:07');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 67', '2017-10-26 20:45:11');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 67', '2017-10-26 20:45:46');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1820 DEL TURNO 02:00PM-10:00PM', '2017-10-26 21:04:45');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1820 DEL TURNO 02:00PM-10:00PM', '2017-10-26 21:06:55');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1820 DEL TURNO 02:00PM-10:00PM', '2017-10-26 21:08:09');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1820 DEL TURNO 02:00PM-10:00PM', '2017-10-26 21:09:17');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1820 DEL TURNO 02:00PM-10:00PM', '2017-10-26 21:11:01');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN TIEMPO MUERTO DEL REPORTE CON ID NO. 67', '2017-10-26 21:12:43');
INSERT INTO `log` VALUES ('10', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1820 DEL TURNO 02:00PM-10:00PM', '2017-10-26 21:14:00');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 21:17:19');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 21:17:36');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 21:17:55');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 21:18:09');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 67', '2017-10-26 21:19:08');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 67', '2017-10-26 21:20:18');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 67', '2017-10-26 21:20:30');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 67', '2017-10-26 21:21:09');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 67', '2017-10-26 21:21:45');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO UN REGISTRO DE HORA MOLIENDA DEL RPT CON ID 67', '2017-10-26 21:22:46');
INSERT INTO `log` VALUES ('10', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 67', '2017-10-26 21:23:11');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 21:25:56');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 21:26:22');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 21:26:52');
INSERT INTO `log` VALUES ('10', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 67', '2017-10-26 21:27:06');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 67', '2017-10-26 21:28:43');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 4 AL RPT CON ID 67', '2017-10-26 21:28:56');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 5 AL RPT CON ID 67', '2017-10-26 21:29:02');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 6 AL RPT CON ID 67', '2017-10-26 21:29:18');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 67', '2017-10-26 21:31:43');
INSERT INTO `log` VALUES ('10', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 67', '2017-10-26 21:33:06');
INSERT INTO `log` VALUES ('10', 'ELIMINO UN REGISTRO DE INSUMO DEL RPT CON ID 67', '2017-10-26 21:33:36');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-26 21:53:44');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 21:55:00');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 21:55:00');
INSERT INTO `log` VALUES ('10', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 21:56:12');
INSERT INTO `log` VALUES ('10', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 67', '2017-10-26 21:56:12');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-10-26 21:57:41');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-27 07:19:05');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-27 07:19:18');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-27 08:40:51');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-27 08:49:47');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-10-27 16:55:00');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-28 10:16:29');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-10-31 11:50:39');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 4853', '2017-10-31 11:51:17');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID69', '2017-10-31 11:51:25');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-4853 DEL TURNO 3', '2017-10-31 11:52:37');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-4853 DEL TURNO 4', '2017-10-31 11:53:01');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-4853 DEL TURNO 5', '2017-10-31 11:54:00');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-10-31 23:19:18');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-10-31 23:19:58');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-01 05:41:57');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:43:00');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:43:00');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:43:46');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:43:46');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:44:40');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:44:40');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:45:19');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:45:19');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:46:17');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:46:17');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:47:06');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:47:06');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:47:49');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:47:49');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:05');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:18');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:23');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:27');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:38');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:41');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:43');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:45');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:47');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:49');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:52');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:49:59');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:01');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:01');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:02');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:03');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:04');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:05');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:11');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:13');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:16');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:17');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:18');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:19');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 71', '2017-11-01 05:50:52');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 71', '2017-11-01 05:52:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 71', '2017-11-01 05:53:06');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 71', '2017-11-01 05:54:07');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 71', '2017-11-01 05:54:28');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 71', '2017-11-01 05:54:47');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 71', '2017-11-01 05:55:01');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 71', '2017-11-01 05:55:16');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 71', '2017-11-01 05:55:55');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 71', '2017-11-01 05:56:26');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 71', '2017-11-01 05:56:45');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:59:12');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 05:59:12');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 06:00:06');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 71', '2017-11-01 06:00:06');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-01 06:01:26');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-11-01 07:41:19');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1859', '2017-11-01 07:41:44');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID70', '2017-11-01 07:41:53');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1859 DEL TURNO 3', '2017-11-01 07:42:23');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1859 DEL TURNO 4', '2017-11-01 07:42:39');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1859 DEL TURNO 5', '2017-11-01 07:42:57');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-01 08:30:23');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 72', '2017-11-01 08:32:18');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 73', '2017-11-01 08:32:23');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 74', '2017-11-01 08:32:28');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 64', '2017-11-01 08:32:51');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 65', '2017-11-01 08:32:57');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-01 11:01:56');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-01 11:02:21');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 72', '2017-11-01 16:06:01');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 73', '2017-11-01 16:06:06');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 74', '2017-11-01 16:06:11');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-01 17:37:06');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-02 00:36:45');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 00:38:06');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 00:38:06');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 00:38:54');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 00:38:54');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-02 00:39:26');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-02 03:59:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 03:59:38');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 03:59:42');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 03:59:47');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 03:59:50');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 03:59:56');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:07');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:12');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:14');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:21');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:22');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:23');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:24');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:25');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:31');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:32');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:33');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:00:34');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 74', '2017-11-02 04:00:56');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 74', '2017-11-02 04:01:10');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 74', '2017-11-02 04:01:23');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 74', '2017-11-02 04:01:37');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 74', '2017-11-02 04:01:55');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 04:03:16');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 04:03:16');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 04:06:25');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 04:06:25');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-02 04:07:04');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-02 04:17:22');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 04:18:10');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 04:18:10');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 04:19:06');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 04:19:06');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-02 04:20:28');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-02 04:49:43');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:50:00');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:50:09');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:50:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 04:50:21');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 74', '2017-11-02 04:51:00');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1859 DEL TURNO 10:00PM-06:00AM', '2017-11-02 04:52:02');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1859 DEL TURNO 10:00PM-06:00AM', '2017-11-02 04:52:31');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1859 DEL TURNO 10:00PM-06:00AM', '2017-11-02 04:53:18');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1859 DEL TURNO 10:00PM-06:00AM', '2017-11-02 04:54:02');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1859 DEL TURNO 10:00PM-06:00AM', '2017-11-02 04:54:33');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1859 DEL TURNO 10:00PM-06:00AM', '2017-11-02 04:55:38');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-02 04:57:49');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-02 05:27:31');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 05:27:55');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 05:28:11');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 05:28:17');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 74', '2017-11-02 05:28:24');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-02 05:29:00');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-02 05:29:35');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 74', '2017-11-02 05:29:56');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-02 05:29:58');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-02 05:42:44');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 74', '2017-11-02 05:43:05');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 74', '2017-11-02 05:43:20');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-02 05:43:43');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-02 05:51:39');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 05:52:30');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 05:52:30');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 05:58:09');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 74', '2017-11-02 05:58:09');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-02 05:59:22');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-11-02 11:31:58');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1862', '2017-11-02 11:32:26');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID71', '2017-11-02 11:32:37');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1862 DEL TURNO 3', '2017-11-02 11:33:24');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1862 DEL TURNO 4', '2017-11-02 11:33:46');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1862 DEL TURNO 5', '2017-11-02 11:34:44');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-11-02 13:14:38');
INSERT INTO `log` VALUES ('10', 'INGRESO AL SISTEMA', '2017-11-02 13:15:32');
INSERT INTO `log` VALUES ('10', 'CERRO SESION ', '2017-11-02 13:15:37');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-11-03 09:23:21');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1866', '2017-11-03 09:24:47');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID72', '2017-11-03 09:24:54');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1866 DEL TURNO 3', '2017-11-03 09:26:20');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1866 DEL TURNO 4', '2017-11-03 09:26:44');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1866 DEL TURNO 5', '2017-11-03 09:27:03');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-06 14:36:41');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-06 14:37:15');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-06 14:38:10');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-06 15:29:21');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 78', '2017-11-06 15:30:40');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 79', '2017-11-06 15:30:44');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 80', '2017-11-06 15:30:49');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-06 16:25:35');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-06 16:54:18');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 78', '2017-11-06 16:54:33');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 79', '2017-11-06 16:54:37');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 80', '2017-11-06 16:54:41');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-06 17:02:26');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-06 17:02:28');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-06 17:02:39');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-06 17:16:14');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-06 18:12:43');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-07 12:04:40');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-07 13:34:12');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-07 16:27:55');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 78', '2017-11-07 16:28:00');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 79', '2017-11-07 16:28:05');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 80', '2017-11-07 16:28:08');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 75', '2017-11-07 16:29:10');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 76', '2017-11-07 16:29:15');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 77', '2017-11-07 16:29:20');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 72', '2017-11-07 16:29:28');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 73', '2017-11-07 16:29:32');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 74', '2017-11-07 16:29:37');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 69', '2017-11-07 16:32:44');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 70', '2017-11-07 16:32:48');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 71', '2017-11-07 16:32:52');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 66', '2017-11-07 16:33:06');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 67', '2017-11-07 16:33:13');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 68', '2017-11-07 16:33:19');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-07 18:17:04');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-07 18:42:05');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-08 10:13:47');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-08 10:43:02');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-08 15:41:24');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-08 16:42:31');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-08 16:42:36');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-08 17:11:06');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-08 18:06:32');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-08 20:05:18');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-08 20:05:24');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-09 08:26:41');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-11-09 10:36:08');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1884', '2017-11-09 10:36:50');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID73', '2017-11-09 10:37:06');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1884 DEL TURNO 3', '2017-11-09 10:37:47');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1884 DEL TURNO 4', '2017-11-09 10:38:18');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1884 DEL TURNO 5', '2017-11-09 10:38:52');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-11-09 10:39:23');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-11-09 10:43:03');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-11-09 10:53:23');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1889', '2017-11-09 10:53:52');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID74', '2017-11-09 10:53:58');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1889 DEL TURNO 3', '2017-11-09 10:55:26');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1889 DEL TURNO 4', '2017-11-09 10:56:41');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1889 DEL TURNO 5', '2017-11-09 10:57:04');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 84', '2017-11-09 16:43:38');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 85', '2017-11-09 16:43:43');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 86', '2017-11-09 16:43:48');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 81', '2017-11-09 16:44:35');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 82', '2017-11-09 16:44:40');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 83', '2017-11-09 16:44:46');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 84', '2017-11-09 17:50:36');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 85', '2017-11-09 17:50:40');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 86', '2017-11-09 17:50:45');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-09 18:23:32');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-11-10 10:09:18');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1893', '2017-11-10 10:10:02');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1893 DEL TURNO 3', '2017-11-10 10:11:26');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1893 DEL TURNO 4', '2017-11-10 10:11:50');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1893 DEL TURNO 5', '2017-11-10 10:12:08');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-11-10 13:39:07');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-11-10 13:39:11');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-11-10 13:40:15');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-11-10 13:40:18');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-11-10 13:40:25');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-11-10 13:41:01');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-11-10 13:49:58');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-11-10 13:50:04');
INSERT INTO `log` VALUES ('19', 'INGRESO AL SISTEMA', '2017-11-10 13:55:15');
INSERT INTO `log` VALUES ('19', 'CERRO SESION ', '2017-11-10 13:56:20');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-10 13:56:34');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-10 13:56:40');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-10 15:28:39');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 87', '2017-11-10 15:28:46');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 88', '2017-11-10 15:28:51');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 89', '2017-11-10 15:28:55');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-10 16:50:21');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 16:51:41');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 16:51:41');
INSERT INTO `log` VALUES ('18', 'ELIMINO UN REGISTRO DE PRODUCCION DEL RPT CON ID 88', '2017-11-10 16:52:19');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 16:54:03');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 16:54:03');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 16:54:40');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 16:54:40');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 87', '2017-11-10 17:03:23');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 88', '2017-11-10 17:03:27');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 89', '2017-11-10 17:03:38');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-10 17:03:48');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-10 17:08:28');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-10 18:20:15');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 18:21:15');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 18:21:15');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 18:21:54');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 18:21:54');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-10 18:22:42');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-10 18:37:13');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:37:42');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:37:46');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:37:51');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:37:55');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:37:58');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:38:15');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:38:19');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:38:21');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:38:23');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:38:25');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:39:28');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:39:29');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:39:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:39:31');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 18:39:32');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 88', '2017-11-10 18:40:07');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 88', '2017-11-10 18:40:18');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 88', '2017-11-10 18:40:28');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 88', '2017-11-10 18:40:39');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 88', '2017-11-10 18:40:49');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1893 DEL TURNO 02:00PM-10:00PM', '2017-11-10 18:41:47');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1893 DEL TURNO 02:00PM-10:00PM', '2017-11-10 18:42:19');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1893 DEL TURNO 02:00PM-10:00PM', '2017-11-10 18:43:14');
INSERT INTO `log` VALUES ('18', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-1893 DEL TURNO 02:00PM-10:00PM', '2017-11-10 18:43:37');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-10 18:43:52');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-10 20:14:57');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 20:15:30');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 20:15:35');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 20:15:41');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-10 20:15:49');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-10 21:10:48');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 21:13:10');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 21:13:10');
INSERT INTO `log` VALUES ('18', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 21:14:11');
INSERT INTO `log` VALUES ('18', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 88', '2017-11-10 21:14:12');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 21:16:55');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 21:17:03');
INSERT INTO `log` VALUES ('18', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 88', '2017-11-10 21:17:08');
INSERT INTO `log` VALUES ('18', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 88', '2017-11-10 21:17:26');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 88', '2017-11-10 21:18:07');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-10 21:33:12');
INSERT INTO `log` VALUES ('18', 'INGRESO AL SISTEMA', '2017-11-10 21:34:57');
INSERT INTO `log` VALUES ('18', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 88', '2017-11-10 21:36:14');
INSERT INTO `log` VALUES ('18', 'CERRO SESION ', '2017-11-10 21:36:35');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-13 07:55:18');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 87', '2017-11-13 07:55:42');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 88', '2017-11-13 07:55:47');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 89', '2017-11-13 07:56:03');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-13 08:18:20');
INSERT INTO `log` VALUES ('15', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 88', '2017-11-13 08:26:32');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-13 18:20:09');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-14 08:11:56');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-14 18:08:03');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-15 08:16:07');
INSERT INTO `log` VALUES ('15', 'INGRESO AL SISTEMA', '2017-11-15 16:50:29');
INSERT INTO `log` VALUES ('15', 'CERRO SESION ', '2017-11-15 18:05:42');
INSERT INTO `log` VALUES ('28', 'INGRESO AL SISTEMA', '2017-11-16 14:25:47');
INSERT INTO `log` VALUES ('28', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 87', '2017-11-16 14:26:24');
INSERT INTO `log` VALUES ('28', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 87', '2017-11-16 14:26:25');
INSERT INTO `log` VALUES ('28', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 87', '2017-11-16 14:26:34');
INSERT INTO `log` VALUES ('28', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 87', '2017-11-16 14:26:36');
INSERT INTO `log` VALUES ('28', 'CERRO SESION ', '2017-11-16 14:27:22');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-11-16 17:28:38');
INSERT INTO `log` VALUES ('16', 'CERRO SESION ', '2017-11-16 17:28:44');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-11-17 14:40:59');
INSERT INTO `log` VALUES ('16', 'CERRO SESION ', '2017-11-17 14:42:22');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-11-17 14:42:36');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-11-17 14:43:20');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 87', '2017-11-17 14:45:14');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 88', '2017-11-17 14:45:24');
INSERT INTO `log` VALUES ('16', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 89', '2017-11-17 14:45:34');
INSERT INTO `log` VALUES ('16', 'CERRO SESION ', '2017-11-17 14:50:51');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-11-17 15:06:42');
INSERT INTO `log` VALUES ('8', 'CAMBIO ESTADO DE LA ORDEN DE PRODUCCION ID76', '2017-11-17 15:07:11');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 1914', '2017-11-17 15:07:54');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1914 DEL TURNO 3', '2017-11-17 15:08:53');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1914 DEL TURNO 4', '2017-11-17 15:09:25');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-1914 DEL TURNO 5', '2017-11-17 15:10:05');
INSERT INTO `log` VALUES ('16', 'INGRESO AL SISTEMA', '2017-11-17 15:15:34');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-11-17 15:25:03');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1893', '2017-11-17 15:39:26');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 87', '2017-11-17 15:39:53');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 88', '2017-11-17 15:40:33');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 89', '2017-11-17 15:41:04');
INSERT INTO `log` VALUES ('16', 'CERRO SESION ', '2017-11-17 16:33:02');
INSERT INTO `log` VALUES ('17', 'CERRO SESION ', '2017-11-20 17:07:58');
INSERT INTO `log` VALUES ('29', 'INGRESO AL SISTEMA', '2017-11-20 17:12:05');
INSERT INTO `log` VALUES ('29', 'CERRO SESION ', '2017-11-20 17:29:43');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-11-20 17:31:08');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-11-20 17:31:20');
INSERT INTO `log` VALUES ('29', 'INGRESO AL SISTEMA', '2017-11-20 17:31:23');
INSERT INTO `log` VALUES ('29', 'CERRO SESION ', '2017-11-20 20:25:12');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-11-20 20:25:56');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-11-20 20:26:01');
INSERT INTO `log` VALUES ('29', 'INGRESO AL SISTEMA', '2017-11-20 20:26:12');
INSERT INTO `log` VALUES ('29', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 91', '2017-11-20 20:26:38');
INSERT INTO `log` VALUES ('29', 'INSERTO ORDEN DE PRODUCCION NUMERO 2222', '2017-11-20 20:28:14');
INSERT INTO `log` VALUES ('29', 'AGREGO EL CONSECUTIVO NO. 1-2222 DEL TURNO 3', '2017-11-20 20:28:58');
INSERT INTO `log` VALUES ('29', 'CERRO SESION ', '2017-11-20 20:29:02');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-11-20 20:29:08');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 93', '2017-11-20 20:29:23');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 93', '2017-11-20 20:29:25');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-11-20 20:29:50');
INSERT INTO `log` VALUES ('29', 'INGRESO AL SISTEMA', '2017-11-20 20:29:56');
INSERT INTO `log` VALUES ('29', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 8', '2017-11-21 00:41:46');
INSERT INTO `log` VALUES ('29', 'CERRO SESION ', '2017-11-21 01:10:10');
INSERT INTO `log` VALUES ('29', 'INGRESO AL SISTEMA', '2017-11-21 14:44:21');
INSERT INTO `log` VALUES ('29', 'INGRESO AL SISTEMA', '2017-11-22 00:57:09');
INSERT INTO `log` VALUES ('29', 'CERRO SESION ', '2017-11-22 00:58:48');
INSERT INTO `log` VALUES ('29', 'INGRESO AL SISTEMA', '2017-11-22 15:09:38');
INSERT INTO `log` VALUES ('29', 'CERRO SESION ', '2017-11-23 01:02:25');
INSERT INTO `log` VALUES ('29', 'INGRESO AL SISTEMA', '2017-11-23 16:02:59');
INSERT INTO `log` VALUES ('29', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1708', '2017-11-24 00:28:12');
INSERT INTO `log` VALUES ('29', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-1708', '2017-11-24 00:28:52');
INSERT INTO `log` VALUES ('29', 'CERRO SESION ', '2017-11-24 00:59:01');
INSERT INTO `log` VALUES ('29', 'INGRESO AL SISTEMA', '2017-11-24 16:35:22');
INSERT INTO `log` VALUES ('29', 'CERRO SESION ', '2017-11-24 23:19:35');
INSERT INTO `log` VALUES ('29', 'INGRESO AL SISTEMA', '2017-11-27 15:00:04');

-- ----------------------------
-- Table structure for maquinas
-- ----------------------------
DROP TABLE IF EXISTS `maquinas`;
CREATE TABLE `maquinas`  (
  `idMaquina` int(11) NOT NULL AUTO_INCREMENT,
  `maquina` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comentario` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idMaquina`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of maquinas
-- ----------------------------
INSERT INTO `maquinas` VALUES (1, 'Maquina 1', 'Yankee 1');
INSERT INTO `maquinas` VALUES (2, 'Maquina 2', 'Yankee 2');

-- ----------------------------
-- Table structure for metas
-- ----------------------------
DROP TABLE IF EXISTS `metas`;
CREATE TABLE `metas`  (
  `IdMeta` int(11) NOT NULL AUTO_INCREMENT,
  `Consecutivo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FechaMeta` date NULL DEFAULT NULL,
  `Eco24/1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Eco6/4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cholin_8/6` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cholin_900` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Generico_Eco_1000` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Generico_Eco_900` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cholin_HD_32/1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BolsonServilleta` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cholin_HD_Gen32/1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Estado` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`IdMeta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of metas
-- ----------------------------
INSERT INTO `metas` VALUES (28, 'MT-0001', '2017-11-23', '28942', '5621', '2162', '15408', '0', '0', '1800', '320', '0', b'1');

-- ----------------------------
-- Table structure for mp_insumos
-- ----------------------------
DROP TABLE IF EXISTS `mp_insumos`;
CREATE TABLE `mp_insumos`  (
  `IdMpInsumos` int(11) NOT NULL AUTO_INCREMENT,
  `IdReporteDiario` int(11) NULL DEFAULT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Dia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Noche` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cantidad_PTA_Agua_Dia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cantidad_PTA_Agua_Noche` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdMpInsumos`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mp_insumos
-- ----------------------------
INSERT INTO `mp_insumos` VALUES (1, 2, '17', '50', '0', '10', '0');
INSERT INTO `mp_insumos` VALUES (2, 8, '34', '5', '0', '50', '0');
INSERT INTO `mp_insumos` VALUES (5, 14, '34', '14', '0', '14', '0');
INSERT INTO `mp_insumos` VALUES (6, 14, '31', '4', '0', '4', '0');
INSERT INTO `mp_insumos` VALUES (7, 17, '34', '5', '0', '5', '0');
INSERT INTO `mp_insumos` VALUES (8, 17, '31', '7', '0', '7', '0');
INSERT INTO `mp_insumos` VALUES (9, 15, '31', '1kg', '', '', '');
INSERT INTO `mp_insumos` VALUES (10, 18, '31', '4kg', '', '', '');
INSERT INTO `mp_insumos` VALUES (11, 18, '66', '', '', '0.kg', '');
INSERT INTO `mp_insumos` VALUES (12, 16, '34', '0', '4', '0', '4');
INSERT INTO `mp_insumos` VALUES (13, 20, '66', '25', '0', '25', '0');
INSERT INTO `mp_insumos` VALUES (14, 20, '31', '6', '0', '6', '0');
INSERT INTO `mp_insumos` VALUES (15, 21, '66', '', '', '25kg', '');
INSERT INTO `mp_insumos` VALUES (16, 21, '34', '', '', '2kg', '');
INSERT INTO `mp_insumos` VALUES (17, 21, '31', '3kg', '', '', '');
INSERT INTO `mp_insumos` VALUES (18, 23, '66', '50', '0', '50', '0');
INSERT INTO `mp_insumos` VALUES (19, 23, '34', '6', '0', '6', '0');
INSERT INTO `mp_insumos` VALUES (20, 23, '31', '16', '0', '16', '0');
INSERT INTO `mp_insumos` VALUES (21, 24, '34', '', '', '5kg', '');
INSERT INTO `mp_insumos` VALUES (22, 24, '66', '', '', '25kg', '');
INSERT INTO `mp_insumos` VALUES (23, 24, '31', '11kg', '', '', '');
INSERT INTO `mp_insumos` VALUES (24, 27, '66', '', '', '25kg', '');
INSERT INTO `mp_insumos` VALUES (25, 27, '34', '', '', '4', '');
INSERT INTO `mp_insumos` VALUES (26, 27, '31', '11', '', '', '');
INSERT INTO `mp_insumos` VALUES (27, 26, '34', '4', '0', '4', '0');
INSERT INTO `mp_insumos` VALUES (28, 26, '66', '50', '0', '50', '0');
INSERT INTO `mp_insumos` VALUES (29, 26, '31', '17', '0', '17', '0');
INSERT INTO `mp_insumos` VALUES (30, 32, '34', '0', '0', '5', '0');
INSERT INTO `mp_insumos` VALUES (31, 32, '66', '0', '0', '25', '0');
INSERT INTO `mp_insumos` VALUES (32, 32, '31', '9', '0', '0', '0');
INSERT INTO `mp_insumos` VALUES (33, 33, '31', '17', '17', '', '');
INSERT INTO `mp_insumos` VALUES (34, 33, '66', '', '', '50', '50');
INSERT INTO `mp_insumos` VALUES (35, 33, '34', '6', '6', '6', '6');
INSERT INTO `mp_insumos` VALUES (36, 34, '66', '0', '50', '0', '50');
INSERT INTO `mp_insumos` VALUES (37, 34, '34', '0', '5', '0', '5');
INSERT INTO `mp_insumos` VALUES (38, 35, '34', '0', '0', '5', '0');
INSERT INTO `mp_insumos` VALUES (39, 35, '66', '0', '0', '25', '0');
INSERT INTO `mp_insumos` VALUES (40, 35, '31', '9', '0', '0', '0');
INSERT INTO `mp_insumos` VALUES (41, 36, '31', '11', '', '', '');
INSERT INTO `mp_insumos` VALUES (42, 36, '34', '11', '', '', '');
INSERT INTO `mp_insumos` VALUES (43, 36, '66', '11', '', '25', '');
INSERT INTO `mp_insumos` VALUES (44, 38, '34', '0', '0', '6', '0');
INSERT INTO `mp_insumos` VALUES (45, 38, '66', '0', '0', '50', '0');
INSERT INTO `mp_insumos` VALUES (46, 39, '34', '', 'mixto', '20', '');
INSERT INTO `mp_insumos` VALUES (48, 39, '66', '', 'mixto', '50', '');
INSERT INTO `mp_insumos` VALUES (49, 41, '34', '0', '0', '1', '0');
INSERT INTO `mp_insumos` VALUES (50, 41, '66', '0', '0', '25', '0');
INSERT INTO `mp_insumos` VALUES (51, 41, '31', '3', '0', '0', '0');
INSERT INTO `mp_insumos` VALUES (52, 44, '34', '0', '0', '16', '0');
INSERT INTO `mp_insumos` VALUES (53, 44, '66', '0', '0', '50', '0');
INSERT INTO `mp_insumos` VALUES (54, 44, '31', '9.5', '0', '0', '0');
INSERT INTO `mp_insumos` VALUES (55, 49, '66', '0', '0', '0', '25');
INSERT INTO `mp_insumos` VALUES (56, 49, '34', '0', '0', '0', '15');
INSERT INTO `mp_insumos` VALUES (57, 49, '31', '0', '10', '0', '0');
INSERT INTO `mp_insumos` VALUES (58, 55, '66', '50', '0', '00', '0');
INSERT INTO `mp_insumos` VALUES (59, 55, '34', '9', '0', '16', '0');
INSERT INTO `mp_insumos` VALUES (60, 55, '31', '12.5', '0', '0', '0');
INSERT INTO `mp_insumos` VALUES (61, 62, '66', '0', '0', '50', '0');
INSERT INTO `mp_insumos` VALUES (62, 62, '34', '0', '0', '8', '0');
INSERT INTO `mp_insumos` VALUES (63, 62, '31', '9', '0', '0', '0');
INSERT INTO `mp_insumos` VALUES (64, 66, '34', '12', '0', '0', '0');
INSERT INTO `mp_insumos` VALUES (65, 66, '34', '0', '0', '4', '0');
INSERT INTO `mp_insumos` VALUES (66, 66, '66', '0', '0', '25', '0');
INSERT INTO `mp_insumos` VALUES (68, 67, '66', '', '24', '', '50');
INSERT INTO `mp_insumos` VALUES (69, 71, '34', '0', '13.5', '0', '0');
INSERT INTO `mp_insumos` VALUES (70, 71, '34', '0', '0', '0', '11.5');
INSERT INTO `mp_insumos` VALUES (71, 71, '66', '0', '0', '0', '85');
INSERT INTO `mp_insumos` VALUES (72, 74, '34', '0', '0', '0', '5');
INSERT INTO `mp_insumos` VALUES (73, 74, '66', '0', '0', '0', '25');
INSERT INTO `mp_insumos` VALUES (74, 88, '34', '13.5', '0', '0', '0');
INSERT INTO `mp_insumos` VALUES (75, 88, '66', '0', '0', '25', '0');

-- ----------------------------
-- Table structure for orden_produccion
-- ----------------------------
DROP TABLE IF EXISTS `orden_produccion`;
CREATE TABLE `orden_produccion`  (
  `IdOrden` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NoOrden` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Usuario` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FechaInicio` date NULL DEFAULT NULL,
  `FechaFin` date NULL DEFAULT NULL,
  `Estado` int(1) NULL DEFAULT NULL,
  `comentarios` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`IdOrden`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orden_produccion
-- ----------------------------
INSERT INTO `orden_produccion` VALUES (53, '1690', '8', '2017-08-07', '2017-08-13', 2, 'produccion jumbo roll 2da semana de Agosto.');
INSERT INTO `orden_produccion` VALUES (54, '1702', '8', '2017-08-21', '2017-08-27', 2, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (56, '1708', '15', '2017-08-28', '2017-09-03', 2, 'op jumbo roll');
INSERT INTO `orden_produccion` VALUES (57, '1727', '8', '2017-09-11', '2017-09-17', 0, 'orden 1727 jumbo roll');
INSERT INTO `orden_produccion` VALUES (58, '1725', '8', '2017-09-11', '2017-09-17', 2, 'jumbo Roll');
INSERT INTO `orden_produccion` VALUES (60, '1741', '8', '2017-09-25', '2017-09-30', 2, 'op jumbo roll 1741');
INSERT INTO `orden_produccion` VALUES (61, '1751', '8', '2017-10-02', '2017-09-08', 0, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (62, '1747', '8', '2017-10-02', '2017-10-08', 2, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (63, '1755', '8', '2017-10-09', '2017-10-15', 2, 'JUMBO ROLL');
INSERT INTO `orden_produccion` VALUES (64, '1762', '8', '2017-10-10', '2017-10-11', 2, 'higienico');
INSERT INTO `orden_produccion` VALUES (65, '1767', '8', '2017-10-11', '2017-10-12', 2, 'higienico');
INSERT INTO `orden_produccion` VALUES (66, '1800', '8', '2017-10-18', '2017-10-19', 2, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (67, '1805', '8', '2017-10-19', '2017-10-20', 2, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (68, '1815', '8', '2017-10-25', '2017-10-26', 2, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (69, '1820', '8', '2017-10-26', '2017-10-27', 2, 'higienico');
INSERT INTO `orden_produccion` VALUES (70, '4853', '8', '2017-10-31', '2017-11-01', 2, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (71, '1859', '8', '2017-11-01', '2017-11-02', 2, 'jumbo');
INSERT INTO `orden_produccion` VALUES (72, '1862', '8', '2017-11-02', '2017-11-03', 2, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (73, '1866', '8', '2017-11-03', '2017-11-04', 2, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (74, '1884', '8', '2017-11-08', '2017-11-09', 2, 'jumbo');
INSERT INTO `orden_produccion` VALUES (75, '1889', '8', '2017-11-09', '2017-11-10', 2, 'jumbo');
INSERT INTO `orden_produccion` VALUES (76, '1893', '8', '2017-11-10', '2017-11-11', 2, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (77, '1914', '8', '2017-11-17', '2017-11-18', 2, 'jumbo roll');
INSERT INTO `orden_produccion` VALUES (78, '2222', '29', '2017-11-20', '2017-11-25', 1, 'prueba\r\n');

-- ----------------------------
-- Table structure for pasta
-- ----------------------------
DROP TABLE IF EXISTS `pasta`;
CREATE TABLE `pasta`  (
  `IdPasta` int(11) NOT NULL AUTO_INCREMENT,
  `IdReporteDiario` int(11) NULL DEFAULT NULL,
  `Tanque` int(11) NULL DEFAULT NULL,
  `Dia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Noche` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Consumo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdPasta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pasta
-- ----------------------------
INSERT INTO `pasta` VALUES (1, 2, 1, '6000', '0', '700');
INSERT INTO `pasta` VALUES (2, 2, 2, '9600', '0', '0');
INSERT INTO `pasta` VALUES (3, 8, 1, '7000', '0', '0');
INSERT INTO `pasta` VALUES (4, 8, 2, '8000', '0', '00');
INSERT INTO `pasta` VALUES (5, 14, 0, '0', '0', '0');
INSERT INTO `pasta` VALUES (6, 14, 2, '9860', '0', '0');
INSERT INTO `pasta` VALUES (7, 14, 3, '0', '0', '0');
INSERT INTO `pasta` VALUES (8, 14, 4, '9860', '0', '0');
INSERT INTO `pasta` VALUES (9, 14, 5, '9860', '0', '0');
INSERT INTO `pasta` VALUES (10, 14, 6, '9860', '0', '0');
INSERT INTO `pasta` VALUES (11, 16, 2, '0', '9860', '0');
INSERT INTO `pasta` VALUES (12, 16, 4, '0', '9860', '0');
INSERT INTO `pasta` VALUES (13, 16, 5, '0', '9860', '0');
INSERT INTO `pasta` VALUES (14, 16, 6, '0', '9860', '0');
INSERT INTO `pasta` VALUES (15, 33, 4, '9860', '9860', '0');
INSERT INTO `pasta` VALUES (16, 33, 5, '9860', '9860', '0');
INSERT INTO `pasta` VALUES (17, 33, 6, '9860', '9860', '0');
INSERT INTO `pasta` VALUES (18, 34, 4, '0', '9860', '0');
INSERT INTO `pasta` VALUES (19, 34, 5, '0', '9860', '0');
INSERT INTO `pasta` VALUES (20, 34, 6, '0', '9860', '0');
INSERT INTO `pasta` VALUES (22, 36, 1, '6765', 'mixto', '0');
INSERT INTO `pasta` VALUES (23, 36, 2, '9860', 'mixto', '0');
INSERT INTO `pasta` VALUES (27, 36, 5, '6765', 'mixto', '0');
INSERT INTO `pasta` VALUES (28, 36, 5, '6765', 'mixto', '0');
INSERT INTO `pasta` VALUES (29, 39, 1, '', '6765', '0');
INSERT INTO `pasta` VALUES (30, 39, 2, '', '6765', '0');
INSERT INTO `pasta` VALUES (31, 39, 4, '', '8366', '0');
INSERT INTO `pasta` VALUES (32, 39, 5, '', '9800', '0');
INSERT INTO `pasta` VALUES (33, 49, 1, '0', '0', '0');
INSERT INTO `pasta` VALUES (34, 49, 2, '0', '9860', '0');
INSERT INTO `pasta` VALUES (35, 49, 3, '0', '0', '0');
INSERT INTO `pasta` VALUES (36, 49, 4, '0', '9860', '0');
INSERT INTO `pasta` VALUES (37, 49, 5, '0', '9860', '0');
INSERT INTO `pasta` VALUES (38, 49, 6, '0', '9860', '0');
INSERT INTO `pasta` VALUES (39, 55, 2, '5000', '0', '0');
INSERT INTO `pasta` VALUES (40, 55, 4, '0', '0', '0');
INSERT INTO `pasta` VALUES (41, 55, 5, '6000', '0', '0');
INSERT INTO `pasta` VALUES (42, 55, 6, '8000', '0', '0');
INSERT INTO `pasta` VALUES (43, 67, 2, '', '5000', '0');
INSERT INTO `pasta` VALUES (44, 67, 4, '', '9800', '0');
INSERT INTO `pasta` VALUES (45, 67, 5, '', '9800', '0');
INSERT INTO `pasta` VALUES (46, 67, 6, '', '9800', '0');

-- ----------------------------
-- Table structure for pasta_procesada
-- ----------------------------
DROP TABLE IF EXISTS `pasta_procesada`;
CREATE TABLE `pasta_procesada`  (
  `idPastaProc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `codigo` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `noTanque` int(11) NOT NULL,
  `undMedida` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pstTanqueFinal` decimal(10, 2) NULL DEFAULT NULL,
  `consecutivo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPastaProc`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pasta_procesada
-- ----------------------------
INSERT INTO `pasta_procesada` VALUES (2, 'fibra', '78', 1, 'kg', 98.60, '1-5657');
INSERT INTO `pasta_procesada` VALUES (3, 'PASTA', '', 1, 'KG', 950.00, '1-1708');
INSERT INTO `pasta_procesada` VALUES (4, 'fibra', '45', 1, 'gls', 4500.00, '1-4545');

-- ----------------------------
-- Table structure for planes
-- ----------------------------
DROP TABLE IF EXISTS `planes`;
CREATE TABLE `planes`  (
  `IdPlan` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NULL DEFAULT NULL,
  `Comentario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Estado` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`IdPlan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of planes
-- ----------------------------
INSERT INTO `planes` VALUES (10, '2017-07-24', 'orden jumbo roll 1674 24-30/jul', b'0');
INSERT INTO `planes` VALUES (11, '2017-08-07', 'op 1690', b'1');
INSERT INTO `planes` VALUES (12, '2017-08-21', 'op jumbo roll 1702', b'0');

-- ----------------------------
-- Table structure for produccion
-- ----------------------------
DROP TABLE IF EXISTS `produccion`;
CREATE TABLE `produccion`  (
  `IdProduccion` int(11) NOT NULL AUTO_INCREMENT,
  `IdReporteDiario` int(11) NOT NULL,
  `NoOrden` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Operador` int(11) NULL DEFAULT NULL,
  `Maquina` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HoraInicio` time(0) NULL DEFAULT NULL,
  `HoraFin` time(0) NULL DEFAULT NULL,
  `VelocMaquina` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Peso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Diametro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PesoBase` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Merma` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdProduccion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 259 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of produccion
-- ----------------------------
INSERT INTO `produccion` VALUES (1, 2, '1-5657', 14, '2', '06:05:00', '08:00:00', '0', '332', '100', '20', '70');
INSERT INTO `produccion` VALUES (2, 2, '1-5657', 14, '1', '08:05:00', '10:00:00', '0', '100', '110', '80', '80');
INSERT INTO `produccion` VALUES (3, 2, '1-5657', 14, '1', '12:01:00', '12:01:00', '0', '56', '56', '56', '80');
INSERT INTO `produccion` VALUES (5, 6, '1-1702', 22, '1', '06:00:00', '07:53:00', '0', '361.5', '95', '20.37', '0');
INSERT INTO `produccion` VALUES (6, 6, '1-1702', 21, '2', '06:00:00', '07:40:00', '0', '389', '103', '20.83', '0');
INSERT INTO `produccion` VALUES (7, 6, '1-1702', 21, '2', '07:40:00', '09:08:00', '0', '281.5', '80', '20.54', '0');
INSERT INTO `produccion` VALUES (8, 6, '1-1702', 22, '1', '07:53:00', '09:58:00', '0', '410', '102', '20.8', '0');
INSERT INTO `produccion` VALUES (9, 6, '1-1702', 21, '2', '09:08:00', '10:57:00', '0', '414', '99', '21.37', '0');
INSERT INTO `produccion` VALUES (10, 6, '1-1702', 21, '2', '10:53:00', '12:25:00', '0', '390', '95', '21.13', '0');
INSERT INTO `produccion` VALUES (11, 6, '1-1702', 21, '2', '12:25:00', '01:55:00', '0', '354.5', '85', '21.23', '70');
INSERT INTO `produccion` VALUES (12, 6, '1-1702', 21, '2', '12:25:00', '01:55:00', '0', '354.5', '85', '21.23', '70');
INSERT INTO `produccion` VALUES (13, 6, '1-1702', 22, '1', '11:48:00', '01:52:00', '0', '427.5', '101', '20.1', '45');
INSERT INTO `produccion` VALUES (14, 8, '1-1708', 14, '2', '06:00:00', '07:00:00', '0', '200', '50', '20', '60');
INSERT INTO `produccion` VALUES (16, 8, '1-1708', 20, '1', '06:00:00', '06:40:00', '0', '180', '45', '21', '0');
INSERT INTO `produccion` VALUES (17, 8, '1-1708', 20, '1', '06:00:00', '07:26:00', '0', '189', '70', '16', '0');
INSERT INTO `produccion` VALUES (18, 9, '1-1725', 22, '1', '06:22:00', '09:55:00', '0', '415.5', '100', '23.6', '0');
INSERT INTO `produccion` VALUES (20, 9, '1-1725', 22, '1', '09:55:00', '12:22:00', '0', '341', '91', '19.8', '0');
INSERT INTO `produccion` VALUES (21, 9, '1-1725', 22, '1', '12:22:00', '01:50:00', '0', '300.5', '84', '26.5', '65');
INSERT INTO `produccion` VALUES (22, 9, '1-1725', 21, '2', '08:00:00', '08:23:00', '0', '487', '110', '24', '0');
INSERT INTO `produccion` VALUES (23, 9, '1-1725', 21, '2', '08:23:00', '09:47:00', '0', '264', '97', '26.88', '0');
INSERT INTO `produccion` VALUES (24, 9, '1-1725', 21, '2', '09:47:00', '12:25:00', '0', '324.5', '90', '21.3', '0');
INSERT INTO `produccion` VALUES (25, 9, '1-1725', 21, '2', '12:25:00', '01:53:00', '0', '286', '90', '25', '65');
INSERT INTO `produccion` VALUES (26, 13, '1-4545', 14, '1', '02:00:00', '04:00:00', '0', '351', '91', '20.2', '170');
INSERT INTO `produccion` VALUES (27, 13, '1-4545', 14, '1', '04:00:00', '06:00:00', '0', '370', '98', '20.6', '170');
INSERT INTO `produccion` VALUES (28, 13, '1-4545', 20, '2', '02:00:00', '04:00:00', '0', '272.5', '80', '20.8', '90');
INSERT INTO `produccion` VALUES (29, 14, '1-1741', 23, '1', '06:00:00', '07:56:00', '22.00', '380.5', '95', '21.41', '60');
INSERT INTO `produccion` VALUES (30, 14, '1-1741', 23, '1', '07:56:00', '10:00:00', '22.00', '477', '101', '21.1', '0');
INSERT INTO `produccion` VALUES (31, 14, '1-1741', 23, '1', '10:01:00', '11:30:00', '22.00', '333.5', '80', '21.5', '0');
INSERT INTO `produccion` VALUES (32, 17, '2-1741', 23, '1', '06:00:00', '06:11:00', '21.80', '79', '40', '21.5', '0');
INSERT INTO `produccion` VALUES (33, 17, '2-1741', 23, '1', '06:11:00', '07:08:00', '21.77', '227', '60', '21', '0');
INSERT INTO `produccion` VALUES (34, 17, '2-1741', 23, '1', '07:08:00', '07:50:00', '21.00', '189.5', '49', '20.58', '0');
INSERT INTO `produccion` VALUES (40, 17, '2-1741', 23, '1', '07:50:00', '08:50:00', '21.00', '250.5', '61', '20.83', '0');
INSERT INTO `produccion` VALUES (42, 17, '2-1741', 23, '1', '08:50:00', '09:17:00', '21.00', '99.5', '25', '20.66', '0');
INSERT INTO `produccion` VALUES (43, 17, '2-1741', 23, '1', '09:17:00', '09:47:00', '21.00', '128', '40', '20.2', '0');
INSERT INTO `produccion` VALUES (44, 17, '2-1741', 23, '1', '09:47:00', '10:25:00', '21.00', '148.5', '37', '20.66', '0');
INSERT INTO `produccion` VALUES (45, 17, '2-1741', 23, '1', '10:25:00', '11:12:00', '21.00', '120.5', '30', '21', '0');
INSERT INTO `produccion` VALUES (46, 17, '2-1741', 23, '1', '11:12:00', '11:52:00', '21.00', '125.5', '43', '19.25', '0');
INSERT INTO `produccion` VALUES (48, 17, '2-1741', 23, '1', '11:52:00', '12:53:00', '21.00', '217', '50', '20.44', '0');
INSERT INTO `produccion` VALUES (49, 17, '2-1741', 23, '1', '12:53:00', '01:46:00', '21.00', '190', '49', '19.72', '176');
INSERT INTO `produccion` VALUES (50, 17, '2-1741', 23, '1', '12:52:00', '01:45:00', '21.00', '190', '49', '19.72', '176');
INSERT INTO `produccion` VALUES (51, 15, '1-1741', 22, '1', '08:40:00', '09:50:00', '0', '265.5', '0', '23', '0');
INSERT INTO `produccion` VALUES (52, 18, '2-1741', 22, '1', '02:00:00', '02:30:00', '0', '171', '59', '20.8', '0');
INSERT INTO `produccion` VALUES (53, 18, '2-1741', 22, '1', '02:30:00', '02:50:00', '0', '89.5', '44', '20.8', '0');
INSERT INTO `produccion` VALUES (54, 18, '2-1741', 22, '1', '02:50:00', '03:20:00', '0', '115.5', '0', '19.3', '0');
INSERT INTO `produccion` VALUES (55, 18, '2-1741', 22, '1', '03:20:00', '03:45:00', '0', '82.5', '41', '20.3', '0');
INSERT INTO `produccion` VALUES (56, 18, '2-1741', 22, '1', '03:45:00', '04:05:00', '0', '85.5', '41', '19.3', '0');
INSERT INTO `produccion` VALUES (57, 18, '2-1741', 22, '1', '04:05:00', '04:25:00', '0', '82.5', '42', '21.5', '0');
INSERT INTO `produccion` VALUES (58, 20, '3-1741', 23, '1', '06:00:00', '07:03:00', '20.0', '144', '30', '22.5', '0');
INSERT INTO `produccion` VALUES (59, 20, '3-1741', 23, '1', '07:03:00', '07:50:00', '20.0', '160', '50', '21.3', '0');
INSERT INTO `produccion` VALUES (60, 20, '3-1741', 23, '1', '07:50:00', '08:16:00', '20.0', '87', '39', '20.83', '0');
INSERT INTO `produccion` VALUES (62, 20, '3-1741', 23, '1', '08:16:00', '09:05:00', '20.0', '137.5', '49', '21.5', '109.5');
INSERT INTO `produccion` VALUES (63, 20, '3-1741', 27, '2', '08:14:00', '09:26:00', '18.0', '78.5', '30', '22.08', '100.5');
INSERT INTO `produccion` VALUES (64, 21, '3-1741', 22, '1', '08:25:00', '09:40:00', '0', '248.5', '84', '21.6', '0');
INSERT INTO `produccion` VALUES (65, 21, '3-1741', 21, '2', '08:20:00', '09:45:00', '0', '248.5', '82', '20.4', '0');
INSERT INTO `produccion` VALUES (66, 23, '4-1741', 23, '1', '06:00:00', '07:27:00', '15.00', '203.5', '76', '21.08', '0');
INSERT INTO `produccion` VALUES (67, 23, '4-1741', 27, '2', '06:00:00', '07:34:00', '16.00', '308', '87', '21.63', '0');
INSERT INTO `produccion` VALUES (68, 23, '4-1741', 23, '1', '07:27:00', '09:26:00', '21.00', '403.5', '103', '21.56', '0');
INSERT INTO `produccion` VALUES (69, 23, '4-1741', 27, '2', '07:34:00', '09:10:00', '16.00', '270', '80', '21.45', '0');
INSERT INTO `produccion` VALUES (70, 23, '4-1741', 23, '1', '09:26:00', '10:43:00', '23.00', '372.5', '100', '21.16', '0');
INSERT INTO `produccion` VALUES (71, 23, '4-1741', 27, '2', '09:10:00', '10:50:00', '16.00', '295.5', '79', '21.08', '0');
INSERT INTO `produccion` VALUES (72, 23, '4-1741', 23, '1', '10:43:00', '11:56:00', '23.00', '323.5', '89', '21.5', '0');
INSERT INTO `produccion` VALUES (73, 23, '4-1741', 27, '2', '10:50:00', '12:04:00', '16.00', '189.5', '60', '21.29', '0');
INSERT INTO `produccion` VALUES (74, 23, '4-1741', 27, '2', '12:04:00', '12:26:00', '16.00', '65', '29', '21.25', '0');
INSERT INTO `produccion` VALUES (75, 23, '4-1741', 23, '1', '11:56:00', '01:42:00', '23.00', '477', '105', '20.96', '123.5');
INSERT INTO `produccion` VALUES (76, 23, '4-1741', 27, '2', '12:26:00', '01:55:00', '16.00', '252.5', '70', '21.49', '150');
INSERT INTO `produccion` VALUES (77, 24, '4-1741', 22, '1', '02:00:00', '03:30:00', '0', '475.5', '102', '22.8', '0');
INSERT INTO `produccion` VALUES (78, 24, '4-1741', 22, '1', '03:30:00', '04:45:00', '0', '321', '83', '20.8', '0');
INSERT INTO `produccion` VALUES (79, 24, '4-1741', 21, '2', '02:00:00', '03:40:00', '0', '373.5', '95', '21.6', '0');
INSERT INTO `produccion` VALUES (80, 24, '4-1741', 21, '2', '03:40:00', '04:45:00', '0', '229', '76', '20.2', '0');
INSERT INTO `produccion` VALUES (81, 24, '4-1741', 21, '2', '04:45:00', '05:40:00', '0', '204.5', '72', '21.5', '0');
INSERT INTO `produccion` VALUES (82, 24, '4-1741', 22, '1', '04:45:00', '07:05:00', '0', '419.5', '98', '21.4', '0');
INSERT INTO `produccion` VALUES (83, 24, '4-1741', 21, '2', '05:40:00', '07:10:00', '0', '358', '99', '21', '0');
INSERT INTO `produccion` VALUES (84, 24, '4-1741', 22, '1', '07:05:00', '08:05:00', '0', '264', '74', '21.2', '0');
INSERT INTO `produccion` VALUES (85, 24, '4-1741', 22, '1', '08:05:00', '09:25:00', '0', '367', '86', '22.6', '0');
INSERT INTO `produccion` VALUES (86, 24, '4-1741', 21, '2', '07:10:00', '08:05:00', '0', '210.5', '72', '20.6', '0');
INSERT INTO `produccion` VALUES (87, 24, '4-1741', 21, '2', '08:05:00', '09:25:00', '0', '319', '79', '20.5', '93');
INSERT INTO `produccion` VALUES (88, 26, '5-1741', 23, '1', '06:00:00', '06:46:00', '19.00', '88', '54', '22.3', '0');
INSERT INTO `produccion` VALUES (89, 26, '5-1741', 27, '2', '06:00:00', '06:52:00', '16.00', '168', '60', '22.6', '0');
INSERT INTO `produccion` VALUES (90, 26, '5-1741', 23, '1', '06:46:00', '07:36:00', '20.00', '131.5', '59', '23', '0');
INSERT INTO `produccion` VALUES (91, 26, '5-1741', 27, '2', '06:52:00', '07:36:00', '18.00', '136', '52', '22', '0');
INSERT INTO `produccion` VALUES (92, 26, '5-1741', 23, '1', '07:36:00', '08:45:00', '22.00', '170', '73', '20.9', '0');
INSERT INTO `produccion` VALUES (93, 26, '5-1741', 27, '2', '07:36:00', '08:51:00', '18.00', '185.5', '80', '20.5', '0');
INSERT INTO `produccion` VALUES (94, 26, '5-1741', 23, '1', '08:45:00', '09:57:00', '22.00', '212', '73', '19.8', '0');
INSERT INTO `produccion` VALUES (95, 26, '5-1741', 27, '2', '08:51:00', '10:05:00', '19.00', '129.5', '58', '19.8', '0');
INSERT INTO `produccion` VALUES (96, 26, '5-1741', 23, '1', '09:57:00', '11:24:00', '22.00', '358.5', '86', '21.1', '0');
INSERT INTO `produccion` VALUES (97, 26, '5-1741', 27, '2', '10:05:00', '11:24:00', '18.00', '275.5', '74', '21.7', '0');
INSERT INTO `produccion` VALUES (98, 27, '5-1741', 22, '1', '02:00:00', '02:50:00', '0', '207', '74', '19.3', '0');
INSERT INTO `produccion` VALUES (99, 27, '5-1741', 22, '1', '02:50:00', '04:40:00', '0', '333', '94', '21.2', '0');
INSERT INTO `produccion` VALUES (100, 27, '5-1741', 21, '2', '02:00:00', '02:50:00', '0', '167', '63', '21.5', '0');
INSERT INTO `produccion` VALUES (101, 27, '5-1741', 21, '2', '02:50:00', '04:45:00', '0', '396', '93', '19.2', '0');
INSERT INTO `produccion` VALUES (102, 27, '5-1741', 22, '1', '04:40:00', '05:50:00', '0', '237.5', '82', '22.2', '0');
INSERT INTO `produccion` VALUES (103, 27, '5-1741', 21, '2', '04:45:00', '05:50:00', '0', '229', '74', '22.7', '0');
INSERT INTO `produccion` VALUES (104, 27, '5-1741', 22, '1', '05:50:00', '07:35:00', '0', '316.5', '89', '20.8', '0');
INSERT INTO `produccion` VALUES (105, 27, '5-1741', 21, '2', '05:50:00', '07:35:00', '0', '342', '94', '20.7', '0');
INSERT INTO `produccion` VALUES (106, 27, '5-1741', 22, '1', '07:35:00', '08:45:00', '0', '281', '83', '20.5', '0');
INSERT INTO `produccion` VALUES (107, 27, '5-1741', 21, '2', '07:35:00', '08:45:00', '0', '281', '79', '20', '0');
INSERT INTO `produccion` VALUES (108, 27, '5-1741', 22, '1', '08:45:00', '09:50:00', '0', '184.5', '63', '20.5', '45');
INSERT INTO `produccion` VALUES (109, 27, '5-1741', 21, '2', '08:45:00', '09:55:00', '0', '198.5', '68', '20.7', '52');
INSERT INTO `produccion` VALUES (110, 26, '5-1741', 23, '1', '11:24:00', '01:00:00', '19.00', '369', '94', '22.3', '118');
INSERT INTO `produccion` VALUES (111, 26, '5-1741', 27, '2', '11:24:00', '01:15:00', '18.00', '299', '83', '22', '0');
INSERT INTO `produccion` VALUES (112, 26, '5-1741', 27, '2', '01:15:00', '02:04:00', '18.00', '145', '56', '22', '0');
INSERT INTO `produccion` VALUES (113, 32, '2-1747', 22, '1', '06:00:00', '08:02:00', '0', '381', '100', '21.4', '0');
INSERT INTO `produccion` VALUES (114, 32, '2-1747', 22, '1', '08:02:00', '10:01:00', '0', '397.5', '104', '21.37', '0');
INSERT INTO `produccion` VALUES (115, 32, '2-1747', 21, '2', '06:00:00', '08:04:00', '0', '419.5', '96', '20.45', '0');
INSERT INTO `produccion` VALUES (116, 32, '2-1747', 21, '2', '08:04:00', '10:03:00', '0', '391', '103', '20.70', '0');
INSERT INTO `produccion` VALUES (117, 32, '2-1747', 22, '1', '10:01:00', '11:52:00', '0', '369', '100', '19.87', '0');
INSERT INTO `produccion` VALUES (118, 32, '2-1747', 21, '2', '10:03:00', '11:03:00', '0', '328.5', '100', '20.33', '0');
INSERT INTO `produccion` VALUES (119, 32, '2-1747', 22, '1', '11:52:00', '01:50:00', '0', '380.5', '100', '20.4', '50');
INSERT INTO `produccion` VALUES (120, 32, '2-1747', 21, '2', '11:50:00', '01:50:00', '0', '383', '100', '20.2', '50');
INSERT INTO `produccion` VALUES (127, 33, '2-1747', 20, '1', '02:00:00', '04:00:00', '0', '445', '100', '20', '30');
INSERT INTO `produccion` VALUES (128, 33, '2-1747', 20, '1', '04:00:00', '05:35:00', '0', '351.5', '92', '20.6', '30');
INSERT INTO `produccion` VALUES (129, 33, '2-1747', 20, '1', '05:36:00', '07:35:00', '0', '448', '99', '20.7', '30');
INSERT INTO `produccion` VALUES (130, 33, '2-1747', 20, '1', '07:37:00', '09:30:00', '0', '398.5', '97', '19', '30');
INSERT INTO `produccion` VALUES (131, 33, '2-1747', 14, '2', '02:00:00', '04:00:00', '0', '422', '104', '18.9', '0');
INSERT INTO `produccion` VALUES (132, 33, '2-1747', 14, '2', '04:00:00', '05:51:00', '0', '250', '77', '20.7', '0');
INSERT INTO `produccion` VALUES (133, 33, '2-1747', 14, '2', '05:52:00', '08:00:00', '0', '497', '102', '20.2', '0');
INSERT INTO `produccion` VALUES (134, 33, '2-1747', 14, '2', '08:00:00', '09:50:00', '0', '406.5', '89', '19.5', '50');
INSERT INTO `produccion` VALUES (136, 34, '2-1747', 23, '1', '10:00:00', '11:50:00', '21.00', '501.5', '110', '21.3', '0');
INSERT INTO `produccion` VALUES (137, 34, '2-1747', 23, '1', '11:50:00', '02:00:00', '21.00', '517', '109', '21.20', '0');
INSERT INTO `produccion` VALUES (138, 34, '2-1747', 23, '1', '02:00:00', '04:00:00', '21.00', '402', '100', '20.37', '0');
INSERT INTO `produccion` VALUES (139, 34, '2-1747', 27, '2', '10:00:00', '11:50:00', '20.00', '424.5', '102', '22.04', '0');
INSERT INTO `produccion` VALUES (140, 34, '2-1747', 27, '2', '11:50:00', '02:00:00', '20.00', '431', '100', '21.16', '0');
INSERT INTO `produccion` VALUES (141, 34, '2-1747', 27, '2', '02:00:00', '04:00:00', '20.00', '335.5', '92', '22.04', '0');
INSERT INTO `produccion` VALUES (142, 34, '2-1747', 27, '2', '04:00:00', '05:47:00', '20.00', '346.5', '95', '20.70', '52');
INSERT INTO `produccion` VALUES (143, 34, '2-1747', 23, '1', '04:00:00', '05:50:00', '21.00', '427', '103', '21.20', '33');
INSERT INTO `produccion` VALUES (144, 35, '3-1747', 22, '1', '06:00:00', '07:55:00', '0', '410', '105', '21.06', '0');
INSERT INTO `produccion` VALUES (145, 35, '3-1747', 22, '1', '07:55:00', '10:00:00', '0', '436', '106', '20.74', '0');
INSERT INTO `produccion` VALUES (146, 35, '3-1747', 21, '2', '06:00:00', '08:00:00', '0', '406.5', '104', '21.3', '0');
INSERT INTO `produccion` VALUES (147, 35, '3-1747', 21, '2', '08:00:00', '10:00:00', '0', '470.5', '104', '20.74', '0');
INSERT INTO `produccion` VALUES (148, 35, '3-1747', 22, '1', '10:00:00', '11:52:00', '0', '306.5', '100', '18.54', '0');
INSERT INTO `produccion` VALUES (149, 35, '3-1747', 21, '2', '10:03:00', '11:54:00', '0', '352', '100', '19.24', '0');
INSERT INTO `produccion` VALUES (150, 35, '3-1747', 22, '1', '11:52:00', '01:50:00', '0', '412', '101', '20.5', '45');
INSERT INTO `produccion` VALUES (151, 35, '3-1747', 21, '2', '11:54:00', '01:50:00', '0', '353.5', '99', '20.6', '42.5');
INSERT INTO `produccion` VALUES (152, 36, '3-1747', 20, '1', '02:00:00', '03:35:00', '0', '382', '100', '21.5', '0');
INSERT INTO `produccion` VALUES (153, 36, '3-1747', 14, '2', '02:00:00', '03:35:00', '0', '327', '87', '19', '0');
INSERT INTO `produccion` VALUES (154, 36, '3-1747', 20, '1', '03:35:00', '05:35:00', '0', '456', '102', '25.2', '0');
INSERT INTO `produccion` VALUES (155, 36, '3-1747', 14, '2', '03:35:00', '05:14:00', '0', '344', '87', '24.2', '0');
INSERT INTO `produccion` VALUES (156, 36, '3-1747', 20, '1', '05:35:00', '07:35:00', '0', '420', '98', '21', '0');
INSERT INTO `produccion` VALUES (157, 36, '3-1747', 14, '2', '05:15:00', '07:30:00', '0', '479', '101', '20.1', '0');
INSERT INTO `produccion` VALUES (158, 36, '3-1747', 14, '2', '07:30:00', '09:55:00', '0', '556', '114', '20.1', '50');
INSERT INTO `produccion` VALUES (159, 36, '3-1747', 20, '1', '07:35:00', '09:55:00', '0', '193', '67', '23', '50');
INSERT INTO `produccion` VALUES (160, 38, '4-1747', 22, '1', '06:00:00', '08:01:00', '0', '478', '103', '21.6', '0');
INSERT INTO `produccion` VALUES (161, 38, '4-1747', 22, '1', '08:01:00', '09:59:00', '0', '420.5', '103', '21.66', '0');
INSERT INTO `produccion` VALUES (162, 38, '4-1747', 21, '2', '06:00:00', '07:51:00', '0', '529.5', '107', '21.4', '0');
INSERT INTO `produccion` VALUES (163, 38, '4-1747', 21, '2', '07:51:00', '09:21:00', '0', '355', '99', '22.29', '0');
INSERT INTO `produccion` VALUES (164, 38, '4-1747', 22, '1', '09:59:00', '11:54:00', '0', '360.5', '100', '21.75', '0');
INSERT INTO `produccion` VALUES (166, 38, '4-1747', 21, '2', '09:21:00', '11:49:00', '0', '451', '106', '21.20', '0');
INSERT INTO `produccion` VALUES (167, 38, '4-1747', 22, '1', '11:54:00', '01:50:00', '0', '356.5', '100', '20.6', '65');
INSERT INTO `produccion` VALUES (168, 38, '4-1747', 21, '2', '11:45:00', '01:50:00', '0', '406.5', '101', '20', '71');
INSERT INTO `produccion` VALUES (169, 39, '4-1747', 20, '1', '02:00:00', '03:25:00', '0', '410', '91', '22.1', '0');
INSERT INTO `produccion` VALUES (170, 39, '4-1747', 14, '2', '02:00:00', '03:15:00', '0', '262', '76', '21.2', '0');
INSERT INTO `produccion` VALUES (172, 39, '4-1747', 20, '1', '03:25:00', '05:40:00', '0', '455', '99', '21.3', '0');
INSERT INTO `produccion` VALUES (174, 39, '4-1747', 14, '2', '03:15:00', '05:00:00', '0', '339', '74', '21.7', '0');
INSERT INTO `produccion` VALUES (175, 39, '4-1747', 14, '2', '05:00:00', '06:30:00', '0', '269', '74', '20.7', '0');
INSERT INTO `produccion` VALUES (176, 39, '4-1747', 20, '1', '05:40:00', '07:40:00', '0', '404', '97', '21', '0');
INSERT INTO `produccion` VALUES (177, 39, '4-1747', 14, '2', '06:30:00', '07:30:00', '0', '217.5', '71', '20.9', '0');
INSERT INTO `produccion` VALUES (178, 39, '4-1747', 14, '2', '07:30:00', '09:50:00', '0', '504', '106', '20.3', '45');
INSERT INTO `produccion` VALUES (179, 39, '4-1747', 14, '2', '07:30:00', '09:50:00', '0', '504', '106', '20.3', '45');
INSERT INTO `produccion` VALUES (180, 39, '4-1747', 20, '1', '07:40:00', '09:50:00', '0', '436', '103', '21.4', '30');
INSERT INTO `produccion` VALUES (181, 41, '5-1747', 22, '1', '06:00:00', '07:42:00', '0', '434', '100', '21', '0');
INSERT INTO `produccion` VALUES (182, 41, '5-1747', 21, '2', '06:00:00', '07:47:00', '0', '378.5', '104', '21.3', '0');
INSERT INTO `produccion` VALUES (183, 44, '6-1747', 22, '1', '06:00:00', '08:00:00', '0', '400', '104', '22.2', '0');
INSERT INTO `produccion` VALUES (184, 44, '6-1747', 22, '1', '08:00:00', '09:59:00', '0', '398', '100', '21.25', '0');
INSERT INTO `produccion` VALUES (185, 44, '6-1747', 22, '1', '09:59:00', '11:43:00', '0', '305.5', '99', '20.75', '0');
INSERT INTO `produccion` VALUES (186, 44, '6-1747', 21, '2', '06:00:00', '07:57:00', '0', '492', '105', '22.5', '0');
INSERT INTO `produccion` VALUES (187, 44, '6-1747', 21, '2', '07:57:00', '10:03:00', '0', '374', '99', '21.06', '0');
INSERT INTO `produccion` VALUES (188, 44, '6-1747', 21, '2', '10:03:00', '11:39:00', '0', '345.5', '100', '21', '0');
INSERT INTO `produccion` VALUES (189, 44, '6-1747', 22, '1', '11:43:00', '01:30:00', '0', '342.5', '102', '20.8', '80');
INSERT INTO `produccion` VALUES (190, 44, '6-1747', 21, '2', '11:40:00', '01:26:00', '0', '418', '101', '20.9', '85');
INSERT INTO `produccion` VALUES (191, 45, '6-1747', 20, '1', '02:00:00', '03:55:00', '0', '219.5', '77', '22.4', '0');
INSERT INTO `produccion` VALUES (192, 45, '6-1747', 14, '2', '02:00:00', '03:45:00', '0', '453', '100', '20.4', '0');
INSERT INTO `produccion` VALUES (193, 45, '6-1747', 20, '1', '03:55:00', '06:10:00', '0', '355', '93', '21.5', '0');
INSERT INTO `produccion` VALUES (194, 49, '1-1755', 22, '1', '10:00:00', '11:58:00', '0', '408', '105', '20.9', '0');
INSERT INTO `produccion` VALUES (195, 49, '1-1755', 21, '2', '10:00:00', '11:55:00', '0', '410.5', '95', '21.5', '0');
INSERT INTO `produccion` VALUES (196, 49, '1-1755', 22, '1', '11:58:00', '02:00:00', '0', '363', '100', '20.9', '0');
INSERT INTO `produccion` VALUES (197, 49, '1-1755', 21, '2', '11:55:00', '02:00:00', '0', '436', '100', '21.3', '0');
INSERT INTO `produccion` VALUES (198, 49, '1-1755', 22, '1', '02:00:00', '04:01:00', '0', '430', '103', '21', '0');
INSERT INTO `produccion` VALUES (199, 49, '1-1755', 21, '2', '02:00:00', '04:01:00', '0', '558.5', '104', '21.5', '0');
INSERT INTO `produccion` VALUES (200, 49, '1-1755', 22, '1', '04:01:00', '05:35:00', '0', '280', '80', '20.87', '60');
INSERT INTO `produccion` VALUES (201, 49, '1-1755', 21, '2', '04:01:00', '05:50:00', '0', '423', '101', '20.87', '80');
INSERT INTO `produccion` VALUES (202, 55, '1-1767', 20, '1', '06:00:00', '08:00:00', '0', '450', '104', '21.3', '0');
INSERT INTO `produccion` VALUES (205, 55, '1-1767', 14, '2', '08:05:00', '10:00:00', '0', '539.5', '0', '22.4', '0');
INSERT INTO `produccion` VALUES (206, 55, '1-1767', 20, '1', '08:00:00', '10:05:00', '0', '260.5', '77', '21.3', '0');
INSERT INTO `produccion` VALUES (208, 55, '1-1767', 14, '2', '06:00:00', '08:05:00', '0', '467', '94', '21.7', '0');
INSERT INTO `produccion` VALUES (209, 55, '1-1767', 14, '2', '10:00:00', '12:00:00', '0', '429', '97', '20.5', '0');
INSERT INTO `produccion` VALUES (210, 55, '1-1767', 20, '1', '10:05:00', '12:28:00', '0', '401', '102', '21.4', '0');
INSERT INTO `produccion` VALUES (211, 55, '1-1767', 14, '2', '12:00:00', '01:55:00', '0', '403.5', '98', '20.4', '35');
INSERT INTO `produccion` VALUES (212, 55, '1-1767', 20, '1', '12:28:00', '01:49:00', '0', '318', '89', '20.5', '60');
INSERT INTO `produccion` VALUES (213, 62, '1-1805', 22, '1', '02:00:00', '04:00:00', '0', '453.5', '104', '21', '0');
INSERT INTO `produccion` VALUES (214, 62, '1-1805', 22, '1', '04:00:00', '06:00:00', '0', '480.5', '105', '21.83', '0');
INSERT INTO `produccion` VALUES (215, 62, '1-1805', 21, '2', '02:00:00', '04:00:00', '0', '373.5', '106', '22.37', '0');
INSERT INTO `produccion` VALUES (216, 62, '1-1805', 21, '2', '04:01:00', '06:00:00', '0', '420', '106', '21.87', '0');
INSERT INTO `produccion` VALUES (217, 62, '1-1805', 22, '1', '06:10:00', '08:00:00', '0', '495', '104', '21.74', '0');
INSERT INTO `produccion` VALUES (218, 62, '1-1805', 21, '2', '06:00:00', '07:56:00', '0', '450.5', '106', '22.45', '0');
INSERT INTO `produccion` VALUES (219, 62, '1-1805', 22, '1', '08:00:00', '09:50:00', '0', '409', '102', '21.66', '70');
INSERT INTO `produccion` VALUES (220, 62, '1-1805', 21, '2', '08:07:00', '09:55:00', '0', '400.5', '103', '22', '120');
INSERT INTO `produccion` VALUES (221, 66, '1-1820', 22, '1', '06:00:00', '08:05:00', '0', '456', '98', '21.8', '0');
INSERT INTO `produccion` VALUES (222, 66, '1-1820', 21, '2', '06:00:00', '08:04:00', '0', '544', '106', '21.70', '0');
INSERT INTO `produccion` VALUES (223, 66, '1-1820', 22, '1', '08:05:00', '10:03:00', '0', '372', '92', '21.83', '0');
INSERT INTO `produccion` VALUES (224, 66, '1-1820', 21, '2', '08:04:00', '09:59:00', '0', '535', '104', '21.66', '0');
INSERT INTO `produccion` VALUES (225, 67, '1-1820', 20, '1', '02:00:00', '04:00:00', '0', '461', '104', '21.6', '0');
INSERT INTO `produccion` VALUES (226, 67, '1-1820', 14, '2', '02:00:00', '04:00:00', '0', '572', '120', '21.3', '0');
INSERT INTO `produccion` VALUES (227, 67, '1-1820', 20, '1', '04:00:00', '06:00:00', '0', '377.5', '87', '20.7', '0');
INSERT INTO `produccion` VALUES (228, 67, '1-1820', 14, '2', '04:00:00', '06:00:00', '0', '528', '109', '21', '0');
INSERT INTO `produccion` VALUES (231, 67, '1-1820', 20, '1', '06:00:00', '08:00:00', '0', '443', '98', '21', '0');
INSERT INTO `produccion` VALUES (232, 67, '1-1820', 14, '2', '06:00:00', '08:00:00', '0', '504', '99', '21', '0');
INSERT INTO `produccion` VALUES (233, 67, '1-1820', 20, '1', '08:00:00', '10:00:00', '0', '388.5', '0', '19.9', '50');
INSERT INTO `produccion` VALUES (234, 67, '1-1820', 14, '2', '08:00:00', '10:00:00', '0', '471', '0', '21.8', '50');
INSERT INTO `produccion` VALUES (235, 71, '1-4853', 22, '1', '10:00:00', '11:07:00', '0', '239', '60', '21.79', '0');
INSERT INTO `produccion` VALUES (236, 71, '1-4853', 22, '1', '11:07:00', '01:23:00', '0', '451.5', '99', '21.56', '0');
INSERT INTO `produccion` VALUES (237, 71, '1-4853', 22, '1', '01:23:00', '03:56:00', '0', '527.5', '103', '21.70', '0');
INSERT INTO `produccion` VALUES (238, 71, '1-4853', 21, '2', '08:30:00', '10:21:00', '0', '364', '100', '20.70', '0');
INSERT INTO `produccion` VALUES (239, 71, '1-4853', 21, '2', '10:21:00', '12:24:00', '0', '554', '104', '21.53', '0');
INSERT INTO `produccion` VALUES (240, 71, '1-4853', 21, '2', '12:24:00', '02:28:00', '0', '617.5', '113', '21.5', '0');
INSERT INTO `produccion` VALUES (241, 71, '1-4853', 21, '2', '02:30:00', '04:17:00', '0', '570.5', '108', '21.75', '0');
INSERT INTO `produccion` VALUES (242, 71, '1-4853', 22, '1', '03:56:00', '05:50:00', '0', '324', '96', '21.8', '85');
INSERT INTO `produccion` VALUES (243, 71, '1-4853', 21, '2', '04:17:00', '06:00:00', '0', '338.5', '84', '21.99', '60');
INSERT INTO `produccion` VALUES (244, 74, '1-1859', 22, '1', '10:00:00', '11:58:00', '0', '506', '100', '21.66', '0');
INSERT INTO `produccion` VALUES (245, 74, '1-1859', 21, '2', '10:00:00', '11:59:00', '0', '592', '108', '21.41', '0');
INSERT INTO `produccion` VALUES (246, 74, '1-1859', 22, '1', '11:58:00', '02:00:00', '0', '508.5', '101', '21.45', '0');
INSERT INTO `produccion` VALUES (247, 74, '1-1859', 21, '2', '11:59:00', '02:00:00', '0', '558', '106', '21.5', '0');
INSERT INTO `produccion` VALUES (248, 74, '1-1859', 22, '1', '02:00:00', '04:00:00', '0', '481', '99', '21.5', '0');
INSERT INTO `produccion` VALUES (249, 74, '1-1859', 21, '2', '02:00:00', '04:00:00', '0', '616', '102', '21.83', '0');
INSERT INTO `produccion` VALUES (250, 74, '1-1859', 22, '1', '04:00:00', '05:50:00', '0', '355.5', '98', '20.91', '63');
INSERT INTO `produccion` VALUES (251, 74, '1-1859', 21, '2', '04:00:00', '05:50:00', '0', '485', '100', '21.83', '110');
INSERT INTO `produccion` VALUES (253, 88, '1-1893', 21, '2', '02:00:00', '04:01:00', '0', '534.5', '103', '21.5', '0');
INSERT INTO `produccion` VALUES (254, 88, '1-1893', 22, '1', '02:00:00', '04:00:00', '0', '453', '101', '21.08', '0');
INSERT INTO `produccion` VALUES (255, 88, '1-1893', 22, '1', '04:00:00', '05:57:00', '0', '481', '99', '21.16', '0');
INSERT INTO `produccion` VALUES (256, 88, '1-1893', 21, '2', '04:01:00', '06:03:00', '0', '559', '105', '21.5', '0');
INSERT INTO `produccion` VALUES (257, 88, '1-1893', 22, '1', '05:57:00', '08:00:00', '0', '540.5', '101', '21.27', '0');
INSERT INTO `produccion` VALUES (258, 88, '1-1893', 21, '2', '06:00:00', '08:00:00', '0', '460.5', '102', '21.66', '0');

-- ----------------------------
-- Table structure for reporte_diario
-- ----------------------------
DROP TABLE IF EXISTS `reporte_diario`;
CREATE TABLE `reporte_diario`  (
  `IdReporteDiario` int(11) NOT NULL AUTO_INCREMENT,
  `Consecutivo` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NoOrder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Turno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FechaInicio` date NULL DEFAULT NULL,
  `FechaFinal` date NULL DEFAULT NULL,
  `Coordinador` int(11) NULL DEFAULT NULL,
  `Grupo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TipoPapel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProduccionTotal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MermaTotal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Estado` bit(1) NULL DEFAULT NULL,
  `cantTurnos` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`IdReporteDiario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reporte_diario
-- ----------------------------
INSERT INTO `reporte_diario` VALUES (1, '1-6688', '6688', '1', '2017-07-31', '2017-07-31', 10, NULL, 'higienico', NULL, '', b'1', 2);
INSERT INTO `reporte_diario` VALUES (2, '1-5657', '5657', '1', '2017-07-28', '2017-07-28', 13, NULL, 'higienico', '488', '', b'1', 2);
INSERT INTO `reporte_diario` VALUES (4, '1-5657', '5657', '2', '2017-08-28', '2017-08-29', 13, NULL, 'higienico', NULL, '', b'1', 2);
INSERT INTO `reporte_diario` VALUES (5, '1-1690', '1690', '1', '2017-08-07', '2017-08-08', 18, NULL, 'higienico', NULL, '', b'1', 2);
INSERT INTO `reporte_diario` VALUES (6, '1-1702', '1702', '1', '2017-08-21', '2017-08-27', 26, NULL, 'papel higienico', '3382.5', '', b'1', 2);
INSERT INTO `reporte_diario` VALUES (7, '1-8989', '8989', '3', '2017-08-28', '2017-08-28', 13, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (8, '1-1708', '1708', '3', '2017-08-28', '2017-08-28', 10, NULL, 'higienico', '569', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (9, '1-1725', '1725', '3', '2017-09-11', '2017-09-11', 18, NULL, 'higienico', '2418.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (10, '1-1725', '1725', '4', '2017-09-11', '2017-09-11', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (11, '1-1725', '1725', '5', '2017-09-11', '2017-09-12', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (12, '1-4545', '4545', '3', '2017-09-18', '2017-09-18', 13, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (13, '1-4545', '4545', '4', '2017-09-18', '2017-09-18', 19, NULL, 'higienico', '993.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (14, '1-1741', '1741', '3', '2017-09-25', '2017-09-25', 19, NULL, 'higienico', '1191', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (15, '1-1741', '1741', '4', '2017-09-25', '2017-09-25', 18, NULL, 'higienico', '265.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (16, '1-1741', '1741', '5', '2017-09-25', '2017-09-26', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (17, '2-1741', '1741', '3', '2017-09-26', '2017-09-26', 19, NULL, 'higienico', '1965', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (18, '2-1741', '1741', '4', '2017-09-26', '2017-09-26', 18, NULL, 'higienico', '626.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (19, '2-1741', '1741', '5', '2017-09-26', '2017-09-27', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (20, '3-1741', '1741', '3', '2017-09-27', '2017-09-27', 19, NULL, 'higienico', '607', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (21, '3-1741', '1741', '4', '2017-09-27', '2017-09-27', 18, NULL, 'higienico', '497', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (22, '3-1741', '1741', '5', '2017-09-27', '2017-09-28', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (23, '4-1741', '1741', '3', '2017-09-28', '2017-09-28', 19, NULL, 'higienico', '3160.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (24, '4-1741', '1741', '4', '2017-09-28', '2017-09-28', 18, NULL, 'higienico', '3541.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (25, '4-1741', '1741', '5', '2017-09-28', '2017-09-29', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (26, '5-1741', '1741', '3', '2017-09-29', '2017-09-29', 19, NULL, 'HIGIENICO', '2667.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (27, '5-1741', '1741', '4', '2017-09-29', '2017-09-29', 18, NULL, 'higiénico', '3173', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (28, '5-1741', '1741', '5', '2017-09-29', '2017-09-30', 10, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (29, '1-1747', '1747', '3', '2017-10-02', '2017-10-02', 18, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (30, '1-1747', '1747', '4', '2017-10-02', '2017-10-02', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (31, '1-1747', '1747', '5', '2017-10-02', '2017-10-03', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (32, '2-1747', '1747', '3', '2017-10-03', '2017-10-03', 18, NULL, 'higienico', '3050', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (33, '2-1747', '1747', '4', '2017-10-03', '2017-10-03', 10, NULL, 'higienico', '3218.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (34, '2-1747', '1747', '5', '2017-10-03', '2017-10-03', 19, NULL, 'higienico', '3385', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (35, '3-1747', '1747', '3', '2017-10-04', '2017-10-04', 18, NULL, 'higienico', '3147', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (36, '3-1747', '1747', '4', '2017-10-04', '2017-10-04', 10, NULL, 'higienico', '3157', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (37, '3-1747', '1747', '5', '2017-10-04', '2017-10-05', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (38, '4-1747', '1747', '3', '2017-10-05', '2017-10-05', 18, NULL, 'higienico', '3357.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (39, '4-1747', '1747', '4', '2017-10-05', '2017-10-05', 10, NULL, 'higienico', '3800.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (40, '4-1747', '1747', '5', '2017-10-05', '2017-10-06', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (41, '5-1747', '1747', '3', '2017-10-06', '2017-10-06', 18, NULL, 'higienico', '812.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (42, '5-1747', '1747', '4', '2017-10-06', '2017-10-06', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (43, '5-1747', '1747', '5', '2017-10-06', '2017-10-07', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (44, '6-1747', '1747', '3', '2017-10-07', '2017-10-07', 18, NULL, 'higienico', '3075.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (45, '6-1747', '1747', '4', '2017-10-07', '2017-10-07', 10, NULL, 'Higienico', '1027.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (46, '6-1747', '1747', '5', '2017-10-07', '2017-10-08', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (47, '1-1755', '1755', '3', '2017-10-09', '2017-10-09', 10, NULL, 'HIGHIGIENICO', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (48, '1-1755', '1755', '4', '2017-10-09', '2017-10-09', 19, NULL, 'HIGIENICO', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (49, '1-1755', '1755', '5', '2017-10-09', '2017-10-10', 18, NULL, 'HIGIENICO', '3309', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (50, '2-1755', '1755', '3', '2017-10-10', '2017-10-10', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (51, '2-1755', '1755', '4', '2017-10-10', '2017-10-10', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (52, '1-1762', '1762', '3', '2017-10-10', '2017-10-10', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (53, '1-1762', '1762', '4', '2017-10-10', '2017-10-10', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (54, '1-1762', '1762', '5', '2017-10-10', '2017-10-11', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (55, '1-1767', '1767', '3', '2017-10-11', '2017-10-11', 10, NULL, 'higienico', '3268.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (56, '1-1767', '1767', '4', '2017-10-11', '2017-10-11', 19, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (57, '1-1767', '1767', '5', '2017-10-11', '2017-10-12', 18, NULL, 'HIGIENICO', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (58, '1-1800', '1800', '3', '2017-10-18', '2017-10-18', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (59, '1-1800', '1800', '4', '2017-10-18', '2017-10-18', 18, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (60, '1-1800', '1800', '5', '2017-10-18', '2017-10-19', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (61, '1-1805', '1805', '3', '2017-10-19', '2017-10-19', 19, NULL, 'HIGIENICO', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (62, '1-1805', '1805', '4', '2017-10-19', '2017-10-19', 18, NULL, 'HIGHIGIENICO', '3482.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (63, '1-1805', '1805', '5', '2017-10-19', '2017-10-20', 10, NULL, 'HIGIENICO', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (64, '1-1815', '1815', '4', '2017-10-25', '2017-10-25', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (65, '1-1815', '1815', '5', '2017-10-25', '2017-10-25', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (66, '1-1820', '1820', '3', '2017-10-26', '2017-10-26', 18, NULL, 'higienico', '1907', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (67, '1-1820', '1820', '4', '2017-10-26', '2017-10-26', 10, NULL, 'higienico', '3745', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (68, '1-1820', '1820', '5', '2017-10-26', '2017-10-27', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (69, '1-4853', '4853', '3', '2017-10-31', '2017-10-31', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (70, '1-4853', '4853', '4', '2017-10-31', '2017-10-31', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (71, '1-4853', '4853', '5', '2017-10-31', '2017-10-31', 18, NULL, 'higienico', '3986.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (72, '1-1859', '1859', '3', '2017-11-01', '2017-11-01', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (73, '1-1859', '1859', '4', '2017-11-01', '2017-11-01', 19, NULL, 'HIGIENICO', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (74, '1-1859', '1859', '5', '2017-11-01', '2017-11-02', 18, NULL, 'HIGIENICO', '4102', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (75, '1-1862', '1862', '3', '2017-11-02', '2017-11-02', 10, NULL, 'HIGIENICO', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (76, '1-1862', '1862', '4', '2017-11-02', '2017-11-02', 19, NULL, 'HIGIENICO', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (77, '1-1862', '1862', '5', '2017-11-02', '2017-11-03', 18, NULL, 'HIGIENICO', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (78, '1-1866', '1866', '3', '2017-11-03', '2017-11-03', 10, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (79, '1-1866', '1866', '4', '2017-11-03', '2017-11-03', 19, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (80, '1-1866', '1866', '5', '2017-11-03', '2017-11-04', 18, NULL, 'higienico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (81, '1-1884', '1884', '3', '2017-11-08', '2017-11-08', 19, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (82, '1-1884', '1884', '4', '2017-11-08', '2017-11-08', 18, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (83, '1-1884', '1884', '5', '2017-11-08', '2017-11-09', 10, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (84, '1-1889', '1889', '3', '2017-11-09', '2017-11-09', 19, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (85, '1-1889', '1889', '4', '2017-11-09', '2017-11-09', 18, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (86, '1-1889', '1889', '5', '2017-11-09', '2017-11-10', 10, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (87, '1-1893', '1893', '3', '2017-11-10', '2017-11-10', 19, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (88, '1-1893', '1893', '4', '2017-11-10', '2017-11-10', 18, NULL, 'higiénico', '3028.5', '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (89, '1-1893', '1893', '5', '2017-11-10', '2017-11-11', 10, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (90, '1-1914', '1914', '3', '2017-11-17', '2017-11-17', 18, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (91, '1-1914', '1914', '4', '2017-11-17', '2017-11-17', 10, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (92, '1-1914', '1914', '5', '2017-11-17', '2017-11-18', 19, NULL, 'higiénico', NULL, '', b'1', 3);
INSERT INTO `reporte_diario` VALUES (93, '1-2222', '2222', '3', '2017-11-20', '2017-11-23', 13, NULL, 'higienico', NULL, '', b'1', 3);

-- ----------------------------
-- Table structure for reportes
-- ----------------------------
DROP TABLE IF EXISTS `reportes`;
CREATE TABLE `reportes`  (
  `IdReporte` int(11) NOT NULL AUTO_INCREMENT,
  `NoOrden` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Tipo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Usuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FechaInicio` date NULL DEFAULT NULL,
  `FechaFin` date NULL DEFAULT NULL,
  `Estado` int(11) NULL DEFAULT NULL,
  `IdPlan` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`IdReporte`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tanques
-- ----------------------------
DROP TABLE IF EXISTS `tanques`;
CREATE TABLE `tanques`  (
  `IdTanque` int(11) NOT NULL AUTO_INCREMENT,
  `Tanque` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdTanque`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tanques
-- ----------------------------
INSERT INTO `tanques` VALUES (1, 'Tanque #1');
INSERT INTO `tanques` VALUES (2, 'Tanque #2');
INSERT INTO `tanques` VALUES (3, 'Tanque #3');
INSERT INTO `tanques` VALUES (4, 'Tanque #4');
INSERT INTO `tanques` VALUES (5, 'Tanque #5');
INSERT INTO `tanques` VALUES (6, 'Tanque #6');

-- ----------------------------
-- Table structure for tiempos_muertos
-- ----------------------------
DROP TABLE IF EXISTS `tiempos_muertos`;
CREATE TABLE `tiempos_muertos`  (
  `IdTiempoMuerto` int(11) NOT NULL AUTO_INCREMENT,
  `IdReporteDiario` int(11) NULL DEFAULT NULL,
  `Consecutivo` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NoOrden` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HoraInicio` time(0) NULL DEFAULT NULL,
  `Turno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HoraFin` time(0) NULL DEFAULT NULL,
  `Maquina` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdTiempoMuerto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tiempos_muertos
-- ----------------------------
INSERT INTO `tiempos_muertos` VALUES (1, 2, '1-5657', '5657', '07:10:00', '6:00am-6:00pm', '07:30:00', '1', 'Problemas electricos');
INSERT INTO `tiempos_muertos` VALUES (2, 2, '1-5657', '5657', '08:00:00', '6:00am-6:00pm', '08:10:00', '2', 'Problemas electricos');
INSERT INTO `tiempos_muertos` VALUES (3, 4, '1-5657', '5657', '19:00:00', '6:00pm-6:00am', '19:25:00', '1', 'preuba');
INSERT INTO `tiempos_muertos` VALUES (5, 4, '1-5657', '5657', '20:50:00', '6:00pm-6:00am', '21:15:00', '2', 'prueba');
INSERT INTO `tiempos_muertos` VALUES (6, 2, '1-5657', '5657', '09:00:00', '6:00am-6:00pm', '09:25:00', '1', 'problemas');
INSERT INTO `tiempos_muertos` VALUES (7, 2, '1-5657', '5657', '09:05:00', '6:00am-6:00pm', '09:35:00', '2', 'prueba');
INSERT INTO `tiempos_muertos` VALUES (8, 8, '1-1708', '1708', '06:40:00', '06:00AM-02:00PM', '14:00:00', '1', 'paro porque sele daño la valinera al depurador');
INSERT INTO `tiempos_muertos` VALUES (9, 9, '1-1725', '1725', '06:20:00', '06:00AM-02:00PM', '06:25:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (10, 9, '1-1725', '1725', '07:40:00', '06:00AM-02:00PM', '08:30:00', '1', 'problema con la bomba fan');
INSERT INTO `tiempos_muertos` VALUES (12, 9, '1-1725', '1725', '09:15:00', '06:00AM-02:00PM', '09:20:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (13, 9, '1-1725', '1725', '11:17:00', '06:00AM-02:00PM', '11:38:00', '1', 'Cortocircuito en panel eléctrico, se dispara la bomba.');
INSERT INTO `tiempos_muertos` VALUES (14, 9, '1-1725', '1725', '10:04:00', '06:00AM-02:00PM', '10:25:00', '2', 'hoja con grumos');
INSERT INTO `tiempos_muertos` VALUES (15, 9, '1-1725', '1725', '11:02:00', '06:00AM-02:00PM', '11:15:00', '2', 'baja presión de agua');
INSERT INTO `tiempos_muertos` VALUES (16, 9, '1-1725', '1725', '11:25:00', '06:00AM-02:00PM', '11:40:00', '2', 'Reflector dañado');
INSERT INTO `tiempos_muertos` VALUES (17, 9, '1-1725', '1725', '01:05:00', '06:00AM-02:00PM', '01:10:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (18, 13, '1-4545', '4545', '14:10:00', '02:00PM-10:00PM', '14:30:00', '1', 'ajuste de maquina');
INSERT INTO `tiempos_muertos` VALUES (21, 13, '1-4545', '4545', '14:10:00', '02:00PM-10:00PM', '14:50:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (22, 14, '1-1741', '1741', '07:50:00', '06:00AM-02:00PM', '07:55:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (26, 14, '1-1741', '1741', '09:10:00', '06:00AM-02:00PM', '09:20:00', '1', 'cambio de cuchilla baja presión cojín  de limpiesa');
INSERT INTO `tiempos_muertos` VALUES (28, 14, '1-1741', '1741', '11:30:00', '06:00AM-02:00PM', '14:00:00', '1', 'se quebró valineras de la bomba gemelas de pasta');
INSERT INTO `tiempos_muertos` VALUES (29, 14, '1-1741', '1741', '06:00:00', '06:00AM-02:00PM', '14:30:00', '2', 'se quebro valvula che del condensado esto permitiendo no retornar condensado');
INSERT INTO `tiempos_muertos` VALUES (30, 17, '2-1741', '1741', '08:35:00', '06:00AM-02:00PM', '08:40:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (31, 17, '2-1741', '1741', '09:50:00', '06:00AM-02:00PM', '10:00:00', '1', 'cambio de cuchilla baja presión de aire cojín de limpieza ');
INSERT INTO `tiempos_muertos` VALUES (32, 17, '2-1741', '1741', '11:40:00', '06:00AM-02:00PM', '11:45:00', '1', 'cambio de cuchillas ');
INSERT INTO `tiempos_muertos` VALUES (33, 17, '2-1741', '1741', '06:00:00', '06:00AM-02:00PM', '14:00:00', '2', 'se quebro la valvula che del condesado');
INSERT INTO `tiempos_muertos` VALUES (35, 15, '1-1741', '1741', '14:00:00', '02:00PM-10:00PM', '20:40:00', '1', 'bomba de pasta dañada');
INSERT INTO `tiempos_muertos` VALUES (37, 15, '1-1741', '1741', '14:00:00', '02:00PM-10:00PM', '22:00:00', '2', 'valvula chet dañada');
INSERT INTO `tiempos_muertos` VALUES (38, 18, '2-1741', '1741', '16:25:00', '02:00PM-10:00PM', '22:00:00', '1', 'paro por ordenes de ingeniero wayma');
INSERT INTO `tiempos_muertos` VALUES (39, 18, '2-1741', '1741', '14:00:00', '02:00PM-10:00PM', '22:00:00', '2', 'valvula chect aun en mal estado');
INSERT INTO `tiempos_muertos` VALUES (40, 16, '1-1741', '1741', '22:00:00', '10:00PM-06:00AM', '06:00:00', '1', 'paro por que la maquina 2 no estaba trabajando según las orientaciones ing. Whyman tienen que estar las 2 maquinas trabajando');
INSERT INTO `tiempos_muertos` VALUES (41, 16, '1-1741', '1741', '22:00:00', '10:00PM-06:00AM', '06:00:00', '2', 'mantenimiento entrego la maquina alas 2am se calento ambas maquinas alas 3am intentamos sacar papel pero hubo  problemas con el guia de ambas maquinas y el pope estaba desactivado maquina2 ');
INSERT INTO `tiempos_muertos` VALUES (42, 16, '1-1741', '1741', '06:00:00', '10:00PM-06:00AM', '06:35:00', '2', 'ya las 2 maquinas están produciendo papel');
INSERT INTO `tiempos_muertos` VALUES (44, 20, '3-1741', '1741', '07:50:00', '06:00AM-02:00PM', '08:00:00', '1', 'cambio de cuchilla y baja presión de aire cojín de limpieza');
INSERT INTO `tiempos_muertos` VALUES (45, 20, '3-1741', '1741', '08:35:00', '06:00AM-02:00PM', '08:45:00', '1', 'cambio de cuchilla y baja presión de aire cojín de limpieza');
INSERT INTO `tiempos_muertos` VALUES (46, 20, '3-1741', '1741', '09:10:00', '06:00AM-02:00PM', '14:00:00', '', 'ahorro de energia');
INSERT INTO `tiempos_muertos` VALUES (47, 20, '3-1741', '1741', '06:35:00', '06:00AM-02:00PM', '08:14:00', '2', 'cambio de guía de fieltro');
INSERT INTO `tiempos_muertos` VALUES (48, 20, '3-1741', '1741', '09:26:00', '06:00AM-02:00PM', '14:00:00', '2', 'para revisar válvula che retorno del condensado');
INSERT INTO `tiempos_muertos` VALUES (49, 21, '3-1741', '1741', '14:00:00', '02:00PM-10:00PM', '16:20:00', '1', 'paro por mantenimiento en yankee dos');
INSERT INTO `tiempos_muertos` VALUES (50, 21, '3-1741', '1741', '16:20:00', '02:00PM-10:00PM', '16:30:00', '1', 'calentamiento de cecador');
INSERT INTO `tiempos_muertos` VALUES (51, 21, '3-1741', '1741', '14:00:00', '02:00PM-10:00PM', '16:20:00', '2', 'ajustes valvula chet y llaves del condensado ');
INSERT INTO `tiempos_muertos` VALUES (52, 21, '3-1741', '1741', '16:30:00', '02:00PM-10:00PM', '20:20:00', '2', 'paro por incendio se limpio techos de yankee chimenea y tiempo para calentar cecador');
INSERT INTO `tiempos_muertos` VALUES (54, 21, '3-1741', '1741', '16:30:00', '02:00PM-10:00PM', '20:25:00', '1', 'paro  por incendio se limpio techo de yankee chimenea tiempo para calentar el secador');
INSERT INTO `tiempos_muertos` VALUES (55, 23, '4-1741', '1741', '06:30:00', '06:00AM-02:00PM', '06:40:00', '1', 'cambio de cuchilla y baja presión de aire cojín de limpieza ');
INSERT INTO `tiempos_muertos` VALUES (56, 23, '4-1741', '1741', '09:10:00', '06:00AM-02:00PM', '09:25:00', '1', 'cambio de cuchilla baja presión de aire cojín crepador \n');
INSERT INTO `tiempos_muertos` VALUES (58, 23, '4-1741', '1741', '07:10:00', '06:00AM-02:00PM', '07:28:00', '2', 'cambio de cuchilla baja presión de aire cojín de limpieza ');
INSERT INTO `tiempos_muertos` VALUES (59, 23, '4-1741', '1741', '09:10:00', '06:00AM-02:00PM', '09:18:00', '2', 'cambio de cuchilla baja presión de aire');
INSERT INTO `tiempos_muertos` VALUES (60, 24, '4-1741', '1741', '16:43:00', '02:00PM-10:00PM', '17:26:00', '1', 'paro por cambio de bandas del motor del hood');
INSERT INTO `tiempos_muertos` VALUES (61, 24, '4-1741', '1741', '18:09:00', '02:00PM-10:00PM', '18:12:00', '2', 'cambio de cuchilla limpieza de yankee');
INSERT INTO `tiempos_muertos` VALUES (62, 27, '5-1741', '1741', '16:10:00', '02:00PM-10:00PM', '16:15:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (63, 27, '5-1741', '1741', '19:45:00', '02:00PM-10:00PM', '19:50:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (64, 27, '5-1741', '1741', '17:00:00', '02:00PM-10:00PM', '17:05:00', '2', 'cambio de cuchilla y limpieza de yankee');
INSERT INTO `tiempos_muertos` VALUES (66, 26, '5-1741', '1741', '08:55:00', '06:00AM-02:00PM', '09:30:00', '1', 'paro por falta de pasta en el tanque 6');
INSERT INTO `tiempos_muertos` VALUES (67, 26, '5-1741', '1741', '11:23:00', '06:00AM-02:00PM', '11:28:00', '1', 'cambio de cuchillas ');
INSERT INTO `tiempos_muertos` VALUES (68, 26, '5-1741', '1741', '13:00:00', '06:00AM-02:00PM', '13:42:00', '1', 'se quebro el perno ala chumacera al rodó quiebre ');
INSERT INTO `tiempos_muertos` VALUES (69, 26, '5-1741', '1741', '08:55:00', '06:00AM-02:00PM', '09:30:00', '2', 'paro por falta de pasta tanque 6');
INSERT INTO `tiempos_muertos` VALUES (70, 26, '5-1741', '1741', '12:20:00', '06:00AM-02:00PM', '12:30:00', '2', 'limpieza de malla ');
INSERT INTO `tiempos_muertos` VALUES (71, 29, '1-1747', '1747', '06:00:00', '06:00AM-02:00PM', '14:00:00', '1', 'paro por falta de fibra blanca y cambio de balvula de vapor');
INSERT INTO `tiempos_muertos` VALUES (72, 29, '1-1747', '1747', '06:00:00', '06:00AM-02:00PM', '14:00:00', '2', 'paro por falta de fibra blanca y cambio de balvula de vapor');
INSERT INTO `tiempos_muertos` VALUES (73, 32, '2-1747', '1747', '08:15:00', '06:00AM-02:00PM', '08:20:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (74, 32, '2-1747', '1747', '08:40:00', '06:00AM-02:00PM', '08:43:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (75, 32, '2-1747', '1747', '10:20:00', '06:00AM-02:00PM', '10:25:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (76, 32, '2-1747', '1747', '12:20:00', '06:00AM-02:00PM', '12:30:00', '2', 'limpieza de caja de entrada tenia grumos se lavo con agua');
INSERT INTO `tiempos_muertos` VALUES (77, 33, '2-1747', '1747', '17:45:00', '02:00PM-10:00PM', '18:00:00', '1', 'saturada canasta depurador');
INSERT INTO `tiempos_muertos` VALUES (78, 33, '2-1747', '1747', '20:55:00', '02:00PM-10:00PM', '21:00:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (79, 33, '2-1747', '1747', '16:40:00', '02:00PM-10:00PM', '17:34:00', '2', 'paro por guia dañado serecoje el fieltro');
INSERT INTO `tiempos_muertos` VALUES (80, 33, '2-1747', '1747', '17:40:00', '02:00PM-10:00PM', '17:45:00', '2', 'cambio de cuchullas');
INSERT INTO `tiempos_muertos` VALUES (81, 34, '2-1747', '1747', '22:40:00', '10:00PM-06:00AM', '22:50:00', '1', 'limpieza de malla\n');
INSERT INTO `tiempos_muertos` VALUES (82, 34, '2-1747', '1747', '01:33:00', '10:00PM-06:00AM', '01:43:00', '1', 'limpieza de fieltro');
INSERT INTO `tiempos_muertos` VALUES (83, 34, '2-1747', '1747', '22:40:00', '10:00PM-06:00AM', '22:44:00', '2', 'cambio de cuchillas ');
INSERT INTO `tiempos_muertos` VALUES (84, 34, '2-1747', '1747', '03:12:00', '10:00PM-06:00AM', '03:20:00', '2', 'cambio  de cuchillas');
INSERT INTO `tiempos_muertos` VALUES (85, 35, '3-1747', '1747', '07:55:00', '06:00AM-02:00PM', '08:01:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (86, 35, '3-1747', '1747', '07:35:00', '06:00AM-02:00PM', '07:41:00', '2', 'depurador saturado de desconpresiono');
INSERT INTO `tiempos_muertos` VALUES (87, 35, '3-1747', '1747', '07:55:00', '06:00AM-02:00PM', '08:00:00', '2', 'cambio de cinta de malla lado derecho');
INSERT INTO `tiempos_muertos` VALUES (88, 36, '3-1747', '1747', '16:00:00', '02:00PM-10:00PM', '16:25:00', '1', 'depurador saturado de basura se purgo en varias ocaciones');
INSERT INTO `tiempos_muertos` VALUES (89, 36, '3-1747', '1747', '19:55:00', '02:00PM-10:00PM', '20:00:00', '1', 'limpieza de malla  ');
INSERT INTO `tiempos_muertos` VALUES (90, 36, '3-1747', '1747', '15:00:00', '02:00PM-10:00PM', '15:09:00', '2', 'canbio de cuchilla ');
INSERT INTO `tiempos_muertos` VALUES (91, 36, '3-1747', '1747', '16:20:00', '02:00PM-10:00PM', '16:27:00', '2', 'se perdio la hoja se purgo el de purtador');
INSERT INTO `tiempos_muertos` VALUES (92, 38, '4-1747', '1747', '06:20:00', '06:00AM-02:00PM', '06:25:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (93, 38, '4-1747', '1747', '08:40:00', '06:00AM-02:00PM', '08:45:00', '1', 'cambio de cuchila');
INSERT INTO `tiempos_muertos` VALUES (94, 38, '4-1747', '1747', '08:10:00', '06:00AM-02:00PM', '08:15:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (95, 38, '4-1747', '1747', '09:07:00', '06:00AM-02:00PM', '09:17:00', '2', 'limpieza de malla y cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (96, 39, '4-1747', '1747', '15:50:00', '02:00PM-10:00PM', '16:10:00', '1', 'baja precion  de aire al cambiar la cuchilla');
INSERT INTO `tiempos_muertos` VALUES (97, 39, '4-1747', '1747', '19:30:00', '02:00PM-10:00PM', '19:40:00', '1', 'se pego la hoja en el rodó del pope');
INSERT INTO `tiempos_muertos` VALUES (98, 39, '4-1747', '1747', '16:15:00', '02:00PM-10:00PM', '16:21:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (99, 39, '4-1747', '1747', '17:50:00', '02:00PM-10:00PM', '17:56:00', '2', 'se labo el fieltro con agua de pozo debido a un agujero q le estaba saliendo en una esquina  ');
INSERT INTO `tiempos_muertos` VALUES (100, 39, '4-1747', '1747', '18:38:00', '02:00PM-10:00PM', '18:42:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (101, 39, '4-1747', '1747', '20:15:00', '02:00PM-10:00PM', '20:21:00', '2', 'se desaparece la hoja debido a q el depurador estaba con un poco de basura se procedió a purgarlo ');
INSERT INTO `tiempos_muertos` VALUES (102, 41, '5-1747', '1747', '07:47:00', '06:00AM-02:00PM', '02:00:00', '1', 'cambio de malla');
INSERT INTO `tiempos_muertos` VALUES (103, 41, '5-1747', '1747', '07:42:00', '06:00AM-02:00PM', '02:00:00', '2', 'cambio de malla');
INSERT INTO `tiempos_muertos` VALUES (104, 44, '6-1747', '1747', '06:30:00', '06:00AM-02:00PM', '06:35:00', '1', 'mal formacion cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (105, 44, '6-1747', '1747', '08:30:00', '06:00AM-02:00PM', '08:36:00', '2', 'cambio de cuchilla y mala formacion de hoja ');
INSERT INTO `tiempos_muertos` VALUES (106, 44, '6-1747', '1747', '08:45:00', '06:00AM-02:00PM', '08:56:00', '2', 'baja presion de aire en el cojin');
INSERT INTO `tiempos_muertos` VALUES (107, 49, '1-1755', '1755', '22:20:00', '10:00PM-06:00AM', '22:25:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (108, 49, '1-1755', '1755', '23:25:00', '10:00PM-06:00AM', '23:30:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (109, 49, '1-1755', '1755', '23:38:00', '10:00PM-06:00AM', '23:43:00', '2', 'cambio de cuchilla y liempieza de secador');
INSERT INTO `tiempos_muertos` VALUES (110, 49, '1-1755', '1755', '01:45:00', '10:00PM-06:00AM', '01:49:00', '2', 'cambio de cuchilla\n');
INSERT INTO `tiempos_muertos` VALUES (111, 49, '1-1755', '1755', '02:30:00', '10:00PM-06:00AM', '02:35:00', '2', 'baja presion de aire');
INSERT INTO `tiempos_muertos` VALUES (112, 49, '1-1755', '1755', '03:10:00', '10:00PM-06:00AM', '03:15:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (113, 49, '1-1755', '1755', '03:36:00', '10:00PM-06:00AM', '03:40:00', '2', 'baja presion de aire');
INSERT INTO `tiempos_muertos` VALUES (114, 55, '1-1767', '1767', '08:40:00', '06:00AM-02:00PM', '09:20:00', '1', 'separo la maquina para a serle cambio de tape a ambas esquinas por que tenia menos de los 264 de diámetro ');
INSERT INTO `tiempos_muertos` VALUES (115, 55, '1-1767', '1767', '18:30:00', '06:00AM-02:00PM', '18:39:00', '2', 'canbio de cuchillas');
INSERT INTO `tiempos_muertos` VALUES (116, 55, '1-1767', '1767', '22:05:00', '06:00AM-02:00PM', '22:12:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (117, 62, '1-1805', '1805', '16:10:00', '02:00PM-10:00PM', '16:17:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (118, 62, '1-1805', '1805', '18:00:00', '02:00PM-10:00PM', '18:10:00', '1', 'bomba de pasta no elevaba bien en caja');
INSERT INTO `tiempos_muertos` VALUES (119, 62, '1-1805', '1805', '14:00:00', '02:00PM-10:00PM', '14:16:00', '2', 'ajuste de maquina');
INSERT INTO `tiempos_muertos` VALUES (120, 62, '1-1805', '1805', '15:50:00', '02:00PM-10:00PM', '15:57:00', '2', 'cambio de cuchilla y problema con caja de vacio');
INSERT INTO `tiempos_muertos` VALUES (121, 62, '1-1805', '1805', '17:10:00', '02:00PM-10:00PM', '17:15:00', '2', 'cambio de cuchilla ');
INSERT INTO `tiempos_muertos` VALUES (122, 62, '1-1805', '1805', '18:00:00', '02:00PM-10:00PM', '18:18:00', '2', 'problema con bomba de pasta');
INSERT INTO `tiempos_muertos` VALUES (123, 62, '1-1805', '1805', '19:56:00', '02:00PM-10:00PM', '20:07:00', '2', 'cambio de cinta en la malla lado derecho');
INSERT INTO `tiempos_muertos` VALUES (124, 66, '1-1820', '1820', '06:30:00', '06:00AM-02:00PM', '06:35:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (125, 66, '1-1820', '1820', '08:38:00', '06:00AM-02:00PM', '08:44:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (126, 67, '1-1820', '1820', '13:30:00', '02:00PM-10:00PM', '13:45:00', '1', 'baja precion de aire... canbio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (128, 67, '1-1820', '1820', '17:50:00', '02:00PM-10:00PM', '17:59:00', '1', 'canbio de cuchilla...');
INSERT INTO `tiempos_muertos` VALUES (129, 67, '1-1820', '1820', '19:30:00', '02:00PM-10:00PM', '19:40:00', '2', 'cabio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (130, 67, '1-1820', '1820', '20:20:00', '02:00PM-10:00PM', '20:31:00', '2', 'mala formación en la hoja limpieza de malla ');
INSERT INTO `tiempos_muertos` VALUES (131, 67, '1-1820', '1820', '17:50:00', '02:00PM-10:00PM', '17:59:00', '', 'canbio de cuchilla...');
INSERT INTO `tiempos_muertos` VALUES (132, 74, '1-1859', '1859', '22:30:00', '10:00PM-06:00AM', '22:35:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (133, 74, '1-1859', '1859', '12:15:00', '10:00PM-06:00AM', '12:20:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (134, 74, '1-1859', '1859', '01:50:00', '10:00PM-06:00AM', '01:57:00', '1', 'cambio de cinta en malla lado izquierdo');
INSERT INTO `tiempos_muertos` VALUES (135, 74, '1-1859', '1859', '23:25:00', '10:00PM-06:00AM', '23:35:00', '2', 'cambio de cuchilla falta de presion de aire');
INSERT INTO `tiempos_muertos` VALUES (136, 74, '1-1859', '1859', '23:40:00', '10:00PM-06:00AM', '23:43:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (137, 74, '1-1859', '1859', '02:50:00', '10:00PM-06:00AM', '02:55:00', '2', 'cambio de bomba de pasta ya que esta se daño las balineras');
INSERT INTO `tiempos_muertos` VALUES (138, 88, '1-1893', '1893', '14:45:00', '02:00PM-10:00PM', '14:50:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (139, 88, '1-1893', '1893', '16:30:00', '02:00PM-10:00PM', '16:35:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (140, 88, '1-1893', '1893', '14:43:00', '02:00PM-10:00PM', '14:47:00', '2', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES (141, 88, '1-1893', '1893', '16:40:00', '02:00PM-10:00PM', '16:45:00', '2', 'cambio de cuchilla');

-- ----------------------------
-- Table structure for turnos
-- ----------------------------
DROP TABLE IF EXISTS `turnos`;
CREATE TABLE `turnos`  (
  `IdTurno` int(11) NOT NULL AUTO_INCREMENT,
  `Turno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Comentario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `horaInicio` time(0) NULL DEFAULT NULL,
  `horaFinal` time(0) NULL DEFAULT NULL,
  `tipo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estado` bit(1) NOT NULL,
  PRIMARY KEY (`IdTurno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of turnos
-- ----------------------------
INSERT INTO `turnos` VALUES (1, '6:00am-6:00pm', 'Matutino', '06:00:00', '18:00:00', 'M', b'0');
INSERT INTO `turnos` VALUES (2, '6:00pm-6:00am', 'Vespertino', '18:00:00', '06:00:00', 'N', b'0');
INSERT INTO `turnos` VALUES (3, '06:00AM-02:00PM', 'Matutino', '06:00:00', '14:00:00', 'M', b'1');
INSERT INTO `turnos` VALUES (4, '02:00PM-10:00PM', 'Mixto', '14:00:00', '22:00:00', 'MX', b'1');
INSERT INTO `turnos` VALUES (5, '10:00PM-06:00AM', 'Nocturno', '22:00:00', '06:00:00', 'N', b'1');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Privilegio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Estado` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (8, 'Kperalta', 'Keyla Peralta Aleman', 'cc0daad49e992d2cdedc94221083c3d0', '3', '1');
INSERT INTO `usuarios` VALUES (9, 'Esolis', 'Exaul Espinal Solis', '851519c7540f500a0561d1f62eb52b84', '2', '1');
INSERT INTO `usuarios` VALUES (10, 'malvarado', 'Mariano Alvarado', 'df34bfca22ba6ef9b0a764394a15fff2', '4', '1');
INSERT INTO `usuarios` VALUES (12, 'jose.jimenez', 'Jose Jimenez', 'cc0daad49e992d2cdedc94221083c3d0', '3', '1');
INSERT INTO `usuarios` VALUES (13, 'joseHernandez', 'Jose hernandez', 'e10adc3949ba59abbe56e057f20f883e', '4', '1');
INSERT INTO `usuarios` VALUES (14, 'kevinBlanco', 'Kevin Blanco', NULL, '5', '1');
INSERT INTO `usuarios` VALUES (15, 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '3', '1');
INSERT INTO `usuarios` VALUES (16, 'wbermudez', 'Whyman bermudez', 'f826eeaa74838974413bb35eae80cefa', '3', '1');
INSERT INTO `usuarios` VALUES (17, 'eespinal', 'Exaul Espinal', '7e53ab4a1805bf6d1fa23447cf3463ea', '3', '1');
INSERT INTO `usuarios` VALUES (18, 'Edwing Dominguez', 'Edwing Dominguez', '1e1a61697f6018023dbfa99eca046843', '4', '1');
INSERT INTO `usuarios` VALUES (19, 'cmaltez', 'Cristian Maltez', '3562ece7e45deb319d132a0287a0bbc6', '4', '1');
INSERT INTO `usuarios` VALUES (20, 'mendez', 'Carlos Mendez', NULL, '5', '1');
INSERT INTO `usuarios` VALUES (21, 'ricardo', 'Ricardo Talavera', NULL, '5', '1');
INSERT INTO `usuarios` VALUES (22, 'Cesar', 'Cesar Romero', NULL, '5', '1');
INSERT INTO `usuarios` VALUES (23, 'Axel', 'Axel Lopez', NULL, '5', '1');
INSERT INTO `usuarios` VALUES (24, 'Ariel', 'Ariek', NULL, '5', '0');
INSERT INTO `usuarios` VALUES (25, 'Ariel', 'Ariel Amador', NULL, '5', '0');
INSERT INTO `usuarios` VALUES (26, 'kperalta', 'keyla peralta', '109795cd105a8f19e6540af69cc8d0a3', '4', '1');
INSERT INTO `usuarios` VALUES (27, 'Michael', 'michael meza', NULL, '5', '1');
INSERT INTO `usuarios` VALUES (28, 'asaenz', 'Alvaro saenz', 'e068aea2241169318a18f3ca4464a192', '3', '1');
INSERT INTO `usuarios` VALUES (29, 'sa', 'Super Admin', 'e10adc3949ba59abbe56e057f20f883e', '0', '1');

-- ----------------------------
-- View structure for view_cargas_pulper
-- ----------------------------
DROP VIEW IF EXISTS `view_cargas_pulper`;
CREATE ALGORITHM = UNDEFINED DEFINER = `manager`@`%` SQL SECURITY DEFINER VIEW `view_cargas_pulper` AS SELECT
	cp.IdCargaPulper,
	cp.IdInsumo,
	cp.Cantidad,
	cp.IdReporteDiario,
	im.Descripcion,
	im.IdCategoria,
	im.UnidadMedida,
	im.Tipo
FROM
	cargas_pulper cp
JOIN insumos im ON cp.IdInsumo = im.IdInsumo
WHERE im.IdCategoria = 1 ;

-- ----------------------------
-- View structure for view_cargas_pulper_completo
-- ----------------------------
DROP VIEW IF EXISTS `view_cargas_pulper_completo`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_cargas_pulper_completo` AS SELECT
insumos.descripcion,
cargas_pulper.IdCargaPulper,
cargas_pulper.IdInsumo,
cargas_pulper.Cantidad,
cargas_pulper.IdReporteDiario
FROM
insumos ,
cargas_pulper ;

-- ----------------------------
-- View structure for view_detallesplanescat1
-- ----------------------------
DROP VIEW IF EXISTS `view_detallesplanescat1`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_detallesplanescat1` AS SELECT
	dp.IdDetallePlan,
	dp.IdPlan,
	p.Comentario,
	dp.IdInsumo,
	c.categoria,
	i.Descripcion,
	p.Estado
FROM
	detalle_planes dp
INNER JOIN planes p ON p.IdPlan = dp.IdPlan
INNER JOIN categoria c ON c.IdCategoria = dp.Categoria
INNER JOIN insumos i ON i.IdInsumo = dp.IdInsumo
WHERE
	dp.Categoria = 1
AND p.Estado = 1 ;

-- ----------------------------
-- View structure for view_detallesplanescat2
-- ----------------------------
DROP VIEW IF EXISTS `view_detallesplanescat2`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_detallesplanescat2` AS SELECT
	dp.IdPlan,
	dp.IdDetallePlan,
	dp.IdInsumo,
	p.Comentario,
	c.categoria,
	i.Descripcion,
	p.Estado
FROM
	detalle_planes dp
INNER JOIN planes p ON p.IdPlan = dp.IdPlan
INNER JOIN categoria c ON c.IdCategoria = dp.Categoria
INNER JOIN insumos i ON i.IdInsumo = dp.IdInsumo
WHERE
	dp.Categoria = 2
AND p.Estado = 1 ;

-- ----------------------------
-- View structure for view_detallesplanescat3
-- ----------------------------
DROP VIEW IF EXISTS `view_detallesplanescat3`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_detallesplanescat3` AS SELECT
	dp.IdPlan,
	dp.IdDetallePlan,
	p.Comentario,
	dp.IdInsumo,
	c.categoria,
	i.Descripcion,
	p.Estado
FROM
	detalle_planes dp
INNER JOIN planes p ON p.IdPlan = dp.IdPlan
INNER JOIN categoria c ON c.IdCategoria = dp.Categoria
INNER JOIN insumos i ON i.IdInsumo = dp.IdInsumo
WHERE
	dp.Categoria = 3
AND p.Estado = 1 ;

-- ----------------------------
-- View structure for view_detallesplanescat4
-- ----------------------------
DROP VIEW IF EXISTS `view_detallesplanescat4`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_detallesplanescat4` AS SELECT DISTINCT
	dp.IdPlan,
	dp.IdDetallePlan,
	dp.IdInsumo,
	p.Comentario,
	c.categoria,
	t.Tanque,
	p.Estado
FROM
	detalle_planes dp
INNER JOIN planes p ON p.IdPlan = dp.IdPlan
INNER JOIN categoria c ON c.IdCategoria = dp.Categoria
INNER JOIN tanques t ON t.IdTanque = dp.IdInsumo
WHERE
	dp.Categoria = 4
AND p.Estado = 1 ;

-- ----------------------------
-- View structure for view_mp_insumos
-- ----------------------------
DROP VIEW IF EXISTS `view_mp_insumos`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_mp_insumos` AS SELECT
	mp.IdMpInsumos,
mp.IdReporteDiario,
i.Descripcion,
mp.Dia,
mp.Noche,
mp.Cantidad_PTA_Agua_Dia,
mp.Cantidad_PTA_Agua_Noche
FROM
	mp_insumos mp
JOIN
insumos i on mp.Descripcion = i.IdInsumo ;

-- ----------------------------
-- View structure for view_orden_produccion
-- ----------------------------
DROP VIEW IF EXISTS `view_orden_produccion`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_orden_produccion` AS SELECT
	ord.IdOrden AS IdOrden,
	ord.NoOrden AS NoOrden,
	us.Nombre AS Usuario,
	ord.FechaInicio AS FechaInicio,
	ord.FechaFin AS FechaFin,
	ord.Estado AS Estado
FROM
	orden_produccion ord
INNER JOIN usuarios us ON ord.Usuario = us.IdUsuario 
ORDER BY ord.Estado=1 DESC ;

-- ----------------------------
-- View structure for view_ordproduccioncoordinador
-- ----------------------------
DROP VIEW IF EXISTS `view_ordproduccioncoordinador`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_ordproduccioncoordinador` AS SELECT
                ord.IdOrden AS IdOrden,
                ord.NoOrden AS NoOrden,
                us.Nombre AS Usuario,
                ord.FechaInicio AS FechaInicio,
                ord.FechaFin AS FechaFin,
                ord.Estado AS Estado
FROM
                orden_produccion ord
INNER JOIN usuarios us ON ord.Usuario = us.IdUsuario

ORDER BY ord.Estado=1 DESC ;

-- ----------------------------
-- View structure for view_pasta
-- ----------------------------
DROP VIEW IF EXISTS `view_pasta`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pasta` AS SELECT
	p.IdPasta,
	p.IdReporteDiario,
	t.Tanque,
	p.Dia,
	p.Noche,
	p.Consumo
FROM
	pasta p
INNER JOIN tanques t ON t.IdTanque = p.Tanque ;

-- ----------------------------
-- View structure for view_produccion
-- ----------------------------
DROP VIEW IF EXISTS `view_produccion`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_produccion` AS SELECT
	pro.IdProduccion,
	pro.IdReporteDiario,
	pro.NoOrden,
	us.Nombre,
	mq.maquina as Maquina,
	pro.HoraInicio,
	pro.HoraFin,
	pro.VelocMaquina,
	pro.Peso,
	pro.Diametro,
	pro.PesoBase,
	pro.Merma
FROM
	produccion pro
JOIN usuarios us ON us.IdUsuario = pro.Operador
JOIN maquinas mq ON pro.Maquina = mq.idMaquina
order by mq.maquina asc ;

-- ----------------------------
-- View structure for view_reporte
-- ----------------------------
DROP VIEW IF EXISTS `view_reporte`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_reporte` AS SELECT
	rpt.IdReporte AS IdReporte,
	rpt.NoOrden AS NoOrden,
	rpt.Tipo AS Tipo,
	us.Nombre AS Usuario,
	rpt.FechaInicio AS FechaInicio,
	rpt.FechaFin AS FechaFin,
	rpt.Estado AS Estado
FROM
	reportes rpt
INNER JOIN usuarios us ON rpt.Usuario = us.IdUsuario ;

-- ----------------------------
-- View structure for view_reportediario
-- ----------------------------
DROP VIEW IF EXISTS `view_reportediario`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_reportediario` AS SELECT
	rd.IdReporteDiario,
	rd.Consecutivo,
	rd.NoOrder,
	rd.Turno,
	t.Comentario,
	t.tipo,
	rd.FechaInicio,
	rd.FechaFinal,
	rd.Coordinador,
	us.Nombre,
	us.IdUsuario,
	rd.Grupo,
	rd.TipoPapel
FROM
	reporte_diario rd
JOIN usuarios us ON us.IdUsuario = rd.Coordinador
JOIN orden_produccion op ON rd.NoOrder = op.NoOrden
JOIN turnos t ON rd.Turno = t.IdTurno
WHERE op.Estado = 1 ;

-- ----------------------------
-- View structure for view_reportediariodetalle
-- ----------------------------
DROP VIEW IF EXISTS `view_reportediariodetalle`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_reportediariodetalle` AS SELECT
	rd.IdReporteDiario,
	rd.Consecutivo,
	rd.NoOrder,
	tr.Turno,
	tr.Comentario,
	rd.FechaInicio,
	rd.FechaFinal,
	rd.Coordinador,
	us.Nombre,
	rd.Grupo,
	rd.TipoPapel,
	rd.ProduccionTotal,
	rd.MermaTotal,
	rd.Estado,
	tr.tipo,
	(SELECT COUNT(*) FROM turnos WHERE estado = 1) AS Cant
FROM
	reporte_diario rd
JOIN turnos tr ON rd.Turno = tr.IdTurno
JOIN usuarios us ON us.IdUsuario = rd.Coordinador
ORDER BY
	/*rd.Consecutivo ASC*/
	rd.IdReporteDiario ASC ;

-- ----------------------------
-- View structure for view_vistacoordinador
-- ----------------------------
DROP VIEW IF EXISTS `view_vistacoordinador`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_vistacoordinador` AS SELECT
	rd.IdReporteDiario,
	rd.Consecutivo,
	rd.NoOrder,
	rd.Turno,
	rd.FechaInicio,
	rd.FechaFinal,
	rd.Coordinador,
	us.Nombre,
	us.IdUsuario,
	rd.Grupo,
	rd.TipoPapel
FROM
	reporte_diario rd
JOIN orden_produccion op ON rd.NoOrder = op.NoOrden
JOIN usuarios us ON  us.IdUsuario=rd.Coordinador
WHERE rd.Estado = 1 ;

-- ----------------------------
-- Procedure structure for cabeceraConsolidado
-- ----------------------------
DROP PROCEDURE IF EXISTS `cabeceraConsolidado`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cabeceraConsolidado`(IN consecutivoC VARCHAR(50))
BEGIN
SET @produccionReal = (SELECT SUM(ProduccionTotal) FROM reporte_diario WHERE Consecutivo=consecutivoC);
SET @mermaMq1 = (SELECT SUM(DISTINCT Merma)	FROM produccion	WHERE	NoOrden = consecutivoC AND Maquina = 1);
SET @mermaMq2 = (SELECT SUM(DISTINCT Merma)	FROM produccion	WHERE	NoOrden = consecutivoC AND Maquina = 2);
SET @mermaTotal = @mermaMq1 + @mermaMq2;
SET @horaInicio = (SELECT horaInicio FROM control_piso WHERE	consecutivo = consecutivoC);
SET @fechaInicio = (SELECT fechaInicio FROM control_piso WHERE	consecutivo = consecutivoC);
SET @fechaFinal = (SELECT fechaFinalizacion FROM control_piso WHERE	consecutivo = consecutivoC);
SET @horaFinal = (SELECT horaFinal FROM control_piso WHERE	consecutivo = consecutivoC);
SET @idTurnoM = (SELECT IdTurno FROM turnos WHERE tipo = 'M' AND estado = 1);
SET @idTurnoMX = (SELECT IdTurno FROM turnos WHERE tipo = 'MX' AND estado = 1);
SET @idTurnoN = (SELECT IdTurno FROM turnos WHERE tipo = 'N' AND estado = 1);
SET @cargaDia = (
SELECT COUNT(DISTINCT cpp.IdCargaPulper) 
	FROM cargas_pulper cpp
	JOIN reporte_diario rdd ON cpp.IdReporteDiario = rdd.IdReporteDiario
	WHERE rdd.Consecutivo = consecutivoC AND rdd.Turno = @idTurnoM);
SET @cargaMixta = (
SELECT COUNT(DISTINCT cpp.IdCargaPulper) 
	FROM cargas_pulper cpp 
	JOIN reporte_diario rdd ON cpp.IdReporteDiario = rdd.IdReporteDiario
	WHERE rdd.Consecutivo = consecutivoC AND rdd.Turno = @idTurnoMX);
SET @cargaNoche = (
SELECT COUNT(DISTINCT cpp.IdCargaPulper) 
	FROM cargas_pulper cpp 
	JOIN reporte_diario rdd ON cpp.IdReporteDiario = rdd.IdReporteDiario
	WHERE rdd.Consecutivo = consecutivoC AND rdd.Turno = @idTurnoN);
	SELECT
		rd.NoOrder,
		rd.Consecutivo,
		rd.TipoPapel AS Producto,
		@fechaInicio AS FechaInicio,
		@fechaFinal AS FechaFinal,
		t.Turno,
		@produccionReal AS produccionReal,
		@mermaMq1 + @mermaMq2 AS mermaTotal,
		@produccionReal + @mermaTotal AS produccionTotal,
		cp.horaInicio,
		cp.horaFinal AS horaFin,
		IF(@cargaDia=0, @cargaDia, (((@cargaDia*40)/60)-12)) AS cargaDia,
		IF(@cargaMixta=0, @cargaMixta, (((@cargaMixta*40)/60)-12)) AS cargaMixta,
		IF(@cargaNoche=0, @cargaNoche, (((@cargaNoche*40)/60)-12)) AS cargaNoche,
		(SELECT totalTMMQ1(consecutivoC,'M',1)/(60)-(12)) AS MMaquina1,
		(SELECT totalTMMQ1(consecutivoC,'M',2)/(60)-(12)) AS MMaquina2,
		(SELECT totalTMMQ1(consecutivoC,'M',3)/(60)-(12)) AS MMaquina3,
		(SELECT totalTMMQ1(consecutivoC,'MX',1)/(60)-(12)) AS MMXMaquina1,
		(SELECT totalTMMQ1(consecutivoC,'MX',2)/(60)-(12)) AS MMXMaquina2,
		(SELECT totalTMMQ1(consecutivoC,'MX',3)/(60)-(12)) AS MMXVMaquina3,
		(SELECT totalTMMQ1(consecutivoC,'N',1)/(60)-(12)) AS MNMaquina1,
		(SELECT totalTMMQ1(consecutivoC,'N',2)/(60)-(12)) AS MNMaquina2,
		(SELECT totalTMMQ1(consecutivoC,'N',3)/(60)-(12)) AS MNMaquina3,
		/*(SELECT DISTINCT merma FROM produccion	WHERE	NoOrden = consecutivoC  AND Maquina = 1 LIMIT 1) AS MermaM1,
		(SELECT DISTINCT merma FROM produccion	WHERE	NoOrden = consecutivoC  AND Maquina = 2 LIMIT 1) AS MermaM2,
		(SELECT DISTINCT merma FROM produccion	WHERE	NoOrden = consecutivoC  AND Maquina = 1 LIMIT 1,2) AS MermaMX1,
		(SELECT DISTINCT merma FROM produccion	WHERE	NoOrden = consecutivoC  AND Maquina = 2 LIMIT 1,2) AS MermaMX2,*/
		((@mermaMq1/60)-12) AS mermaMQ1,
		((@mermaMq2/60)-12) AS mermaMQ2
	FROM
		reporte_diario rd
	INNER JOIN turnos t ON rd.Turno = t.IdTurno
	INNER JOIN produccion p ON rd.Consecutivo = p.NoOrden
	INNER JOIN control_piso cp ON cp.consecutivo = rd.Consecutivo
	INNER JOIN cargas_pulper cpp ON rd.IdReporteDiario = cpp.IdReporteDiario
	WHERE
		rd.Consecutivo = consecutivoC
		GROUP BY rd.Consecutivo, rd.NoOrder;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for cabeceraReporteDiario
-- ----------------------------
DROP PROCEDURE IF EXISTS `cabeceraReporteDiario`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cabeceraReporteDiario`(IN idReporteD INT)
BEGIN
 SELECT
	rd.NoOrder,
	rd.Consecutivo,
	rd.TipoPapel,
	rd.ProduccionTotal,
	rd.FechaInicio,
	rd.FechaFinal,
	tn.Turno,
	rd.Grupo,
	us.Nombre,
	rd.MermaTotal
FROM
	reporte_diario rd
JOIN usuarios us ON rd.Coordinador = us.IdUsuario
JOIN turnos tn ON rd.Turno = tn.IdTurno
where rd.IdReporteDiario = idReporteD;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for consumoElectrico
-- ----------------------------
DROP PROCEDURE IF EXISTS `consumoElectrico`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consumoElectrico`(IN fechaInicioC date, IN fechaFinaLC date, IN horaInicioC time, IN horaFinC time, IN consumoInicialC DECIMAL(10,2), IN consumoFinalC DECIMAL(10,2), IN consecutivoC VARCHAR(10) )
BEGIN
IF EXISTS ( SELECT consecutivo FROM consumoElectrico WHERE	consecutivo = consecutivoC)
THEN
BEGIN
UPDATE consumoElectrico ce
SET ce.fechaInicio = fechaInicioC,
ce.fechaFin = fechaFinaLC,
ce.horaInicio = horaInicioC,
ce.horaFinal = horaFinC,
ce.consumoInicial = consumoInicialC,
ce.consumoFinal = consumoFinalC
WHERE
	consecutivo = consecutivoC;
END ;
ELSE
BEGIN
	INSERT INTO consumoElectrico (
	fechaInicio,
	fechaFin,
	horaInicio,
	horaFinal,
	consumoInicial,
	consumoFinal,
	consecutivo
	)
VALUES
	(
	fechaInicioC,
	fechaFinaLC,
	horaInicioC,
	horaFinC,
	consumoInicialC,
	consumoFinalC,
	consecutivoC
	) ;
END ;

END IF ;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for controlPisoInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `controlPisoInfo`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `controlPisoInfo`(IN consecutivo VARCHAR(50))
BEGIN
	SELECT
		cp.idControlPiso,
		cp.noOrden AS NoOrder,
		cp.consecutivo AS Consecutivo,
		cp.fechaInicio AS FechaInicio,
		cp.fechaFinalizacion AS FechaFinal,
		cp.producto AS TipoPapel,
		cp.grupo,
		cp.maquina,
		cp.horaInicio,
		cp.horaFinal,
		cp.rptPasta
	FROM
		control_piso cp
	WHERE
		cp.consecutivo = consecutivo;
	END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for detalleControlPiso
-- ----------------------------
DROP PROCEDURE IF EXISTS `detalleControlPiso`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalleControlPiso`(IN idInsumoC INT,IN tipoC VARCHAR (100),
	IN codigoC VARCHAR (30),
	IN descripcionC VARCHAR (100),
	IN unidadMedidadC VARCHAR (15),
	IN requisadoC DECIMAL (11,2),
	IN pisoC DECIMAL(11,2),
	IN consumoC DECIMAL (11,2),
	IN idControlPisoC INT)
BEGIN
IF EXISTS ( SELECT idInsumo	FROM	control_piso_detalle WHERE	IdInsumo = idInsumoC AND idControlPiso = idControlPisoC )
THEN

BEGIN
UPDATE control_piso_detalle cpd
SET cpd.codigo = codigoC,
 cpd.requisado = requisadoC,
 cpd.piso = pisoC,
 cpd.consumo = consumoC
WHERE
	IdInsumo = idInsumoC ;
END ;
ELSE
BEGIN
	INSERT INTO control_piso_detalle (
		tipo,
		codigo,
		descripcion,
		unidadMedida,
		requisado,
		piso,
		consumo,
		idControlPiso,
		IdInsumo
	)
VALUES
	(
		tipoC,
		codigoC,
		descripcionC,
		unidadMedidadC,
		requisadoC,
		pisoC,
		consumoC,
		idControlPisoC,
		idInsumoC
	) ;
END ;

END IF ;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for encabezadoControlPiso
-- ----------------------------
DROP PROCEDURE IF EXISTS `encabezadoControlPiso`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `encabezadoControlPiso`(IN noOrdenC INT,IN consecutivoC VARCHAR (10),IN fechaInicioC date,IN fechaFinalizacionC date,IN fechaCreacionC date,IN productoC VARCHAR (50),	IN grupoC VARCHAR (20),	IN maquinaC VARCHAR (20),IN horaInicioC time,IN horaFinalC time, IN rptPastaC INT)
BEGIN

IF EXISTS (	SELECT	consecutivo	FROM	control_piso	WHERE	consecutivo = consecutivoC) 
THEN
BEGIN
UPDATE control_piso cp
SET cp.fechaInicio = fechaInicioC,
 cp.fechaFinalizacion = fechaFinalizacionC,
 cp.producto = productoC,
 cp.grupo = grupoC,
 cp.maquina = maquinaC,
 cp.horaInicio = horaInicioC,
 cp.horaFinal = horaFinalC,
 cp.rptPasta = rptPastaC
WHERE
	cp.consecutivo = consecutivoC;
END ;
ELSE
BEGIN
	INSERT INTO control_piso (
		noOrden,
		consecutivo,
		fechaInicio,
		fechaFinalizacion,
		fechaCreacion,
		producto,
		grupo,
		maquina,
		horaInicio,
		horaFinal,
		rptPasta
	)
VALUES
	(
		noOrdenC,
		consecutivoC,
		fechaInicioC,
		fechaFinalizacionC,
		fechaCreacionC,
		productoC,
		grupoC,
		maquinaC,
		horaInicioC,
		horaFinalC,
		rptPastaC
	) ;
END ;

END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for infoPasta
-- ----------------------------
DROP PROCEDURE IF EXISTS `infoPasta`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `infoPasta`(IN turno INT,
	IN consecutivo VARCHAR (10))
BEGIN
	SELECT
		ps.Tanque,
		ps.Noche,
		ps.Dia,
		rd.Turno
	FROM
		pasta ps
	JOIN reporte_diario rd ON ps.IdReporteDiario = rd.IdReporteDiario
	WHERE
		rd.Consecutivo = consecutivo
	AND rd.Turno = turno;
	END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for reporteControlPiso
-- ----------------------------
DROP PROCEDURE IF EXISTS `reporteControlPiso`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reporteControlPiso`(IN consecutivo VARCHAR(10))
BEGIN
	SELECT
		cp.consecutivo,
		cp.noOrden,
		cp.fechaInicio,
		cp.fechaFinalizacion,
		cp.maquina,
		cp.producto,
		cp.horaInicio,
		cp.horaFinal,
		cp.grupo,
		cpd.tipo,
		cpd.codigo,
		cpd.descripcion,
		cpd.unidadMedida,
		cpd.requisado,
		cpd.piso,
		cpd.consumo
	FROM
		control_piso cp
	JOIN control_piso_detalle cpd ON cp.idControlPiso = cpd.idControlPiso
	WHERE
		cp.consecutivo = consecutivo;
	END
;;
delimiter ;

-- ----------------------------
-- Function structure for totalTiempoMMMQ1
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMMMQ1`;
delimiter ;;
CREATE DEFINER=`manager`@`%` FUNCTION `totalTiempoMMMQ1`(consecutivoC VARCHAR(10)) RETURNS int(11)
    READS SQL DATA
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	tm.Consecutivo = consecutivoC
AND tm.Maquina = 1 and tm.Turno = '6:00am-6:00pm';
RETURN difTotal;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for totalTiempoMMMQ2
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMMMQ2`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMMMQ2`(consecutivoC INT) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	Consecutivo = consecutivoC
AND tm.Maquina = 2 and tm.Turno = '6:00am-6:00pm';
RETURN difTotal;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for totalTiempoMMMQ3
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMMMQ3`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMMMQ3`(consecutivoC VARCHAR (10)) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	tm.Consecutivo = consecutivoC
AND tm.Maquina = 3 and tm.Turno = '6:00am-6:00pm';
RETURN difTotal;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for totalTiempoMVMQ1
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMVMQ1`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMVMQ1`(consecutivoC VARCHAR (10)) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	tm.Consecutivo = consecutivoC
AND tm.Maquina = 1 and tm.Turno = '6:00pm-6:00am';
RETURN difTotal;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for totalTiempoMVMQ2
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMVMQ2`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMVMQ2`(consecutivoC VARCHAR (10)) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	tm.Consecutivo = consecutivoC
AND tm.Maquina = 2 and tm.Turno = '6:00pm-6:00am';
RETURN difTotal;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for totalTiempoMVMQ3
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMVMQ3`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMVMQ3`(consecutivoC VARCHAR (10)) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	tm.Consecutivo = consecutivoC
AND tm.Maquina = 3 and tm.Turno = '6:00pm-6:00am';
RETURN difTotal;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for totalTMMQ1
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTMMQ1`;
delimiter ;;
CREATE DEFINER=`manager`@`%` FUNCTION `totalTMMQ1`(consecutivoC VARCHAR(10), tipoC VARCHAR(10), maquinaC INT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN	
	DECLARE	difTotal INT;	
	SET @turno = (SELECT Turno FROM turnos WHERE tipo = tipoC AND estado=1);
	SET @horaInicio = (SELECT horaInicio FROM turnos WHERE Turno = @turno);
	SET @horaFinal = (SELECT horaFinal FROM turnos WHERE Turno = @turno);
	SELECT SUM( IF (
		tm.HoraInicio > tm.HoraFin,
		TIMESTAMPDIFF(
			MINUTE,
			tm.HoraInicio,
			CONVERT ('24:00:00', time)
		) + TIMESTAMPDIFF(
			MINUTE,
			CONVERT ('00:00:00', time),
			tm.HoraFin
		),
		TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
	)) INTO difTotal
	FROM
		tiempos_muertos tm
	WHERE
		tm.Consecutivo = consecutivoC	AND tm.Maquina = maquinaC AND tm.Turno = @turno;
	RETURN difTotal;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for updatePasswordUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `updatePasswordUser`;
delimiter ;;
CREATE DEFINER=`manager`@`%` PROCEDURE `updatePasswordUser`(IN idUsuarioC INT, IN oldPassword VARCHAR(150), IN newPassword VARCHAR(150))
BEGIN
   SET @passActual = (SELECT `Password` FROM usuarios WHERE IdUsuario = idUsuarioC);
  IF  @passActual = oldPassword THEN 
    	UPDATE usuarios
			SET `Password` = newPassword
			WHERE IdUsuario = idUsuarioC;
			SELECT 1 AS resultado;
ELSE 
    SELECT 0 AS resultado;
  END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
