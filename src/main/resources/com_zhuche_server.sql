/*
 Navicat Premium Data Transfer

 Source Server         : macbook_mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 192.168.0.101:3306
 Source Schema         : com_zhuche_server

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 17/03/2022 17:42:45
*/

SET NAMES utf8mb4;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `province_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of area
-- ----------------------------
BEGIN;
INSERT INTO `area` VALUES ('110101', '东城区', '1101', '11');
INSERT INTO `area` VALUES ('110102', '西城区', '1101', '11');
INSERT INTO `area` VALUES ('110105', '朝阳区', '1101', '11');
INSERT INTO `area` VALUES ('110106', '丰台区', '1101', '11');
INSERT INTO `area` VALUES ('110107', '石景山区', '1101', '11');
INSERT INTO `area` VALUES ('110108', '海淀区', '1101', '11');
INSERT INTO `area` VALUES ('110109', '门头沟区', '1101', '11');
INSERT INTO `area` VALUES ('110111', '房山区', '1101', '11');
INSERT INTO `area` VALUES ('110112', '通州区', '1101', '11');
INSERT INTO `area` VALUES ('110113', '顺义区', '1101', '11');
INSERT INTO `area` VALUES ('110114', '昌平区', '1101', '11');
INSERT INTO `area` VALUES ('110115', '大兴区', '1101', '11');
INSERT INTO `area` VALUES ('110116', '怀柔区', '1101', '11');
INSERT INTO `area` VALUES ('110117', '平谷区', '1101', '11');
INSERT INTO `area` VALUES ('110118', '密云区', '1101', '11');
INSERT INTO `area` VALUES ('110119', '延庆区', '1101', '11');
INSERT INTO `area` VALUES ('120101', '和平区', '1201', '12');
INSERT INTO `area` VALUES ('120102', '河东区', '1201', '12');
INSERT INTO `area` VALUES ('120103', '河西区', '1201', '12');
INSERT INTO `area` VALUES ('120104', '南开区', '1201', '12');
INSERT INTO `area` VALUES ('120105', '河北区', '1201', '12');
INSERT INTO `area` VALUES ('120106', '红桥区', '1201', '12');
INSERT INTO `area` VALUES ('120110', '东丽区', '1201', '12');
INSERT INTO `area` VALUES ('120111', '西青区', '1201', '12');
INSERT INTO `area` VALUES ('120112', '津南区', '1201', '12');
INSERT INTO `area` VALUES ('120113', '北辰区', '1201', '12');
INSERT INTO `area` VALUES ('120114', '武清区', '1201', '12');
INSERT INTO `area` VALUES ('120115', '宝坻区', '1201', '12');
INSERT INTO `area` VALUES ('120116', '滨海新区', '1201', '12');
INSERT INTO `area` VALUES ('120117', '宁河区', '1201', '12');
INSERT INTO `area` VALUES ('120118', '静海区', '1201', '12');
INSERT INTO `area` VALUES ('120119', '蓟州区', '1201', '12');
INSERT INTO `area` VALUES ('130102', '长安区', '1301', '13');
INSERT INTO `area` VALUES ('130104', '桥西区', '1301', '13');
INSERT INTO `area` VALUES ('130105', '新华区', '1301', '13');
INSERT INTO `area` VALUES ('130107', '井陉矿区', '1301', '13');
INSERT INTO `area` VALUES ('130108', '裕华区', '1301', '13');
INSERT INTO `area` VALUES ('130109', '藁城区', '1301', '13');
INSERT INTO `area` VALUES ('130110', '鹿泉区', '1301', '13');
INSERT INTO `area` VALUES ('130111', '栾城区', '1301', '13');
INSERT INTO `area` VALUES ('130121', '井陉县', '1301', '13');
INSERT INTO `area` VALUES ('130123', '正定县', '1301', '13');
INSERT INTO `area` VALUES ('130125', '行唐县', '1301', '13');
INSERT INTO `area` VALUES ('130126', '灵寿县', '1301', '13');
INSERT INTO `area` VALUES ('130127', '高邑县', '1301', '13');
INSERT INTO `area` VALUES ('130128', '深泽县', '1301', '13');
INSERT INTO `area` VALUES ('130129', '赞皇县', '1301', '13');
INSERT INTO `area` VALUES ('130130', '无极县', '1301', '13');
INSERT INTO `area` VALUES ('130131', '平山县', '1301', '13');
INSERT INTO `area` VALUES ('130132', '元氏县', '1301', '13');
INSERT INTO `area` VALUES ('130133', '赵县', '1301', '13');
INSERT INTO `area` VALUES ('130171', '石家庄高新技术产业开发区', '1301', '13');
INSERT INTO `area` VALUES ('130172', '石家庄循环化工园区', '1301', '13');
INSERT INTO `area` VALUES ('130181', '辛集市', '1301', '13');
INSERT INTO `area` VALUES ('130183', '晋州市', '1301', '13');
INSERT INTO `area` VALUES ('130184', '新乐市', '1301', '13');
INSERT INTO `area` VALUES ('130202', '路南区', '1302', '13');
INSERT INTO `area` VALUES ('130203', '路北区', '1302', '13');
INSERT INTO `area` VALUES ('130204', '古冶区', '1302', '13');
INSERT INTO `area` VALUES ('130205', '开平区', '1302', '13');
INSERT INTO `area` VALUES ('130207', '丰南区', '1302', '13');
INSERT INTO `area` VALUES ('130208', '丰润区', '1302', '13');
INSERT INTO `area` VALUES ('130209', '曹妃甸区', '1302', '13');
INSERT INTO `area` VALUES ('130224', '滦南县', '1302', '13');
INSERT INTO `area` VALUES ('130225', '乐亭县', '1302', '13');
INSERT INTO `area` VALUES ('130227', '迁西县', '1302', '13');
INSERT INTO `area` VALUES ('130229', '玉田县', '1302', '13');
INSERT INTO `area` VALUES ('130271', '河北唐山芦台经济开发区', '1302', '13');
INSERT INTO `area` VALUES ('130272', '唐山市汉沽管理区', '1302', '13');
INSERT INTO `area` VALUES ('130273', '唐山高新技术产业开发区', '1302', '13');
INSERT INTO `area` VALUES ('130274', '河北唐山海港经济开发区', '1302', '13');
INSERT INTO `area` VALUES ('130281', '遵化市', '1302', '13');
INSERT INTO `area` VALUES ('130283', '迁安市', '1302', '13');
INSERT INTO `area` VALUES ('130284', '滦州市', '1302', '13');
INSERT INTO `area` VALUES ('130302', '海港区', '1303', '13');
INSERT INTO `area` VALUES ('130303', '山海关区', '1303', '13');
INSERT INTO `area` VALUES ('130304', '北戴河区', '1303', '13');
INSERT INTO `area` VALUES ('130306', '抚宁区', '1303', '13');
INSERT INTO `area` VALUES ('130321', '青龙满族自治县', '1303', '13');
INSERT INTO `area` VALUES ('130322', '昌黎县', '1303', '13');
INSERT INTO `area` VALUES ('130324', '卢龙县', '1303', '13');
INSERT INTO `area` VALUES ('130371', '秦皇岛市经济技术开发区', '1303', '13');
INSERT INTO `area` VALUES ('130372', '北戴河新区', '1303', '13');
INSERT INTO `area` VALUES ('130402', '邯山区', '1304', '13');
INSERT INTO `area` VALUES ('130403', '丛台区', '1304', '13');
INSERT INTO `area` VALUES ('130404', '复兴区', '1304', '13');
INSERT INTO `area` VALUES ('130406', '峰峰矿区', '1304', '13');
INSERT INTO `area` VALUES ('130407', '肥乡区', '1304', '13');
INSERT INTO `area` VALUES ('130408', '永年区', '1304', '13');
INSERT INTO `area` VALUES ('130423', '临漳县', '1304', '13');
INSERT INTO `area` VALUES ('130424', '成安县', '1304', '13');
INSERT INTO `area` VALUES ('130425', '大名县', '1304', '13');
INSERT INTO `area` VALUES ('130426', '涉县', '1304', '13');
INSERT INTO `area` VALUES ('130427', '磁县', '1304', '13');
INSERT INTO `area` VALUES ('130430', '邱县', '1304', '13');
INSERT INTO `area` VALUES ('130431', '鸡泽县', '1304', '13');
INSERT INTO `area` VALUES ('130432', '广平县', '1304', '13');
INSERT INTO `area` VALUES ('130433', '馆陶县', '1304', '13');
INSERT INTO `area` VALUES ('130434', '魏县', '1304', '13');
INSERT INTO `area` VALUES ('130435', '曲周县', '1304', '13');
INSERT INTO `area` VALUES ('130471', '邯郸经济技术开发区', '1304', '13');
INSERT INTO `area` VALUES ('130473', '邯郸冀南新区', '1304', '13');
INSERT INTO `area` VALUES ('130481', '武安市', '1304', '13');
INSERT INTO `area` VALUES ('130502', '襄都区', '1305', '13');
INSERT INTO `area` VALUES ('130503', '信都区', '1305', '13');
INSERT INTO `area` VALUES ('130505', '任泽区', '1305', '13');
INSERT INTO `area` VALUES ('130506', '南和区', '1305', '13');
INSERT INTO `area` VALUES ('130522', '临城县', '1305', '13');
INSERT INTO `area` VALUES ('130523', '内丘县', '1305', '13');
INSERT INTO `area` VALUES ('130524', '柏乡县', '1305', '13');
INSERT INTO `area` VALUES ('130525', '隆尧县', '1305', '13');
INSERT INTO `area` VALUES ('130528', '宁晋县', '1305', '13');
INSERT INTO `area` VALUES ('130529', '巨鹿县', '1305', '13');
INSERT INTO `area` VALUES ('130530', '新河县', '1305', '13');
INSERT INTO `area` VALUES ('130531', '广宗县', '1305', '13');
INSERT INTO `area` VALUES ('130532', '平乡县', '1305', '13');
INSERT INTO `area` VALUES ('130533', '威县', '1305', '13');
INSERT INTO `area` VALUES ('130534', '清河县', '1305', '13');
INSERT INTO `area` VALUES ('130535', '临西县', '1305', '13');
INSERT INTO `area` VALUES ('130571', '河北邢台经济开发区', '1305', '13');
INSERT INTO `area` VALUES ('130581', '南宫市', '1305', '13');
INSERT INTO `area` VALUES ('130582', '沙河市', '1305', '13');
INSERT INTO `area` VALUES ('130602', '竞秀区', '1306', '13');
INSERT INTO `area` VALUES ('130606', '莲池区', '1306', '13');
INSERT INTO `area` VALUES ('130607', '满城区', '1306', '13');
INSERT INTO `area` VALUES ('130608', '清苑区', '1306', '13');
INSERT INTO `area` VALUES ('130609', '徐水区', '1306', '13');
INSERT INTO `area` VALUES ('130623', '涞水县', '1306', '13');
INSERT INTO `area` VALUES ('130624', '阜平县', '1306', '13');
INSERT INTO `area` VALUES ('130626', '定兴县', '1306', '13');
INSERT INTO `area` VALUES ('130627', '唐县', '1306', '13');
INSERT INTO `area` VALUES ('130628', '高阳县', '1306', '13');
INSERT INTO `area` VALUES ('130629', '容城县', '1306', '13');
INSERT INTO `area` VALUES ('130630', '涞源县', '1306', '13');
INSERT INTO `area` VALUES ('130631', '望都县', '1306', '13');
INSERT INTO `area` VALUES ('130632', '安新县', '1306', '13');
INSERT INTO `area` VALUES ('130633', '易县', '1306', '13');
INSERT INTO `area` VALUES ('130634', '曲阳县', '1306', '13');
INSERT INTO `area` VALUES ('130635', '蠡县', '1306', '13');
INSERT INTO `area` VALUES ('130636', '顺平县', '1306', '13');
INSERT INTO `area` VALUES ('130637', '博野县', '1306', '13');
INSERT INTO `area` VALUES ('130638', '雄县', '1306', '13');
INSERT INTO `area` VALUES ('130671', '保定高新技术产业开发区', '1306', '13');
INSERT INTO `area` VALUES ('130672', '保定白沟新城', '1306', '13');
INSERT INTO `area` VALUES ('130681', '涿州市', '1306', '13');
INSERT INTO `area` VALUES ('130682', '定州市', '1306', '13');
INSERT INTO `area` VALUES ('130683', '安国市', '1306', '13');
INSERT INTO `area` VALUES ('130684', '高碑店市', '1306', '13');
INSERT INTO `area` VALUES ('130702', '桥东区', '1307', '13');
INSERT INTO `area` VALUES ('130703', '桥西区', '1307', '13');
INSERT INTO `area` VALUES ('130705', '宣化区', '1307', '13');
INSERT INTO `area` VALUES ('130706', '下花园区', '1307', '13');
INSERT INTO `area` VALUES ('130708', '万全区', '1307', '13');
INSERT INTO `area` VALUES ('130709', '崇礼区', '1307', '13');
INSERT INTO `area` VALUES ('130722', '张北县', '1307', '13');
INSERT INTO `area` VALUES ('130723', '康保县', '1307', '13');
INSERT INTO `area` VALUES ('130724', '沽源县', '1307', '13');
INSERT INTO `area` VALUES ('130725', '尚义县', '1307', '13');
INSERT INTO `area` VALUES ('130726', '蔚县', '1307', '13');
INSERT INTO `area` VALUES ('130727', '阳原县', '1307', '13');
INSERT INTO `area` VALUES ('130728', '怀安县', '1307', '13');
INSERT INTO `area` VALUES ('130730', '怀来县', '1307', '13');
INSERT INTO `area` VALUES ('130731', '涿鹿县', '1307', '13');
INSERT INTO `area` VALUES ('130732', '赤城县', '1307', '13');
INSERT INTO `area` VALUES ('130771', '张家口经济开发区', '1307', '13');
INSERT INTO `area` VALUES ('130772', '张家口市察北管理区', '1307', '13');
INSERT INTO `area` VALUES ('130773', '张家口市塞北管理区', '1307', '13');
INSERT INTO `area` VALUES ('130802', '双桥区', '1308', '13');
INSERT INTO `area` VALUES ('130803', '双滦区', '1308', '13');
INSERT INTO `area` VALUES ('130804', '鹰手营子矿区', '1308', '13');
INSERT INTO `area` VALUES ('130821', '承德县', '1308', '13');
INSERT INTO `area` VALUES ('130822', '兴隆县', '1308', '13');
INSERT INTO `area` VALUES ('130824', '滦平县', '1308', '13');
INSERT INTO `area` VALUES ('130825', '隆化县', '1308', '13');
INSERT INTO `area` VALUES ('130826', '丰宁满族自治县', '1308', '13');
INSERT INTO `area` VALUES ('130827', '宽城满族自治县', '1308', '13');
INSERT INTO `area` VALUES ('130828', '围场满族蒙古族自治县', '1308', '13');
INSERT INTO `area` VALUES ('130871', '承德高新技术产业开发区', '1308', '13');
INSERT INTO `area` VALUES ('130881', '平泉市', '1308', '13');
INSERT INTO `area` VALUES ('130902', '新华区', '1309', '13');
INSERT INTO `area` VALUES ('130903', '运河区', '1309', '13');
INSERT INTO `area` VALUES ('130921', '沧县', '1309', '13');
INSERT INTO `area` VALUES ('130922', '青县', '1309', '13');
INSERT INTO `area` VALUES ('130923', '东光县', '1309', '13');
INSERT INTO `area` VALUES ('130924', '海兴县', '1309', '13');
INSERT INTO `area` VALUES ('130925', '盐山县', '1309', '13');
INSERT INTO `area` VALUES ('130926', '肃宁县', '1309', '13');
INSERT INTO `area` VALUES ('130927', '南皮县', '1309', '13');
INSERT INTO `area` VALUES ('130928', '吴桥县', '1309', '13');
INSERT INTO `area` VALUES ('130929', '献县', '1309', '13');
INSERT INTO `area` VALUES ('130930', '孟村回族自治县', '1309', '13');
INSERT INTO `area` VALUES ('130971', '河北沧州经济开发区', '1309', '13');
INSERT INTO `area` VALUES ('130972', '沧州高新技术产业开发区', '1309', '13');
INSERT INTO `area` VALUES ('130973', '沧州渤海新区', '1309', '13');
INSERT INTO `area` VALUES ('130981', '泊头市', '1309', '13');
INSERT INTO `area` VALUES ('130982', '任丘市', '1309', '13');
INSERT INTO `area` VALUES ('130983', '黄骅市', '1309', '13');
INSERT INTO `area` VALUES ('130984', '河间市', '1309', '13');
INSERT INTO `area` VALUES ('131002', '安次区', '1310', '13');
INSERT INTO `area` VALUES ('131003', '广阳区', '1310', '13');
INSERT INTO `area` VALUES ('131022', '固安县', '1310', '13');
INSERT INTO `area` VALUES ('131023', '永清县', '1310', '13');
INSERT INTO `area` VALUES ('131024', '香河县', '1310', '13');
INSERT INTO `area` VALUES ('131025', '大城县', '1310', '13');
INSERT INTO `area` VALUES ('131026', '文安县', '1310', '13');
INSERT INTO `area` VALUES ('131028', '大厂回族自治县', '1310', '13');
INSERT INTO `area` VALUES ('131071', '廊坊经济技术开发区', '1310', '13');
INSERT INTO `area` VALUES ('131081', '霸州市', '1310', '13');
INSERT INTO `area` VALUES ('131082', '三河市', '1310', '13');
INSERT INTO `area` VALUES ('131102', '桃城区', '1311', '13');
INSERT INTO `area` VALUES ('131103', '冀州区', '1311', '13');
INSERT INTO `area` VALUES ('131121', '枣强县', '1311', '13');
INSERT INTO `area` VALUES ('131122', '武邑县', '1311', '13');
INSERT INTO `area` VALUES ('131123', '武强县', '1311', '13');
INSERT INTO `area` VALUES ('131124', '饶阳县', '1311', '13');
INSERT INTO `area` VALUES ('131125', '安平县', '1311', '13');
INSERT INTO `area` VALUES ('131126', '故城县', '1311', '13');
INSERT INTO `area` VALUES ('131127', '景县', '1311', '13');
INSERT INTO `area` VALUES ('131128', '阜城县', '1311', '13');
INSERT INTO `area` VALUES ('131171', '河北衡水高新技术产业开发区', '1311', '13');
INSERT INTO `area` VALUES ('131172', '衡水滨湖新区', '1311', '13');
INSERT INTO `area` VALUES ('131182', '深州市', '1311', '13');
INSERT INTO `area` VALUES ('140105', '小店区', '1401', '14');
INSERT INTO `area` VALUES ('140106', '迎泽区', '1401', '14');
INSERT INTO `area` VALUES ('140107', '杏花岭区', '1401', '14');
INSERT INTO `area` VALUES ('140108', '尖草坪区', '1401', '14');
INSERT INTO `area` VALUES ('140109', '万柏林区', '1401', '14');
INSERT INTO `area` VALUES ('140110', '晋源区', '1401', '14');
INSERT INTO `area` VALUES ('140121', '清徐县', '1401', '14');
INSERT INTO `area` VALUES ('140122', '阳曲县', '1401', '14');
INSERT INTO `area` VALUES ('140123', '娄烦县', '1401', '14');
INSERT INTO `area` VALUES ('140171', '山西转型综合改革示范区', '1401', '14');
INSERT INTO `area` VALUES ('140181', '古交市', '1401', '14');
INSERT INTO `area` VALUES ('140212', '新荣区', '1402', '14');
INSERT INTO `area` VALUES ('140213', '平城区', '1402', '14');
INSERT INTO `area` VALUES ('140214', '云冈区', '1402', '14');
INSERT INTO `area` VALUES ('140215', '云州区', '1402', '14');
INSERT INTO `area` VALUES ('140221', '阳高县', '1402', '14');
INSERT INTO `area` VALUES ('140222', '天镇县', '1402', '14');
INSERT INTO `area` VALUES ('140223', '广灵县', '1402', '14');
INSERT INTO `area` VALUES ('140224', '灵丘县', '1402', '14');
INSERT INTO `area` VALUES ('140225', '浑源县', '1402', '14');
INSERT INTO `area` VALUES ('140226', '左云县', '1402', '14');
INSERT INTO `area` VALUES ('140271', '山西大同经济开发区', '1402', '14');
INSERT INTO `area` VALUES ('140302', '城区', '1403', '14');
INSERT INTO `area` VALUES ('140303', '矿区', '1403', '14');
INSERT INTO `area` VALUES ('140311', '郊区', '1403', '14');
INSERT INTO `area` VALUES ('140321', '平定县', '1403', '14');
INSERT INTO `area` VALUES ('140322', '盂县', '1403', '14');
INSERT INTO `area` VALUES ('140403', '潞州区', '1404', '14');
INSERT INTO `area` VALUES ('140404', '上党区', '1404', '14');
INSERT INTO `area` VALUES ('140405', '屯留区', '1404', '14');
INSERT INTO `area` VALUES ('140406', '潞城区', '1404', '14');
INSERT INTO `area` VALUES ('140423', '襄垣县', '1404', '14');
INSERT INTO `area` VALUES ('140425', '平顺县', '1404', '14');
INSERT INTO `area` VALUES ('140426', '黎城县', '1404', '14');
INSERT INTO `area` VALUES ('140427', '壶关县', '1404', '14');
INSERT INTO `area` VALUES ('140428', '长子县', '1404', '14');
INSERT INTO `area` VALUES ('140429', '武乡县', '1404', '14');
INSERT INTO `area` VALUES ('140430', '沁县', '1404', '14');
INSERT INTO `area` VALUES ('140431', '沁源县', '1404', '14');
INSERT INTO `area` VALUES ('140471', '山西长治高新技术产业园区', '1404', '14');
INSERT INTO `area` VALUES ('140502', '城区', '1405', '14');
INSERT INTO `area` VALUES ('140521', '沁水县', '1405', '14');
INSERT INTO `area` VALUES ('140522', '阳城县', '1405', '14');
INSERT INTO `area` VALUES ('140524', '陵川县', '1405', '14');
INSERT INTO `area` VALUES ('140525', '泽州县', '1405', '14');
INSERT INTO `area` VALUES ('140581', '高平市', '1405', '14');
INSERT INTO `area` VALUES ('140602', '朔城区', '1406', '14');
INSERT INTO `area` VALUES ('140603', '平鲁区', '1406', '14');
INSERT INTO `area` VALUES ('140621', '山阴县', '1406', '14');
INSERT INTO `area` VALUES ('140622', '应县', '1406', '14');
INSERT INTO `area` VALUES ('140623', '右玉县', '1406', '14');
INSERT INTO `area` VALUES ('140671', '山西朔州经济开发区', '1406', '14');
INSERT INTO `area` VALUES ('140681', '怀仁市', '1406', '14');
INSERT INTO `area` VALUES ('140702', '榆次区', '1407', '14');
INSERT INTO `area` VALUES ('140703', '太谷区', '1407', '14');
INSERT INTO `area` VALUES ('140721', '榆社县', '1407', '14');
INSERT INTO `area` VALUES ('140722', '左权县', '1407', '14');
INSERT INTO `area` VALUES ('140723', '和顺县', '1407', '14');
INSERT INTO `area` VALUES ('140724', '昔阳县', '1407', '14');
INSERT INTO `area` VALUES ('140725', '寿阳县', '1407', '14');
INSERT INTO `area` VALUES ('140727', '祁县', '1407', '14');
INSERT INTO `area` VALUES ('140728', '平遥县', '1407', '14');
INSERT INTO `area` VALUES ('140729', '灵石县', '1407', '14');
INSERT INTO `area` VALUES ('140781', '介休市', '1407', '14');
INSERT INTO `area` VALUES ('140802', '盐湖区', '1408', '14');
INSERT INTO `area` VALUES ('140821', '临猗县', '1408', '14');
INSERT INTO `area` VALUES ('140822', '万荣县', '1408', '14');
INSERT INTO `area` VALUES ('140823', '闻喜县', '1408', '14');
INSERT INTO `area` VALUES ('140824', '稷山县', '1408', '14');
INSERT INTO `area` VALUES ('140825', '新绛县', '1408', '14');
INSERT INTO `area` VALUES ('140826', '绛县', '1408', '14');
INSERT INTO `area` VALUES ('140827', '垣曲县', '1408', '14');
INSERT INTO `area` VALUES ('140828', '夏县', '1408', '14');
INSERT INTO `area` VALUES ('140829', '平陆县', '1408', '14');
INSERT INTO `area` VALUES ('140830', '芮城县', '1408', '14');
INSERT INTO `area` VALUES ('140881', '永济市', '1408', '14');
INSERT INTO `area` VALUES ('140882', '河津市', '1408', '14');
INSERT INTO `area` VALUES ('140902', '忻府区', '1409', '14');
INSERT INTO `area` VALUES ('140921', '定襄县', '1409', '14');
INSERT INTO `area` VALUES ('140922', '五台县', '1409', '14');
INSERT INTO `area` VALUES ('140923', '代县', '1409', '14');
INSERT INTO `area` VALUES ('140924', '繁峙县', '1409', '14');
INSERT INTO `area` VALUES ('140925', '宁武县', '1409', '14');
INSERT INTO `area` VALUES ('140926', '静乐县', '1409', '14');
INSERT INTO `area` VALUES ('140927', '神池县', '1409', '14');
INSERT INTO `area` VALUES ('140928', '五寨县', '1409', '14');
INSERT INTO `area` VALUES ('140929', '岢岚县', '1409', '14');
INSERT INTO `area` VALUES ('140930', '河曲县', '1409', '14');
INSERT INTO `area` VALUES ('140931', '保德县', '1409', '14');
INSERT INTO `area` VALUES ('140932', '偏关县', '1409', '14');
INSERT INTO `area` VALUES ('140971', '五台山风景名胜区', '1409', '14');
INSERT INTO `area` VALUES ('140981', '原平市', '1409', '14');
INSERT INTO `area` VALUES ('141002', '尧都区', '1410', '14');
INSERT INTO `area` VALUES ('141021', '曲沃县', '1410', '14');
INSERT INTO `area` VALUES ('141022', '翼城县', '1410', '14');
INSERT INTO `area` VALUES ('141023', '襄汾县', '1410', '14');
INSERT INTO `area` VALUES ('141024', '洪洞县', '1410', '14');
INSERT INTO `area` VALUES ('141025', '古县', '1410', '14');
INSERT INTO `area` VALUES ('141026', '安泽县', '1410', '14');
INSERT INTO `area` VALUES ('141027', '浮山县', '1410', '14');
INSERT INTO `area` VALUES ('141028', '吉县', '1410', '14');
INSERT INTO `area` VALUES ('141029', '乡宁县', '1410', '14');
INSERT INTO `area` VALUES ('141030', '大宁县', '1410', '14');
INSERT INTO `area` VALUES ('141031', '隰县', '1410', '14');
INSERT INTO `area` VALUES ('141032', '永和县', '1410', '14');
INSERT INTO `area` VALUES ('141033', '蒲县', '1410', '14');
INSERT INTO `area` VALUES ('141034', '汾西县', '1410', '14');
INSERT INTO `area` VALUES ('141081', '侯马市', '1410', '14');
INSERT INTO `area` VALUES ('141082', '霍州市', '1410', '14');
INSERT INTO `area` VALUES ('141102', '离石区', '1411', '14');
INSERT INTO `area` VALUES ('141121', '文水县', '1411', '14');
INSERT INTO `area` VALUES ('141122', '交城县', '1411', '14');
INSERT INTO `area` VALUES ('141123', '兴县', '1411', '14');
INSERT INTO `area` VALUES ('141124', '临县', '1411', '14');
INSERT INTO `area` VALUES ('141125', '柳林县', '1411', '14');
INSERT INTO `area` VALUES ('141126', '石楼县', '1411', '14');
INSERT INTO `area` VALUES ('141127', '岚县', '1411', '14');
INSERT INTO `area` VALUES ('141128', '方山县', '1411', '14');
INSERT INTO `area` VALUES ('141129', '中阳县', '1411', '14');
INSERT INTO `area` VALUES ('141130', '交口县', '1411', '14');
INSERT INTO `area` VALUES ('141181', '孝义市', '1411', '14');
INSERT INTO `area` VALUES ('141182', '汾阳市', '1411', '14');
INSERT INTO `area` VALUES ('150102', '新城区', '1501', '15');
INSERT INTO `area` VALUES ('150103', '回民区', '1501', '15');
INSERT INTO `area` VALUES ('150104', '玉泉区', '1501', '15');
INSERT INTO `area` VALUES ('150105', '赛罕区', '1501', '15');
INSERT INTO `area` VALUES ('150121', '土默特左旗', '1501', '15');
INSERT INTO `area` VALUES ('150122', '托克托县', '1501', '15');
INSERT INTO `area` VALUES ('150123', '和林格尔县', '1501', '15');
INSERT INTO `area` VALUES ('150124', '清水河县', '1501', '15');
INSERT INTO `area` VALUES ('150125', '武川县', '1501', '15');
INSERT INTO `area` VALUES ('150172', '呼和浩特经济技术开发区', '1501', '15');
INSERT INTO `area` VALUES ('150202', '东河区', '1502', '15');
INSERT INTO `area` VALUES ('150203', '昆都仑区', '1502', '15');
INSERT INTO `area` VALUES ('150204', '青山区', '1502', '15');
INSERT INTO `area` VALUES ('150205', '石拐区', '1502', '15');
INSERT INTO `area` VALUES ('150206', '白云鄂博矿区', '1502', '15');
INSERT INTO `area` VALUES ('150207', '九原区', '1502', '15');
INSERT INTO `area` VALUES ('150221', '土默特右旗', '1502', '15');
INSERT INTO `area` VALUES ('150222', '固阳县', '1502', '15');
INSERT INTO `area` VALUES ('150223', '达尔罕茂明安联合旗', '1502', '15');
INSERT INTO `area` VALUES ('150271', '包头稀土高新技术产业开发区', '1502', '15');
INSERT INTO `area` VALUES ('150302', '海勃湾区', '1503', '15');
INSERT INTO `area` VALUES ('150303', '海南区', '1503', '15');
INSERT INTO `area` VALUES ('150304', '乌达区', '1503', '15');
INSERT INTO `area` VALUES ('150402', '红山区', '1504', '15');
INSERT INTO `area` VALUES ('150403', '元宝山区', '1504', '15');
INSERT INTO `area` VALUES ('150404', '松山区', '1504', '15');
INSERT INTO `area` VALUES ('150421', '阿鲁科尔沁旗', '1504', '15');
INSERT INTO `area` VALUES ('150422', '巴林左旗', '1504', '15');
INSERT INTO `area` VALUES ('150423', '巴林右旗', '1504', '15');
INSERT INTO `area` VALUES ('150424', '林西县', '1504', '15');
INSERT INTO `area` VALUES ('150425', '克什克腾旗', '1504', '15');
INSERT INTO `area` VALUES ('150426', '翁牛特旗', '1504', '15');
INSERT INTO `area` VALUES ('150428', '喀喇沁旗', '1504', '15');
INSERT INTO `area` VALUES ('150429', '宁城县', '1504', '15');
INSERT INTO `area` VALUES ('150430', '敖汉旗', '1504', '15');
INSERT INTO `area` VALUES ('150502', '科尔沁区', '1505', '15');
INSERT INTO `area` VALUES ('150521', '科尔沁左翼中旗', '1505', '15');
INSERT INTO `area` VALUES ('150522', '科尔沁左翼后旗', '1505', '15');
INSERT INTO `area` VALUES ('150523', '开鲁县', '1505', '15');
INSERT INTO `area` VALUES ('150524', '库伦旗', '1505', '15');
INSERT INTO `area` VALUES ('150525', '奈曼旗', '1505', '15');
INSERT INTO `area` VALUES ('150526', '扎鲁特旗', '1505', '15');
INSERT INTO `area` VALUES ('150571', '通辽经济技术开发区', '1505', '15');
INSERT INTO `area` VALUES ('150581', '霍林郭勒市', '1505', '15');
INSERT INTO `area` VALUES ('150602', '东胜区', '1506', '15');
INSERT INTO `area` VALUES ('150603', '康巴什区', '1506', '15');
INSERT INTO `area` VALUES ('150621', '达拉特旗', '1506', '15');
INSERT INTO `area` VALUES ('150622', '准格尔旗', '1506', '15');
INSERT INTO `area` VALUES ('150623', '鄂托克前旗', '1506', '15');
INSERT INTO `area` VALUES ('150624', '鄂托克旗', '1506', '15');
INSERT INTO `area` VALUES ('150625', '杭锦旗', '1506', '15');
INSERT INTO `area` VALUES ('150626', '乌审旗', '1506', '15');
INSERT INTO `area` VALUES ('150627', '伊金霍洛旗', '1506', '15');
INSERT INTO `area` VALUES ('150702', '海拉尔区', '1507', '15');
INSERT INTO `area` VALUES ('150703', '扎赉诺尔区', '1507', '15');
INSERT INTO `area` VALUES ('150721', '阿荣旗', '1507', '15');
INSERT INTO `area` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '1507', '15');
INSERT INTO `area` VALUES ('150723', '鄂伦春自治旗', '1507', '15');
INSERT INTO `area` VALUES ('150724', '鄂温克族自治旗', '1507', '15');
INSERT INTO `area` VALUES ('150725', '陈巴尔虎旗', '1507', '15');
INSERT INTO `area` VALUES ('150726', '新巴尔虎左旗', '1507', '15');
INSERT INTO `area` VALUES ('150727', '新巴尔虎右旗', '1507', '15');
INSERT INTO `area` VALUES ('150781', '满洲里市', '1507', '15');
INSERT INTO `area` VALUES ('150782', '牙克石市', '1507', '15');
INSERT INTO `area` VALUES ('150783', '扎兰屯市', '1507', '15');
INSERT INTO `area` VALUES ('150784', '额尔古纳市', '1507', '15');
INSERT INTO `area` VALUES ('150785', '根河市', '1507', '15');
INSERT INTO `area` VALUES ('150802', '临河区', '1508', '15');
INSERT INTO `area` VALUES ('150821', '五原县', '1508', '15');
INSERT INTO `area` VALUES ('150822', '磴口县', '1508', '15');
INSERT INTO `area` VALUES ('150823', '乌拉特前旗', '1508', '15');
INSERT INTO `area` VALUES ('150824', '乌拉特中旗', '1508', '15');
INSERT INTO `area` VALUES ('150825', '乌拉特后旗', '1508', '15');
INSERT INTO `area` VALUES ('150826', '杭锦后旗', '1508', '15');
INSERT INTO `area` VALUES ('150902', '集宁区', '1509', '15');
INSERT INTO `area` VALUES ('150921', '卓资县', '1509', '15');
INSERT INTO `area` VALUES ('150922', '化德县', '1509', '15');
INSERT INTO `area` VALUES ('150923', '商都县', '1509', '15');
INSERT INTO `area` VALUES ('150924', '兴和县', '1509', '15');
INSERT INTO `area` VALUES ('150925', '凉城县', '1509', '15');
INSERT INTO `area` VALUES ('150926', '察哈尔右翼前旗', '1509', '15');
INSERT INTO `area` VALUES ('150927', '察哈尔右翼中旗', '1509', '15');
INSERT INTO `area` VALUES ('150928', '察哈尔右翼后旗', '1509', '15');
INSERT INTO `area` VALUES ('150929', '四子王旗', '1509', '15');
INSERT INTO `area` VALUES ('150981', '丰镇市', '1509', '15');
INSERT INTO `area` VALUES ('152201', '乌兰浩特市', '1522', '15');
INSERT INTO `area` VALUES ('152202', '阿尔山市', '1522', '15');
INSERT INTO `area` VALUES ('152221', '科尔沁右翼前旗', '1522', '15');
INSERT INTO `area` VALUES ('152222', '科尔沁右翼中旗', '1522', '15');
INSERT INTO `area` VALUES ('152223', '扎赉特旗', '1522', '15');
INSERT INTO `area` VALUES ('152224', '突泉县', '1522', '15');
INSERT INTO `area` VALUES ('152501', '二连浩特市', '1525', '15');
INSERT INTO `area` VALUES ('152502', '锡林浩特市', '1525', '15');
INSERT INTO `area` VALUES ('152522', '阿巴嘎旗', '1525', '15');
INSERT INTO `area` VALUES ('152523', '苏尼特左旗', '1525', '15');
INSERT INTO `area` VALUES ('152524', '苏尼特右旗', '1525', '15');
INSERT INTO `area` VALUES ('152525', '东乌珠穆沁旗', '1525', '15');
INSERT INTO `area` VALUES ('152526', '西乌珠穆沁旗', '1525', '15');
INSERT INTO `area` VALUES ('152527', '太仆寺旗', '1525', '15');
INSERT INTO `area` VALUES ('152528', '镶黄旗', '1525', '15');
INSERT INTO `area` VALUES ('152529', '正镶白旗', '1525', '15');
INSERT INTO `area` VALUES ('152530', '正蓝旗', '1525', '15');
INSERT INTO `area` VALUES ('152531', '多伦县', '1525', '15');
INSERT INTO `area` VALUES ('152571', '乌拉盖管委会', '1525', '15');
INSERT INTO `area` VALUES ('152921', '阿拉善左旗', '1529', '15');
INSERT INTO `area` VALUES ('152922', '阿拉善右旗', '1529', '15');
INSERT INTO `area` VALUES ('152923', '额济纳旗', '1529', '15');
INSERT INTO `area` VALUES ('152971', '内蒙古阿拉善高新技术产业开发区', '1529', '15');
INSERT INTO `area` VALUES ('210102', '和平区', '2101', '21');
INSERT INTO `area` VALUES ('210103', '沈河区', '2101', '21');
INSERT INTO `area` VALUES ('210104', '大东区', '2101', '21');
INSERT INTO `area` VALUES ('210105', '皇姑区', '2101', '21');
INSERT INTO `area` VALUES ('210106', '铁西区', '2101', '21');
INSERT INTO `area` VALUES ('210111', '苏家屯区', '2101', '21');
INSERT INTO `area` VALUES ('210112', '浑南区', '2101', '21');
INSERT INTO `area` VALUES ('210113', '沈北新区', '2101', '21');
INSERT INTO `area` VALUES ('210114', '于洪区', '2101', '21');
INSERT INTO `area` VALUES ('210115', '辽中区', '2101', '21');
INSERT INTO `area` VALUES ('210123', '康平县', '2101', '21');
INSERT INTO `area` VALUES ('210124', '法库县', '2101', '21');
INSERT INTO `area` VALUES ('210181', '新民市', '2101', '21');
INSERT INTO `area` VALUES ('210202', '中山区', '2102', '21');
INSERT INTO `area` VALUES ('210203', '西岗区', '2102', '21');
INSERT INTO `area` VALUES ('210204', '沙河口区', '2102', '21');
INSERT INTO `area` VALUES ('210211', '甘井子区', '2102', '21');
INSERT INTO `area` VALUES ('210212', '旅顺口区', '2102', '21');
INSERT INTO `area` VALUES ('210213', '金州区', '2102', '21');
INSERT INTO `area` VALUES ('210214', '普兰店区', '2102', '21');
INSERT INTO `area` VALUES ('210224', '长海县', '2102', '21');
INSERT INTO `area` VALUES ('210281', '瓦房店市', '2102', '21');
INSERT INTO `area` VALUES ('210283', '庄河市', '2102', '21');
INSERT INTO `area` VALUES ('210302', '铁东区', '2103', '21');
INSERT INTO `area` VALUES ('210303', '铁西区', '2103', '21');
INSERT INTO `area` VALUES ('210304', '立山区', '2103', '21');
INSERT INTO `area` VALUES ('210311', '千山区', '2103', '21');
INSERT INTO `area` VALUES ('210321', '台安县', '2103', '21');
INSERT INTO `area` VALUES ('210323', '岫岩满族自治县', '2103', '21');
INSERT INTO `area` VALUES ('210381', '海城市', '2103', '21');
INSERT INTO `area` VALUES ('210402', '新抚区', '2104', '21');
INSERT INTO `area` VALUES ('210403', '东洲区', '2104', '21');
INSERT INTO `area` VALUES ('210404', '望花区', '2104', '21');
INSERT INTO `area` VALUES ('210411', '顺城区', '2104', '21');
INSERT INTO `area` VALUES ('210421', '抚顺县', '2104', '21');
INSERT INTO `area` VALUES ('210422', '新宾满族自治县', '2104', '21');
INSERT INTO `area` VALUES ('210423', '清原满族自治县', '2104', '21');
INSERT INTO `area` VALUES ('210502', '平山区', '2105', '21');
INSERT INTO `area` VALUES ('210503', '溪湖区', '2105', '21');
INSERT INTO `area` VALUES ('210504', '明山区', '2105', '21');
INSERT INTO `area` VALUES ('210505', '南芬区', '2105', '21');
INSERT INTO `area` VALUES ('210521', '本溪满族自治县', '2105', '21');
INSERT INTO `area` VALUES ('210522', '桓仁满族自治县', '2105', '21');
INSERT INTO `area` VALUES ('210602', '元宝区', '2106', '21');
INSERT INTO `area` VALUES ('210603', '振兴区', '2106', '21');
INSERT INTO `area` VALUES ('210604', '振安区', '2106', '21');
INSERT INTO `area` VALUES ('210624', '宽甸满族自治县', '2106', '21');
INSERT INTO `area` VALUES ('210681', '东港市', '2106', '21');
INSERT INTO `area` VALUES ('210682', '凤城市', '2106', '21');
INSERT INTO `area` VALUES ('210702', '古塔区', '2107', '21');
INSERT INTO `area` VALUES ('210703', '凌河区', '2107', '21');
INSERT INTO `area` VALUES ('210711', '太和区', '2107', '21');
INSERT INTO `area` VALUES ('210726', '黑山县', '2107', '21');
INSERT INTO `area` VALUES ('210727', '义县', '2107', '21');
INSERT INTO `area` VALUES ('210781', '凌海市', '2107', '21');
INSERT INTO `area` VALUES ('210782', '北镇市', '2107', '21');
INSERT INTO `area` VALUES ('210802', '站前区', '2108', '21');
INSERT INTO `area` VALUES ('210803', '西市区', '2108', '21');
INSERT INTO `area` VALUES ('210804', '鲅鱼圈区', '2108', '21');
INSERT INTO `area` VALUES ('210811', '老边区', '2108', '21');
INSERT INTO `area` VALUES ('210881', '盖州市', '2108', '21');
INSERT INTO `area` VALUES ('210882', '大石桥市', '2108', '21');
INSERT INTO `area` VALUES ('210902', '海州区', '2109', '21');
INSERT INTO `area` VALUES ('210903', '新邱区', '2109', '21');
INSERT INTO `area` VALUES ('210904', '太平区', '2109', '21');
INSERT INTO `area` VALUES ('210905', '清河门区', '2109', '21');
INSERT INTO `area` VALUES ('210911', '细河区', '2109', '21');
INSERT INTO `area` VALUES ('210921', '阜新蒙古族自治县', '2109', '21');
INSERT INTO `area` VALUES ('210922', '彰武县', '2109', '21');
INSERT INTO `area` VALUES ('211002', '白塔区', '2110', '21');
INSERT INTO `area` VALUES ('211003', '文圣区', '2110', '21');
INSERT INTO `area` VALUES ('211004', '宏伟区', '2110', '21');
INSERT INTO `area` VALUES ('211005', '弓长岭区', '2110', '21');
INSERT INTO `area` VALUES ('211011', '太子河区', '2110', '21');
INSERT INTO `area` VALUES ('211021', '辽阳县', '2110', '21');
INSERT INTO `area` VALUES ('211081', '灯塔市', '2110', '21');
INSERT INTO `area` VALUES ('211102', '双台子区', '2111', '21');
INSERT INTO `area` VALUES ('211103', '兴隆台区', '2111', '21');
INSERT INTO `area` VALUES ('211104', '大洼区', '2111', '21');
INSERT INTO `area` VALUES ('211122', '盘山县', '2111', '21');
INSERT INTO `area` VALUES ('211202', '银州区', '2112', '21');
INSERT INTO `area` VALUES ('211204', '清河区', '2112', '21');
INSERT INTO `area` VALUES ('211221', '铁岭县', '2112', '21');
INSERT INTO `area` VALUES ('211223', '西丰县', '2112', '21');
INSERT INTO `area` VALUES ('211224', '昌图县', '2112', '21');
INSERT INTO `area` VALUES ('211281', '调兵山市', '2112', '21');
INSERT INTO `area` VALUES ('211282', '开原市', '2112', '21');
INSERT INTO `area` VALUES ('211302', '双塔区', '2113', '21');
INSERT INTO `area` VALUES ('211303', '龙城区', '2113', '21');
INSERT INTO `area` VALUES ('211321', '朝阳县', '2113', '21');
INSERT INTO `area` VALUES ('211322', '建平县', '2113', '21');
INSERT INTO `area` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '2113', '21');
INSERT INTO `area` VALUES ('211381', '北票市', '2113', '21');
INSERT INTO `area` VALUES ('211382', '凌源市', '2113', '21');
INSERT INTO `area` VALUES ('211402', '连山区', '2114', '21');
INSERT INTO `area` VALUES ('211403', '龙港区', '2114', '21');
INSERT INTO `area` VALUES ('211404', '南票区', '2114', '21');
INSERT INTO `area` VALUES ('211421', '绥中县', '2114', '21');
INSERT INTO `area` VALUES ('211422', '建昌县', '2114', '21');
INSERT INTO `area` VALUES ('211481', '兴城市', '2114', '21');
INSERT INTO `area` VALUES ('220102', '南关区', '2201', '22');
INSERT INTO `area` VALUES ('220103', '宽城区', '2201', '22');
INSERT INTO `area` VALUES ('220104', '朝阳区', '2201', '22');
INSERT INTO `area` VALUES ('220105', '二道区', '2201', '22');
INSERT INTO `area` VALUES ('220106', '绿园区', '2201', '22');
INSERT INTO `area` VALUES ('220112', '双阳区', '2201', '22');
INSERT INTO `area` VALUES ('220113', '九台区', '2201', '22');
INSERT INTO `area` VALUES ('220122', '农安县', '2201', '22');
INSERT INTO `area` VALUES ('220171', '长春经济技术开发区', '2201', '22');
INSERT INTO `area` VALUES ('220172', '长春净月高新技术产业开发区', '2201', '22');
INSERT INTO `area` VALUES ('220173', '长春高新技术产业开发区', '2201', '22');
INSERT INTO `area` VALUES ('220174', '长春汽车经济技术开发区', '2201', '22');
INSERT INTO `area` VALUES ('220182', '榆树市', '2201', '22');
INSERT INTO `area` VALUES ('220183', '德惠市', '2201', '22');
INSERT INTO `area` VALUES ('220184', '公主岭市', '2201', '22');
INSERT INTO `area` VALUES ('220202', '昌邑区', '2202', '22');
INSERT INTO `area` VALUES ('220203', '龙潭区', '2202', '22');
INSERT INTO `area` VALUES ('220204', '船营区', '2202', '22');
INSERT INTO `area` VALUES ('220211', '丰满区', '2202', '22');
INSERT INTO `area` VALUES ('220221', '永吉县', '2202', '22');
INSERT INTO `area` VALUES ('220271', '吉林经济开发区', '2202', '22');
INSERT INTO `area` VALUES ('220272', '吉林高新技术产业开发区', '2202', '22');
INSERT INTO `area` VALUES ('220273', '吉林中国新加坡食品区', '2202', '22');
INSERT INTO `area` VALUES ('220281', '蛟河市', '2202', '22');
INSERT INTO `area` VALUES ('220282', '桦甸市', '2202', '22');
INSERT INTO `area` VALUES ('220283', '舒兰市', '2202', '22');
INSERT INTO `area` VALUES ('220284', '磐石市', '2202', '22');
INSERT INTO `area` VALUES ('220302', '铁西区', '2203', '22');
INSERT INTO `area` VALUES ('220303', '铁东区', '2203', '22');
INSERT INTO `area` VALUES ('220322', '梨树县', '2203', '22');
INSERT INTO `area` VALUES ('220323', '伊通满族自治县', '2203', '22');
INSERT INTO `area` VALUES ('220382', '双辽市', '2203', '22');
INSERT INTO `area` VALUES ('220402', '龙山区', '2204', '22');
INSERT INTO `area` VALUES ('220403', '西安区', '2204', '22');
INSERT INTO `area` VALUES ('220421', '东丰县', '2204', '22');
INSERT INTO `area` VALUES ('220422', '东辽县', '2204', '22');
INSERT INTO `area` VALUES ('220502', '东昌区', '2205', '22');
INSERT INTO `area` VALUES ('220503', '二道江区', '2205', '22');
INSERT INTO `area` VALUES ('220521', '通化县', '2205', '22');
INSERT INTO `area` VALUES ('220523', '辉南县', '2205', '22');
INSERT INTO `area` VALUES ('220524', '柳河县', '2205', '22');
INSERT INTO `area` VALUES ('220581', '梅河口市', '2205', '22');
INSERT INTO `area` VALUES ('220582', '集安市', '2205', '22');
INSERT INTO `area` VALUES ('220602', '浑江区', '2206', '22');
INSERT INTO `area` VALUES ('220605', '江源区', '2206', '22');
INSERT INTO `area` VALUES ('220621', '抚松县', '2206', '22');
INSERT INTO `area` VALUES ('220622', '靖宇县', '2206', '22');
INSERT INTO `area` VALUES ('220623', '长白朝鲜族自治县', '2206', '22');
INSERT INTO `area` VALUES ('220681', '临江市', '2206', '22');
INSERT INTO `area` VALUES ('220702', '宁江区', '2207', '22');
INSERT INTO `area` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '2207', '22');
INSERT INTO `area` VALUES ('220722', '长岭县', '2207', '22');
INSERT INTO `area` VALUES ('220723', '乾安县', '2207', '22');
INSERT INTO `area` VALUES ('220771', '吉林松原经济开发区', '2207', '22');
INSERT INTO `area` VALUES ('220781', '扶余市', '2207', '22');
INSERT INTO `area` VALUES ('220802', '洮北区', '2208', '22');
INSERT INTO `area` VALUES ('220821', '镇赉县', '2208', '22');
INSERT INTO `area` VALUES ('220822', '通榆县', '2208', '22');
INSERT INTO `area` VALUES ('220871', '吉林白城经济开发区', '2208', '22');
INSERT INTO `area` VALUES ('220881', '洮南市', '2208', '22');
INSERT INTO `area` VALUES ('220882', '大安市', '2208', '22');
INSERT INTO `area` VALUES ('222401', '延吉市', '2224', '22');
INSERT INTO `area` VALUES ('222402', '图们市', '2224', '22');
INSERT INTO `area` VALUES ('222403', '敦化市', '2224', '22');
INSERT INTO `area` VALUES ('222404', '珲春市', '2224', '22');
INSERT INTO `area` VALUES ('222405', '龙井市', '2224', '22');
INSERT INTO `area` VALUES ('222406', '和龙市', '2224', '22');
INSERT INTO `area` VALUES ('222424', '汪清县', '2224', '22');
INSERT INTO `area` VALUES ('222426', '安图县', '2224', '22');
INSERT INTO `area` VALUES ('230102', '道里区', '2301', '23');
INSERT INTO `area` VALUES ('230103', '南岗区', '2301', '23');
INSERT INTO `area` VALUES ('230104', '道外区', '2301', '23');
INSERT INTO `area` VALUES ('230108', '平房区', '2301', '23');
INSERT INTO `area` VALUES ('230109', '松北区', '2301', '23');
INSERT INTO `area` VALUES ('230110', '香坊区', '2301', '23');
INSERT INTO `area` VALUES ('230111', '呼兰区', '2301', '23');
INSERT INTO `area` VALUES ('230112', '阿城区', '2301', '23');
INSERT INTO `area` VALUES ('230113', '双城区', '2301', '23');
INSERT INTO `area` VALUES ('230123', '依兰县', '2301', '23');
INSERT INTO `area` VALUES ('230124', '方正县', '2301', '23');
INSERT INTO `area` VALUES ('230125', '宾县', '2301', '23');
INSERT INTO `area` VALUES ('230126', '巴彦县', '2301', '23');
INSERT INTO `area` VALUES ('230127', '木兰县', '2301', '23');
INSERT INTO `area` VALUES ('230128', '通河县', '2301', '23');
INSERT INTO `area` VALUES ('230129', '延寿县', '2301', '23');
INSERT INTO `area` VALUES ('230183', '尚志市', '2301', '23');
INSERT INTO `area` VALUES ('230184', '五常市', '2301', '23');
INSERT INTO `area` VALUES ('230202', '龙沙区', '2302', '23');
INSERT INTO `area` VALUES ('230203', '建华区', '2302', '23');
INSERT INTO `area` VALUES ('230204', '铁锋区', '2302', '23');
INSERT INTO `area` VALUES ('230205', '昂昂溪区', '2302', '23');
INSERT INTO `area` VALUES ('230206', '富拉尔基区', '2302', '23');
INSERT INTO `area` VALUES ('230207', '碾子山区', '2302', '23');
INSERT INTO `area` VALUES ('230208', '梅里斯达斡尔族区', '2302', '23');
INSERT INTO `area` VALUES ('230221', '龙江县', '2302', '23');
INSERT INTO `area` VALUES ('230223', '依安县', '2302', '23');
INSERT INTO `area` VALUES ('230224', '泰来县', '2302', '23');
INSERT INTO `area` VALUES ('230225', '甘南县', '2302', '23');
INSERT INTO `area` VALUES ('230227', '富裕县', '2302', '23');
INSERT INTO `area` VALUES ('230229', '克山县', '2302', '23');
INSERT INTO `area` VALUES ('230230', '克东县', '2302', '23');
INSERT INTO `area` VALUES ('230231', '拜泉县', '2302', '23');
INSERT INTO `area` VALUES ('230281', '讷河市', '2302', '23');
INSERT INTO `area` VALUES ('230302', '鸡冠区', '2303', '23');
INSERT INTO `area` VALUES ('230303', '恒山区', '2303', '23');
INSERT INTO `area` VALUES ('230304', '滴道区', '2303', '23');
INSERT INTO `area` VALUES ('230305', '梨树区', '2303', '23');
INSERT INTO `area` VALUES ('230306', '城子河区', '2303', '23');
INSERT INTO `area` VALUES ('230307', '麻山区', '2303', '23');
INSERT INTO `area` VALUES ('230321', '鸡东县', '2303', '23');
INSERT INTO `area` VALUES ('230381', '虎林市', '2303', '23');
INSERT INTO `area` VALUES ('230382', '密山市', '2303', '23');
INSERT INTO `area` VALUES ('230402', '向阳区', '2304', '23');
INSERT INTO `area` VALUES ('230403', '工农区', '2304', '23');
INSERT INTO `area` VALUES ('230404', '南山区', '2304', '23');
INSERT INTO `area` VALUES ('230405', '兴安区', '2304', '23');
INSERT INTO `area` VALUES ('230406', '东山区', '2304', '23');
INSERT INTO `area` VALUES ('230407', '兴山区', '2304', '23');
INSERT INTO `area` VALUES ('230421', '萝北县', '2304', '23');
INSERT INTO `area` VALUES ('230422', '绥滨县', '2304', '23');
INSERT INTO `area` VALUES ('230502', '尖山区', '2305', '23');
INSERT INTO `area` VALUES ('230503', '岭东区', '2305', '23');
INSERT INTO `area` VALUES ('230505', '四方台区', '2305', '23');
INSERT INTO `area` VALUES ('230506', '宝山区', '2305', '23');
INSERT INTO `area` VALUES ('230521', '集贤县', '2305', '23');
INSERT INTO `area` VALUES ('230522', '友谊县', '2305', '23');
INSERT INTO `area` VALUES ('230523', '宝清县', '2305', '23');
INSERT INTO `area` VALUES ('230524', '饶河县', '2305', '23');
INSERT INTO `area` VALUES ('230602', '萨尔图区', '2306', '23');
INSERT INTO `area` VALUES ('230603', '龙凤区', '2306', '23');
INSERT INTO `area` VALUES ('230604', '让胡路区', '2306', '23');
INSERT INTO `area` VALUES ('230605', '红岗区', '2306', '23');
INSERT INTO `area` VALUES ('230606', '大同区', '2306', '23');
INSERT INTO `area` VALUES ('230621', '肇州县', '2306', '23');
INSERT INTO `area` VALUES ('230622', '肇源县', '2306', '23');
INSERT INTO `area` VALUES ('230623', '林甸县', '2306', '23');
INSERT INTO `area` VALUES ('230624', '杜尔伯特蒙古族自治县', '2306', '23');
INSERT INTO `area` VALUES ('230671', '大庆高新技术产业开发区', '2306', '23');
INSERT INTO `area` VALUES ('230717', '伊美区', '2307', '23');
INSERT INTO `area` VALUES ('230718', '乌翠区', '2307', '23');
INSERT INTO `area` VALUES ('230719', '友好区', '2307', '23');
INSERT INTO `area` VALUES ('230722', '嘉荫县', '2307', '23');
INSERT INTO `area` VALUES ('230723', '汤旺县', '2307', '23');
INSERT INTO `area` VALUES ('230724', '丰林县', '2307', '23');
INSERT INTO `area` VALUES ('230725', '大箐山县', '2307', '23');
INSERT INTO `area` VALUES ('230726', '南岔县', '2307', '23');
INSERT INTO `area` VALUES ('230751', '金林区', '2307', '23');
INSERT INTO `area` VALUES ('230781', '铁力市', '2307', '23');
INSERT INTO `area` VALUES ('230803', '向阳区', '2308', '23');
INSERT INTO `area` VALUES ('230804', '前进区', '2308', '23');
INSERT INTO `area` VALUES ('230805', '东风区', '2308', '23');
INSERT INTO `area` VALUES ('230811', '郊区', '2308', '23');
INSERT INTO `area` VALUES ('230822', '桦南县', '2308', '23');
INSERT INTO `area` VALUES ('230826', '桦川县', '2308', '23');
INSERT INTO `area` VALUES ('230828', '汤原县', '2308', '23');
INSERT INTO `area` VALUES ('230881', '同江市', '2308', '23');
INSERT INTO `area` VALUES ('230882', '富锦市', '2308', '23');
INSERT INTO `area` VALUES ('230883', '抚远市', '2308', '23');
INSERT INTO `area` VALUES ('230902', '新兴区', '2309', '23');
INSERT INTO `area` VALUES ('230903', '桃山区', '2309', '23');
INSERT INTO `area` VALUES ('230904', '茄子河区', '2309', '23');
INSERT INTO `area` VALUES ('230921', '勃利县', '2309', '23');
INSERT INTO `area` VALUES ('231002', '东安区', '2310', '23');
INSERT INTO `area` VALUES ('231003', '阳明区', '2310', '23');
INSERT INTO `area` VALUES ('231004', '爱民区', '2310', '23');
INSERT INTO `area` VALUES ('231005', '西安区', '2310', '23');
INSERT INTO `area` VALUES ('231025', '林口县', '2310', '23');
INSERT INTO `area` VALUES ('231071', '牡丹江经济技术开发区', '2310', '23');
INSERT INTO `area` VALUES ('231081', '绥芬河市', '2310', '23');
INSERT INTO `area` VALUES ('231083', '海林市', '2310', '23');
INSERT INTO `area` VALUES ('231084', '宁安市', '2310', '23');
INSERT INTO `area` VALUES ('231085', '穆棱市', '2310', '23');
INSERT INTO `area` VALUES ('231086', '东宁市', '2310', '23');
INSERT INTO `area` VALUES ('231102', '爱辉区', '2311', '23');
INSERT INTO `area` VALUES ('231123', '逊克县', '2311', '23');
INSERT INTO `area` VALUES ('231124', '孙吴县', '2311', '23');
INSERT INTO `area` VALUES ('231181', '北安市', '2311', '23');
INSERT INTO `area` VALUES ('231182', '五大连池市', '2311', '23');
INSERT INTO `area` VALUES ('231183', '嫩江市', '2311', '23');
INSERT INTO `area` VALUES ('231202', '北林区', '2312', '23');
INSERT INTO `area` VALUES ('231221', '望奎县', '2312', '23');
INSERT INTO `area` VALUES ('231222', '兰西县', '2312', '23');
INSERT INTO `area` VALUES ('231223', '青冈县', '2312', '23');
INSERT INTO `area` VALUES ('231224', '庆安县', '2312', '23');
INSERT INTO `area` VALUES ('231225', '明水县', '2312', '23');
INSERT INTO `area` VALUES ('231226', '绥棱县', '2312', '23');
INSERT INTO `area` VALUES ('231281', '安达市', '2312', '23');
INSERT INTO `area` VALUES ('231282', '肇东市', '2312', '23');
INSERT INTO `area` VALUES ('231283', '海伦市', '2312', '23');
INSERT INTO `area` VALUES ('232701', '漠河市', '2327', '23');
INSERT INTO `area` VALUES ('232721', '呼玛县', '2327', '23');
INSERT INTO `area` VALUES ('232722', '塔河县', '2327', '23');
INSERT INTO `area` VALUES ('232761', '加格达奇区', '2327', '23');
INSERT INTO `area` VALUES ('232762', '松岭区', '2327', '23');
INSERT INTO `area` VALUES ('232763', '新林区', '2327', '23');
INSERT INTO `area` VALUES ('232764', '呼中区', '2327', '23');
INSERT INTO `area` VALUES ('310101', '黄浦区', '3101', '31');
INSERT INTO `area` VALUES ('310104', '徐汇区', '3101', '31');
INSERT INTO `area` VALUES ('310105', '长宁区', '3101', '31');
INSERT INTO `area` VALUES ('310106', '静安区', '3101', '31');
INSERT INTO `area` VALUES ('310107', '普陀区', '3101', '31');
INSERT INTO `area` VALUES ('310109', '虹口区', '3101', '31');
INSERT INTO `area` VALUES ('310110', '杨浦区', '3101', '31');
INSERT INTO `area` VALUES ('310112', '闵行区', '3101', '31');
INSERT INTO `area` VALUES ('310113', '宝山区', '3101', '31');
INSERT INTO `area` VALUES ('310114', '嘉定区', '3101', '31');
INSERT INTO `area` VALUES ('310115', '浦东新区', '3101', '31');
INSERT INTO `area` VALUES ('310116', '金山区', '3101', '31');
INSERT INTO `area` VALUES ('310117', '松江区', '3101', '31');
INSERT INTO `area` VALUES ('310118', '青浦区', '3101', '31');
INSERT INTO `area` VALUES ('310120', '奉贤区', '3101', '31');
INSERT INTO `area` VALUES ('310151', '崇明区', '3101', '31');
INSERT INTO `area` VALUES ('320102', '玄武区', '3201', '32');
INSERT INTO `area` VALUES ('320104', '秦淮区', '3201', '32');
INSERT INTO `area` VALUES ('320105', '建邺区', '3201', '32');
INSERT INTO `area` VALUES ('320106', '鼓楼区', '3201', '32');
INSERT INTO `area` VALUES ('320111', '浦口区', '3201', '32');
INSERT INTO `area` VALUES ('320113', '栖霞区', '3201', '32');
INSERT INTO `area` VALUES ('320114', '雨花台区', '3201', '32');
INSERT INTO `area` VALUES ('320115', '江宁区', '3201', '32');
INSERT INTO `area` VALUES ('320116', '六合区', '3201', '32');
INSERT INTO `area` VALUES ('320117', '溧水区', '3201', '32');
INSERT INTO `area` VALUES ('320118', '高淳区', '3201', '32');
INSERT INTO `area` VALUES ('320205', '锡山区', '3202', '32');
INSERT INTO `area` VALUES ('320206', '惠山区', '3202', '32');
INSERT INTO `area` VALUES ('320211', '滨湖区', '3202', '32');
INSERT INTO `area` VALUES ('320213', '梁溪区', '3202', '32');
INSERT INTO `area` VALUES ('320214', '新吴区', '3202', '32');
INSERT INTO `area` VALUES ('320281', '江阴市', '3202', '32');
INSERT INTO `area` VALUES ('320282', '宜兴市', '3202', '32');
INSERT INTO `area` VALUES ('320302', '鼓楼区', '3203', '32');
INSERT INTO `area` VALUES ('320303', '云龙区', '3203', '32');
INSERT INTO `area` VALUES ('320305', '贾汪区', '3203', '32');
INSERT INTO `area` VALUES ('320311', '泉山区', '3203', '32');
INSERT INTO `area` VALUES ('320312', '铜山区', '3203', '32');
INSERT INTO `area` VALUES ('320321', '丰县', '3203', '32');
INSERT INTO `area` VALUES ('320322', '沛县', '3203', '32');
INSERT INTO `area` VALUES ('320324', '睢宁县', '3203', '32');
INSERT INTO `area` VALUES ('320371', '徐州经济技术开发区', '3203', '32');
INSERT INTO `area` VALUES ('320381', '新沂市', '3203', '32');
INSERT INTO `area` VALUES ('320382', '邳州市', '3203', '32');
INSERT INTO `area` VALUES ('320402', '天宁区', '3204', '32');
INSERT INTO `area` VALUES ('320404', '钟楼区', '3204', '32');
INSERT INTO `area` VALUES ('320411', '新北区', '3204', '32');
INSERT INTO `area` VALUES ('320412', '武进区', '3204', '32');
INSERT INTO `area` VALUES ('320413', '金坛区', '3204', '32');
INSERT INTO `area` VALUES ('320481', '溧阳市', '3204', '32');
INSERT INTO `area` VALUES ('320505', '虎丘区', '3205', '32');
INSERT INTO `area` VALUES ('320506', '吴中区', '3205', '32');
INSERT INTO `area` VALUES ('320507', '相城区', '3205', '32');
INSERT INTO `area` VALUES ('320508', '姑苏区', '3205', '32');
INSERT INTO `area` VALUES ('320509', '吴江区', '3205', '32');
INSERT INTO `area` VALUES ('320571', '苏州工业园区', '3205', '32');
INSERT INTO `area` VALUES ('320581', '常熟市', '3205', '32');
INSERT INTO `area` VALUES ('320582', '张家港市', '3205', '32');
INSERT INTO `area` VALUES ('320583', '昆山市', '3205', '32');
INSERT INTO `area` VALUES ('320585', '太仓市', '3205', '32');
INSERT INTO `area` VALUES ('320612', '通州区', '3206', '32');
INSERT INTO `area` VALUES ('320613', '崇川区', '3206', '32');
INSERT INTO `area` VALUES ('320614', '海门区', '3206', '32');
INSERT INTO `area` VALUES ('320623', '如东县', '3206', '32');
INSERT INTO `area` VALUES ('320671', '南通经济技术开发区', '3206', '32');
INSERT INTO `area` VALUES ('320681', '启东市', '3206', '32');
INSERT INTO `area` VALUES ('320682', '如皋市', '3206', '32');
INSERT INTO `area` VALUES ('320685', '海安市', '3206', '32');
INSERT INTO `area` VALUES ('320703', '连云区', '3207', '32');
INSERT INTO `area` VALUES ('320706', '海州区', '3207', '32');
INSERT INTO `area` VALUES ('320707', '赣榆区', '3207', '32');
INSERT INTO `area` VALUES ('320722', '东海县', '3207', '32');
INSERT INTO `area` VALUES ('320723', '灌云县', '3207', '32');
INSERT INTO `area` VALUES ('320724', '灌南县', '3207', '32');
INSERT INTO `area` VALUES ('320771', '连云港经济技术开发区', '3207', '32');
INSERT INTO `area` VALUES ('320772', '连云港高新技术产业开发区', '3207', '32');
INSERT INTO `area` VALUES ('320803', '淮安区', '3208', '32');
INSERT INTO `area` VALUES ('320804', '淮阴区', '3208', '32');
INSERT INTO `area` VALUES ('320812', '清江浦区', '3208', '32');
INSERT INTO `area` VALUES ('320813', '洪泽区', '3208', '32');
INSERT INTO `area` VALUES ('320826', '涟水县', '3208', '32');
INSERT INTO `area` VALUES ('320830', '盱眙县', '3208', '32');
INSERT INTO `area` VALUES ('320831', '金湖县', '3208', '32');
INSERT INTO `area` VALUES ('320871', '淮安经济技术开发区', '3208', '32');
INSERT INTO `area` VALUES ('320902', '亭湖区', '3209', '32');
INSERT INTO `area` VALUES ('320903', '盐都区', '3209', '32');
INSERT INTO `area` VALUES ('320904', '大丰区', '3209', '32');
INSERT INTO `area` VALUES ('320921', '响水县', '3209', '32');
INSERT INTO `area` VALUES ('320922', '滨海县', '3209', '32');
INSERT INTO `area` VALUES ('320923', '阜宁县', '3209', '32');
INSERT INTO `area` VALUES ('320924', '射阳县', '3209', '32');
INSERT INTO `area` VALUES ('320925', '建湖县', '3209', '32');
INSERT INTO `area` VALUES ('320971', '盐城经济技术开发区', '3209', '32');
INSERT INTO `area` VALUES ('320981', '东台市', '3209', '32');
INSERT INTO `area` VALUES ('321002', '广陵区', '3210', '32');
INSERT INTO `area` VALUES ('321003', '邗江区', '3210', '32');
INSERT INTO `area` VALUES ('321012', '江都区', '3210', '32');
INSERT INTO `area` VALUES ('321023', '宝应县', '3210', '32');
INSERT INTO `area` VALUES ('321071', '扬州经济技术开发区', '3210', '32');
INSERT INTO `area` VALUES ('321081', '仪征市', '3210', '32');
INSERT INTO `area` VALUES ('321084', '高邮市', '3210', '32');
INSERT INTO `area` VALUES ('321102', '京口区', '3211', '32');
INSERT INTO `area` VALUES ('321111', '润州区', '3211', '32');
INSERT INTO `area` VALUES ('321112', '丹徒区', '3211', '32');
INSERT INTO `area` VALUES ('321171', '镇江新区', '3211', '32');
INSERT INTO `area` VALUES ('321181', '丹阳市', '3211', '32');
INSERT INTO `area` VALUES ('321182', '扬中市', '3211', '32');
INSERT INTO `area` VALUES ('321183', '句容市', '3211', '32');
INSERT INTO `area` VALUES ('321202', '海陵区', '3212', '32');
INSERT INTO `area` VALUES ('321203', '高港区', '3212', '32');
INSERT INTO `area` VALUES ('321204', '姜堰区', '3212', '32');
INSERT INTO `area` VALUES ('321271', '泰州医药高新技术产业开发区', '3212', '32');
INSERT INTO `area` VALUES ('321281', '兴化市', '3212', '32');
INSERT INTO `area` VALUES ('321282', '靖江市', '3212', '32');
INSERT INTO `area` VALUES ('321283', '泰兴市', '3212', '32');
INSERT INTO `area` VALUES ('321302', '宿城区', '3213', '32');
INSERT INTO `area` VALUES ('321311', '宿豫区', '3213', '32');
INSERT INTO `area` VALUES ('321322', '沭阳县', '3213', '32');
INSERT INTO `area` VALUES ('321323', '泗阳县', '3213', '32');
INSERT INTO `area` VALUES ('321324', '泗洪县', '3213', '32');
INSERT INTO `area` VALUES ('321371', '宿迁经济技术开发区', '3213', '32');
INSERT INTO `area` VALUES ('330102', '上城区', '3301', '33');
INSERT INTO `area` VALUES ('330105', '拱墅区', '3301', '33');
INSERT INTO `area` VALUES ('330106', '西湖区', '3301', '33');
INSERT INTO `area` VALUES ('330108', '滨江区', '3301', '33');
INSERT INTO `area` VALUES ('330109', '萧山区', '3301', '33');
INSERT INTO `area` VALUES ('330110', '余杭区', '3301', '33');
INSERT INTO `area` VALUES ('330111', '富阳区', '3301', '33');
INSERT INTO `area` VALUES ('330112', '临安区', '3301', '33');
INSERT INTO `area` VALUES ('330113', '临平区', '3301', '33');
INSERT INTO `area` VALUES ('330114', '钱塘区', '3301', '33');
INSERT INTO `area` VALUES ('330122', '桐庐县', '3301', '33');
INSERT INTO `area` VALUES ('330127', '淳安县', '3301', '33');
INSERT INTO `area` VALUES ('330182', '建德市', '3301', '33');
INSERT INTO `area` VALUES ('330203', '海曙区', '3302', '33');
INSERT INTO `area` VALUES ('330205', '江北区', '3302', '33');
INSERT INTO `area` VALUES ('330206', '北仑区', '3302', '33');
INSERT INTO `area` VALUES ('330211', '镇海区', '3302', '33');
INSERT INTO `area` VALUES ('330212', '鄞州区', '3302', '33');
INSERT INTO `area` VALUES ('330213', '奉化区', '3302', '33');
INSERT INTO `area` VALUES ('330225', '象山县', '3302', '33');
INSERT INTO `area` VALUES ('330226', '宁海县', '3302', '33');
INSERT INTO `area` VALUES ('330281', '余姚市', '3302', '33');
INSERT INTO `area` VALUES ('330282', '慈溪市', '3302', '33');
INSERT INTO `area` VALUES ('330302', '鹿城区', '3303', '33');
INSERT INTO `area` VALUES ('330303', '龙湾区', '3303', '33');
INSERT INTO `area` VALUES ('330304', '瓯海区', '3303', '33');
INSERT INTO `area` VALUES ('330305', '洞头区', '3303', '33');
INSERT INTO `area` VALUES ('330324', '永嘉县', '3303', '33');
INSERT INTO `area` VALUES ('330326', '平阳县', '3303', '33');
INSERT INTO `area` VALUES ('330327', '苍南县', '3303', '33');
INSERT INTO `area` VALUES ('330328', '文成县', '3303', '33');
INSERT INTO `area` VALUES ('330329', '泰顺县', '3303', '33');
INSERT INTO `area` VALUES ('330371', '温州经济技术开发区', '3303', '33');
INSERT INTO `area` VALUES ('330381', '瑞安市', '3303', '33');
INSERT INTO `area` VALUES ('330382', '乐清市', '3303', '33');
INSERT INTO `area` VALUES ('330383', '龙港市', '3303', '33');
INSERT INTO `area` VALUES ('330402', '南湖区', '3304', '33');
INSERT INTO `area` VALUES ('330411', '秀洲区', '3304', '33');
INSERT INTO `area` VALUES ('330421', '嘉善县', '3304', '33');
INSERT INTO `area` VALUES ('330424', '海盐县', '3304', '33');
INSERT INTO `area` VALUES ('330481', '海宁市', '3304', '33');
INSERT INTO `area` VALUES ('330482', '平湖市', '3304', '33');
INSERT INTO `area` VALUES ('330483', '桐乡市', '3304', '33');
INSERT INTO `area` VALUES ('330502', '吴兴区', '3305', '33');
INSERT INTO `area` VALUES ('330503', '南浔区', '3305', '33');
INSERT INTO `area` VALUES ('330521', '德清县', '3305', '33');
INSERT INTO `area` VALUES ('330522', '长兴县', '3305', '33');
INSERT INTO `area` VALUES ('330523', '安吉县', '3305', '33');
INSERT INTO `area` VALUES ('330602', '越城区', '3306', '33');
INSERT INTO `area` VALUES ('330603', '柯桥区', '3306', '33');
INSERT INTO `area` VALUES ('330604', '上虞区', '3306', '33');
INSERT INTO `area` VALUES ('330624', '新昌县', '3306', '33');
INSERT INTO `area` VALUES ('330681', '诸暨市', '3306', '33');
INSERT INTO `area` VALUES ('330683', '嵊州市', '3306', '33');
INSERT INTO `area` VALUES ('330702', '婺城区', '3307', '33');
INSERT INTO `area` VALUES ('330703', '金东区', '3307', '33');
INSERT INTO `area` VALUES ('330723', '武义县', '3307', '33');
INSERT INTO `area` VALUES ('330726', '浦江县', '3307', '33');
INSERT INTO `area` VALUES ('330727', '磐安县', '3307', '33');
INSERT INTO `area` VALUES ('330781', '兰溪市', '3307', '33');
INSERT INTO `area` VALUES ('330782', '义乌市', '3307', '33');
INSERT INTO `area` VALUES ('330783', '东阳市', '3307', '33');
INSERT INTO `area` VALUES ('330784', '永康市', '3307', '33');
INSERT INTO `area` VALUES ('330802', '柯城区', '3308', '33');
INSERT INTO `area` VALUES ('330803', '衢江区', '3308', '33');
INSERT INTO `area` VALUES ('330822', '常山县', '3308', '33');
INSERT INTO `area` VALUES ('330824', '开化县', '3308', '33');
INSERT INTO `area` VALUES ('330825', '龙游县', '3308', '33');
INSERT INTO `area` VALUES ('330881', '江山市', '3308', '33');
INSERT INTO `area` VALUES ('330902', '定海区', '3309', '33');
INSERT INTO `area` VALUES ('330903', '普陀区', '3309', '33');
INSERT INTO `area` VALUES ('330921', '岱山县', '3309', '33');
INSERT INTO `area` VALUES ('330922', '嵊泗县', '3309', '33');
INSERT INTO `area` VALUES ('331002', '椒江区', '3310', '33');
INSERT INTO `area` VALUES ('331003', '黄岩区', '3310', '33');
INSERT INTO `area` VALUES ('331004', '路桥区', '3310', '33');
INSERT INTO `area` VALUES ('331022', '三门县', '3310', '33');
INSERT INTO `area` VALUES ('331023', '天台县', '3310', '33');
INSERT INTO `area` VALUES ('331024', '仙居县', '3310', '33');
INSERT INTO `area` VALUES ('331081', '温岭市', '3310', '33');
INSERT INTO `area` VALUES ('331082', '临海市', '3310', '33');
INSERT INTO `area` VALUES ('331083', '玉环市', '3310', '33');
INSERT INTO `area` VALUES ('331102', '莲都区', '3311', '33');
INSERT INTO `area` VALUES ('331121', '青田县', '3311', '33');
INSERT INTO `area` VALUES ('331122', '缙云县', '3311', '33');
INSERT INTO `area` VALUES ('331123', '遂昌县', '3311', '33');
INSERT INTO `area` VALUES ('331124', '松阳县', '3311', '33');
INSERT INTO `area` VALUES ('331125', '云和县', '3311', '33');
INSERT INTO `area` VALUES ('331126', '庆元县', '3311', '33');
INSERT INTO `area` VALUES ('331127', '景宁畲族自治县', '3311', '33');
INSERT INTO `area` VALUES ('331181', '龙泉市', '3311', '33');
INSERT INTO `area` VALUES ('340102', '瑶海区', '3401', '34');
INSERT INTO `area` VALUES ('340103', '庐阳区', '3401', '34');
INSERT INTO `area` VALUES ('340104', '蜀山区', '3401', '34');
INSERT INTO `area` VALUES ('340111', '包河区', '3401', '34');
INSERT INTO `area` VALUES ('340121', '长丰县', '3401', '34');
INSERT INTO `area` VALUES ('340122', '肥东县', '3401', '34');
INSERT INTO `area` VALUES ('340123', '肥西县', '3401', '34');
INSERT INTO `area` VALUES ('340124', '庐江县', '3401', '34');
INSERT INTO `area` VALUES ('340171', '合肥高新技术产业开发区', '3401', '34');
INSERT INTO `area` VALUES ('340172', '合肥经济技术开发区', '3401', '34');
INSERT INTO `area` VALUES ('340173', '合肥新站高新技术产业开发区', '3401', '34');
INSERT INTO `area` VALUES ('340181', '巢湖市', '3401', '34');
INSERT INTO `area` VALUES ('340202', '镜湖区', '3402', '34');
INSERT INTO `area` VALUES ('340207', '鸠江区', '3402', '34');
INSERT INTO `area` VALUES ('340209', '弋江区', '3402', '34');
INSERT INTO `area` VALUES ('340210', '湾沚区', '3402', '34');
INSERT INTO `area` VALUES ('340212', '繁昌区', '3402', '34');
INSERT INTO `area` VALUES ('340223', '南陵县', '3402', '34');
INSERT INTO `area` VALUES ('340271', '芜湖经济技术开发区', '3402', '34');
INSERT INTO `area` VALUES ('340272', '安徽芜湖三山经济开发区', '3402', '34');
INSERT INTO `area` VALUES ('340281', '无为市', '3402', '34');
INSERT INTO `area` VALUES ('340302', '龙子湖区', '3403', '34');
INSERT INTO `area` VALUES ('340303', '蚌山区', '3403', '34');
INSERT INTO `area` VALUES ('340304', '禹会区', '3403', '34');
INSERT INTO `area` VALUES ('340311', '淮上区', '3403', '34');
INSERT INTO `area` VALUES ('340321', '怀远县', '3403', '34');
INSERT INTO `area` VALUES ('340322', '五河县', '3403', '34');
INSERT INTO `area` VALUES ('340323', '固镇县', '3403', '34');
INSERT INTO `area` VALUES ('340371', '蚌埠市高新技术开发区', '3403', '34');
INSERT INTO `area` VALUES ('340372', '蚌埠市经济开发区', '3403', '34');
INSERT INTO `area` VALUES ('340402', '大通区', '3404', '34');
INSERT INTO `area` VALUES ('340403', '田家庵区', '3404', '34');
INSERT INTO `area` VALUES ('340404', '谢家集区', '3404', '34');
INSERT INTO `area` VALUES ('340405', '八公山区', '3404', '34');
INSERT INTO `area` VALUES ('340406', '潘集区', '3404', '34');
INSERT INTO `area` VALUES ('340421', '凤台县', '3404', '34');
INSERT INTO `area` VALUES ('340422', '寿县', '3404', '34');
INSERT INTO `area` VALUES ('340503', '花山区', '3405', '34');
INSERT INTO `area` VALUES ('340504', '雨山区', '3405', '34');
INSERT INTO `area` VALUES ('340506', '博望区', '3405', '34');
INSERT INTO `area` VALUES ('340521', '当涂县', '3405', '34');
INSERT INTO `area` VALUES ('340522', '含山县', '3405', '34');
INSERT INTO `area` VALUES ('340523', '和县', '3405', '34');
INSERT INTO `area` VALUES ('340602', '杜集区', '3406', '34');
INSERT INTO `area` VALUES ('340603', '相山区', '3406', '34');
INSERT INTO `area` VALUES ('340604', '烈山区', '3406', '34');
INSERT INTO `area` VALUES ('340621', '濉溪县', '3406', '34');
INSERT INTO `area` VALUES ('340705', '铜官区', '3407', '34');
INSERT INTO `area` VALUES ('340706', '义安区', '3407', '34');
INSERT INTO `area` VALUES ('340711', '郊区', '3407', '34');
INSERT INTO `area` VALUES ('340722', '枞阳县', '3407', '34');
INSERT INTO `area` VALUES ('340802', '迎江区', '3408', '34');
INSERT INTO `area` VALUES ('340803', '大观区', '3408', '34');
INSERT INTO `area` VALUES ('340811', '宜秀区', '3408', '34');
INSERT INTO `area` VALUES ('340822', '怀宁县', '3408', '34');
INSERT INTO `area` VALUES ('340825', '太湖县', '3408', '34');
INSERT INTO `area` VALUES ('340826', '宿松县', '3408', '34');
INSERT INTO `area` VALUES ('340827', '望江县', '3408', '34');
INSERT INTO `area` VALUES ('340828', '岳西县', '3408', '34');
INSERT INTO `area` VALUES ('340871', '安徽安庆经济开发区', '3408', '34');
INSERT INTO `area` VALUES ('340881', '桐城市', '3408', '34');
INSERT INTO `area` VALUES ('340882', '潜山市', '3408', '34');
INSERT INTO `area` VALUES ('341002', '屯溪区', '3410', '34');
INSERT INTO `area` VALUES ('341003', '黄山区', '3410', '34');
INSERT INTO `area` VALUES ('341004', '徽州区', '3410', '34');
INSERT INTO `area` VALUES ('341021', '歙县', '3410', '34');
INSERT INTO `area` VALUES ('341022', '休宁县', '3410', '34');
INSERT INTO `area` VALUES ('341023', '黟县', '3410', '34');
INSERT INTO `area` VALUES ('341024', '祁门县', '3410', '34');
INSERT INTO `area` VALUES ('341102', '琅琊区', '3411', '34');
INSERT INTO `area` VALUES ('341103', '南谯区', '3411', '34');
INSERT INTO `area` VALUES ('341122', '来安县', '3411', '34');
INSERT INTO `area` VALUES ('341124', '全椒县', '3411', '34');
INSERT INTO `area` VALUES ('341125', '定远县', '3411', '34');
INSERT INTO `area` VALUES ('341126', '凤阳县', '3411', '34');
INSERT INTO `area` VALUES ('341171', '中新苏滁高新技术产业开发区', '3411', '34');
INSERT INTO `area` VALUES ('341172', '滁州经济技术开发区', '3411', '34');
INSERT INTO `area` VALUES ('341181', '天长市', '3411', '34');
INSERT INTO `area` VALUES ('341182', '明光市', '3411', '34');
INSERT INTO `area` VALUES ('341202', '颍州区', '3412', '34');
INSERT INTO `area` VALUES ('341203', '颍东区', '3412', '34');
INSERT INTO `area` VALUES ('341204', '颍泉区', '3412', '34');
INSERT INTO `area` VALUES ('341221', '临泉县', '3412', '34');
INSERT INTO `area` VALUES ('341222', '太和县', '3412', '34');
INSERT INTO `area` VALUES ('341225', '阜南县', '3412', '34');
INSERT INTO `area` VALUES ('341226', '颍上县', '3412', '34');
INSERT INTO `area` VALUES ('341271', '阜阳合肥现代产业园区', '3412', '34');
INSERT INTO `area` VALUES ('341272', '阜阳经济技术开发区', '3412', '34');
INSERT INTO `area` VALUES ('341282', '界首市', '3412', '34');
INSERT INTO `area` VALUES ('341302', '埇桥区', '3413', '34');
INSERT INTO `area` VALUES ('341321', '砀山县', '3413', '34');
INSERT INTO `area` VALUES ('341322', '萧县', '3413', '34');
INSERT INTO `area` VALUES ('341323', '灵璧县', '3413', '34');
INSERT INTO `area` VALUES ('341324', '泗县', '3413', '34');
INSERT INTO `area` VALUES ('341371', '宿州马鞍山现代产业园区', '3413', '34');
INSERT INTO `area` VALUES ('341372', '宿州经济技术开发区', '3413', '34');
INSERT INTO `area` VALUES ('341502', '金安区', '3415', '34');
INSERT INTO `area` VALUES ('341503', '裕安区', '3415', '34');
INSERT INTO `area` VALUES ('341504', '叶集区', '3415', '34');
INSERT INTO `area` VALUES ('341522', '霍邱县', '3415', '34');
INSERT INTO `area` VALUES ('341523', '舒城县', '3415', '34');
INSERT INTO `area` VALUES ('341524', '金寨县', '3415', '34');
INSERT INTO `area` VALUES ('341525', '霍山县', '3415', '34');
INSERT INTO `area` VALUES ('341602', '谯城区', '3416', '34');
INSERT INTO `area` VALUES ('341621', '涡阳县', '3416', '34');
INSERT INTO `area` VALUES ('341622', '蒙城县', '3416', '34');
INSERT INTO `area` VALUES ('341623', '利辛县', '3416', '34');
INSERT INTO `area` VALUES ('341702', '贵池区', '3417', '34');
INSERT INTO `area` VALUES ('341721', '东至县', '3417', '34');
INSERT INTO `area` VALUES ('341722', '石台县', '3417', '34');
INSERT INTO `area` VALUES ('341723', '青阳县', '3417', '34');
INSERT INTO `area` VALUES ('341802', '宣州区', '3418', '34');
INSERT INTO `area` VALUES ('341821', '郎溪县', '3418', '34');
INSERT INTO `area` VALUES ('341823', '泾县', '3418', '34');
INSERT INTO `area` VALUES ('341824', '绩溪县', '3418', '34');
INSERT INTO `area` VALUES ('341825', '旌德县', '3418', '34');
INSERT INTO `area` VALUES ('341871', '宣城市经济开发区', '3418', '34');
INSERT INTO `area` VALUES ('341881', '宁国市', '3418', '34');
INSERT INTO `area` VALUES ('341882', '广德市', '3418', '34');
INSERT INTO `area` VALUES ('350102', '鼓楼区', '3501', '35');
INSERT INTO `area` VALUES ('350103', '台江区', '3501', '35');
INSERT INTO `area` VALUES ('350104', '仓山区', '3501', '35');
INSERT INTO `area` VALUES ('350105', '马尾区', '3501', '35');
INSERT INTO `area` VALUES ('350111', '晋安区', '3501', '35');
INSERT INTO `area` VALUES ('350112', '长乐区', '3501', '35');
INSERT INTO `area` VALUES ('350121', '闽侯县', '3501', '35');
INSERT INTO `area` VALUES ('350122', '连江县', '3501', '35');
INSERT INTO `area` VALUES ('350123', '罗源县', '3501', '35');
INSERT INTO `area` VALUES ('350124', '闽清县', '3501', '35');
INSERT INTO `area` VALUES ('350125', '永泰县', '3501', '35');
INSERT INTO `area` VALUES ('350128', '平潭县', '3501', '35');
INSERT INTO `area` VALUES ('350181', '福清市', '3501', '35');
INSERT INTO `area` VALUES ('350203', '思明区', '3502', '35');
INSERT INTO `area` VALUES ('350205', '海沧区', '3502', '35');
INSERT INTO `area` VALUES ('350206', '湖里区', '3502', '35');
INSERT INTO `area` VALUES ('350211', '集美区', '3502', '35');
INSERT INTO `area` VALUES ('350212', '同安区', '3502', '35');
INSERT INTO `area` VALUES ('350213', '翔安区', '3502', '35');
INSERT INTO `area` VALUES ('350302', '城厢区', '3503', '35');
INSERT INTO `area` VALUES ('350303', '涵江区', '3503', '35');
INSERT INTO `area` VALUES ('350304', '荔城区', '3503', '35');
INSERT INTO `area` VALUES ('350305', '秀屿区', '3503', '35');
INSERT INTO `area` VALUES ('350322', '仙游县', '3503', '35');
INSERT INTO `area` VALUES ('350404', '三元区', '3504', '35');
INSERT INTO `area` VALUES ('350405', '沙县区', '3504', '35');
INSERT INTO `area` VALUES ('350421', '明溪县', '3504', '35');
INSERT INTO `area` VALUES ('350423', '清流县', '3504', '35');
INSERT INTO `area` VALUES ('350424', '宁化县', '3504', '35');
INSERT INTO `area` VALUES ('350425', '大田县', '3504', '35');
INSERT INTO `area` VALUES ('350426', '尤溪县', '3504', '35');
INSERT INTO `area` VALUES ('350428', '将乐县', '3504', '35');
INSERT INTO `area` VALUES ('350429', '泰宁县', '3504', '35');
INSERT INTO `area` VALUES ('350430', '建宁县', '3504', '35');
INSERT INTO `area` VALUES ('350481', '永安市', '3504', '35');
INSERT INTO `area` VALUES ('350502', '鲤城区', '3505', '35');
INSERT INTO `area` VALUES ('350503', '丰泽区', '3505', '35');
INSERT INTO `area` VALUES ('350504', '洛江区', '3505', '35');
INSERT INTO `area` VALUES ('350505', '泉港区', '3505', '35');
INSERT INTO `area` VALUES ('350521', '惠安县', '3505', '35');
INSERT INTO `area` VALUES ('350524', '安溪县', '3505', '35');
INSERT INTO `area` VALUES ('350525', '永春县', '3505', '35');
INSERT INTO `area` VALUES ('350526', '德化县', '3505', '35');
INSERT INTO `area` VALUES ('350527', '金门县', '3505', '35');
INSERT INTO `area` VALUES ('350581', '石狮市', '3505', '35');
INSERT INTO `area` VALUES ('350582', '晋江市', '3505', '35');
INSERT INTO `area` VALUES ('350583', '南安市', '3505', '35');
INSERT INTO `area` VALUES ('350602', '芗城区', '3506', '35');
INSERT INTO `area` VALUES ('350603', '龙文区', '3506', '35');
INSERT INTO `area` VALUES ('350604', '龙海区', '3506', '35');
INSERT INTO `area` VALUES ('350605', '长泰区', '3506', '35');
INSERT INTO `area` VALUES ('350622', '云霄县', '3506', '35');
INSERT INTO `area` VALUES ('350623', '漳浦县', '3506', '35');
INSERT INTO `area` VALUES ('350624', '诏安县', '3506', '35');
INSERT INTO `area` VALUES ('350626', '东山县', '3506', '35');
INSERT INTO `area` VALUES ('350627', '南靖县', '3506', '35');
INSERT INTO `area` VALUES ('350628', '平和县', '3506', '35');
INSERT INTO `area` VALUES ('350629', '华安县', '3506', '35');
INSERT INTO `area` VALUES ('350702', '延平区', '3507', '35');
INSERT INTO `area` VALUES ('350703', '建阳区', '3507', '35');
INSERT INTO `area` VALUES ('350721', '顺昌县', '3507', '35');
INSERT INTO `area` VALUES ('350722', '浦城县', '3507', '35');
INSERT INTO `area` VALUES ('350723', '光泽县', '3507', '35');
INSERT INTO `area` VALUES ('350724', '松溪县', '3507', '35');
INSERT INTO `area` VALUES ('350725', '政和县', '3507', '35');
INSERT INTO `area` VALUES ('350781', '邵武市', '3507', '35');
INSERT INTO `area` VALUES ('350782', '武夷山市', '3507', '35');
INSERT INTO `area` VALUES ('350783', '建瓯市', '3507', '35');
INSERT INTO `area` VALUES ('350802', '新罗区', '3508', '35');
INSERT INTO `area` VALUES ('350803', '永定区', '3508', '35');
INSERT INTO `area` VALUES ('350821', '长汀县', '3508', '35');
INSERT INTO `area` VALUES ('350823', '上杭县', '3508', '35');
INSERT INTO `area` VALUES ('350824', '武平县', '3508', '35');
INSERT INTO `area` VALUES ('350825', '连城县', '3508', '35');
INSERT INTO `area` VALUES ('350881', '漳平市', '3508', '35');
INSERT INTO `area` VALUES ('350902', '蕉城区', '3509', '35');
INSERT INTO `area` VALUES ('350921', '霞浦县', '3509', '35');
INSERT INTO `area` VALUES ('350922', '古田县', '3509', '35');
INSERT INTO `area` VALUES ('350923', '屏南县', '3509', '35');
INSERT INTO `area` VALUES ('350924', '寿宁县', '3509', '35');
INSERT INTO `area` VALUES ('350925', '周宁县', '3509', '35');
INSERT INTO `area` VALUES ('350926', '柘荣县', '3509', '35');
INSERT INTO `area` VALUES ('350981', '福安市', '3509', '35');
INSERT INTO `area` VALUES ('350982', '福鼎市', '3509', '35');
INSERT INTO `area` VALUES ('360102', '东湖区', '3601', '36');
INSERT INTO `area` VALUES ('360103', '西湖区', '3601', '36');
INSERT INTO `area` VALUES ('360104', '青云谱区', '3601', '36');
INSERT INTO `area` VALUES ('360111', '青山湖区', '3601', '36');
INSERT INTO `area` VALUES ('360112', '新建区', '3601', '36');
INSERT INTO `area` VALUES ('360113', '红谷滩区', '3601', '36');
INSERT INTO `area` VALUES ('360121', '南昌县', '3601', '36');
INSERT INTO `area` VALUES ('360123', '安义县', '3601', '36');
INSERT INTO `area` VALUES ('360124', '进贤县', '3601', '36');
INSERT INTO `area` VALUES ('360202', '昌江区', '3602', '36');
INSERT INTO `area` VALUES ('360203', '珠山区', '3602', '36');
INSERT INTO `area` VALUES ('360222', '浮梁县', '3602', '36');
INSERT INTO `area` VALUES ('360281', '乐平市', '3602', '36');
INSERT INTO `area` VALUES ('360302', '安源区', '3603', '36');
INSERT INTO `area` VALUES ('360313', '湘东区', '3603', '36');
INSERT INTO `area` VALUES ('360321', '莲花县', '3603', '36');
INSERT INTO `area` VALUES ('360322', '上栗县', '3603', '36');
INSERT INTO `area` VALUES ('360323', '芦溪县', '3603', '36');
INSERT INTO `area` VALUES ('360402', '濂溪区', '3604', '36');
INSERT INTO `area` VALUES ('360403', '浔阳区', '3604', '36');
INSERT INTO `area` VALUES ('360404', '柴桑区', '3604', '36');
INSERT INTO `area` VALUES ('360423', '武宁县', '3604', '36');
INSERT INTO `area` VALUES ('360424', '修水县', '3604', '36');
INSERT INTO `area` VALUES ('360425', '永修县', '3604', '36');
INSERT INTO `area` VALUES ('360426', '德安县', '3604', '36');
INSERT INTO `area` VALUES ('360428', '都昌县', '3604', '36');
INSERT INTO `area` VALUES ('360429', '湖口县', '3604', '36');
INSERT INTO `area` VALUES ('360430', '彭泽县', '3604', '36');
INSERT INTO `area` VALUES ('360481', '瑞昌市', '3604', '36');
INSERT INTO `area` VALUES ('360482', '共青城市', '3604', '36');
INSERT INTO `area` VALUES ('360483', '庐山市', '3604', '36');
INSERT INTO `area` VALUES ('360502', '渝水区', '3605', '36');
INSERT INTO `area` VALUES ('360521', '分宜县', '3605', '36');
INSERT INTO `area` VALUES ('360602', '月湖区', '3606', '36');
INSERT INTO `area` VALUES ('360603', '余江区', '3606', '36');
INSERT INTO `area` VALUES ('360681', '贵溪市', '3606', '36');
INSERT INTO `area` VALUES ('360702', '章贡区', '3607', '36');
INSERT INTO `area` VALUES ('360703', '南康区', '3607', '36');
INSERT INTO `area` VALUES ('360704', '赣县区', '3607', '36');
INSERT INTO `area` VALUES ('360722', '信丰县', '3607', '36');
INSERT INTO `area` VALUES ('360723', '大余县', '3607', '36');
INSERT INTO `area` VALUES ('360724', '上犹县', '3607', '36');
INSERT INTO `area` VALUES ('360725', '崇义县', '3607', '36');
INSERT INTO `area` VALUES ('360726', '安远县', '3607', '36');
INSERT INTO `area` VALUES ('360728', '定南县', '3607', '36');
INSERT INTO `area` VALUES ('360729', '全南县', '3607', '36');
INSERT INTO `area` VALUES ('360730', '宁都县', '3607', '36');
INSERT INTO `area` VALUES ('360731', '于都县', '3607', '36');
INSERT INTO `area` VALUES ('360732', '兴国县', '3607', '36');
INSERT INTO `area` VALUES ('360733', '会昌县', '3607', '36');
INSERT INTO `area` VALUES ('360734', '寻乌县', '3607', '36');
INSERT INTO `area` VALUES ('360735', '石城县', '3607', '36');
INSERT INTO `area` VALUES ('360781', '瑞金市', '3607', '36');
INSERT INTO `area` VALUES ('360783', '龙南市', '3607', '36');
INSERT INTO `area` VALUES ('360802', '吉州区', '3608', '36');
INSERT INTO `area` VALUES ('360803', '青原区', '3608', '36');
INSERT INTO `area` VALUES ('360821', '吉安县', '3608', '36');
INSERT INTO `area` VALUES ('360822', '吉水县', '3608', '36');
INSERT INTO `area` VALUES ('360823', '峡江县', '3608', '36');
INSERT INTO `area` VALUES ('360824', '新干县', '3608', '36');
INSERT INTO `area` VALUES ('360825', '永丰县', '3608', '36');
INSERT INTO `area` VALUES ('360826', '泰和县', '3608', '36');
INSERT INTO `area` VALUES ('360827', '遂川县', '3608', '36');
INSERT INTO `area` VALUES ('360828', '万安县', '3608', '36');
INSERT INTO `area` VALUES ('360829', '安福县', '3608', '36');
INSERT INTO `area` VALUES ('360830', '永新县', '3608', '36');
INSERT INTO `area` VALUES ('360881', '井冈山市', '3608', '36');
INSERT INTO `area` VALUES ('360902', '袁州区', '3609', '36');
INSERT INTO `area` VALUES ('360921', '奉新县', '3609', '36');
INSERT INTO `area` VALUES ('360922', '万载县', '3609', '36');
INSERT INTO `area` VALUES ('360923', '上高县', '3609', '36');
INSERT INTO `area` VALUES ('360924', '宜丰县', '3609', '36');
INSERT INTO `area` VALUES ('360925', '靖安县', '3609', '36');
INSERT INTO `area` VALUES ('360926', '铜鼓县', '3609', '36');
INSERT INTO `area` VALUES ('360981', '丰城市', '3609', '36');
INSERT INTO `area` VALUES ('360982', '樟树市', '3609', '36');
INSERT INTO `area` VALUES ('360983', '高安市', '3609', '36');
INSERT INTO `area` VALUES ('361002', '临川区', '3610', '36');
INSERT INTO `area` VALUES ('361003', '东乡区', '3610', '36');
INSERT INTO `area` VALUES ('361021', '南城县', '3610', '36');
INSERT INTO `area` VALUES ('361022', '黎川县', '3610', '36');
INSERT INTO `area` VALUES ('361023', '南丰县', '3610', '36');
INSERT INTO `area` VALUES ('361024', '崇仁县', '3610', '36');
INSERT INTO `area` VALUES ('361025', '乐安县', '3610', '36');
INSERT INTO `area` VALUES ('361026', '宜黄县', '3610', '36');
INSERT INTO `area` VALUES ('361027', '金溪县', '3610', '36');
INSERT INTO `area` VALUES ('361028', '资溪县', '3610', '36');
INSERT INTO `area` VALUES ('361030', '广昌县', '3610', '36');
INSERT INTO `area` VALUES ('361102', '信州区', '3611', '36');
INSERT INTO `area` VALUES ('361103', '广丰区', '3611', '36');
INSERT INTO `area` VALUES ('361104', '广信区', '3611', '36');
INSERT INTO `area` VALUES ('361123', '玉山县', '3611', '36');
INSERT INTO `area` VALUES ('361124', '铅山县', '3611', '36');
INSERT INTO `area` VALUES ('361125', '横峰县', '3611', '36');
INSERT INTO `area` VALUES ('361126', '弋阳县', '3611', '36');
INSERT INTO `area` VALUES ('361127', '余干县', '3611', '36');
INSERT INTO `area` VALUES ('361128', '鄱阳县', '3611', '36');
INSERT INTO `area` VALUES ('361129', '万年县', '3611', '36');
INSERT INTO `area` VALUES ('361130', '婺源县', '3611', '36');
INSERT INTO `area` VALUES ('361181', '德兴市', '3611', '36');
INSERT INTO `area` VALUES ('370102', '历下区', '3701', '37');
INSERT INTO `area` VALUES ('370103', '市中区', '3701', '37');
INSERT INTO `area` VALUES ('370104', '槐荫区', '3701', '37');
INSERT INTO `area` VALUES ('370105', '天桥区', '3701', '37');
INSERT INTO `area` VALUES ('370112', '历城区', '3701', '37');
INSERT INTO `area` VALUES ('370113', '长清区', '3701', '37');
INSERT INTO `area` VALUES ('370114', '章丘区', '3701', '37');
INSERT INTO `area` VALUES ('370115', '济阳区', '3701', '37');
INSERT INTO `area` VALUES ('370116', '莱芜区', '3701', '37');
INSERT INTO `area` VALUES ('370117', '钢城区', '3701', '37');
INSERT INTO `area` VALUES ('370124', '平阴县', '3701', '37');
INSERT INTO `area` VALUES ('370126', '商河县', '3701', '37');
INSERT INTO `area` VALUES ('370171', '济南高新技术产业开发区', '3701', '37');
INSERT INTO `area` VALUES ('370202', '市南区', '3702', '37');
INSERT INTO `area` VALUES ('370203', '市北区', '3702', '37');
INSERT INTO `area` VALUES ('370211', '黄岛区', '3702', '37');
INSERT INTO `area` VALUES ('370212', '崂山区', '3702', '37');
INSERT INTO `area` VALUES ('370213', '李沧区', '3702', '37');
INSERT INTO `area` VALUES ('370214', '城阳区', '3702', '37');
INSERT INTO `area` VALUES ('370215', '即墨区', '3702', '37');
INSERT INTO `area` VALUES ('370271', '青岛高新技术产业开发区', '3702', '37');
INSERT INTO `area` VALUES ('370281', '胶州市', '3702', '37');
INSERT INTO `area` VALUES ('370283', '平度市', '3702', '37');
INSERT INTO `area` VALUES ('370285', '莱西市', '3702', '37');
INSERT INTO `area` VALUES ('370302', '淄川区', '3703', '37');
INSERT INTO `area` VALUES ('370303', '张店区', '3703', '37');
INSERT INTO `area` VALUES ('370304', '博山区', '3703', '37');
INSERT INTO `area` VALUES ('370305', '临淄区', '3703', '37');
INSERT INTO `area` VALUES ('370306', '周村区', '3703', '37');
INSERT INTO `area` VALUES ('370321', '桓台县', '3703', '37');
INSERT INTO `area` VALUES ('370322', '高青县', '3703', '37');
INSERT INTO `area` VALUES ('370323', '沂源县', '3703', '37');
INSERT INTO `area` VALUES ('370402', '市中区', '3704', '37');
INSERT INTO `area` VALUES ('370403', '薛城区', '3704', '37');
INSERT INTO `area` VALUES ('370404', '峄城区', '3704', '37');
INSERT INTO `area` VALUES ('370405', '台儿庄区', '3704', '37');
INSERT INTO `area` VALUES ('370406', '山亭区', '3704', '37');
INSERT INTO `area` VALUES ('370481', '滕州市', '3704', '37');
INSERT INTO `area` VALUES ('370502', '东营区', '3705', '37');
INSERT INTO `area` VALUES ('370503', '河口区', '3705', '37');
INSERT INTO `area` VALUES ('370505', '垦利区', '3705', '37');
INSERT INTO `area` VALUES ('370522', '利津县', '3705', '37');
INSERT INTO `area` VALUES ('370523', '广饶县', '3705', '37');
INSERT INTO `area` VALUES ('370571', '东营经济技术开发区', '3705', '37');
INSERT INTO `area` VALUES ('370572', '东营港经济开发区', '3705', '37');
INSERT INTO `area` VALUES ('370602', '芝罘区', '3706', '37');
INSERT INTO `area` VALUES ('370611', '福山区', '3706', '37');
INSERT INTO `area` VALUES ('370612', '牟平区', '3706', '37');
INSERT INTO `area` VALUES ('370613', '莱山区', '3706', '37');
INSERT INTO `area` VALUES ('370614', '蓬莱区', '3706', '37');
INSERT INTO `area` VALUES ('370671', '烟台高新技术产业开发区', '3706', '37');
INSERT INTO `area` VALUES ('370672', '烟台经济技术开发区', '3706', '37');
INSERT INTO `area` VALUES ('370681', '龙口市', '3706', '37');
INSERT INTO `area` VALUES ('370682', '莱阳市', '3706', '37');
INSERT INTO `area` VALUES ('370683', '莱州市', '3706', '37');
INSERT INTO `area` VALUES ('370685', '招远市', '3706', '37');
INSERT INTO `area` VALUES ('370686', '栖霞市', '3706', '37');
INSERT INTO `area` VALUES ('370687', '海阳市', '3706', '37');
INSERT INTO `area` VALUES ('370702', '潍城区', '3707', '37');
INSERT INTO `area` VALUES ('370703', '寒亭区', '3707', '37');
INSERT INTO `area` VALUES ('370704', '坊子区', '3707', '37');
INSERT INTO `area` VALUES ('370705', '奎文区', '3707', '37');
INSERT INTO `area` VALUES ('370724', '临朐县', '3707', '37');
INSERT INTO `area` VALUES ('370725', '昌乐县', '3707', '37');
INSERT INTO `area` VALUES ('370772', '潍坊滨海经济技术开发区', '3707', '37');
INSERT INTO `area` VALUES ('370781', '青州市', '3707', '37');
INSERT INTO `area` VALUES ('370782', '诸城市', '3707', '37');
INSERT INTO `area` VALUES ('370783', '寿光市', '3707', '37');
INSERT INTO `area` VALUES ('370784', '安丘市', '3707', '37');
INSERT INTO `area` VALUES ('370785', '高密市', '3707', '37');
INSERT INTO `area` VALUES ('370786', '昌邑市', '3707', '37');
INSERT INTO `area` VALUES ('370811', '任城区', '3708', '37');
INSERT INTO `area` VALUES ('370812', '兖州区', '3708', '37');
INSERT INTO `area` VALUES ('370826', '微山县', '3708', '37');
INSERT INTO `area` VALUES ('370827', '鱼台县', '3708', '37');
INSERT INTO `area` VALUES ('370828', '金乡县', '3708', '37');
INSERT INTO `area` VALUES ('370829', '嘉祥县', '3708', '37');
INSERT INTO `area` VALUES ('370830', '汶上县', '3708', '37');
INSERT INTO `area` VALUES ('370831', '泗水县', '3708', '37');
INSERT INTO `area` VALUES ('370832', '梁山县', '3708', '37');
INSERT INTO `area` VALUES ('370871', '济宁高新技术产业开发区', '3708', '37');
INSERT INTO `area` VALUES ('370881', '曲阜市', '3708', '37');
INSERT INTO `area` VALUES ('370883', '邹城市', '3708', '37');
INSERT INTO `area` VALUES ('370902', '泰山区', '3709', '37');
INSERT INTO `area` VALUES ('370911', '岱岳区', '3709', '37');
INSERT INTO `area` VALUES ('370921', '宁阳县', '3709', '37');
INSERT INTO `area` VALUES ('370923', '东平县', '3709', '37');
INSERT INTO `area` VALUES ('370982', '新泰市', '3709', '37');
INSERT INTO `area` VALUES ('370983', '肥城市', '3709', '37');
INSERT INTO `area` VALUES ('371002', '环翠区', '3710', '37');
INSERT INTO `area` VALUES ('371003', '文登区', '3710', '37');
INSERT INTO `area` VALUES ('371071', '威海火炬高技术产业开发区', '3710', '37');
INSERT INTO `area` VALUES ('371072', '威海经济技术开发区', '3710', '37');
INSERT INTO `area` VALUES ('371073', '威海临港经济技术开发区', '3710', '37');
INSERT INTO `area` VALUES ('371082', '荣成市', '3710', '37');
INSERT INTO `area` VALUES ('371083', '乳山市', '3710', '37');
INSERT INTO `area` VALUES ('371102', '东港区', '3711', '37');
INSERT INTO `area` VALUES ('371103', '岚山区', '3711', '37');
INSERT INTO `area` VALUES ('371121', '五莲县', '3711', '37');
INSERT INTO `area` VALUES ('371122', '莒县', '3711', '37');
INSERT INTO `area` VALUES ('371171', '日照经济技术开发区', '3711', '37');
INSERT INTO `area` VALUES ('371302', '兰山区', '3713', '37');
INSERT INTO `area` VALUES ('371311', '罗庄区', '3713', '37');
INSERT INTO `area` VALUES ('371312', '河东区', '3713', '37');
INSERT INTO `area` VALUES ('371321', '沂南县', '3713', '37');
INSERT INTO `area` VALUES ('371322', '郯城县', '3713', '37');
INSERT INTO `area` VALUES ('371323', '沂水县', '3713', '37');
INSERT INTO `area` VALUES ('371324', '兰陵县', '3713', '37');
INSERT INTO `area` VALUES ('371325', '费县', '3713', '37');
INSERT INTO `area` VALUES ('371326', '平邑县', '3713', '37');
INSERT INTO `area` VALUES ('371327', '莒南县', '3713', '37');
INSERT INTO `area` VALUES ('371328', '蒙阴县', '3713', '37');
INSERT INTO `area` VALUES ('371329', '临沭县', '3713', '37');
INSERT INTO `area` VALUES ('371371', '临沂高新技术产业开发区', '3713', '37');
INSERT INTO `area` VALUES ('371402', '德城区', '3714', '37');
INSERT INTO `area` VALUES ('371403', '陵城区', '3714', '37');
INSERT INTO `area` VALUES ('371422', '宁津县', '3714', '37');
INSERT INTO `area` VALUES ('371423', '庆云县', '3714', '37');
INSERT INTO `area` VALUES ('371424', '临邑县', '3714', '37');
INSERT INTO `area` VALUES ('371425', '齐河县', '3714', '37');
INSERT INTO `area` VALUES ('371426', '平原县', '3714', '37');
INSERT INTO `area` VALUES ('371427', '夏津县', '3714', '37');
INSERT INTO `area` VALUES ('371428', '武城县', '3714', '37');
INSERT INTO `area` VALUES ('371471', '德州经济技术开发区', '3714', '37');
INSERT INTO `area` VALUES ('371472', '德州运河经济开发区', '3714', '37');
INSERT INTO `area` VALUES ('371481', '乐陵市', '3714', '37');
INSERT INTO `area` VALUES ('371482', '禹城市', '3714', '37');
INSERT INTO `area` VALUES ('371502', '东昌府区', '3715', '37');
INSERT INTO `area` VALUES ('371503', '茌平区', '3715', '37');
INSERT INTO `area` VALUES ('371521', '阳谷县', '3715', '37');
INSERT INTO `area` VALUES ('371522', '莘县', '3715', '37');
INSERT INTO `area` VALUES ('371524', '东阿县', '3715', '37');
INSERT INTO `area` VALUES ('371525', '冠县', '3715', '37');
INSERT INTO `area` VALUES ('371526', '高唐县', '3715', '37');
INSERT INTO `area` VALUES ('371581', '临清市', '3715', '37');
INSERT INTO `area` VALUES ('371602', '滨城区', '3716', '37');
INSERT INTO `area` VALUES ('371603', '沾化区', '3716', '37');
INSERT INTO `area` VALUES ('371621', '惠民县', '3716', '37');
INSERT INTO `area` VALUES ('371622', '阳信县', '3716', '37');
INSERT INTO `area` VALUES ('371623', '无棣县', '3716', '37');
INSERT INTO `area` VALUES ('371625', '博兴县', '3716', '37');
INSERT INTO `area` VALUES ('371681', '邹平市', '3716', '37');
INSERT INTO `area` VALUES ('371702', '牡丹区', '3717', '37');
INSERT INTO `area` VALUES ('371703', '定陶区', '3717', '37');
INSERT INTO `area` VALUES ('371721', '曹县', '3717', '37');
INSERT INTO `area` VALUES ('371722', '单县', '3717', '37');
INSERT INTO `area` VALUES ('371723', '成武县', '3717', '37');
INSERT INTO `area` VALUES ('371724', '巨野县', '3717', '37');
INSERT INTO `area` VALUES ('371725', '郓城县', '3717', '37');
INSERT INTO `area` VALUES ('371726', '鄄城县', '3717', '37');
INSERT INTO `area` VALUES ('371728', '东明县', '3717', '37');
INSERT INTO `area` VALUES ('371771', '菏泽经济技术开发区', '3717', '37');
INSERT INTO `area` VALUES ('371772', '菏泽高新技术开发区', '3717', '37');
INSERT INTO `area` VALUES ('410102', '中原区', '4101', '41');
INSERT INTO `area` VALUES ('410103', '二七区', '4101', '41');
INSERT INTO `area` VALUES ('410104', '管城回族区', '4101', '41');
INSERT INTO `area` VALUES ('410105', '金水区', '4101', '41');
INSERT INTO `area` VALUES ('410106', '上街区', '4101', '41');
INSERT INTO `area` VALUES ('410108', '惠济区', '4101', '41');
INSERT INTO `area` VALUES ('410122', '中牟县', '4101', '41');
INSERT INTO `area` VALUES ('410171', '郑州经济技术开发区', '4101', '41');
INSERT INTO `area` VALUES ('410172', '郑州高新技术产业开发区', '4101', '41');
INSERT INTO `area` VALUES ('410173', '郑州航空港经济综合实验区', '4101', '41');
INSERT INTO `area` VALUES ('410181', '巩义市', '4101', '41');
INSERT INTO `area` VALUES ('410182', '荥阳市', '4101', '41');
INSERT INTO `area` VALUES ('410183', '新密市', '4101', '41');
INSERT INTO `area` VALUES ('410184', '新郑市', '4101', '41');
INSERT INTO `area` VALUES ('410185', '登封市', '4101', '41');
INSERT INTO `area` VALUES ('410202', '龙亭区', '4102', '41');
INSERT INTO `area` VALUES ('410203', '顺河回族区', '4102', '41');
INSERT INTO `area` VALUES ('410204', '鼓楼区', '4102', '41');
INSERT INTO `area` VALUES ('410205', '禹王台区', '4102', '41');
INSERT INTO `area` VALUES ('410212', '祥符区', '4102', '41');
INSERT INTO `area` VALUES ('410221', '杞县', '4102', '41');
INSERT INTO `area` VALUES ('410222', '通许县', '4102', '41');
INSERT INTO `area` VALUES ('410223', '尉氏县', '4102', '41');
INSERT INTO `area` VALUES ('410225', '兰考县', '4102', '41');
INSERT INTO `area` VALUES ('410302', '老城区', '4103', '41');
INSERT INTO `area` VALUES ('410303', '西工区', '4103', '41');
INSERT INTO `area` VALUES ('410304', '瀍河回族区', '4103', '41');
INSERT INTO `area` VALUES ('410305', '涧西区', '4103', '41');
INSERT INTO `area` VALUES ('410307', '偃师区', '4103', '41');
INSERT INTO `area` VALUES ('410308', '孟津区', '4103', '41');
INSERT INTO `area` VALUES ('410311', '洛龙区', '4103', '41');
INSERT INTO `area` VALUES ('410323', '新安县', '4103', '41');
INSERT INTO `area` VALUES ('410324', '栾川县', '4103', '41');
INSERT INTO `area` VALUES ('410325', '嵩县', '4103', '41');
INSERT INTO `area` VALUES ('410326', '汝阳县', '4103', '41');
INSERT INTO `area` VALUES ('410327', '宜阳县', '4103', '41');
INSERT INTO `area` VALUES ('410328', '洛宁县', '4103', '41');
INSERT INTO `area` VALUES ('410329', '伊川县', '4103', '41');
INSERT INTO `area` VALUES ('410371', '洛阳高新技术产业开发区', '4103', '41');
INSERT INTO `area` VALUES ('410402', '新华区', '4104', '41');
INSERT INTO `area` VALUES ('410403', '卫东区', '4104', '41');
INSERT INTO `area` VALUES ('410404', '石龙区', '4104', '41');
INSERT INTO `area` VALUES ('410411', '湛河区', '4104', '41');
INSERT INTO `area` VALUES ('410421', '宝丰县', '4104', '41');
INSERT INTO `area` VALUES ('410422', '叶县', '4104', '41');
INSERT INTO `area` VALUES ('410423', '鲁山县', '4104', '41');
INSERT INTO `area` VALUES ('410425', '郏县', '4104', '41');
INSERT INTO `area` VALUES ('410471', '平顶山高新技术产业开发区', '4104', '41');
INSERT INTO `area` VALUES ('410472', '平顶山市城乡一体化示范区', '4104', '41');
INSERT INTO `area` VALUES ('410481', '舞钢市', '4104', '41');
INSERT INTO `area` VALUES ('410482', '汝州市', '4104', '41');
INSERT INTO `area` VALUES ('410502', '文峰区', '4105', '41');
INSERT INTO `area` VALUES ('410503', '北关区', '4105', '41');
INSERT INTO `area` VALUES ('410505', '殷都区', '4105', '41');
INSERT INTO `area` VALUES ('410506', '龙安区', '4105', '41');
INSERT INTO `area` VALUES ('410522', '安阳县', '4105', '41');
INSERT INTO `area` VALUES ('410523', '汤阴县', '4105', '41');
INSERT INTO `area` VALUES ('410526', '滑县', '4105', '41');
INSERT INTO `area` VALUES ('410527', '内黄县', '4105', '41');
INSERT INTO `area` VALUES ('410571', '安阳高新技术产业开发区', '4105', '41');
INSERT INTO `area` VALUES ('410581', '林州市', '4105', '41');
INSERT INTO `area` VALUES ('410602', '鹤山区', '4106', '41');
INSERT INTO `area` VALUES ('410603', '山城区', '4106', '41');
INSERT INTO `area` VALUES ('410611', '淇滨区', '4106', '41');
INSERT INTO `area` VALUES ('410621', '浚县', '4106', '41');
INSERT INTO `area` VALUES ('410622', '淇县', '4106', '41');
INSERT INTO `area` VALUES ('410671', '鹤壁经济技术开发区', '4106', '41');
INSERT INTO `area` VALUES ('410702', '红旗区', '4107', '41');
INSERT INTO `area` VALUES ('410703', '卫滨区', '4107', '41');
INSERT INTO `area` VALUES ('410704', '凤泉区', '4107', '41');
INSERT INTO `area` VALUES ('410711', '牧野区', '4107', '41');
INSERT INTO `area` VALUES ('410721', '新乡县', '4107', '41');
INSERT INTO `area` VALUES ('410724', '获嘉县', '4107', '41');
INSERT INTO `area` VALUES ('410725', '原阳县', '4107', '41');
INSERT INTO `area` VALUES ('410726', '延津县', '4107', '41');
INSERT INTO `area` VALUES ('410727', '封丘县', '4107', '41');
INSERT INTO `area` VALUES ('410771', '新乡高新技术产业开发区', '4107', '41');
INSERT INTO `area` VALUES ('410772', '新乡经济技术开发区', '4107', '41');
INSERT INTO `area` VALUES ('410773', '新乡市平原城乡一体化示范区', '4107', '41');
INSERT INTO `area` VALUES ('410781', '卫辉市', '4107', '41');
INSERT INTO `area` VALUES ('410782', '辉县市', '4107', '41');
INSERT INTO `area` VALUES ('410783', '长垣市', '4107', '41');
INSERT INTO `area` VALUES ('410802', '解放区', '4108', '41');
INSERT INTO `area` VALUES ('410803', '中站区', '4108', '41');
INSERT INTO `area` VALUES ('410804', '马村区', '4108', '41');
INSERT INTO `area` VALUES ('410811', '山阳区', '4108', '41');
INSERT INTO `area` VALUES ('410821', '修武县', '4108', '41');
INSERT INTO `area` VALUES ('410822', '博爱县', '4108', '41');
INSERT INTO `area` VALUES ('410823', '武陟县', '4108', '41');
INSERT INTO `area` VALUES ('410825', '温县', '4108', '41');
INSERT INTO `area` VALUES ('410871', '焦作城乡一体化示范区', '4108', '41');
INSERT INTO `area` VALUES ('410882', '沁阳市', '4108', '41');
INSERT INTO `area` VALUES ('410883', '孟州市', '4108', '41');
INSERT INTO `area` VALUES ('410902', '华龙区', '4109', '41');
INSERT INTO `area` VALUES ('410922', '清丰县', '4109', '41');
INSERT INTO `area` VALUES ('410923', '南乐县', '4109', '41');
INSERT INTO `area` VALUES ('410926', '范县', '4109', '41');
INSERT INTO `area` VALUES ('410927', '台前县', '4109', '41');
INSERT INTO `area` VALUES ('410928', '濮阳县', '4109', '41');
INSERT INTO `area` VALUES ('410971', '河南濮阳工业园区', '4109', '41');
INSERT INTO `area` VALUES ('410972', '濮阳经济技术开发区', '4109', '41');
INSERT INTO `area` VALUES ('411002', '魏都区', '4110', '41');
INSERT INTO `area` VALUES ('411003', '建安区', '4110', '41');
INSERT INTO `area` VALUES ('411024', '鄢陵县', '4110', '41');
INSERT INTO `area` VALUES ('411025', '襄城县', '4110', '41');
INSERT INTO `area` VALUES ('411071', '许昌经济技术开发区', '4110', '41');
INSERT INTO `area` VALUES ('411081', '禹州市', '4110', '41');
INSERT INTO `area` VALUES ('411082', '长葛市', '4110', '41');
INSERT INTO `area` VALUES ('411102', '源汇区', '4111', '41');
INSERT INTO `area` VALUES ('411103', '郾城区', '4111', '41');
INSERT INTO `area` VALUES ('411104', '召陵区', '4111', '41');
INSERT INTO `area` VALUES ('411121', '舞阳县', '4111', '41');
INSERT INTO `area` VALUES ('411122', '临颍县', '4111', '41');
INSERT INTO `area` VALUES ('411171', '漯河经济技术开发区', '4111', '41');
INSERT INTO `area` VALUES ('411202', '湖滨区', '4112', '41');
INSERT INTO `area` VALUES ('411203', '陕州区', '4112', '41');
INSERT INTO `area` VALUES ('411221', '渑池县', '4112', '41');
INSERT INTO `area` VALUES ('411224', '卢氏县', '4112', '41');
INSERT INTO `area` VALUES ('411271', '河南三门峡经济开发区', '4112', '41');
INSERT INTO `area` VALUES ('411281', '义马市', '4112', '41');
INSERT INTO `area` VALUES ('411282', '灵宝市', '4112', '41');
INSERT INTO `area` VALUES ('411302', '宛城区', '4113', '41');
INSERT INTO `area` VALUES ('411303', '卧龙区', '4113', '41');
INSERT INTO `area` VALUES ('411321', '南召县', '4113', '41');
INSERT INTO `area` VALUES ('411322', '方城县', '4113', '41');
INSERT INTO `area` VALUES ('411323', '西峡县', '4113', '41');
INSERT INTO `area` VALUES ('411324', '镇平县', '4113', '41');
INSERT INTO `area` VALUES ('411325', '内乡县', '4113', '41');
INSERT INTO `area` VALUES ('411326', '淅川县', '4113', '41');
INSERT INTO `area` VALUES ('411327', '社旗县', '4113', '41');
INSERT INTO `area` VALUES ('411328', '唐河县', '4113', '41');
INSERT INTO `area` VALUES ('411329', '新野县', '4113', '41');
INSERT INTO `area` VALUES ('411330', '桐柏县', '4113', '41');
INSERT INTO `area` VALUES ('411371', '南阳高新技术产业开发区', '4113', '41');
INSERT INTO `area` VALUES ('411372', '南阳市城乡一体化示范区', '4113', '41');
INSERT INTO `area` VALUES ('411381', '邓州市', '4113', '41');
INSERT INTO `area` VALUES ('411402', '梁园区', '4114', '41');
INSERT INTO `area` VALUES ('411403', '睢阳区', '4114', '41');
INSERT INTO `area` VALUES ('411421', '民权县', '4114', '41');
INSERT INTO `area` VALUES ('411422', '睢县', '4114', '41');
INSERT INTO `area` VALUES ('411423', '宁陵县', '4114', '41');
INSERT INTO `area` VALUES ('411424', '柘城县', '4114', '41');
INSERT INTO `area` VALUES ('411425', '虞城县', '4114', '41');
INSERT INTO `area` VALUES ('411426', '夏邑县', '4114', '41');
INSERT INTO `area` VALUES ('411471', '豫东综合物流产业聚集区', '4114', '41');
INSERT INTO `area` VALUES ('411472', '河南商丘经济开发区', '4114', '41');
INSERT INTO `area` VALUES ('411481', '永城市', '4114', '41');
INSERT INTO `area` VALUES ('411502', '浉河区', '4115', '41');
INSERT INTO `area` VALUES ('411503', '平桥区', '4115', '41');
INSERT INTO `area` VALUES ('411521', '罗山县', '4115', '41');
INSERT INTO `area` VALUES ('411522', '光山县', '4115', '41');
INSERT INTO `area` VALUES ('411523', '新县', '4115', '41');
INSERT INTO `area` VALUES ('411524', '商城县', '4115', '41');
INSERT INTO `area` VALUES ('411525', '固始县', '4115', '41');
INSERT INTO `area` VALUES ('411526', '潢川县', '4115', '41');
INSERT INTO `area` VALUES ('411527', '淮滨县', '4115', '41');
INSERT INTO `area` VALUES ('411528', '息县', '4115', '41');
INSERT INTO `area` VALUES ('411571', '信阳高新技术产业开发区', '4115', '41');
INSERT INTO `area` VALUES ('411602', '川汇区', '4116', '41');
INSERT INTO `area` VALUES ('411603', '淮阳区', '4116', '41');
INSERT INTO `area` VALUES ('411621', '扶沟县', '4116', '41');
INSERT INTO `area` VALUES ('411622', '西华县', '4116', '41');
INSERT INTO `area` VALUES ('411623', '商水县', '4116', '41');
INSERT INTO `area` VALUES ('411624', '沈丘县', '4116', '41');
INSERT INTO `area` VALUES ('411625', '郸城县', '4116', '41');
INSERT INTO `area` VALUES ('411627', '太康县', '4116', '41');
INSERT INTO `area` VALUES ('411628', '鹿邑县', '4116', '41');
INSERT INTO `area` VALUES ('411671', '河南周口经济开发区', '4116', '41');
INSERT INTO `area` VALUES ('411681', '项城市', '4116', '41');
INSERT INTO `area` VALUES ('411702', '驿城区', '4117', '41');
INSERT INTO `area` VALUES ('411721', '西平县', '4117', '41');
INSERT INTO `area` VALUES ('411722', '上蔡县', '4117', '41');
INSERT INTO `area` VALUES ('411723', '平舆县', '4117', '41');
INSERT INTO `area` VALUES ('411724', '正阳县', '4117', '41');
INSERT INTO `area` VALUES ('411725', '确山县', '4117', '41');
INSERT INTO `area` VALUES ('411726', '泌阳县', '4117', '41');
INSERT INTO `area` VALUES ('411727', '汝南县', '4117', '41');
INSERT INTO `area` VALUES ('411728', '遂平县', '4117', '41');
INSERT INTO `area` VALUES ('411729', '新蔡县', '4117', '41');
INSERT INTO `area` VALUES ('411771', '河南驻马店经济开发区', '4117', '41');
INSERT INTO `area` VALUES ('419001', '济源市', '4190', '41');
INSERT INTO `area` VALUES ('420102', '江岸区', '4201', '42');
INSERT INTO `area` VALUES ('420103', '江汉区', '4201', '42');
INSERT INTO `area` VALUES ('420104', '硚口区', '4201', '42');
INSERT INTO `area` VALUES ('420105', '汉阳区', '4201', '42');
INSERT INTO `area` VALUES ('420106', '武昌区', '4201', '42');
INSERT INTO `area` VALUES ('420107', '青山区', '4201', '42');
INSERT INTO `area` VALUES ('420111', '洪山区', '4201', '42');
INSERT INTO `area` VALUES ('420112', '东西湖区', '4201', '42');
INSERT INTO `area` VALUES ('420113', '汉南区', '4201', '42');
INSERT INTO `area` VALUES ('420114', '蔡甸区', '4201', '42');
INSERT INTO `area` VALUES ('420115', '江夏区', '4201', '42');
INSERT INTO `area` VALUES ('420116', '黄陂区', '4201', '42');
INSERT INTO `area` VALUES ('420117', '新洲区', '4201', '42');
INSERT INTO `area` VALUES ('420202', '黄石港区', '4202', '42');
INSERT INTO `area` VALUES ('420203', '西塞山区', '4202', '42');
INSERT INTO `area` VALUES ('420204', '下陆区', '4202', '42');
INSERT INTO `area` VALUES ('420205', '铁山区', '4202', '42');
INSERT INTO `area` VALUES ('420222', '阳新县', '4202', '42');
INSERT INTO `area` VALUES ('420281', '大冶市', '4202', '42');
INSERT INTO `area` VALUES ('420302', '茅箭区', '4203', '42');
INSERT INTO `area` VALUES ('420303', '张湾区', '4203', '42');
INSERT INTO `area` VALUES ('420304', '郧阳区', '4203', '42');
INSERT INTO `area` VALUES ('420322', '郧西县', '4203', '42');
INSERT INTO `area` VALUES ('420323', '竹山县', '4203', '42');
INSERT INTO `area` VALUES ('420324', '竹溪县', '4203', '42');
INSERT INTO `area` VALUES ('420325', '房县', '4203', '42');
INSERT INTO `area` VALUES ('420381', '丹江口市', '4203', '42');
INSERT INTO `area` VALUES ('420502', '西陵区', '4205', '42');
INSERT INTO `area` VALUES ('420503', '伍家岗区', '4205', '42');
INSERT INTO `area` VALUES ('420504', '点军区', '4205', '42');
INSERT INTO `area` VALUES ('420505', '猇亭区', '4205', '42');
INSERT INTO `area` VALUES ('420506', '夷陵区', '4205', '42');
INSERT INTO `area` VALUES ('420525', '远安县', '4205', '42');
INSERT INTO `area` VALUES ('420526', '兴山县', '4205', '42');
INSERT INTO `area` VALUES ('420527', '秭归县', '4205', '42');
INSERT INTO `area` VALUES ('420528', '长阳土家族自治县', '4205', '42');
INSERT INTO `area` VALUES ('420529', '五峰土家族自治县', '4205', '42');
INSERT INTO `area` VALUES ('420581', '宜都市', '4205', '42');
INSERT INTO `area` VALUES ('420582', '当阳市', '4205', '42');
INSERT INTO `area` VALUES ('420583', '枝江市', '4205', '42');
INSERT INTO `area` VALUES ('420602', '襄城区', '4206', '42');
INSERT INTO `area` VALUES ('420606', '樊城区', '4206', '42');
INSERT INTO `area` VALUES ('420607', '襄州区', '4206', '42');
INSERT INTO `area` VALUES ('420624', '南漳县', '4206', '42');
INSERT INTO `area` VALUES ('420625', '谷城县', '4206', '42');
INSERT INTO `area` VALUES ('420626', '保康县', '4206', '42');
INSERT INTO `area` VALUES ('420682', '老河口市', '4206', '42');
INSERT INTO `area` VALUES ('420683', '枣阳市', '4206', '42');
INSERT INTO `area` VALUES ('420684', '宜城市', '4206', '42');
INSERT INTO `area` VALUES ('420702', '梁子湖区', '4207', '42');
INSERT INTO `area` VALUES ('420703', '华容区', '4207', '42');
INSERT INTO `area` VALUES ('420704', '鄂城区', '4207', '42');
INSERT INTO `area` VALUES ('420802', '东宝区', '4208', '42');
INSERT INTO `area` VALUES ('420804', '掇刀区', '4208', '42');
INSERT INTO `area` VALUES ('420822', '沙洋县', '4208', '42');
INSERT INTO `area` VALUES ('420881', '钟祥市', '4208', '42');
INSERT INTO `area` VALUES ('420882', '京山市', '4208', '42');
INSERT INTO `area` VALUES ('420902', '孝南区', '4209', '42');
INSERT INTO `area` VALUES ('420921', '孝昌县', '4209', '42');
INSERT INTO `area` VALUES ('420922', '大悟县', '4209', '42');
INSERT INTO `area` VALUES ('420923', '云梦县', '4209', '42');
INSERT INTO `area` VALUES ('420981', '应城市', '4209', '42');
INSERT INTO `area` VALUES ('420982', '安陆市', '4209', '42');
INSERT INTO `area` VALUES ('420984', '汉川市', '4209', '42');
INSERT INTO `area` VALUES ('421002', '沙市区', '4210', '42');
INSERT INTO `area` VALUES ('421003', '荆州区', '4210', '42');
INSERT INTO `area` VALUES ('421022', '公安县', '4210', '42');
INSERT INTO `area` VALUES ('421024', '江陵县', '4210', '42');
INSERT INTO `area` VALUES ('421071', '荆州经济技术开发区', '4210', '42');
INSERT INTO `area` VALUES ('421081', '石首市', '4210', '42');
INSERT INTO `area` VALUES ('421083', '洪湖市', '4210', '42');
INSERT INTO `area` VALUES ('421087', '松滋市', '4210', '42');
INSERT INTO `area` VALUES ('421088', '监利市', '4210', '42');
INSERT INTO `area` VALUES ('421102', '黄州区', '4211', '42');
INSERT INTO `area` VALUES ('421121', '团风县', '4211', '42');
INSERT INTO `area` VALUES ('421122', '红安县', '4211', '42');
INSERT INTO `area` VALUES ('421123', '罗田县', '4211', '42');
INSERT INTO `area` VALUES ('421124', '英山县', '4211', '42');
INSERT INTO `area` VALUES ('421125', '浠水县', '4211', '42');
INSERT INTO `area` VALUES ('421126', '蕲春县', '4211', '42');
INSERT INTO `area` VALUES ('421127', '黄梅县', '4211', '42');
INSERT INTO `area` VALUES ('421171', '龙感湖管理区', '4211', '42');
INSERT INTO `area` VALUES ('421181', '麻城市', '4211', '42');
INSERT INTO `area` VALUES ('421182', '武穴市', '4211', '42');
INSERT INTO `area` VALUES ('421202', '咸安区', '4212', '42');
INSERT INTO `area` VALUES ('421221', '嘉鱼县', '4212', '42');
INSERT INTO `area` VALUES ('421222', '通城县', '4212', '42');
INSERT INTO `area` VALUES ('421223', '崇阳县', '4212', '42');
INSERT INTO `area` VALUES ('421224', '通山县', '4212', '42');
INSERT INTO `area` VALUES ('421281', '赤壁市', '4212', '42');
INSERT INTO `area` VALUES ('421303', '曾都区', '4213', '42');
INSERT INTO `area` VALUES ('421321', '随县', '4213', '42');
INSERT INTO `area` VALUES ('421381', '广水市', '4213', '42');
INSERT INTO `area` VALUES ('422801', '恩施市', '4228', '42');
INSERT INTO `area` VALUES ('422802', '利川市', '4228', '42');
INSERT INTO `area` VALUES ('422822', '建始县', '4228', '42');
INSERT INTO `area` VALUES ('422823', '巴东县', '4228', '42');
INSERT INTO `area` VALUES ('422825', '宣恩县', '4228', '42');
INSERT INTO `area` VALUES ('422826', '咸丰县', '4228', '42');
INSERT INTO `area` VALUES ('422827', '来凤县', '4228', '42');
INSERT INTO `area` VALUES ('422828', '鹤峰县', '4228', '42');
INSERT INTO `area` VALUES ('429004', '仙桃市', '4290', '42');
INSERT INTO `area` VALUES ('429005', '潜江市', '4290', '42');
INSERT INTO `area` VALUES ('429006', '天门市', '4290', '42');
INSERT INTO `area` VALUES ('429021', '神农架林区', '4290', '42');
INSERT INTO `area` VALUES ('430102', '芙蓉区', '4301', '43');
INSERT INTO `area` VALUES ('430103', '天心区', '4301', '43');
INSERT INTO `area` VALUES ('430104', '岳麓区', '4301', '43');
INSERT INTO `area` VALUES ('430105', '开福区', '4301', '43');
INSERT INTO `area` VALUES ('430111', '雨花区', '4301', '43');
INSERT INTO `area` VALUES ('430112', '望城区', '4301', '43');
INSERT INTO `area` VALUES ('430121', '长沙县', '4301', '43');
INSERT INTO `area` VALUES ('430181', '浏阳市', '4301', '43');
INSERT INTO `area` VALUES ('430182', '宁乡市', '4301', '43');
INSERT INTO `area` VALUES ('430202', '荷塘区', '4302', '43');
INSERT INTO `area` VALUES ('430203', '芦淞区', '4302', '43');
INSERT INTO `area` VALUES ('430204', '石峰区', '4302', '43');
INSERT INTO `area` VALUES ('430211', '天元区', '4302', '43');
INSERT INTO `area` VALUES ('430212', '渌口区', '4302', '43');
INSERT INTO `area` VALUES ('430223', '攸县', '4302', '43');
INSERT INTO `area` VALUES ('430224', '茶陵县', '4302', '43');
INSERT INTO `area` VALUES ('430225', '炎陵县', '4302', '43');
INSERT INTO `area` VALUES ('430271', '云龙示范区', '4302', '43');
INSERT INTO `area` VALUES ('430281', '醴陵市', '4302', '43');
INSERT INTO `area` VALUES ('430302', '雨湖区', '4303', '43');
INSERT INTO `area` VALUES ('430304', '岳塘区', '4303', '43');
INSERT INTO `area` VALUES ('430321', '湘潭县', '4303', '43');
INSERT INTO `area` VALUES ('430371', '湖南湘潭高新技术产业园区', '4303', '43');
INSERT INTO `area` VALUES ('430372', '湘潭昭山示范区', '4303', '43');
INSERT INTO `area` VALUES ('430373', '湘潭九华示范区', '4303', '43');
INSERT INTO `area` VALUES ('430381', '湘乡市', '4303', '43');
INSERT INTO `area` VALUES ('430382', '韶山市', '4303', '43');
INSERT INTO `area` VALUES ('430405', '珠晖区', '4304', '43');
INSERT INTO `area` VALUES ('430406', '雁峰区', '4304', '43');
INSERT INTO `area` VALUES ('430407', '石鼓区', '4304', '43');
INSERT INTO `area` VALUES ('430408', '蒸湘区', '4304', '43');
INSERT INTO `area` VALUES ('430412', '南岳区', '4304', '43');
INSERT INTO `area` VALUES ('430421', '衡阳县', '4304', '43');
INSERT INTO `area` VALUES ('430422', '衡南县', '4304', '43');
INSERT INTO `area` VALUES ('430423', '衡山县', '4304', '43');
INSERT INTO `area` VALUES ('430424', '衡东县', '4304', '43');
INSERT INTO `area` VALUES ('430426', '祁东县', '4304', '43');
INSERT INTO `area` VALUES ('430471', '衡阳综合保税区', '4304', '43');
INSERT INTO `area` VALUES ('430472', '湖南衡阳高新技术产业园区', '4304', '43');
INSERT INTO `area` VALUES ('430473', '湖南衡阳松木经济开发区', '4304', '43');
INSERT INTO `area` VALUES ('430481', '耒阳市', '4304', '43');
INSERT INTO `area` VALUES ('430482', '常宁市', '4304', '43');
INSERT INTO `area` VALUES ('430502', '双清区', '4305', '43');
INSERT INTO `area` VALUES ('430503', '大祥区', '4305', '43');
INSERT INTO `area` VALUES ('430511', '北塔区', '4305', '43');
INSERT INTO `area` VALUES ('430522', '新邵县', '4305', '43');
INSERT INTO `area` VALUES ('430523', '邵阳县', '4305', '43');
INSERT INTO `area` VALUES ('430524', '隆回县', '4305', '43');
INSERT INTO `area` VALUES ('430525', '洞口县', '4305', '43');
INSERT INTO `area` VALUES ('430527', '绥宁县', '4305', '43');
INSERT INTO `area` VALUES ('430528', '新宁县', '4305', '43');
INSERT INTO `area` VALUES ('430529', '城步苗族自治县', '4305', '43');
INSERT INTO `area` VALUES ('430581', '武冈市', '4305', '43');
INSERT INTO `area` VALUES ('430582', '邵东市', '4305', '43');
INSERT INTO `area` VALUES ('430602', '岳阳楼区', '4306', '43');
INSERT INTO `area` VALUES ('430603', '云溪区', '4306', '43');
INSERT INTO `area` VALUES ('430611', '君山区', '4306', '43');
INSERT INTO `area` VALUES ('430621', '岳阳县', '4306', '43');
INSERT INTO `area` VALUES ('430623', '华容县', '4306', '43');
INSERT INTO `area` VALUES ('430624', '湘阴县', '4306', '43');
INSERT INTO `area` VALUES ('430626', '平江县', '4306', '43');
INSERT INTO `area` VALUES ('430671', '岳阳市屈原管理区', '4306', '43');
INSERT INTO `area` VALUES ('430681', '汨罗市', '4306', '43');
INSERT INTO `area` VALUES ('430682', '临湘市', '4306', '43');
INSERT INTO `area` VALUES ('430702', '武陵区', '4307', '43');
INSERT INTO `area` VALUES ('430703', '鼎城区', '4307', '43');
INSERT INTO `area` VALUES ('430721', '安乡县', '4307', '43');
INSERT INTO `area` VALUES ('430722', '汉寿县', '4307', '43');
INSERT INTO `area` VALUES ('430723', '澧县', '4307', '43');
INSERT INTO `area` VALUES ('430724', '临澧县', '4307', '43');
INSERT INTO `area` VALUES ('430725', '桃源县', '4307', '43');
INSERT INTO `area` VALUES ('430726', '石门县', '4307', '43');
INSERT INTO `area` VALUES ('430771', '常德市西洞庭管理区', '4307', '43');
INSERT INTO `area` VALUES ('430781', '津市市', '4307', '43');
INSERT INTO `area` VALUES ('430802', '永定区', '4308', '43');
INSERT INTO `area` VALUES ('430811', '武陵源区', '4308', '43');
INSERT INTO `area` VALUES ('430821', '慈利县', '4308', '43');
INSERT INTO `area` VALUES ('430822', '桑植县', '4308', '43');
INSERT INTO `area` VALUES ('430902', '资阳区', '4309', '43');
INSERT INTO `area` VALUES ('430903', '赫山区', '4309', '43');
INSERT INTO `area` VALUES ('430921', '南县', '4309', '43');
INSERT INTO `area` VALUES ('430922', '桃江县', '4309', '43');
INSERT INTO `area` VALUES ('430923', '安化县', '4309', '43');
INSERT INTO `area` VALUES ('430971', '益阳市大通湖管理区', '4309', '43');
INSERT INTO `area` VALUES ('430972', '湖南益阳高新技术产业园区', '4309', '43');
INSERT INTO `area` VALUES ('430981', '沅江市', '4309', '43');
INSERT INTO `area` VALUES ('431002', '北湖区', '4310', '43');
INSERT INTO `area` VALUES ('431003', '苏仙区', '4310', '43');
INSERT INTO `area` VALUES ('431021', '桂阳县', '4310', '43');
INSERT INTO `area` VALUES ('431022', '宜章县', '4310', '43');
INSERT INTO `area` VALUES ('431023', '永兴县', '4310', '43');
INSERT INTO `area` VALUES ('431024', '嘉禾县', '4310', '43');
INSERT INTO `area` VALUES ('431025', '临武县', '4310', '43');
INSERT INTO `area` VALUES ('431026', '汝城县', '4310', '43');
INSERT INTO `area` VALUES ('431027', '桂东县', '4310', '43');
INSERT INTO `area` VALUES ('431028', '安仁县', '4310', '43');
INSERT INTO `area` VALUES ('431081', '资兴市', '4310', '43');
INSERT INTO `area` VALUES ('431102', '零陵区', '4311', '43');
INSERT INTO `area` VALUES ('431103', '冷水滩区', '4311', '43');
INSERT INTO `area` VALUES ('431122', '东安县', '4311', '43');
INSERT INTO `area` VALUES ('431123', '双牌县', '4311', '43');
INSERT INTO `area` VALUES ('431124', '道县', '4311', '43');
INSERT INTO `area` VALUES ('431125', '江永县', '4311', '43');
INSERT INTO `area` VALUES ('431126', '宁远县', '4311', '43');
INSERT INTO `area` VALUES ('431127', '蓝山县', '4311', '43');
INSERT INTO `area` VALUES ('431128', '新田县', '4311', '43');
INSERT INTO `area` VALUES ('431129', '江华瑶族自治县', '4311', '43');
INSERT INTO `area` VALUES ('431171', '永州经济技术开发区', '4311', '43');
INSERT INTO `area` VALUES ('431173', '永州市回龙圩管理区', '4311', '43');
INSERT INTO `area` VALUES ('431181', '祁阳市', '4311', '43');
INSERT INTO `area` VALUES ('431202', '鹤城区', '4312', '43');
INSERT INTO `area` VALUES ('431221', '中方县', '4312', '43');
INSERT INTO `area` VALUES ('431222', '沅陵县', '4312', '43');
INSERT INTO `area` VALUES ('431223', '辰溪县', '4312', '43');
INSERT INTO `area` VALUES ('431224', '溆浦县', '4312', '43');
INSERT INTO `area` VALUES ('431225', '会同县', '4312', '43');
INSERT INTO `area` VALUES ('431226', '麻阳苗族自治县', '4312', '43');
INSERT INTO `area` VALUES ('431227', '新晃侗族自治县', '4312', '43');
INSERT INTO `area` VALUES ('431228', '芷江侗族自治县', '4312', '43');
INSERT INTO `area` VALUES ('431229', '靖州苗族侗族自治县', '4312', '43');
INSERT INTO `area` VALUES ('431230', '通道侗族自治县', '4312', '43');
INSERT INTO `area` VALUES ('431271', '怀化市洪江管理区', '4312', '43');
INSERT INTO `area` VALUES ('431281', '洪江市', '4312', '43');
INSERT INTO `area` VALUES ('431302', '娄星区', '4313', '43');
INSERT INTO `area` VALUES ('431321', '双峰县', '4313', '43');
INSERT INTO `area` VALUES ('431322', '新化县', '4313', '43');
INSERT INTO `area` VALUES ('431381', '冷水江市', '4313', '43');
INSERT INTO `area` VALUES ('431382', '涟源市', '4313', '43');
INSERT INTO `area` VALUES ('433101', '吉首市', '4331', '43');
INSERT INTO `area` VALUES ('433122', '泸溪县', '4331', '43');
INSERT INTO `area` VALUES ('433123', '凤凰县', '4331', '43');
INSERT INTO `area` VALUES ('433124', '花垣县', '4331', '43');
INSERT INTO `area` VALUES ('433125', '保靖县', '4331', '43');
INSERT INTO `area` VALUES ('433126', '古丈县', '4331', '43');
INSERT INTO `area` VALUES ('433127', '永顺县', '4331', '43');
INSERT INTO `area` VALUES ('433130', '龙山县', '4331', '43');
INSERT INTO `area` VALUES ('440103', '荔湾区', '4401', '44');
INSERT INTO `area` VALUES ('440104', '越秀区', '4401', '44');
INSERT INTO `area` VALUES ('440105', '海珠区', '4401', '44');
INSERT INTO `area` VALUES ('440106', '天河区', '4401', '44');
INSERT INTO `area` VALUES ('440111', '白云区', '4401', '44');
INSERT INTO `area` VALUES ('440112', '黄埔区', '4401', '44');
INSERT INTO `area` VALUES ('440113', '番禺区', '4401', '44');
INSERT INTO `area` VALUES ('440114', '花都区', '4401', '44');
INSERT INTO `area` VALUES ('440115', '南沙区', '4401', '44');
INSERT INTO `area` VALUES ('440117', '从化区', '4401', '44');
INSERT INTO `area` VALUES ('440118', '增城区', '4401', '44');
INSERT INTO `area` VALUES ('440203', '武江区', '4402', '44');
INSERT INTO `area` VALUES ('440204', '浈江区', '4402', '44');
INSERT INTO `area` VALUES ('440205', '曲江区', '4402', '44');
INSERT INTO `area` VALUES ('440222', '始兴县', '4402', '44');
INSERT INTO `area` VALUES ('440224', '仁化县', '4402', '44');
INSERT INTO `area` VALUES ('440229', '翁源县', '4402', '44');
INSERT INTO `area` VALUES ('440232', '乳源瑶族自治县', '4402', '44');
INSERT INTO `area` VALUES ('440233', '新丰县', '4402', '44');
INSERT INTO `area` VALUES ('440281', '乐昌市', '4402', '44');
INSERT INTO `area` VALUES ('440282', '南雄市', '4402', '44');
INSERT INTO `area` VALUES ('440303', '罗湖区', '4403', '44');
INSERT INTO `area` VALUES ('440304', '福田区', '4403', '44');
INSERT INTO `area` VALUES ('440305', '南山区', '4403', '44');
INSERT INTO `area` VALUES ('440306', '宝安区', '4403', '44');
INSERT INTO `area` VALUES ('440307', '龙岗区', '4403', '44');
INSERT INTO `area` VALUES ('440308', '盐田区', '4403', '44');
INSERT INTO `area` VALUES ('440309', '龙华区', '4403', '44');
INSERT INTO `area` VALUES ('440310', '坪山区', '4403', '44');
INSERT INTO `area` VALUES ('440311', '光明区', '4403', '44');
INSERT INTO `area` VALUES ('440402', '香洲区', '4404', '44');
INSERT INTO `area` VALUES ('440403', '斗门区', '4404', '44');
INSERT INTO `area` VALUES ('440404', '金湾区', '4404', '44');
INSERT INTO `area` VALUES ('440507', '龙湖区', '4405', '44');
INSERT INTO `area` VALUES ('440511', '金平区', '4405', '44');
INSERT INTO `area` VALUES ('440512', '濠江区', '4405', '44');
INSERT INTO `area` VALUES ('440513', '潮阳区', '4405', '44');
INSERT INTO `area` VALUES ('440514', '潮南区', '4405', '44');
INSERT INTO `area` VALUES ('440515', '澄海区', '4405', '44');
INSERT INTO `area` VALUES ('440523', '南澳县', '4405', '44');
INSERT INTO `area` VALUES ('440604', '禅城区', '4406', '44');
INSERT INTO `area` VALUES ('440605', '南海区', '4406', '44');
INSERT INTO `area` VALUES ('440606', '顺德区', '4406', '44');
INSERT INTO `area` VALUES ('440607', '三水区', '4406', '44');
INSERT INTO `area` VALUES ('440608', '高明区', '4406', '44');
INSERT INTO `area` VALUES ('440703', '蓬江区', '4407', '44');
INSERT INTO `area` VALUES ('440704', '江海区', '4407', '44');
INSERT INTO `area` VALUES ('440705', '新会区', '4407', '44');
INSERT INTO `area` VALUES ('440781', '台山市', '4407', '44');
INSERT INTO `area` VALUES ('440783', '开平市', '4407', '44');
INSERT INTO `area` VALUES ('440784', '鹤山市', '4407', '44');
INSERT INTO `area` VALUES ('440785', '恩平市', '4407', '44');
INSERT INTO `area` VALUES ('440802', '赤坎区', '4408', '44');
INSERT INTO `area` VALUES ('440803', '霞山区', '4408', '44');
INSERT INTO `area` VALUES ('440804', '坡头区', '4408', '44');
INSERT INTO `area` VALUES ('440811', '麻章区', '4408', '44');
INSERT INTO `area` VALUES ('440823', '遂溪县', '4408', '44');
INSERT INTO `area` VALUES ('440825', '徐闻县', '4408', '44');
INSERT INTO `area` VALUES ('440881', '廉江市', '4408', '44');
INSERT INTO `area` VALUES ('440882', '雷州市', '4408', '44');
INSERT INTO `area` VALUES ('440883', '吴川市', '4408', '44');
INSERT INTO `area` VALUES ('440902', '茂南区', '4409', '44');
INSERT INTO `area` VALUES ('440904', '电白区', '4409', '44');
INSERT INTO `area` VALUES ('440981', '高州市', '4409', '44');
INSERT INTO `area` VALUES ('440982', '化州市', '4409', '44');
INSERT INTO `area` VALUES ('440983', '信宜市', '4409', '44');
INSERT INTO `area` VALUES ('441202', '端州区', '4412', '44');
INSERT INTO `area` VALUES ('441203', '鼎湖区', '4412', '44');
INSERT INTO `area` VALUES ('441204', '高要区', '4412', '44');
INSERT INTO `area` VALUES ('441223', '广宁县', '4412', '44');
INSERT INTO `area` VALUES ('441224', '怀集县', '4412', '44');
INSERT INTO `area` VALUES ('441225', '封开县', '4412', '44');
INSERT INTO `area` VALUES ('441226', '德庆县', '4412', '44');
INSERT INTO `area` VALUES ('441284', '四会市', '4412', '44');
INSERT INTO `area` VALUES ('441302', '惠城区', '4413', '44');
INSERT INTO `area` VALUES ('441303', '惠阳区', '4413', '44');
INSERT INTO `area` VALUES ('441322', '博罗县', '4413', '44');
INSERT INTO `area` VALUES ('441323', '惠东县', '4413', '44');
INSERT INTO `area` VALUES ('441324', '龙门县', '4413', '44');
INSERT INTO `area` VALUES ('441402', '梅江区', '4414', '44');
INSERT INTO `area` VALUES ('441403', '梅县区', '4414', '44');
INSERT INTO `area` VALUES ('441422', '大埔县', '4414', '44');
INSERT INTO `area` VALUES ('441423', '丰顺县', '4414', '44');
INSERT INTO `area` VALUES ('441424', '五华县', '4414', '44');
INSERT INTO `area` VALUES ('441426', '平远县', '4414', '44');
INSERT INTO `area` VALUES ('441427', '蕉岭县', '4414', '44');
INSERT INTO `area` VALUES ('441481', '兴宁市', '4414', '44');
INSERT INTO `area` VALUES ('441502', '城区', '4415', '44');
INSERT INTO `area` VALUES ('441521', '海丰县', '4415', '44');
INSERT INTO `area` VALUES ('441523', '陆河县', '4415', '44');
INSERT INTO `area` VALUES ('441581', '陆丰市', '4415', '44');
INSERT INTO `area` VALUES ('441602', '源城区', '4416', '44');
INSERT INTO `area` VALUES ('441621', '紫金县', '4416', '44');
INSERT INTO `area` VALUES ('441622', '龙川县', '4416', '44');
INSERT INTO `area` VALUES ('441623', '连平县', '4416', '44');
INSERT INTO `area` VALUES ('441624', '和平县', '4416', '44');
INSERT INTO `area` VALUES ('441625', '东源县', '4416', '44');
INSERT INTO `area` VALUES ('441702', '江城区', '4417', '44');
INSERT INTO `area` VALUES ('441704', '阳东区', '4417', '44');
INSERT INTO `area` VALUES ('441721', '阳西县', '4417', '44');
INSERT INTO `area` VALUES ('441781', '阳春市', '4417', '44');
INSERT INTO `area` VALUES ('441802', '清城区', '4418', '44');
INSERT INTO `area` VALUES ('441803', '清新区', '4418', '44');
INSERT INTO `area` VALUES ('441821', '佛冈县', '4418', '44');
INSERT INTO `area` VALUES ('441823', '阳山县', '4418', '44');
INSERT INTO `area` VALUES ('441825', '连山壮族瑶族自治县', '4418', '44');
INSERT INTO `area` VALUES ('441826', '连南瑶族自治县', '4418', '44');
INSERT INTO `area` VALUES ('441881', '英德市', '4418', '44');
INSERT INTO `area` VALUES ('441882', '连州市', '4418', '44');
INSERT INTO `area` VALUES ('441900', '东莞市', '4419', '44');
INSERT INTO `area` VALUES ('442000', '中山市', '4420', '44');
INSERT INTO `area` VALUES ('445102', '湘桥区', '4451', '44');
INSERT INTO `area` VALUES ('445103', '潮安区', '4451', '44');
INSERT INTO `area` VALUES ('445122', '饶平县', '4451', '44');
INSERT INTO `area` VALUES ('445202', '榕城区', '4452', '44');
INSERT INTO `area` VALUES ('445203', '揭东区', '4452', '44');
INSERT INTO `area` VALUES ('445222', '揭西县', '4452', '44');
INSERT INTO `area` VALUES ('445224', '惠来县', '4452', '44');
INSERT INTO `area` VALUES ('445281', '普宁市', '4452', '44');
INSERT INTO `area` VALUES ('445302', '云城区', '4453', '44');
INSERT INTO `area` VALUES ('445303', '云安区', '4453', '44');
INSERT INTO `area` VALUES ('445321', '新兴县', '4453', '44');
INSERT INTO `area` VALUES ('445322', '郁南县', '4453', '44');
INSERT INTO `area` VALUES ('445381', '罗定市', '4453', '44');
INSERT INTO `area` VALUES ('450102', '兴宁区', '4501', '45');
INSERT INTO `area` VALUES ('450103', '青秀区', '4501', '45');
INSERT INTO `area` VALUES ('450105', '江南区', '4501', '45');
INSERT INTO `area` VALUES ('450107', '西乡塘区', '4501', '45');
INSERT INTO `area` VALUES ('450108', '良庆区', '4501', '45');
INSERT INTO `area` VALUES ('450109', '邕宁区', '4501', '45');
INSERT INTO `area` VALUES ('450110', '武鸣区', '4501', '45');
INSERT INTO `area` VALUES ('450123', '隆安县', '4501', '45');
INSERT INTO `area` VALUES ('450124', '马山县', '4501', '45');
INSERT INTO `area` VALUES ('450125', '上林县', '4501', '45');
INSERT INTO `area` VALUES ('450126', '宾阳县', '4501', '45');
INSERT INTO `area` VALUES ('450181', '横州市', '4501', '45');
INSERT INTO `area` VALUES ('450202', '城中区', '4502', '45');
INSERT INTO `area` VALUES ('450203', '鱼峰区', '4502', '45');
INSERT INTO `area` VALUES ('450204', '柳南区', '4502', '45');
INSERT INTO `area` VALUES ('450205', '柳北区', '4502', '45');
INSERT INTO `area` VALUES ('450206', '柳江区', '4502', '45');
INSERT INTO `area` VALUES ('450222', '柳城县', '4502', '45');
INSERT INTO `area` VALUES ('450223', '鹿寨县', '4502', '45');
INSERT INTO `area` VALUES ('450224', '融安县', '4502', '45');
INSERT INTO `area` VALUES ('450225', '融水苗族自治县', '4502', '45');
INSERT INTO `area` VALUES ('450226', '三江侗族自治县', '4502', '45');
INSERT INTO `area` VALUES ('450302', '秀峰区', '4503', '45');
INSERT INTO `area` VALUES ('450303', '叠彩区', '4503', '45');
INSERT INTO `area` VALUES ('450304', '象山区', '4503', '45');
INSERT INTO `area` VALUES ('450305', '七星区', '4503', '45');
INSERT INTO `area` VALUES ('450311', '雁山区', '4503', '45');
INSERT INTO `area` VALUES ('450312', '临桂区', '4503', '45');
INSERT INTO `area` VALUES ('450321', '阳朔县', '4503', '45');
INSERT INTO `area` VALUES ('450323', '灵川县', '4503', '45');
INSERT INTO `area` VALUES ('450324', '全州县', '4503', '45');
INSERT INTO `area` VALUES ('450325', '兴安县', '4503', '45');
INSERT INTO `area` VALUES ('450326', '永福县', '4503', '45');
INSERT INTO `area` VALUES ('450327', '灌阳县', '4503', '45');
INSERT INTO `area` VALUES ('450328', '龙胜各族自治县', '4503', '45');
INSERT INTO `area` VALUES ('450329', '资源县', '4503', '45');
INSERT INTO `area` VALUES ('450330', '平乐县', '4503', '45');
INSERT INTO `area` VALUES ('450332', '恭城瑶族自治县', '4503', '45');
INSERT INTO `area` VALUES ('450381', '荔浦市', '4503', '45');
INSERT INTO `area` VALUES ('450403', '万秀区', '4504', '45');
INSERT INTO `area` VALUES ('450405', '长洲区', '4504', '45');
INSERT INTO `area` VALUES ('450406', '龙圩区', '4504', '45');
INSERT INTO `area` VALUES ('450421', '苍梧县', '4504', '45');
INSERT INTO `area` VALUES ('450422', '藤县', '4504', '45');
INSERT INTO `area` VALUES ('450423', '蒙山县', '4504', '45');
INSERT INTO `area` VALUES ('450481', '岑溪市', '4504', '45');
INSERT INTO `area` VALUES ('450502', '海城区', '4505', '45');
INSERT INTO `area` VALUES ('450503', '银海区', '4505', '45');
INSERT INTO `area` VALUES ('450512', '铁山港区', '4505', '45');
INSERT INTO `area` VALUES ('450521', '合浦县', '4505', '45');
INSERT INTO `area` VALUES ('450602', '港口区', '4506', '45');
INSERT INTO `area` VALUES ('450603', '防城区', '4506', '45');
INSERT INTO `area` VALUES ('450621', '上思县', '4506', '45');
INSERT INTO `area` VALUES ('450681', '东兴市', '4506', '45');
INSERT INTO `area` VALUES ('450702', '钦南区', '4507', '45');
INSERT INTO `area` VALUES ('450703', '钦北区', '4507', '45');
INSERT INTO `area` VALUES ('450721', '灵山县', '4507', '45');
INSERT INTO `area` VALUES ('450722', '浦北县', '4507', '45');
INSERT INTO `area` VALUES ('450802', '港北区', '4508', '45');
INSERT INTO `area` VALUES ('450803', '港南区', '4508', '45');
INSERT INTO `area` VALUES ('450804', '覃塘区', '4508', '45');
INSERT INTO `area` VALUES ('450821', '平南县', '4508', '45');
INSERT INTO `area` VALUES ('450881', '桂平市', '4508', '45');
INSERT INTO `area` VALUES ('450902', '玉州区', '4509', '45');
INSERT INTO `area` VALUES ('450903', '福绵区', '4509', '45');
INSERT INTO `area` VALUES ('450921', '容县', '4509', '45');
INSERT INTO `area` VALUES ('450922', '陆川县', '4509', '45');
INSERT INTO `area` VALUES ('450923', '博白县', '4509', '45');
INSERT INTO `area` VALUES ('450924', '兴业县', '4509', '45');
INSERT INTO `area` VALUES ('450981', '北流市', '4509', '45');
INSERT INTO `area` VALUES ('451002', '右江区', '4510', '45');
INSERT INTO `area` VALUES ('451003', '田阳区', '4510', '45');
INSERT INTO `area` VALUES ('451022', '田东县', '4510', '45');
INSERT INTO `area` VALUES ('451024', '德保县', '4510', '45');
INSERT INTO `area` VALUES ('451026', '那坡县', '4510', '45');
INSERT INTO `area` VALUES ('451027', '凌云县', '4510', '45');
INSERT INTO `area` VALUES ('451028', '乐业县', '4510', '45');
INSERT INTO `area` VALUES ('451029', '田林县', '4510', '45');
INSERT INTO `area` VALUES ('451030', '西林县', '4510', '45');
INSERT INTO `area` VALUES ('451031', '隆林各族自治县', '4510', '45');
INSERT INTO `area` VALUES ('451081', '靖西市', '4510', '45');
INSERT INTO `area` VALUES ('451082', '平果市', '4510', '45');
INSERT INTO `area` VALUES ('451102', '八步区', '4511', '45');
INSERT INTO `area` VALUES ('451103', '平桂区', '4511', '45');
INSERT INTO `area` VALUES ('451121', '昭平县', '4511', '45');
INSERT INTO `area` VALUES ('451122', '钟山县', '4511', '45');
INSERT INTO `area` VALUES ('451123', '富川瑶族自治县', '4511', '45');
INSERT INTO `area` VALUES ('451202', '金城江区', '4512', '45');
INSERT INTO `area` VALUES ('451203', '宜州区', '4512', '45');
INSERT INTO `area` VALUES ('451221', '南丹县', '4512', '45');
INSERT INTO `area` VALUES ('451222', '天峨县', '4512', '45');
INSERT INTO `area` VALUES ('451223', '凤山县', '4512', '45');
INSERT INTO `area` VALUES ('451224', '东兰县', '4512', '45');
INSERT INTO `area` VALUES ('451225', '罗城仫佬族自治县', '4512', '45');
INSERT INTO `area` VALUES ('451226', '环江毛南族自治县', '4512', '45');
INSERT INTO `area` VALUES ('451227', '巴马瑶族自治县', '4512', '45');
INSERT INTO `area` VALUES ('451228', '都安瑶族自治县', '4512', '45');
INSERT INTO `area` VALUES ('451229', '大化瑶族自治县', '4512', '45');
INSERT INTO `area` VALUES ('451302', '兴宾区', '4513', '45');
INSERT INTO `area` VALUES ('451321', '忻城县', '4513', '45');
INSERT INTO `area` VALUES ('451322', '象州县', '4513', '45');
INSERT INTO `area` VALUES ('451323', '武宣县', '4513', '45');
INSERT INTO `area` VALUES ('451324', '金秀瑶族自治县', '4513', '45');
INSERT INTO `area` VALUES ('451381', '合山市', '4513', '45');
INSERT INTO `area` VALUES ('451402', '江州区', '4514', '45');
INSERT INTO `area` VALUES ('451421', '扶绥县', '4514', '45');
INSERT INTO `area` VALUES ('451422', '宁明县', '4514', '45');
INSERT INTO `area` VALUES ('451423', '龙州县', '4514', '45');
INSERT INTO `area` VALUES ('451424', '大新县', '4514', '45');
INSERT INTO `area` VALUES ('451425', '天等县', '4514', '45');
INSERT INTO `area` VALUES ('451481', '凭祥市', '4514', '45');
INSERT INTO `area` VALUES ('460105', '秀英区', '4601', '46');
INSERT INTO `area` VALUES ('460106', '龙华区', '4601', '46');
INSERT INTO `area` VALUES ('460107', '琼山区', '4601', '46');
INSERT INTO `area` VALUES ('460108', '美兰区', '4601', '46');
INSERT INTO `area` VALUES ('460202', '海棠区', '4602', '46');
INSERT INTO `area` VALUES ('460203', '吉阳区', '4602', '46');
INSERT INTO `area` VALUES ('460204', '天涯区', '4602', '46');
INSERT INTO `area` VALUES ('460205', '崖州区', '4602', '46');
INSERT INTO `area` VALUES ('460321', '西沙群岛', '4603', '46');
INSERT INTO `area` VALUES ('460322', '南沙群岛', '4603', '46');
INSERT INTO `area` VALUES ('460323', '中沙群岛的岛礁及其海域', '4603', '46');
INSERT INTO `area` VALUES ('460400', '儋州市', '4604', '46');
INSERT INTO `area` VALUES ('469001', '五指山市', '4690', '46');
INSERT INTO `area` VALUES ('469002', '琼海市', '4690', '46');
INSERT INTO `area` VALUES ('469005', '文昌市', '4690', '46');
INSERT INTO `area` VALUES ('469006', '万宁市', '4690', '46');
INSERT INTO `area` VALUES ('469007', '东方市', '4690', '46');
INSERT INTO `area` VALUES ('469021', '定安县', '4690', '46');
INSERT INTO `area` VALUES ('469022', '屯昌县', '4690', '46');
INSERT INTO `area` VALUES ('469023', '澄迈县', '4690', '46');
INSERT INTO `area` VALUES ('469024', '临高县', '4690', '46');
INSERT INTO `area` VALUES ('469025', '白沙黎族自治县', '4690', '46');
INSERT INTO `area` VALUES ('469026', '昌江黎族自治县', '4690', '46');
INSERT INTO `area` VALUES ('469027', '乐东黎族自治县', '4690', '46');
INSERT INTO `area` VALUES ('469028', '陵水黎族自治县', '4690', '46');
INSERT INTO `area` VALUES ('469029', '保亭黎族苗族自治县', '4690', '46');
INSERT INTO `area` VALUES ('469030', '琼中黎族苗族自治县', '4690', '46');
INSERT INTO `area` VALUES ('500101', '万州区', '5001', '50');
INSERT INTO `area` VALUES ('500102', '涪陵区', '5001', '50');
INSERT INTO `area` VALUES ('500103', '渝中区', '5001', '50');
INSERT INTO `area` VALUES ('500104', '大渡口区', '5001', '50');
INSERT INTO `area` VALUES ('500105', '江北区', '5001', '50');
INSERT INTO `area` VALUES ('500106', '沙坪坝区', '5001', '50');
INSERT INTO `area` VALUES ('500107', '九龙坡区', '5001', '50');
INSERT INTO `area` VALUES ('500108', '南岸区', '5001', '50');
INSERT INTO `area` VALUES ('500109', '北碚区', '5001', '50');
INSERT INTO `area` VALUES ('500110', '綦江区', '5001', '50');
INSERT INTO `area` VALUES ('500111', '大足区', '5001', '50');
INSERT INTO `area` VALUES ('500112', '渝北区', '5001', '50');
INSERT INTO `area` VALUES ('500113', '巴南区', '5001', '50');
INSERT INTO `area` VALUES ('500114', '黔江区', '5001', '50');
INSERT INTO `area` VALUES ('500115', '长寿区', '5001', '50');
INSERT INTO `area` VALUES ('500116', '江津区', '5001', '50');
INSERT INTO `area` VALUES ('500117', '合川区', '5001', '50');
INSERT INTO `area` VALUES ('500118', '永川区', '5001', '50');
INSERT INTO `area` VALUES ('500119', '南川区', '5001', '50');
INSERT INTO `area` VALUES ('500120', '璧山区', '5001', '50');
INSERT INTO `area` VALUES ('500151', '铜梁区', '5001', '50');
INSERT INTO `area` VALUES ('500152', '潼南区', '5001', '50');
INSERT INTO `area` VALUES ('500153', '荣昌区', '5001', '50');
INSERT INTO `area` VALUES ('500154', '开州区', '5001', '50');
INSERT INTO `area` VALUES ('500155', '梁平区', '5001', '50');
INSERT INTO `area` VALUES ('500156', '武隆区', '5001', '50');
INSERT INTO `area` VALUES ('500229', '城口县', '5002', '50');
INSERT INTO `area` VALUES ('500230', '丰都县', '5002', '50');
INSERT INTO `area` VALUES ('500231', '垫江县', '5002', '50');
INSERT INTO `area` VALUES ('500233', '忠县', '5002', '50');
INSERT INTO `area` VALUES ('500235', '云阳县', '5002', '50');
INSERT INTO `area` VALUES ('500236', '奉节县', '5002', '50');
INSERT INTO `area` VALUES ('500237', '巫山县', '5002', '50');
INSERT INTO `area` VALUES ('500238', '巫溪县', '5002', '50');
INSERT INTO `area` VALUES ('500240', '石柱土家族自治县', '5002', '50');
INSERT INTO `area` VALUES ('500241', '秀山土家族苗族自治县', '5002', '50');
INSERT INTO `area` VALUES ('500242', '酉阳土家族苗族自治县', '5002', '50');
INSERT INTO `area` VALUES ('500243', '彭水苗族土家族自治县', '5002', '50');
INSERT INTO `area` VALUES ('510104', '锦江区', '5101', '51');
INSERT INTO `area` VALUES ('510105', '青羊区', '5101', '51');
INSERT INTO `area` VALUES ('510106', '金牛区', '5101', '51');
INSERT INTO `area` VALUES ('510107', '武侯区', '5101', '51');
INSERT INTO `area` VALUES ('510108', '成华区', '5101', '51');
INSERT INTO `area` VALUES ('510112', '龙泉驿区', '5101', '51');
INSERT INTO `area` VALUES ('510113', '青白江区', '5101', '51');
INSERT INTO `area` VALUES ('510114', '新都区', '5101', '51');
INSERT INTO `area` VALUES ('510115', '温江区', '5101', '51');
INSERT INTO `area` VALUES ('510116', '双流区', '5101', '51');
INSERT INTO `area` VALUES ('510117', '郫都区', '5101', '51');
INSERT INTO `area` VALUES ('510118', '新津区', '5101', '51');
INSERT INTO `area` VALUES ('510121', '金堂县', '5101', '51');
INSERT INTO `area` VALUES ('510129', '大邑县', '5101', '51');
INSERT INTO `area` VALUES ('510131', '蒲江县', '5101', '51');
INSERT INTO `area` VALUES ('510181', '都江堰市', '5101', '51');
INSERT INTO `area` VALUES ('510182', '彭州市', '5101', '51');
INSERT INTO `area` VALUES ('510183', '邛崃市', '5101', '51');
INSERT INTO `area` VALUES ('510184', '崇州市', '5101', '51');
INSERT INTO `area` VALUES ('510185', '简阳市', '5101', '51');
INSERT INTO `area` VALUES ('510302', '自流井区', '5103', '51');
INSERT INTO `area` VALUES ('510303', '贡井区', '5103', '51');
INSERT INTO `area` VALUES ('510304', '大安区', '5103', '51');
INSERT INTO `area` VALUES ('510311', '沿滩区', '5103', '51');
INSERT INTO `area` VALUES ('510321', '荣县', '5103', '51');
INSERT INTO `area` VALUES ('510322', '富顺县', '5103', '51');
INSERT INTO `area` VALUES ('510402', '东区', '5104', '51');
INSERT INTO `area` VALUES ('510403', '西区', '5104', '51');
INSERT INTO `area` VALUES ('510411', '仁和区', '5104', '51');
INSERT INTO `area` VALUES ('510421', '米易县', '5104', '51');
INSERT INTO `area` VALUES ('510422', '盐边县', '5104', '51');
INSERT INTO `area` VALUES ('510502', '江阳区', '5105', '51');
INSERT INTO `area` VALUES ('510503', '纳溪区', '5105', '51');
INSERT INTO `area` VALUES ('510504', '龙马潭区', '5105', '51');
INSERT INTO `area` VALUES ('510521', '泸县', '5105', '51');
INSERT INTO `area` VALUES ('510522', '合江县', '5105', '51');
INSERT INTO `area` VALUES ('510524', '叙永县', '5105', '51');
INSERT INTO `area` VALUES ('510525', '古蔺县', '5105', '51');
INSERT INTO `area` VALUES ('510603', '旌阳区', '5106', '51');
INSERT INTO `area` VALUES ('510604', '罗江区', '5106', '51');
INSERT INTO `area` VALUES ('510623', '中江县', '5106', '51');
INSERT INTO `area` VALUES ('510681', '广汉市', '5106', '51');
INSERT INTO `area` VALUES ('510682', '什邡市', '5106', '51');
INSERT INTO `area` VALUES ('510683', '绵竹市', '5106', '51');
INSERT INTO `area` VALUES ('510703', '涪城区', '5107', '51');
INSERT INTO `area` VALUES ('510704', '游仙区', '5107', '51');
INSERT INTO `area` VALUES ('510705', '安州区', '5107', '51');
INSERT INTO `area` VALUES ('510722', '三台县', '5107', '51');
INSERT INTO `area` VALUES ('510723', '盐亭县', '5107', '51');
INSERT INTO `area` VALUES ('510725', '梓潼县', '5107', '51');
INSERT INTO `area` VALUES ('510726', '北川羌族自治县', '5107', '51');
INSERT INTO `area` VALUES ('510727', '平武县', '5107', '51');
INSERT INTO `area` VALUES ('510781', '江油市', '5107', '51');
INSERT INTO `area` VALUES ('510802', '利州区', '5108', '51');
INSERT INTO `area` VALUES ('510811', '昭化区', '5108', '51');
INSERT INTO `area` VALUES ('510812', '朝天区', '5108', '51');
INSERT INTO `area` VALUES ('510821', '旺苍县', '5108', '51');
INSERT INTO `area` VALUES ('510822', '青川县', '5108', '51');
INSERT INTO `area` VALUES ('510823', '剑阁县', '5108', '51');
INSERT INTO `area` VALUES ('510824', '苍溪县', '5108', '51');
INSERT INTO `area` VALUES ('510903', '船山区', '5109', '51');
INSERT INTO `area` VALUES ('510904', '安居区', '5109', '51');
INSERT INTO `area` VALUES ('510921', '蓬溪县', '5109', '51');
INSERT INTO `area` VALUES ('510923', '大英县', '5109', '51');
INSERT INTO `area` VALUES ('510981', '射洪市', '5109', '51');
INSERT INTO `area` VALUES ('511002', '市中区', '5110', '51');
INSERT INTO `area` VALUES ('511011', '东兴区', '5110', '51');
INSERT INTO `area` VALUES ('511024', '威远县', '5110', '51');
INSERT INTO `area` VALUES ('511025', '资中县', '5110', '51');
INSERT INTO `area` VALUES ('511071', '内江经济开发区', '5110', '51');
INSERT INTO `area` VALUES ('511083', '隆昌市', '5110', '51');
INSERT INTO `area` VALUES ('511102', '市中区', '5111', '51');
INSERT INTO `area` VALUES ('511111', '沙湾区', '5111', '51');
INSERT INTO `area` VALUES ('511112', '五通桥区', '5111', '51');
INSERT INTO `area` VALUES ('511113', '金口河区', '5111', '51');
INSERT INTO `area` VALUES ('511123', '犍为县', '5111', '51');
INSERT INTO `area` VALUES ('511124', '井研县', '5111', '51');
INSERT INTO `area` VALUES ('511126', '夹江县', '5111', '51');
INSERT INTO `area` VALUES ('511129', '沐川县', '5111', '51');
INSERT INTO `area` VALUES ('511132', '峨边彝族自治县', '5111', '51');
INSERT INTO `area` VALUES ('511133', '马边彝族自治县', '5111', '51');
INSERT INTO `area` VALUES ('511181', '峨眉山市', '5111', '51');
INSERT INTO `area` VALUES ('511302', '顺庆区', '5113', '51');
INSERT INTO `area` VALUES ('511303', '高坪区', '5113', '51');
INSERT INTO `area` VALUES ('511304', '嘉陵区', '5113', '51');
INSERT INTO `area` VALUES ('511321', '南部县', '5113', '51');
INSERT INTO `area` VALUES ('511322', '营山县', '5113', '51');
INSERT INTO `area` VALUES ('511323', '蓬安县', '5113', '51');
INSERT INTO `area` VALUES ('511324', '仪陇县', '5113', '51');
INSERT INTO `area` VALUES ('511325', '西充县', '5113', '51');
INSERT INTO `area` VALUES ('511381', '阆中市', '5113', '51');
INSERT INTO `area` VALUES ('511402', '东坡区', '5114', '51');
INSERT INTO `area` VALUES ('511403', '彭山区', '5114', '51');
INSERT INTO `area` VALUES ('511421', '仁寿县', '5114', '51');
INSERT INTO `area` VALUES ('511423', '洪雅县', '5114', '51');
INSERT INTO `area` VALUES ('511424', '丹棱县', '5114', '51');
INSERT INTO `area` VALUES ('511425', '青神县', '5114', '51');
INSERT INTO `area` VALUES ('511502', '翠屏区', '5115', '51');
INSERT INTO `area` VALUES ('511503', '南溪区', '5115', '51');
INSERT INTO `area` VALUES ('511504', '叙州区', '5115', '51');
INSERT INTO `area` VALUES ('511523', '江安县', '5115', '51');
INSERT INTO `area` VALUES ('511524', '长宁县', '5115', '51');
INSERT INTO `area` VALUES ('511525', '高县', '5115', '51');
INSERT INTO `area` VALUES ('511526', '珙县', '5115', '51');
INSERT INTO `area` VALUES ('511527', '筠连县', '5115', '51');
INSERT INTO `area` VALUES ('511528', '兴文县', '5115', '51');
INSERT INTO `area` VALUES ('511529', '屏山县', '5115', '51');
INSERT INTO `area` VALUES ('511602', '广安区', '5116', '51');
INSERT INTO `area` VALUES ('511603', '前锋区', '5116', '51');
INSERT INTO `area` VALUES ('511621', '岳池县', '5116', '51');
INSERT INTO `area` VALUES ('511622', '武胜县', '5116', '51');
INSERT INTO `area` VALUES ('511623', '邻水县', '5116', '51');
INSERT INTO `area` VALUES ('511681', '华蓥市', '5116', '51');
INSERT INTO `area` VALUES ('511702', '通川区', '5117', '51');
INSERT INTO `area` VALUES ('511703', '达川区', '5117', '51');
INSERT INTO `area` VALUES ('511722', '宣汉县', '5117', '51');
INSERT INTO `area` VALUES ('511723', '开江县', '5117', '51');
INSERT INTO `area` VALUES ('511724', '大竹县', '5117', '51');
INSERT INTO `area` VALUES ('511725', '渠县', '5117', '51');
INSERT INTO `area` VALUES ('511771', '达州经济开发区', '5117', '51');
INSERT INTO `area` VALUES ('511781', '万源市', '5117', '51');
INSERT INTO `area` VALUES ('511802', '雨城区', '5118', '51');
INSERT INTO `area` VALUES ('511803', '名山区', '5118', '51');
INSERT INTO `area` VALUES ('511822', '荥经县', '5118', '51');
INSERT INTO `area` VALUES ('511823', '汉源县', '5118', '51');
INSERT INTO `area` VALUES ('511824', '石棉县', '5118', '51');
INSERT INTO `area` VALUES ('511825', '天全县', '5118', '51');
INSERT INTO `area` VALUES ('511826', '芦山县', '5118', '51');
INSERT INTO `area` VALUES ('511827', '宝兴县', '5118', '51');
INSERT INTO `area` VALUES ('511902', '巴州区', '5119', '51');
INSERT INTO `area` VALUES ('511903', '恩阳区', '5119', '51');
INSERT INTO `area` VALUES ('511921', '通江县', '5119', '51');
INSERT INTO `area` VALUES ('511922', '南江县', '5119', '51');
INSERT INTO `area` VALUES ('511923', '平昌县', '5119', '51');
INSERT INTO `area` VALUES ('511971', '巴中经济开发区', '5119', '51');
INSERT INTO `area` VALUES ('512002', '雁江区', '5120', '51');
INSERT INTO `area` VALUES ('512021', '安岳县', '5120', '51');
INSERT INTO `area` VALUES ('512022', '乐至县', '5120', '51');
INSERT INTO `area` VALUES ('513201', '马尔康市', '5132', '51');
INSERT INTO `area` VALUES ('513221', '汶川县', '5132', '51');
INSERT INTO `area` VALUES ('513222', '理县', '5132', '51');
INSERT INTO `area` VALUES ('513223', '茂县', '5132', '51');
INSERT INTO `area` VALUES ('513224', '松潘县', '5132', '51');
INSERT INTO `area` VALUES ('513225', '九寨沟县', '5132', '51');
INSERT INTO `area` VALUES ('513226', '金川县', '5132', '51');
INSERT INTO `area` VALUES ('513227', '小金县', '5132', '51');
INSERT INTO `area` VALUES ('513228', '黑水县', '5132', '51');
INSERT INTO `area` VALUES ('513230', '壤塘县', '5132', '51');
INSERT INTO `area` VALUES ('513231', '阿坝县', '5132', '51');
INSERT INTO `area` VALUES ('513232', '若尔盖县', '5132', '51');
INSERT INTO `area` VALUES ('513233', '红原县', '5132', '51');
INSERT INTO `area` VALUES ('513301', '康定市', '5133', '51');
INSERT INTO `area` VALUES ('513322', '泸定县', '5133', '51');
INSERT INTO `area` VALUES ('513323', '丹巴县', '5133', '51');
INSERT INTO `area` VALUES ('513324', '九龙县', '5133', '51');
INSERT INTO `area` VALUES ('513325', '雅江县', '5133', '51');
INSERT INTO `area` VALUES ('513326', '道孚县', '5133', '51');
INSERT INTO `area` VALUES ('513327', '炉霍县', '5133', '51');
INSERT INTO `area` VALUES ('513328', '甘孜县', '5133', '51');
INSERT INTO `area` VALUES ('513329', '新龙县', '5133', '51');
INSERT INTO `area` VALUES ('513330', '德格县', '5133', '51');
INSERT INTO `area` VALUES ('513331', '白玉县', '5133', '51');
INSERT INTO `area` VALUES ('513332', '石渠县', '5133', '51');
INSERT INTO `area` VALUES ('513333', '色达县', '5133', '51');
INSERT INTO `area` VALUES ('513334', '理塘县', '5133', '51');
INSERT INTO `area` VALUES ('513335', '巴塘县', '5133', '51');
INSERT INTO `area` VALUES ('513336', '乡城县', '5133', '51');
INSERT INTO `area` VALUES ('513337', '稻城县', '5133', '51');
INSERT INTO `area` VALUES ('513338', '得荣县', '5133', '51');
INSERT INTO `area` VALUES ('513401', '西昌市', '5134', '51');
INSERT INTO `area` VALUES ('513402', '会理市', '5134', '51');
INSERT INTO `area` VALUES ('513422', '木里藏族自治县', '5134', '51');
INSERT INTO `area` VALUES ('513423', '盐源县', '5134', '51');
INSERT INTO `area` VALUES ('513424', '德昌县', '5134', '51');
INSERT INTO `area` VALUES ('513426', '会东县', '5134', '51');
INSERT INTO `area` VALUES ('513427', '宁南县', '5134', '51');
INSERT INTO `area` VALUES ('513428', '普格县', '5134', '51');
INSERT INTO `area` VALUES ('513429', '布拖县', '5134', '51');
INSERT INTO `area` VALUES ('513430', '金阳县', '5134', '51');
INSERT INTO `area` VALUES ('513431', '昭觉县', '5134', '51');
INSERT INTO `area` VALUES ('513432', '喜德县', '5134', '51');
INSERT INTO `area` VALUES ('513433', '冕宁县', '5134', '51');
INSERT INTO `area` VALUES ('513434', '越西县', '5134', '51');
INSERT INTO `area` VALUES ('513435', '甘洛县', '5134', '51');
INSERT INTO `area` VALUES ('513436', '美姑县', '5134', '51');
INSERT INTO `area` VALUES ('513437', '雷波县', '5134', '51');
INSERT INTO `area` VALUES ('520102', '南明区', '5201', '52');
INSERT INTO `area` VALUES ('520103', '云岩区', '5201', '52');
INSERT INTO `area` VALUES ('520111', '花溪区', '5201', '52');
INSERT INTO `area` VALUES ('520112', '乌当区', '5201', '52');
INSERT INTO `area` VALUES ('520113', '白云区', '5201', '52');
INSERT INTO `area` VALUES ('520115', '观山湖区', '5201', '52');
INSERT INTO `area` VALUES ('520121', '开阳县', '5201', '52');
INSERT INTO `area` VALUES ('520122', '息烽县', '5201', '52');
INSERT INTO `area` VALUES ('520123', '修文县', '5201', '52');
INSERT INTO `area` VALUES ('520181', '清镇市', '5201', '52');
INSERT INTO `area` VALUES ('520201', '钟山区', '5202', '52');
INSERT INTO `area` VALUES ('520203', '六枝特区', '5202', '52');
INSERT INTO `area` VALUES ('520204', '水城区', '5202', '52');
INSERT INTO `area` VALUES ('520281', '盘州市', '5202', '52');
INSERT INTO `area` VALUES ('520302', '红花岗区', '5203', '52');
INSERT INTO `area` VALUES ('520303', '汇川区', '5203', '52');
INSERT INTO `area` VALUES ('520304', '播州区', '5203', '52');
INSERT INTO `area` VALUES ('520322', '桐梓县', '5203', '52');
INSERT INTO `area` VALUES ('520323', '绥阳县', '5203', '52');
INSERT INTO `area` VALUES ('520324', '正安县', '5203', '52');
INSERT INTO `area` VALUES ('520325', '道真仡佬族苗族自治县', '5203', '52');
INSERT INTO `area` VALUES ('520326', '务川仡佬族苗族自治县', '5203', '52');
INSERT INTO `area` VALUES ('520327', '凤冈县', '5203', '52');
INSERT INTO `area` VALUES ('520328', '湄潭县', '5203', '52');
INSERT INTO `area` VALUES ('520329', '余庆县', '5203', '52');
INSERT INTO `area` VALUES ('520330', '习水县', '5203', '52');
INSERT INTO `area` VALUES ('520381', '赤水市', '5203', '52');
INSERT INTO `area` VALUES ('520382', '仁怀市', '5203', '52');
INSERT INTO `area` VALUES ('520402', '西秀区', '5204', '52');
INSERT INTO `area` VALUES ('520403', '平坝区', '5204', '52');
INSERT INTO `area` VALUES ('520422', '普定县', '5204', '52');
INSERT INTO `area` VALUES ('520423', '镇宁布依族苗族自治县', '5204', '52');
INSERT INTO `area` VALUES ('520424', '关岭布依族苗族自治县', '5204', '52');
INSERT INTO `area` VALUES ('520425', '紫云苗族布依族自治县', '5204', '52');
INSERT INTO `area` VALUES ('520502', '七星关区', '5205', '52');
INSERT INTO `area` VALUES ('520521', '大方县', '5205', '52');
INSERT INTO `area` VALUES ('520523', '金沙县', '5205', '52');
INSERT INTO `area` VALUES ('520524', '织金县', '5205', '52');
INSERT INTO `area` VALUES ('520525', '纳雍县', '5205', '52');
INSERT INTO `area` VALUES ('520526', '威宁彝族回族苗族自治县', '5205', '52');
INSERT INTO `area` VALUES ('520527', '赫章县', '5205', '52');
INSERT INTO `area` VALUES ('520581', '黔西市', '5205', '52');
INSERT INTO `area` VALUES ('520602', '碧江区', '5206', '52');
INSERT INTO `area` VALUES ('520603', '万山区', '5206', '52');
INSERT INTO `area` VALUES ('520621', '江口县', '5206', '52');
INSERT INTO `area` VALUES ('520622', '玉屏侗族自治县', '5206', '52');
INSERT INTO `area` VALUES ('520623', '石阡县', '5206', '52');
INSERT INTO `area` VALUES ('520624', '思南县', '5206', '52');
INSERT INTO `area` VALUES ('520625', '印江土家族苗族自治县', '5206', '52');
INSERT INTO `area` VALUES ('520626', '德江县', '5206', '52');
INSERT INTO `area` VALUES ('520627', '沿河土家族自治县', '5206', '52');
INSERT INTO `area` VALUES ('520628', '松桃苗族自治县', '5206', '52');
INSERT INTO `area` VALUES ('522301', '兴义市', '5223', '52');
INSERT INTO `area` VALUES ('522302', '兴仁市', '5223', '52');
INSERT INTO `area` VALUES ('522323', '普安县', '5223', '52');
INSERT INTO `area` VALUES ('522324', '晴隆县', '5223', '52');
INSERT INTO `area` VALUES ('522325', '贞丰县', '5223', '52');
INSERT INTO `area` VALUES ('522326', '望谟县', '5223', '52');
INSERT INTO `area` VALUES ('522327', '册亨县', '5223', '52');
INSERT INTO `area` VALUES ('522328', '安龙县', '5223', '52');
INSERT INTO `area` VALUES ('522601', '凯里市', '5226', '52');
INSERT INTO `area` VALUES ('522622', '黄平县', '5226', '52');
INSERT INTO `area` VALUES ('522623', '施秉县', '5226', '52');
INSERT INTO `area` VALUES ('522624', '三穗县', '5226', '52');
INSERT INTO `area` VALUES ('522625', '镇远县', '5226', '52');
INSERT INTO `area` VALUES ('522626', '岑巩县', '5226', '52');
INSERT INTO `area` VALUES ('522627', '天柱县', '5226', '52');
INSERT INTO `area` VALUES ('522628', '锦屏县', '5226', '52');
INSERT INTO `area` VALUES ('522629', '剑河县', '5226', '52');
INSERT INTO `area` VALUES ('522630', '台江县', '5226', '52');
INSERT INTO `area` VALUES ('522631', '黎平县', '5226', '52');
INSERT INTO `area` VALUES ('522632', '榕江县', '5226', '52');
INSERT INTO `area` VALUES ('522633', '从江县', '5226', '52');
INSERT INTO `area` VALUES ('522634', '雷山县', '5226', '52');
INSERT INTO `area` VALUES ('522635', '麻江县', '5226', '52');
INSERT INTO `area` VALUES ('522636', '丹寨县', '5226', '52');
INSERT INTO `area` VALUES ('522701', '都匀市', '5227', '52');
INSERT INTO `area` VALUES ('522702', '福泉市', '5227', '52');
INSERT INTO `area` VALUES ('522722', '荔波县', '5227', '52');
INSERT INTO `area` VALUES ('522723', '贵定县', '5227', '52');
INSERT INTO `area` VALUES ('522725', '瓮安县', '5227', '52');
INSERT INTO `area` VALUES ('522726', '独山县', '5227', '52');
INSERT INTO `area` VALUES ('522727', '平塘县', '5227', '52');
INSERT INTO `area` VALUES ('522728', '罗甸县', '5227', '52');
INSERT INTO `area` VALUES ('522729', '长顺县', '5227', '52');
INSERT INTO `area` VALUES ('522730', '龙里县', '5227', '52');
INSERT INTO `area` VALUES ('522731', '惠水县', '5227', '52');
INSERT INTO `area` VALUES ('522732', '三都水族自治县', '5227', '52');
INSERT INTO `area` VALUES ('530102', '五华区', '5301', '53');
INSERT INTO `area` VALUES ('530103', '盘龙区', '5301', '53');
INSERT INTO `area` VALUES ('530111', '官渡区', '5301', '53');
INSERT INTO `area` VALUES ('530112', '西山区', '5301', '53');
INSERT INTO `area` VALUES ('530113', '东川区', '5301', '53');
INSERT INTO `area` VALUES ('530114', '呈贡区', '5301', '53');
INSERT INTO `area` VALUES ('530115', '晋宁区', '5301', '53');
INSERT INTO `area` VALUES ('530124', '富民县', '5301', '53');
INSERT INTO `area` VALUES ('530125', '宜良县', '5301', '53');
INSERT INTO `area` VALUES ('530126', '石林彝族自治县', '5301', '53');
INSERT INTO `area` VALUES ('530127', '嵩明县', '5301', '53');
INSERT INTO `area` VALUES ('530128', '禄劝彝族苗族自治县', '5301', '53');
INSERT INTO `area` VALUES ('530129', '寻甸回族彝族自治县', '5301', '53');
INSERT INTO `area` VALUES ('530181', '安宁市', '5301', '53');
INSERT INTO `area` VALUES ('530302', '麒麟区', '5303', '53');
INSERT INTO `area` VALUES ('530303', '沾益区', '5303', '53');
INSERT INTO `area` VALUES ('530304', '马龙区', '5303', '53');
INSERT INTO `area` VALUES ('530322', '陆良县', '5303', '53');
INSERT INTO `area` VALUES ('530323', '师宗县', '5303', '53');
INSERT INTO `area` VALUES ('530324', '罗平县', '5303', '53');
INSERT INTO `area` VALUES ('530325', '富源县', '5303', '53');
INSERT INTO `area` VALUES ('530326', '会泽县', '5303', '53');
INSERT INTO `area` VALUES ('530381', '宣威市', '5303', '53');
INSERT INTO `area` VALUES ('530402', '红塔区', '5304', '53');
INSERT INTO `area` VALUES ('530403', '江川区', '5304', '53');
INSERT INTO `area` VALUES ('530423', '通海县', '5304', '53');
INSERT INTO `area` VALUES ('530424', '华宁县', '5304', '53');
INSERT INTO `area` VALUES ('530425', '易门县', '5304', '53');
INSERT INTO `area` VALUES ('530426', '峨山彝族自治县', '5304', '53');
INSERT INTO `area` VALUES ('530427', '新平彝族傣族自治县', '5304', '53');
INSERT INTO `area` VALUES ('530428', '元江哈尼族彝族傣族自治县', '5304', '53');
INSERT INTO `area` VALUES ('530481', '澄江市', '5304', '53');
INSERT INTO `area` VALUES ('530502', '隆阳区', '5305', '53');
INSERT INTO `area` VALUES ('530521', '施甸县', '5305', '53');
INSERT INTO `area` VALUES ('530523', '龙陵县', '5305', '53');
INSERT INTO `area` VALUES ('530524', '昌宁县', '5305', '53');
INSERT INTO `area` VALUES ('530581', '腾冲市', '5305', '53');
INSERT INTO `area` VALUES ('530602', '昭阳区', '5306', '53');
INSERT INTO `area` VALUES ('530621', '鲁甸县', '5306', '53');
INSERT INTO `area` VALUES ('530622', '巧家县', '5306', '53');
INSERT INTO `area` VALUES ('530623', '盐津县', '5306', '53');
INSERT INTO `area` VALUES ('530624', '大关县', '5306', '53');
INSERT INTO `area` VALUES ('530625', '永善县', '5306', '53');
INSERT INTO `area` VALUES ('530626', '绥江县', '5306', '53');
INSERT INTO `area` VALUES ('530627', '镇雄县', '5306', '53');
INSERT INTO `area` VALUES ('530628', '彝良县', '5306', '53');
INSERT INTO `area` VALUES ('530629', '威信县', '5306', '53');
INSERT INTO `area` VALUES ('530681', '水富市', '5306', '53');
INSERT INTO `area` VALUES ('530702', '古城区', '5307', '53');
INSERT INTO `area` VALUES ('530721', '玉龙纳西族自治县', '5307', '53');
INSERT INTO `area` VALUES ('530722', '永胜县', '5307', '53');
INSERT INTO `area` VALUES ('530723', '华坪县', '5307', '53');
INSERT INTO `area` VALUES ('530724', '宁蒗彝族自治县', '5307', '53');
INSERT INTO `area` VALUES ('530802', '思茅区', '5308', '53');
INSERT INTO `area` VALUES ('530821', '宁洱哈尼族彝族自治县', '5308', '53');
INSERT INTO `area` VALUES ('530822', '墨江哈尼族自治县', '5308', '53');
INSERT INTO `area` VALUES ('530823', '景东彝族自治县', '5308', '53');
INSERT INTO `area` VALUES ('530824', '景谷傣族彝族自治县', '5308', '53');
INSERT INTO `area` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '5308', '53');
INSERT INTO `area` VALUES ('530826', '江城哈尼族彝族自治县', '5308', '53');
INSERT INTO `area` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '5308', '53');
INSERT INTO `area` VALUES ('530828', '澜沧拉祜族自治县', '5308', '53');
INSERT INTO `area` VALUES ('530829', '西盟佤族自治县', '5308', '53');
INSERT INTO `area` VALUES ('530902', '临翔区', '5309', '53');
INSERT INTO `area` VALUES ('530921', '凤庆县', '5309', '53');
INSERT INTO `area` VALUES ('530922', '云县', '5309', '53');
INSERT INTO `area` VALUES ('530923', '永德县', '5309', '53');
INSERT INTO `area` VALUES ('530924', '镇康县', '5309', '53');
INSERT INTO `area` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '5309', '53');
INSERT INTO `area` VALUES ('530926', '耿马傣族佤族自治县', '5309', '53');
INSERT INTO `area` VALUES ('530927', '沧源佤族自治县', '5309', '53');
INSERT INTO `area` VALUES ('532301', '楚雄市', '5323', '53');
INSERT INTO `area` VALUES ('532302', '禄丰市', '5323', '53');
INSERT INTO `area` VALUES ('532322', '双柏县', '5323', '53');
INSERT INTO `area` VALUES ('532323', '牟定县', '5323', '53');
INSERT INTO `area` VALUES ('532324', '南华县', '5323', '53');
INSERT INTO `area` VALUES ('532325', '姚安县', '5323', '53');
INSERT INTO `area` VALUES ('532326', '大姚县', '5323', '53');
INSERT INTO `area` VALUES ('532327', '永仁县', '5323', '53');
INSERT INTO `area` VALUES ('532328', '元谋县', '5323', '53');
INSERT INTO `area` VALUES ('532329', '武定县', '5323', '53');
INSERT INTO `area` VALUES ('532501', '个旧市', '5325', '53');
INSERT INTO `area` VALUES ('532502', '开远市', '5325', '53');
INSERT INTO `area` VALUES ('532503', '蒙自市', '5325', '53');
INSERT INTO `area` VALUES ('532504', '弥勒市', '5325', '53');
INSERT INTO `area` VALUES ('532523', '屏边苗族自治县', '5325', '53');
INSERT INTO `area` VALUES ('532524', '建水县', '5325', '53');
INSERT INTO `area` VALUES ('532525', '石屏县', '5325', '53');
INSERT INTO `area` VALUES ('532527', '泸西县', '5325', '53');
INSERT INTO `area` VALUES ('532528', '元阳县', '5325', '53');
INSERT INTO `area` VALUES ('532529', '红河县', '5325', '53');
INSERT INTO `area` VALUES ('532530', '金平苗族瑶族傣族自治县', '5325', '53');
INSERT INTO `area` VALUES ('532531', '绿春县', '5325', '53');
INSERT INTO `area` VALUES ('532532', '河口瑶族自治县', '5325', '53');
INSERT INTO `area` VALUES ('532601', '文山市', '5326', '53');
INSERT INTO `area` VALUES ('532622', '砚山县', '5326', '53');
INSERT INTO `area` VALUES ('532623', '西畴县', '5326', '53');
INSERT INTO `area` VALUES ('532624', '麻栗坡县', '5326', '53');
INSERT INTO `area` VALUES ('532625', '马关县', '5326', '53');
INSERT INTO `area` VALUES ('532626', '丘北县', '5326', '53');
INSERT INTO `area` VALUES ('532627', '广南县', '5326', '53');
INSERT INTO `area` VALUES ('532628', '富宁县', '5326', '53');
INSERT INTO `area` VALUES ('532801', '景洪市', '5328', '53');
INSERT INTO `area` VALUES ('532822', '勐海县', '5328', '53');
INSERT INTO `area` VALUES ('532823', '勐腊县', '5328', '53');
INSERT INTO `area` VALUES ('532901', '大理市', '5329', '53');
INSERT INTO `area` VALUES ('532922', '漾濞彝族自治县', '5329', '53');
INSERT INTO `area` VALUES ('532923', '祥云县', '5329', '53');
INSERT INTO `area` VALUES ('532924', '宾川县', '5329', '53');
INSERT INTO `area` VALUES ('532925', '弥渡县', '5329', '53');
INSERT INTO `area` VALUES ('532926', '南涧彝族自治县', '5329', '53');
INSERT INTO `area` VALUES ('532927', '巍山彝族回族自治县', '5329', '53');
INSERT INTO `area` VALUES ('532928', '永平县', '5329', '53');
INSERT INTO `area` VALUES ('532929', '云龙县', '5329', '53');
INSERT INTO `area` VALUES ('532930', '洱源县', '5329', '53');
INSERT INTO `area` VALUES ('532931', '剑川县', '5329', '53');
INSERT INTO `area` VALUES ('532932', '鹤庆县', '5329', '53');
INSERT INTO `area` VALUES ('533102', '瑞丽市', '5331', '53');
INSERT INTO `area` VALUES ('533103', '芒市', '5331', '53');
INSERT INTO `area` VALUES ('533122', '梁河县', '5331', '53');
INSERT INTO `area` VALUES ('533123', '盈江县', '5331', '53');
INSERT INTO `area` VALUES ('533124', '陇川县', '5331', '53');
INSERT INTO `area` VALUES ('533301', '泸水市', '5333', '53');
INSERT INTO `area` VALUES ('533323', '福贡县', '5333', '53');
INSERT INTO `area` VALUES ('533324', '贡山独龙族怒族自治县', '5333', '53');
INSERT INTO `area` VALUES ('533325', '兰坪白族普米族自治县', '5333', '53');
INSERT INTO `area` VALUES ('533401', '香格里拉市', '5334', '53');
INSERT INTO `area` VALUES ('533422', '德钦县', '5334', '53');
INSERT INTO `area` VALUES ('533423', '维西傈僳族自治县', '5334', '53');
INSERT INTO `area` VALUES ('540102', '城关区', '5401', '54');
INSERT INTO `area` VALUES ('540103', '堆龙德庆区', '5401', '54');
INSERT INTO `area` VALUES ('540104', '达孜区', '5401', '54');
INSERT INTO `area` VALUES ('540121', '林周县', '5401', '54');
INSERT INTO `area` VALUES ('540122', '当雄县', '5401', '54');
INSERT INTO `area` VALUES ('540123', '尼木县', '5401', '54');
INSERT INTO `area` VALUES ('540124', '曲水县', '5401', '54');
INSERT INTO `area` VALUES ('540127', '墨竹工卡县', '5401', '54');
INSERT INTO `area` VALUES ('540171', '格尔木藏青工业园区', '5401', '54');
INSERT INTO `area` VALUES ('540172', '拉萨经济技术开发区', '5401', '54');
INSERT INTO `area` VALUES ('540173', '西藏文化旅游创意园区', '5401', '54');
INSERT INTO `area` VALUES ('540174', '达孜工业园区', '5401', '54');
INSERT INTO `area` VALUES ('540202', '桑珠孜区', '5402', '54');
INSERT INTO `area` VALUES ('540221', '南木林县', '5402', '54');
INSERT INTO `area` VALUES ('540222', '江孜县', '5402', '54');
INSERT INTO `area` VALUES ('540223', '定日县', '5402', '54');
INSERT INTO `area` VALUES ('540224', '萨迦县', '5402', '54');
INSERT INTO `area` VALUES ('540225', '拉孜县', '5402', '54');
INSERT INTO `area` VALUES ('540226', '昂仁县', '5402', '54');
INSERT INTO `area` VALUES ('540227', '谢通门县', '5402', '54');
INSERT INTO `area` VALUES ('540228', '白朗县', '5402', '54');
INSERT INTO `area` VALUES ('540229', '仁布县', '5402', '54');
INSERT INTO `area` VALUES ('540230', '康马县', '5402', '54');
INSERT INTO `area` VALUES ('540231', '定结县', '5402', '54');
INSERT INTO `area` VALUES ('540232', '仲巴县', '5402', '54');
INSERT INTO `area` VALUES ('540233', '亚东县', '5402', '54');
INSERT INTO `area` VALUES ('540234', '吉隆县', '5402', '54');
INSERT INTO `area` VALUES ('540235', '聂拉木县', '5402', '54');
INSERT INTO `area` VALUES ('540236', '萨嘎县', '5402', '54');
INSERT INTO `area` VALUES ('540237', '岗巴县', '5402', '54');
INSERT INTO `area` VALUES ('540302', '卡若区', '5403', '54');
INSERT INTO `area` VALUES ('540321', '江达县', '5403', '54');
INSERT INTO `area` VALUES ('540322', '贡觉县', '5403', '54');
INSERT INTO `area` VALUES ('540323', '类乌齐县', '5403', '54');
INSERT INTO `area` VALUES ('540324', '丁青县', '5403', '54');
INSERT INTO `area` VALUES ('540325', '察雅县', '5403', '54');
INSERT INTO `area` VALUES ('540326', '八宿县', '5403', '54');
INSERT INTO `area` VALUES ('540327', '左贡县', '5403', '54');
INSERT INTO `area` VALUES ('540328', '芒康县', '5403', '54');
INSERT INTO `area` VALUES ('540329', '洛隆县', '5403', '54');
INSERT INTO `area` VALUES ('540330', '边坝县', '5403', '54');
INSERT INTO `area` VALUES ('540402', '巴宜区', '5404', '54');
INSERT INTO `area` VALUES ('540421', '工布江达县', '5404', '54');
INSERT INTO `area` VALUES ('540422', '米林县', '5404', '54');
INSERT INTO `area` VALUES ('540423', '墨脱县', '5404', '54');
INSERT INTO `area` VALUES ('540424', '波密县', '5404', '54');
INSERT INTO `area` VALUES ('540425', '察隅县', '5404', '54');
INSERT INTO `area` VALUES ('540426', '朗县', '5404', '54');
INSERT INTO `area` VALUES ('540502', '乃东区', '5405', '54');
INSERT INTO `area` VALUES ('540521', '扎囊县', '5405', '54');
INSERT INTO `area` VALUES ('540522', '贡嘎县', '5405', '54');
INSERT INTO `area` VALUES ('540523', '桑日县', '5405', '54');
INSERT INTO `area` VALUES ('540524', '琼结县', '5405', '54');
INSERT INTO `area` VALUES ('540525', '曲松县', '5405', '54');
INSERT INTO `area` VALUES ('540526', '措美县', '5405', '54');
INSERT INTO `area` VALUES ('540527', '洛扎县', '5405', '54');
INSERT INTO `area` VALUES ('540528', '加查县', '5405', '54');
INSERT INTO `area` VALUES ('540529', '隆子县', '5405', '54');
INSERT INTO `area` VALUES ('540530', '错那县', '5405', '54');
INSERT INTO `area` VALUES ('540531', '浪卡子县', '5405', '54');
INSERT INTO `area` VALUES ('540602', '色尼区', '5406', '54');
INSERT INTO `area` VALUES ('540621', '嘉黎县', '5406', '54');
INSERT INTO `area` VALUES ('540622', '比如县', '5406', '54');
INSERT INTO `area` VALUES ('540623', '聂荣县', '5406', '54');
INSERT INTO `area` VALUES ('540624', '安多县', '5406', '54');
INSERT INTO `area` VALUES ('540625', '申扎县', '5406', '54');
INSERT INTO `area` VALUES ('540626', '索县', '5406', '54');
INSERT INTO `area` VALUES ('540627', '班戈县', '5406', '54');
INSERT INTO `area` VALUES ('540628', '巴青县', '5406', '54');
INSERT INTO `area` VALUES ('540629', '尼玛县', '5406', '54');
INSERT INTO `area` VALUES ('540630', '双湖县', '5406', '54');
INSERT INTO `area` VALUES ('542521', '普兰县', '5425', '54');
INSERT INTO `area` VALUES ('542522', '札达县', '5425', '54');
INSERT INTO `area` VALUES ('542523', '噶尔县', '5425', '54');
INSERT INTO `area` VALUES ('542524', '日土县', '5425', '54');
INSERT INTO `area` VALUES ('542525', '革吉县', '5425', '54');
INSERT INTO `area` VALUES ('542526', '改则县', '5425', '54');
INSERT INTO `area` VALUES ('542527', '措勤县', '5425', '54');
INSERT INTO `area` VALUES ('610102', '新城区', '6101', '61');
INSERT INTO `area` VALUES ('610103', '碑林区', '6101', '61');
INSERT INTO `area` VALUES ('610104', '莲湖区', '6101', '61');
INSERT INTO `area` VALUES ('610111', '灞桥区', '6101', '61');
INSERT INTO `area` VALUES ('610112', '未央区', '6101', '61');
INSERT INTO `area` VALUES ('610113', '雁塔区', '6101', '61');
INSERT INTO `area` VALUES ('610114', '阎良区', '6101', '61');
INSERT INTO `area` VALUES ('610115', '临潼区', '6101', '61');
INSERT INTO `area` VALUES ('610116', '长安区', '6101', '61');
INSERT INTO `area` VALUES ('610117', '高陵区', '6101', '61');
INSERT INTO `area` VALUES ('610118', '鄠邑区', '6101', '61');
INSERT INTO `area` VALUES ('610122', '蓝田县', '6101', '61');
INSERT INTO `area` VALUES ('610124', '周至县', '6101', '61');
INSERT INTO `area` VALUES ('610202', '王益区', '6102', '61');
INSERT INTO `area` VALUES ('610203', '印台区', '6102', '61');
INSERT INTO `area` VALUES ('610204', '耀州区', '6102', '61');
INSERT INTO `area` VALUES ('610222', '宜君县', '6102', '61');
INSERT INTO `area` VALUES ('610302', '渭滨区', '6103', '61');
INSERT INTO `area` VALUES ('610303', '金台区', '6103', '61');
INSERT INTO `area` VALUES ('610304', '陈仓区', '6103', '61');
INSERT INTO `area` VALUES ('610305', '凤翔区', '6103', '61');
INSERT INTO `area` VALUES ('610323', '岐山县', '6103', '61');
INSERT INTO `area` VALUES ('610324', '扶风县', '6103', '61');
INSERT INTO `area` VALUES ('610326', '眉县', '6103', '61');
INSERT INTO `area` VALUES ('610327', '陇县', '6103', '61');
INSERT INTO `area` VALUES ('610328', '千阳县', '6103', '61');
INSERT INTO `area` VALUES ('610329', '麟游县', '6103', '61');
INSERT INTO `area` VALUES ('610330', '凤县', '6103', '61');
INSERT INTO `area` VALUES ('610331', '太白县', '6103', '61');
INSERT INTO `area` VALUES ('610402', '秦都区', '6104', '61');
INSERT INTO `area` VALUES ('610403', '杨陵区', '6104', '61');
INSERT INTO `area` VALUES ('610404', '渭城区', '6104', '61');
INSERT INTO `area` VALUES ('610422', '三原县', '6104', '61');
INSERT INTO `area` VALUES ('610423', '泾阳县', '6104', '61');
INSERT INTO `area` VALUES ('610424', '乾县', '6104', '61');
INSERT INTO `area` VALUES ('610425', '礼泉县', '6104', '61');
INSERT INTO `area` VALUES ('610426', '永寿县', '6104', '61');
INSERT INTO `area` VALUES ('610428', '长武县', '6104', '61');
INSERT INTO `area` VALUES ('610429', '旬邑县', '6104', '61');
INSERT INTO `area` VALUES ('610430', '淳化县', '6104', '61');
INSERT INTO `area` VALUES ('610431', '武功县', '6104', '61');
INSERT INTO `area` VALUES ('610481', '兴平市', '6104', '61');
INSERT INTO `area` VALUES ('610482', '彬州市', '6104', '61');
INSERT INTO `area` VALUES ('610502', '临渭区', '6105', '61');
INSERT INTO `area` VALUES ('610503', '华州区', '6105', '61');
INSERT INTO `area` VALUES ('610522', '潼关县', '6105', '61');
INSERT INTO `area` VALUES ('610523', '大荔县', '6105', '61');
INSERT INTO `area` VALUES ('610524', '合阳县', '6105', '61');
INSERT INTO `area` VALUES ('610525', '澄城县', '6105', '61');
INSERT INTO `area` VALUES ('610526', '蒲城县', '6105', '61');
INSERT INTO `area` VALUES ('610527', '白水县', '6105', '61');
INSERT INTO `area` VALUES ('610528', '富平县', '6105', '61');
INSERT INTO `area` VALUES ('610581', '韩城市', '6105', '61');
INSERT INTO `area` VALUES ('610582', '华阴市', '6105', '61');
INSERT INTO `area` VALUES ('610602', '宝塔区', '6106', '61');
INSERT INTO `area` VALUES ('610603', '安塞区', '6106', '61');
INSERT INTO `area` VALUES ('610621', '延长县', '6106', '61');
INSERT INTO `area` VALUES ('610622', '延川县', '6106', '61');
INSERT INTO `area` VALUES ('610625', '志丹县', '6106', '61');
INSERT INTO `area` VALUES ('610626', '吴起县', '6106', '61');
INSERT INTO `area` VALUES ('610627', '甘泉县', '6106', '61');
INSERT INTO `area` VALUES ('610628', '富县', '6106', '61');
INSERT INTO `area` VALUES ('610629', '洛川县', '6106', '61');
INSERT INTO `area` VALUES ('610630', '宜川县', '6106', '61');
INSERT INTO `area` VALUES ('610631', '黄龙县', '6106', '61');
INSERT INTO `area` VALUES ('610632', '黄陵县', '6106', '61');
INSERT INTO `area` VALUES ('610681', '子长市', '6106', '61');
INSERT INTO `area` VALUES ('610702', '汉台区', '6107', '61');
INSERT INTO `area` VALUES ('610703', '南郑区', '6107', '61');
INSERT INTO `area` VALUES ('610722', '城固县', '6107', '61');
INSERT INTO `area` VALUES ('610723', '洋县', '6107', '61');
INSERT INTO `area` VALUES ('610724', '西乡县', '6107', '61');
INSERT INTO `area` VALUES ('610725', '勉县', '6107', '61');
INSERT INTO `area` VALUES ('610726', '宁强县', '6107', '61');
INSERT INTO `area` VALUES ('610727', '略阳县', '6107', '61');
INSERT INTO `area` VALUES ('610728', '镇巴县', '6107', '61');
INSERT INTO `area` VALUES ('610729', '留坝县', '6107', '61');
INSERT INTO `area` VALUES ('610730', '佛坪县', '6107', '61');
INSERT INTO `area` VALUES ('610802', '榆阳区', '6108', '61');
INSERT INTO `area` VALUES ('610803', '横山区', '6108', '61');
INSERT INTO `area` VALUES ('610822', '府谷县', '6108', '61');
INSERT INTO `area` VALUES ('610824', '靖边县', '6108', '61');
INSERT INTO `area` VALUES ('610825', '定边县', '6108', '61');
INSERT INTO `area` VALUES ('610826', '绥德县', '6108', '61');
INSERT INTO `area` VALUES ('610827', '米脂县', '6108', '61');
INSERT INTO `area` VALUES ('610828', '佳县', '6108', '61');
INSERT INTO `area` VALUES ('610829', '吴堡县', '6108', '61');
INSERT INTO `area` VALUES ('610830', '清涧县', '6108', '61');
INSERT INTO `area` VALUES ('610831', '子洲县', '6108', '61');
INSERT INTO `area` VALUES ('610881', '神木市', '6108', '61');
INSERT INTO `area` VALUES ('610902', '汉滨区', '6109', '61');
INSERT INTO `area` VALUES ('610921', '汉阴县', '6109', '61');
INSERT INTO `area` VALUES ('610922', '石泉县', '6109', '61');
INSERT INTO `area` VALUES ('610923', '宁陕县', '6109', '61');
INSERT INTO `area` VALUES ('610924', '紫阳县', '6109', '61');
INSERT INTO `area` VALUES ('610925', '岚皋县', '6109', '61');
INSERT INTO `area` VALUES ('610926', '平利县', '6109', '61');
INSERT INTO `area` VALUES ('610927', '镇坪县', '6109', '61');
INSERT INTO `area` VALUES ('610929', '白河县', '6109', '61');
INSERT INTO `area` VALUES ('610981', '旬阳市', '6109', '61');
INSERT INTO `area` VALUES ('611002', '商州区', '6110', '61');
INSERT INTO `area` VALUES ('611021', '洛南县', '6110', '61');
INSERT INTO `area` VALUES ('611022', '丹凤县', '6110', '61');
INSERT INTO `area` VALUES ('611023', '商南县', '6110', '61');
INSERT INTO `area` VALUES ('611024', '山阳县', '6110', '61');
INSERT INTO `area` VALUES ('611025', '镇安县', '6110', '61');
INSERT INTO `area` VALUES ('611026', '柞水县', '6110', '61');
INSERT INTO `area` VALUES ('620102', '城关区', '6201', '62');
INSERT INTO `area` VALUES ('620103', '七里河区', '6201', '62');
INSERT INTO `area` VALUES ('620104', '西固区', '6201', '62');
INSERT INTO `area` VALUES ('620105', '安宁区', '6201', '62');
INSERT INTO `area` VALUES ('620111', '红古区', '6201', '62');
INSERT INTO `area` VALUES ('620121', '永登县', '6201', '62');
INSERT INTO `area` VALUES ('620122', '皋兰县', '6201', '62');
INSERT INTO `area` VALUES ('620123', '榆中县', '6201', '62');
INSERT INTO `area` VALUES ('620171', '兰州新区', '6201', '62');
INSERT INTO `area` VALUES ('620201', '嘉峪关市', '6202', '62');
INSERT INTO `area` VALUES ('620302', '金川区', '6203', '62');
INSERT INTO `area` VALUES ('620321', '永昌县', '6203', '62');
INSERT INTO `area` VALUES ('620402', '白银区', '6204', '62');
INSERT INTO `area` VALUES ('620403', '平川区', '6204', '62');
INSERT INTO `area` VALUES ('620421', '靖远县', '6204', '62');
INSERT INTO `area` VALUES ('620422', '会宁县', '6204', '62');
INSERT INTO `area` VALUES ('620423', '景泰县', '6204', '62');
INSERT INTO `area` VALUES ('620502', '秦州区', '6205', '62');
INSERT INTO `area` VALUES ('620503', '麦积区', '6205', '62');
INSERT INTO `area` VALUES ('620521', '清水县', '6205', '62');
INSERT INTO `area` VALUES ('620522', '秦安县', '6205', '62');
INSERT INTO `area` VALUES ('620523', '甘谷县', '6205', '62');
INSERT INTO `area` VALUES ('620524', '武山县', '6205', '62');
INSERT INTO `area` VALUES ('620525', '张家川回族自治县', '6205', '62');
INSERT INTO `area` VALUES ('620602', '凉州区', '6206', '62');
INSERT INTO `area` VALUES ('620621', '民勤县', '6206', '62');
INSERT INTO `area` VALUES ('620622', '古浪县', '6206', '62');
INSERT INTO `area` VALUES ('620623', '天祝藏族自治县', '6206', '62');
INSERT INTO `area` VALUES ('620702', '甘州区', '6207', '62');
INSERT INTO `area` VALUES ('620721', '肃南裕固族自治县', '6207', '62');
INSERT INTO `area` VALUES ('620722', '民乐县', '6207', '62');
INSERT INTO `area` VALUES ('620723', '临泽县', '6207', '62');
INSERT INTO `area` VALUES ('620724', '高台县', '6207', '62');
INSERT INTO `area` VALUES ('620725', '山丹县', '6207', '62');
INSERT INTO `area` VALUES ('620802', '崆峒区', '6208', '62');
INSERT INTO `area` VALUES ('620821', '泾川县', '6208', '62');
INSERT INTO `area` VALUES ('620822', '灵台县', '6208', '62');
INSERT INTO `area` VALUES ('620823', '崇信县', '6208', '62');
INSERT INTO `area` VALUES ('620825', '庄浪县', '6208', '62');
INSERT INTO `area` VALUES ('620826', '静宁县', '6208', '62');
INSERT INTO `area` VALUES ('620881', '华亭市', '6208', '62');
INSERT INTO `area` VALUES ('620902', '肃州区', '6209', '62');
INSERT INTO `area` VALUES ('620921', '金塔县', '6209', '62');
INSERT INTO `area` VALUES ('620922', '瓜州县', '6209', '62');
INSERT INTO `area` VALUES ('620923', '肃北蒙古族自治县', '6209', '62');
INSERT INTO `area` VALUES ('620924', '阿克塞哈萨克族自治县', '6209', '62');
INSERT INTO `area` VALUES ('620981', '玉门市', '6209', '62');
INSERT INTO `area` VALUES ('620982', '敦煌市', '6209', '62');
INSERT INTO `area` VALUES ('621002', '西峰区', '6210', '62');
INSERT INTO `area` VALUES ('621021', '庆城县', '6210', '62');
INSERT INTO `area` VALUES ('621022', '环县', '6210', '62');
INSERT INTO `area` VALUES ('621023', '华池县', '6210', '62');
INSERT INTO `area` VALUES ('621024', '合水县', '6210', '62');
INSERT INTO `area` VALUES ('621025', '正宁县', '6210', '62');
INSERT INTO `area` VALUES ('621026', '宁县', '6210', '62');
INSERT INTO `area` VALUES ('621027', '镇原县', '6210', '62');
INSERT INTO `area` VALUES ('621102', '安定区', '6211', '62');
INSERT INTO `area` VALUES ('621121', '通渭县', '6211', '62');
INSERT INTO `area` VALUES ('621122', '陇西县', '6211', '62');
INSERT INTO `area` VALUES ('621123', '渭源县', '6211', '62');
INSERT INTO `area` VALUES ('621124', '临洮县', '6211', '62');
INSERT INTO `area` VALUES ('621125', '漳县', '6211', '62');
INSERT INTO `area` VALUES ('621126', '岷县', '6211', '62');
INSERT INTO `area` VALUES ('621202', '武都区', '6212', '62');
INSERT INTO `area` VALUES ('621221', '成县', '6212', '62');
INSERT INTO `area` VALUES ('621222', '文县', '6212', '62');
INSERT INTO `area` VALUES ('621223', '宕昌县', '6212', '62');
INSERT INTO `area` VALUES ('621224', '康县', '6212', '62');
INSERT INTO `area` VALUES ('621225', '西和县', '6212', '62');
INSERT INTO `area` VALUES ('621226', '礼县', '6212', '62');
INSERT INTO `area` VALUES ('621227', '徽县', '6212', '62');
INSERT INTO `area` VALUES ('621228', '两当县', '6212', '62');
INSERT INTO `area` VALUES ('622901', '临夏市', '6229', '62');
INSERT INTO `area` VALUES ('622921', '临夏县', '6229', '62');
INSERT INTO `area` VALUES ('622922', '康乐县', '6229', '62');
INSERT INTO `area` VALUES ('622923', '永靖县', '6229', '62');
INSERT INTO `area` VALUES ('622924', '广河县', '6229', '62');
INSERT INTO `area` VALUES ('622925', '和政县', '6229', '62');
INSERT INTO `area` VALUES ('622926', '东乡族自治县', '6229', '62');
INSERT INTO `area` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '6229', '62');
INSERT INTO `area` VALUES ('623001', '合作市', '6230', '62');
INSERT INTO `area` VALUES ('623021', '临潭县', '6230', '62');
INSERT INTO `area` VALUES ('623022', '卓尼县', '6230', '62');
INSERT INTO `area` VALUES ('623023', '舟曲县', '6230', '62');
INSERT INTO `area` VALUES ('623024', '迭部县', '6230', '62');
INSERT INTO `area` VALUES ('623025', '玛曲县', '6230', '62');
INSERT INTO `area` VALUES ('623026', '碌曲县', '6230', '62');
INSERT INTO `area` VALUES ('623027', '夏河县', '6230', '62');
INSERT INTO `area` VALUES ('630102', '城东区', '6301', '63');
INSERT INTO `area` VALUES ('630103', '城中区', '6301', '63');
INSERT INTO `area` VALUES ('630104', '城西区', '6301', '63');
INSERT INTO `area` VALUES ('630105', '城北区', '6301', '63');
INSERT INTO `area` VALUES ('630106', '湟中区', '6301', '63');
INSERT INTO `area` VALUES ('630121', '大通回族土族自治县', '6301', '63');
INSERT INTO `area` VALUES ('630123', '湟源县', '6301', '63');
INSERT INTO `area` VALUES ('630202', '乐都区', '6302', '63');
INSERT INTO `area` VALUES ('630203', '平安区', '6302', '63');
INSERT INTO `area` VALUES ('630222', '民和回族土族自治县', '6302', '63');
INSERT INTO `area` VALUES ('630223', '互助土族自治县', '6302', '63');
INSERT INTO `area` VALUES ('630224', '化隆回族自治县', '6302', '63');
INSERT INTO `area` VALUES ('630225', '循化撒拉族自治县', '6302', '63');
INSERT INTO `area` VALUES ('632221', '门源回族自治县', '6322', '63');
INSERT INTO `area` VALUES ('632222', '祁连县', '6322', '63');
INSERT INTO `area` VALUES ('632223', '海晏县', '6322', '63');
INSERT INTO `area` VALUES ('632224', '刚察县', '6322', '63');
INSERT INTO `area` VALUES ('632301', '同仁市', '6323', '63');
INSERT INTO `area` VALUES ('632322', '尖扎县', '6323', '63');
INSERT INTO `area` VALUES ('632323', '泽库县', '6323', '63');
INSERT INTO `area` VALUES ('632324', '河南蒙古族自治县', '6323', '63');
INSERT INTO `area` VALUES ('632521', '共和县', '6325', '63');
INSERT INTO `area` VALUES ('632522', '同德县', '6325', '63');
INSERT INTO `area` VALUES ('632523', '贵德县', '6325', '63');
INSERT INTO `area` VALUES ('632524', '兴海县', '6325', '63');
INSERT INTO `area` VALUES ('632525', '贵南县', '6325', '63');
INSERT INTO `area` VALUES ('632621', '玛沁县', '6326', '63');
INSERT INTO `area` VALUES ('632622', '班玛县', '6326', '63');
INSERT INTO `area` VALUES ('632623', '甘德县', '6326', '63');
INSERT INTO `area` VALUES ('632624', '达日县', '6326', '63');
INSERT INTO `area` VALUES ('632625', '久治县', '6326', '63');
INSERT INTO `area` VALUES ('632626', '玛多县', '6326', '63');
INSERT INTO `area` VALUES ('632701', '玉树市', '6327', '63');
INSERT INTO `area` VALUES ('632722', '杂多县', '6327', '63');
INSERT INTO `area` VALUES ('632723', '称多县', '6327', '63');
INSERT INTO `area` VALUES ('632724', '治多县', '6327', '63');
INSERT INTO `area` VALUES ('632725', '囊谦县', '6327', '63');
INSERT INTO `area` VALUES ('632726', '曲麻莱县', '6327', '63');
INSERT INTO `area` VALUES ('632801', '格尔木市', '6328', '63');
INSERT INTO `area` VALUES ('632802', '德令哈市', '6328', '63');
INSERT INTO `area` VALUES ('632803', '茫崖市', '6328', '63');
INSERT INTO `area` VALUES ('632821', '乌兰县', '6328', '63');
INSERT INTO `area` VALUES ('632822', '都兰县', '6328', '63');
INSERT INTO `area` VALUES ('632823', '天峻县', '6328', '63');
INSERT INTO `area` VALUES ('632857', '大柴旦行政委员会', '6328', '63');
INSERT INTO `area` VALUES ('640104', '兴庆区', '6401', '64');
INSERT INTO `area` VALUES ('640105', '西夏区', '6401', '64');
INSERT INTO `area` VALUES ('640106', '金凤区', '6401', '64');
INSERT INTO `area` VALUES ('640121', '永宁县', '6401', '64');
INSERT INTO `area` VALUES ('640122', '贺兰县', '6401', '64');
INSERT INTO `area` VALUES ('640181', '灵武市', '6401', '64');
INSERT INTO `area` VALUES ('640202', '大武口区', '6402', '64');
INSERT INTO `area` VALUES ('640205', '惠农区', '6402', '64');
INSERT INTO `area` VALUES ('640221', '平罗县', '6402', '64');
INSERT INTO `area` VALUES ('640302', '利通区', '6403', '64');
INSERT INTO `area` VALUES ('640303', '红寺堡区', '6403', '64');
INSERT INTO `area` VALUES ('640323', '盐池县', '6403', '64');
INSERT INTO `area` VALUES ('640324', '同心县', '6403', '64');
INSERT INTO `area` VALUES ('640381', '青铜峡市', '6403', '64');
INSERT INTO `area` VALUES ('640402', '原州区', '6404', '64');
INSERT INTO `area` VALUES ('640422', '西吉县', '6404', '64');
INSERT INTO `area` VALUES ('640423', '隆德县', '6404', '64');
INSERT INTO `area` VALUES ('640424', '泾源县', '6404', '64');
INSERT INTO `area` VALUES ('640425', '彭阳县', '6404', '64');
INSERT INTO `area` VALUES ('640502', '沙坡头区', '6405', '64');
INSERT INTO `area` VALUES ('640521', '中宁县', '6405', '64');
INSERT INTO `area` VALUES ('640522', '海原县', '6405', '64');
INSERT INTO `area` VALUES ('650102', '天山区', '6501', '65');
INSERT INTO `area` VALUES ('650103', '沙依巴克区', '6501', '65');
INSERT INTO `area` VALUES ('650104', '新市区', '6501', '65');
INSERT INTO `area` VALUES ('650105', '水磨沟区', '6501', '65');
INSERT INTO `area` VALUES ('650106', '头屯河区', '6501', '65');
INSERT INTO `area` VALUES ('650107', '达坂城区', '6501', '65');
INSERT INTO `area` VALUES ('650109', '米东区', '6501', '65');
INSERT INTO `area` VALUES ('650121', '乌鲁木齐县', '6501', '65');
INSERT INTO `area` VALUES ('650202', '独山子区', '6502', '65');
INSERT INTO `area` VALUES ('650203', '克拉玛依区', '6502', '65');
INSERT INTO `area` VALUES ('650204', '白碱滩区', '6502', '65');
INSERT INTO `area` VALUES ('650205', '乌尔禾区', '6502', '65');
INSERT INTO `area` VALUES ('650402', '高昌区', '6504', '65');
INSERT INTO `area` VALUES ('650421', '鄯善县', '6504', '65');
INSERT INTO `area` VALUES ('650422', '托克逊县', '6504', '65');
INSERT INTO `area` VALUES ('650502', '伊州区', '6505', '65');
INSERT INTO `area` VALUES ('650521', '巴里坤哈萨克自治县', '6505', '65');
INSERT INTO `area` VALUES ('650522', '伊吾县', '6505', '65');
INSERT INTO `area` VALUES ('652301', '昌吉市', '6523', '65');
INSERT INTO `area` VALUES ('652302', '阜康市', '6523', '65');
INSERT INTO `area` VALUES ('652323', '呼图壁县', '6523', '65');
INSERT INTO `area` VALUES ('652324', '玛纳斯县', '6523', '65');
INSERT INTO `area` VALUES ('652325', '奇台县', '6523', '65');
INSERT INTO `area` VALUES ('652327', '吉木萨尔县', '6523', '65');
INSERT INTO `area` VALUES ('652328', '木垒哈萨克自治县', '6523', '65');
INSERT INTO `area` VALUES ('652701', '博乐市', '6527', '65');
INSERT INTO `area` VALUES ('652702', '阿拉山口市', '6527', '65');
INSERT INTO `area` VALUES ('652722', '精河县', '6527', '65');
INSERT INTO `area` VALUES ('652723', '温泉县', '6527', '65');
INSERT INTO `area` VALUES ('652801', '库尔勒市', '6528', '65');
INSERT INTO `area` VALUES ('652822', '轮台县', '6528', '65');
INSERT INTO `area` VALUES ('652823', '尉犁县', '6528', '65');
INSERT INTO `area` VALUES ('652824', '若羌县', '6528', '65');
INSERT INTO `area` VALUES ('652825', '且末县', '6528', '65');
INSERT INTO `area` VALUES ('652826', '焉耆回族自治县', '6528', '65');
INSERT INTO `area` VALUES ('652827', '和静县', '6528', '65');
INSERT INTO `area` VALUES ('652828', '和硕县', '6528', '65');
INSERT INTO `area` VALUES ('652829', '博湖县', '6528', '65');
INSERT INTO `area` VALUES ('652871', '库尔勒经济技术开发区', '6528', '65');
INSERT INTO `area` VALUES ('652901', '阿克苏市', '6529', '65');
INSERT INTO `area` VALUES ('652902', '库车市', '6529', '65');
INSERT INTO `area` VALUES ('652922', '温宿县', '6529', '65');
INSERT INTO `area` VALUES ('652924', '沙雅县', '6529', '65');
INSERT INTO `area` VALUES ('652925', '新和县', '6529', '65');
INSERT INTO `area` VALUES ('652926', '拜城县', '6529', '65');
INSERT INTO `area` VALUES ('652927', '乌什县', '6529', '65');
INSERT INTO `area` VALUES ('652928', '阿瓦提县', '6529', '65');
INSERT INTO `area` VALUES ('652929', '柯坪县', '6529', '65');
INSERT INTO `area` VALUES ('653001', '阿图什市', '6530', '65');
INSERT INTO `area` VALUES ('653022', '阿克陶县', '6530', '65');
INSERT INTO `area` VALUES ('653023', '阿合奇县', '6530', '65');
INSERT INTO `area` VALUES ('653024', '乌恰县', '6530', '65');
INSERT INTO `area` VALUES ('653101', '喀什市', '6531', '65');
INSERT INTO `area` VALUES ('653121', '疏附县', '6531', '65');
INSERT INTO `area` VALUES ('653122', '疏勒县', '6531', '65');
INSERT INTO `area` VALUES ('653123', '英吉沙县', '6531', '65');
INSERT INTO `area` VALUES ('653124', '泽普县', '6531', '65');
INSERT INTO `area` VALUES ('653125', '莎车县', '6531', '65');
INSERT INTO `area` VALUES ('653126', '叶城县', '6531', '65');
INSERT INTO `area` VALUES ('653127', '麦盖提县', '6531', '65');
INSERT INTO `area` VALUES ('653128', '岳普湖县', '6531', '65');
INSERT INTO `area` VALUES ('653129', '伽师县', '6531', '65');
INSERT INTO `area` VALUES ('653130', '巴楚县', '6531', '65');
INSERT INTO `area` VALUES ('653131', '塔什库尔干塔吉克自治县', '6531', '65');
INSERT INTO `area` VALUES ('653201', '和田市', '6532', '65');
INSERT INTO `area` VALUES ('653221', '和田县', '6532', '65');
INSERT INTO `area` VALUES ('653222', '墨玉县', '6532', '65');
INSERT INTO `area` VALUES ('653223', '皮山县', '6532', '65');
INSERT INTO `area` VALUES ('653224', '洛浦县', '6532', '65');
INSERT INTO `area` VALUES ('653225', '策勒县', '6532', '65');
INSERT INTO `area` VALUES ('653226', '于田县', '6532', '65');
INSERT INTO `area` VALUES ('653227', '民丰县', '6532', '65');
INSERT INTO `area` VALUES ('654002', '伊宁市', '6540', '65');
INSERT INTO `area` VALUES ('654003', '奎屯市', '6540', '65');
INSERT INTO `area` VALUES ('654004', '霍尔果斯市', '6540', '65');
INSERT INTO `area` VALUES ('654021', '伊宁县', '6540', '65');
INSERT INTO `area` VALUES ('654022', '察布查尔锡伯自治县', '6540', '65');
INSERT INTO `area` VALUES ('654023', '霍城县', '6540', '65');
INSERT INTO `area` VALUES ('654024', '巩留县', '6540', '65');
INSERT INTO `area` VALUES ('654025', '新源县', '6540', '65');
INSERT INTO `area` VALUES ('654026', '昭苏县', '6540', '65');
INSERT INTO `area` VALUES ('654027', '特克斯县', '6540', '65');
INSERT INTO `area` VALUES ('654028', '尼勒克县', '6540', '65');
INSERT INTO `area` VALUES ('654201', '塔城市', '6542', '65');
INSERT INTO `area` VALUES ('654202', '乌苏市', '6542', '65');
INSERT INTO `area` VALUES ('654203', '沙湾市', '6542', '65');
INSERT INTO `area` VALUES ('654221', '额敏县', '6542', '65');
INSERT INTO `area` VALUES ('654224', '托里县', '6542', '65');
INSERT INTO `area` VALUES ('654225', '裕民县', '6542', '65');
INSERT INTO `area` VALUES ('654226', '和布克赛尔蒙古自治县', '6542', '65');
INSERT INTO `area` VALUES ('654301', '阿勒泰市', '6543', '65');
INSERT INTO `area` VALUES ('654321', '布尔津县', '6543', '65');
INSERT INTO `area` VALUES ('654322', '富蕴县', '6543', '65');
INSERT INTO `area` VALUES ('654323', '福海县', '6543', '65');
INSERT INTO `area` VALUES ('654324', '哈巴河县', '6543', '65');
INSERT INTO `area` VALUES ('654325', '青河县', '6543', '65');
INSERT INTO `area` VALUES ('654326', '吉木乃县', '6543', '65');
INSERT INTO `area` VALUES ('659001', '石河子市', '6590', '65');
INSERT INTO `area` VALUES ('659002', '阿拉尔市', '6590', '65');
INSERT INTO `area` VALUES ('659003', '图木舒克市', '6590', '65');
INSERT INTO `area` VALUES ('659004', '五家渠市', '6590', '65');
INSERT INTO `area` VALUES ('659005', '北屯市', '6590', '65');
INSERT INTO `area` VALUES ('659006', '铁门关市', '6590', '65');
INSERT INTO `area` VALUES ('659007', '双河市', '6590', '65');
INSERT INTO `area` VALUES ('659008', '可克达拉市', '6590', '65');
INSERT INTO `area` VALUES ('659009', '昆玉市', '6590', '65');
INSERT INTO `area` VALUES ('659010', '胡杨河市', '6590', '65');
INSERT INTO `area` VALUES ('659011', '新星市', '6590', '65');
COMMIT;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` bigint DEFAULT NULL,
  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `content` longtext,
  `img_key` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` VALUES (1, NULL, NULL, NULL, '<p>第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容</p>', '2022-2-20-10-53-55-1645325635746-banner1.jpeg', '第一banner标题');
INSERT INTO `banner` VALUES (2, NULL, NULL, NULL, '<p>第二banner标题内容</p>', '2022-2-20-10-54-22-1645325662677-banner2.jpeg', '第二banner标题');
COMMIT;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `province_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of city
-- ----------------------------
BEGIN;
INSERT INTO `city` VALUES ('1101', '市辖区', '11', 'beijing');
INSERT INTO `city` VALUES ('1201', '市辖区', '12', 'tianjin');
INSERT INTO `city` VALUES ('1301', '石家庄市', '13', 'shijiazhuang');
INSERT INTO `city` VALUES ('1302', '唐山市', '13', 'tangshan');
INSERT INTO `city` VALUES ('1303', '秦皇岛市', '13', 'qinhuangdao');
INSERT INTO `city` VALUES ('1304', '邯郸市', '13', 'handan');
INSERT INTO `city` VALUES ('1305', '邢台市', '13', 'xingtai');
INSERT INTO `city` VALUES ('1306', '保定市', '13', 'baoding');
INSERT INTO `city` VALUES ('1307', '张家口市', '13', 'zhangjiakou');
INSERT INTO `city` VALUES ('1308', '承德市', '13', 'chengde');
INSERT INTO `city` VALUES ('1309', '沧州市', '13', 'cangzhou');
INSERT INTO `city` VALUES ('1310', '廊坊市', '13', 'langfang');
INSERT INTO `city` VALUES ('1311', '衡水市', '13', 'hengshui');
INSERT INTO `city` VALUES ('1401', '太原市', '14', 'taiyuan');
INSERT INTO `city` VALUES ('1402', '大同市', '14', 'datong');
INSERT INTO `city` VALUES ('1403', '阳泉市', '14', 'yangquan');
INSERT INTO `city` VALUES ('1404', '长治市', '14', 'changzhi');
INSERT INTO `city` VALUES ('1405', '晋城市', '14', 'jincheng');
INSERT INTO `city` VALUES ('1406', '朔州市', '14', 'shuozhou');
INSERT INTO `city` VALUES ('1407', '晋中市', '14', 'jinzhong');
INSERT INTO `city` VALUES ('1408', '运城市', '14', 'yuncheng');
INSERT INTO `city` VALUES ('1409', '忻州市', '14', 'xinzhou');
INSERT INTO `city` VALUES ('1410', '临汾市', '14', 'linfen');
INSERT INTO `city` VALUES ('1411', '吕梁市', '14', 'lvliang');
INSERT INTO `city` VALUES ('1501', '呼和浩特市', '15', 'huhehaote');
INSERT INTO `city` VALUES ('1502', '包头市', '15', 'baotou');
INSERT INTO `city` VALUES ('1503', '乌海市', '15', 'wuhai');
INSERT INTO `city` VALUES ('1504', '赤峰市', '15', 'chifeng');
INSERT INTO `city` VALUES ('1505', '通辽市', '15', 'tongliao');
INSERT INTO `city` VALUES ('1506', '鄂尔多斯市', '15', 'eerduosi');
INSERT INTO `city` VALUES ('1507', '呼伦贝尔市', '15', 'hulunbeier');
INSERT INTO `city` VALUES ('1508', '巴彦淖尔市', '15', 'bayannaoer');
INSERT INTO `city` VALUES ('1509', '乌兰察布市', '15', 'wulanchabu');
INSERT INTO `city` VALUES ('1522', '兴安盟', '15', 'xinganmeng');
INSERT INTO `city` VALUES ('1525', '锡林郭勒盟', '15', 'xilinguolemeng');
INSERT INTO `city` VALUES ('1529', '阿拉善盟', '15', 'alashanmeng');
INSERT INTO `city` VALUES ('2101', '沈阳市', '21', 'shenyang');
INSERT INTO `city` VALUES ('2102', '大连市', '21', 'dalian');
INSERT INTO `city` VALUES ('2103', '鞍山市', '21', 'anshan');
INSERT INTO `city` VALUES ('2104', '抚顺市', '21', 'fushun');
INSERT INTO `city` VALUES ('2105', '本溪市', '21', 'benxi');
INSERT INTO `city` VALUES ('2106', '丹东市', '21', 'dandong');
INSERT INTO `city` VALUES ('2107', '锦州市', '21', 'jinzhou');
INSERT INTO `city` VALUES ('2108', '营口市', '21', 'yingkou');
INSERT INTO `city` VALUES ('2109', '阜新市', '21', 'fuxin');
INSERT INTO `city` VALUES ('2110', '辽阳市', '21', 'liaoyang');
INSERT INTO `city` VALUES ('2111', '盘锦市', '21', 'panjin');
INSERT INTO `city` VALUES ('2112', '铁岭市', '21', 'tieling');
INSERT INTO `city` VALUES ('2113', '朝阳市', '21', 'chaoyang');
INSERT INTO `city` VALUES ('2114', '葫芦岛市', '21', 'huludao');
INSERT INTO `city` VALUES ('2201', '长春市', '22', 'changchun');
INSERT INTO `city` VALUES ('2202', '吉林市', '22', 'jilin');
INSERT INTO `city` VALUES ('2203', '四平市', '22', 'siping');
INSERT INTO `city` VALUES ('2204', '辽源市', '22', 'liaoyuan');
INSERT INTO `city` VALUES ('2205', '通化市', '22', 'tonghua');
INSERT INTO `city` VALUES ('2206', '白山市', '22', 'baishan');
INSERT INTO `city` VALUES ('2207', '松原市', '22', 'songyuan');
INSERT INTO `city` VALUES ('2208', '白城市', '22', 'baicheng');
INSERT INTO `city` VALUES ('2224', '延边朝鲜族自治州', '22', 'yanbianchaoxianzu');
INSERT INTO `city` VALUES ('2301', '哈尔滨市', '23', 'haerbin');
INSERT INTO `city` VALUES ('2302', '齐齐哈尔市', '23', 'qiqihaer');
INSERT INTO `city` VALUES ('2303', '鸡西市', '23', 'jixi');
INSERT INTO `city` VALUES ('2304', '鹤岗市', '23', 'hegang');
INSERT INTO `city` VALUES ('2305', '双鸭山市', '23', 'shuangyashan');
INSERT INTO `city` VALUES ('2306', '大庆市', '23', 'daqing');
INSERT INTO `city` VALUES ('2307', '伊春市', '23', 'yichun');
INSERT INTO `city` VALUES ('2308', '佳木斯市', '23', 'jiamusi');
INSERT INTO `city` VALUES ('2309', '七台河市', '23', 'qitaihe');
INSERT INTO `city` VALUES ('2310', '牡丹江市', '23', 'mudanjiang');
INSERT INTO `city` VALUES ('2311', '黑河市', '23', 'heihe');
INSERT INTO `city` VALUES ('2312', '绥化市', '23', 'suihua');
INSERT INTO `city` VALUES ('2327', '大兴安岭地区', '23', 'daxinganlingdiqu');
INSERT INTO `city` VALUES ('3101', '市辖区', '31', 'shanghai');
INSERT INTO `city` VALUES ('3201', '南京市', '32', 'nanjing');
INSERT INTO `city` VALUES ('3202', '无锡市', '32', 'wuxi');
INSERT INTO `city` VALUES ('3203', '徐州市', '32', 'xuzhou');
INSERT INTO `city` VALUES ('3204', '常州市', '32', 'changzhou');
INSERT INTO `city` VALUES ('3205', '苏州市', '32', 'suzhou');
INSERT INTO `city` VALUES ('3206', '南通市', '32', 'nantong');
INSERT INTO `city` VALUES ('3207', '连云港市', '32', 'lianyungang');
INSERT INTO `city` VALUES ('3208', '淮安市', '32', 'huaian');
INSERT INTO `city` VALUES ('3209', '盐城市', '32', 'yancheng');
INSERT INTO `city` VALUES ('3210', '扬州市', '32', 'yangzhou');
INSERT INTO `city` VALUES ('3211', '镇江市', '32', 'zhenjiang');
INSERT INTO `city` VALUES ('3212', '泰州市', '32', 'taizhou');
INSERT INTO `city` VALUES ('3213', '宿迁市', '32', 'suqian');
INSERT INTO `city` VALUES ('3301', '杭州市', '33', 'hangzhou');
INSERT INTO `city` VALUES ('3302', '宁波市', '33', 'ningbo');
INSERT INTO `city` VALUES ('3303', '温州市', '33', 'wenzhou');
INSERT INTO `city` VALUES ('3304', '嘉兴市', '33', 'jiaxing');
INSERT INTO `city` VALUES ('3305', '湖州市', '33', 'huzhou');
INSERT INTO `city` VALUES ('3306', '绍兴市', '33', 'shaoxing');
INSERT INTO `city` VALUES ('3307', '金华市', '33', 'jinhua');
INSERT INTO `city` VALUES ('3308', '衢州市', '33', 'quzhou');
INSERT INTO `city` VALUES ('3309', '舟山市', '33', 'zhoushan');
INSERT INTO `city` VALUES ('3310', '台州市', '33', 'taizhou');
INSERT INTO `city` VALUES ('3311', '丽水市', '33', 'lishui');
INSERT INTO `city` VALUES ('3401', '合肥市', '34', 'hefei');
INSERT INTO `city` VALUES ('3402', '芜湖市', '34', 'wuhu');
INSERT INTO `city` VALUES ('3403', '蚌埠市', '34', 'bengbu');
INSERT INTO `city` VALUES ('3404', '淮南市', '34', 'huainan');
INSERT INTO `city` VALUES ('3405', '马鞍山市', '34', 'maanshan');
INSERT INTO `city` VALUES ('3406', '淮北市', '34', 'huaibei');
INSERT INTO `city` VALUES ('3407', '铜陵市', '34', 'tongling');
INSERT INTO `city` VALUES ('3408', '安庆市', '34', 'anqing');
INSERT INTO `city` VALUES ('3410', '黄山市', '34', 'huangshan');
INSERT INTO `city` VALUES ('3411', '滁州市', '34', 'chuzhou');
INSERT INTO `city` VALUES ('3412', '阜阳市', '34', 'fuyang');
INSERT INTO `city` VALUES ('3413', '宿州市', '34', 'suzhou');
INSERT INTO `city` VALUES ('3415', '六安市', '34', 'liuan');
INSERT INTO `city` VALUES ('3416', '亳州市', '34', 'bozhou');
INSERT INTO `city` VALUES ('3417', '池州市', '34', 'chizhou');
INSERT INTO `city` VALUES ('3418', '宣城市', '34', 'xuancheng');
INSERT INTO `city` VALUES ('3501', '福州市', '35', 'fuzhou');
INSERT INTO `city` VALUES ('3502', '厦门市', '35', 'xiamen');
INSERT INTO `city` VALUES ('3503', '莆田市', '35', 'putian');
INSERT INTO `city` VALUES ('3504', '三明市', '35', 'sanming');
INSERT INTO `city` VALUES ('3505', '泉州市', '35', 'quanzhou');
INSERT INTO `city` VALUES ('3506', '漳州市', '35', 'zhangzhou');
INSERT INTO `city` VALUES ('3507', '南平市', '35', 'nanping');
INSERT INTO `city` VALUES ('3508', '龙岩市', '35', 'longyan');
INSERT INTO `city` VALUES ('3509', '宁德市', '35', 'ningde');
INSERT INTO `city` VALUES ('3601', '南昌市', '36', 'nanchang');
INSERT INTO `city` VALUES ('3602', '景德镇市', '36', 'jingdezhen');
INSERT INTO `city` VALUES ('3603', '萍乡市', '36', 'pingxiang');
INSERT INTO `city` VALUES ('3604', '九江市', '36', 'jiujiang');
INSERT INTO `city` VALUES ('3605', '新余市', '36', 'xinyu');
INSERT INTO `city` VALUES ('3606', '鹰潭市', '36', 'yingtan');
INSERT INTO `city` VALUES ('3607', '赣州市', '36', 'ganzhou');
INSERT INTO `city` VALUES ('3608', '吉安市', '36', 'jian');
INSERT INTO `city` VALUES ('3609', '宜春市', '36', 'yichun');
INSERT INTO `city` VALUES ('3610', '抚州市', '36', 'fuzhou');
INSERT INTO `city` VALUES ('3611', '上饶市', '36', 'shangrao');
INSERT INTO `city` VALUES ('3701', '济南市', '37', 'jinan');
INSERT INTO `city` VALUES ('3702', '青岛市', '37', 'qingdao');
INSERT INTO `city` VALUES ('3703', '淄博市', '37', 'zibo');
INSERT INTO `city` VALUES ('3704', '枣庄市', '37', 'zaozhuang');
INSERT INTO `city` VALUES ('3705', '东营市', '37', 'dongying');
INSERT INTO `city` VALUES ('3706', '烟台市', '37', 'yantai');
INSERT INTO `city` VALUES ('3707', '潍坊市', '37', 'weifang');
INSERT INTO `city` VALUES ('3708', '济宁市', '37', 'jining');
INSERT INTO `city` VALUES ('3709', '泰安市', '37', 'taian');
INSERT INTO `city` VALUES ('3710', '威海市', '37', 'weihai');
INSERT INTO `city` VALUES ('3711', '日照市', '37', 'rizhao');
INSERT INTO `city` VALUES ('3713', '临沂市', '37', 'linyi');
INSERT INTO `city` VALUES ('3714', '德州市', '37', 'dezhou');
INSERT INTO `city` VALUES ('3715', '聊城市', '37', 'liaocheng');
INSERT INTO `city` VALUES ('3716', '滨州市', '37', 'binzhou');
INSERT INTO `city` VALUES ('3717', '菏泽市', '37', 'heze');
INSERT INTO `city` VALUES ('4101', '郑州市', '41', 'zhengzhou');
INSERT INTO `city` VALUES ('4102', '开封市', '41', 'kaifeng');
INSERT INTO `city` VALUES ('4103', '洛阳市', '41', 'luoyang');
INSERT INTO `city` VALUES ('4104', '平顶山市', '41', 'pingdingshan');
INSERT INTO `city` VALUES ('4105', '安阳市', '41', 'anyang');
INSERT INTO `city` VALUES ('4106', '鹤壁市', '41', 'hebi');
INSERT INTO `city` VALUES ('4107', '新乡市', '41', 'xinxiang');
INSERT INTO `city` VALUES ('4108', '焦作市', '41', 'jiaozuo');
INSERT INTO `city` VALUES ('4109', '濮阳市', '41', 'puyang');
INSERT INTO `city` VALUES ('4110', '许昌市', '41', 'xuchuang');
INSERT INTO `city` VALUES ('4111', '漯河市', '41', 'luohe');
INSERT INTO `city` VALUES ('4112', '三门峡市', '41', 'sanmenxia');
INSERT INTO `city` VALUES ('4113', '南阳市', '41', 'nanyang');
INSERT INTO `city` VALUES ('4114', '商丘市', '41', 'shangqiu');
INSERT INTO `city` VALUES ('4115', '信阳市', '41', 'xinyang');
INSERT INTO `city` VALUES ('4116', '周口市', '41', 'zhoukou');
INSERT INTO `city` VALUES ('4117', '驻马店市', '41', 'zhumadian');
INSERT INTO `city` VALUES ('4190', '河南省直辖县级行政区划', '41', 'henan');
INSERT INTO `city` VALUES ('4201', '武汉市', '42', 'wuhan');
INSERT INTO `city` VALUES ('4202', '黄石市', '42', 'huangshi');
INSERT INTO `city` VALUES ('4203', '十堰市', '42', 'shiyan');
INSERT INTO `city` VALUES ('4205', '宜昌市', '42', 'yichang');
INSERT INTO `city` VALUES ('4206', '襄阳市', '42', 'xiangyang');
INSERT INTO `city` VALUES ('4207', '鄂州市', '42', 'ezhou');
INSERT INTO `city` VALUES ('4208', '荆门市', '42', 'jingmen');
INSERT INTO `city` VALUES ('4209', '孝感市', '42', 'xiaogan');
INSERT INTO `city` VALUES ('4210', '荆州市', '42', 'jingzhou');
INSERT INTO `city` VALUES ('4211', '黄冈市', '42', 'huanggang');
INSERT INTO `city` VALUES ('4212', '咸宁市', '42', 'xianning');
INSERT INTO `city` VALUES ('4213', '随州市', '42', 'suizhou');
INSERT INTO `city` VALUES ('4228', '恩施土家族苗族自治州', '42', 'enshitujiazumiaozu');
INSERT INTO `city` VALUES ('4290', '省直辖县级行政区划', '42', 'hubei');
INSERT INTO `city` VALUES ('4301', '长沙市', '43', 'changsha');
INSERT INTO `city` VALUES ('4302', '株洲市', '43', 'zhuzhou');
INSERT INTO `city` VALUES ('4303', '湘潭市', '43', 'xiangtan');
INSERT INTO `city` VALUES ('4304', '衡阳市', '43', 'hengyang');
INSERT INTO `city` VALUES ('4305', '邵阳市', '43', 'shaoyang');
INSERT INTO `city` VALUES ('4306', '岳阳市', '43', 'yueyang');
INSERT INTO `city` VALUES ('4307', '常德市', '43', 'changde');
INSERT INTO `city` VALUES ('4308', '张家界市', '43', 'zhangjiajie');
INSERT INTO `city` VALUES ('4309', '益阳市', '43', 'yiyang');
INSERT INTO `city` VALUES ('4310', '郴州市', '43', 'chenzhou');
INSERT INTO `city` VALUES ('4311', '永州市', '43', 'yongzhou');
INSERT INTO `city` VALUES ('4312', '怀化市', '43', 'huaihua');
INSERT INTO `city` VALUES ('4313', '娄底市', '43', 'loudi');
INSERT INTO `city` VALUES ('4331', '湘西土家族苗族自治州', '43', 'xiangxitujiazumiaozu');
INSERT INTO `city` VALUES ('4401', '广州市', '44', 'guangzhou');
INSERT INTO `city` VALUES ('4402', '韶关市', '44', 'shaoguan');
INSERT INTO `city` VALUES ('4403', '深圳市', '44', 'shenzhen');
INSERT INTO `city` VALUES ('4404', '珠海市', '44', 'zhuhai');
INSERT INTO `city` VALUES ('4405', '汕头市', '44', 'shantou');
INSERT INTO `city` VALUES ('4406', '佛山市', '44', 'foshan');
INSERT INTO `city` VALUES ('4407', '江门市', '44', 'jiangmen');
INSERT INTO `city` VALUES ('4408', '湛江市', '44', 'zhanjiang');
INSERT INTO `city` VALUES ('4409', '茂名市', '44', 'maoming');
INSERT INTO `city` VALUES ('4412', '肇庆市', '44', 'zhaoqing');
INSERT INTO `city` VALUES ('4413', '惠州市', '44', 'huizhou');
INSERT INTO `city` VALUES ('4414', '梅州市', '44', 'meizhou');
INSERT INTO `city` VALUES ('4415', '汕尾市', '44', 'shanwei');
INSERT INTO `city` VALUES ('4416', '河源市', '44', 'heyuan');
INSERT INTO `city` VALUES ('4417', '阳江市', '44', 'yangjiang');
INSERT INTO `city` VALUES ('4418', '清远市', '44', 'qingyuan');
INSERT INTO `city` VALUES ('4419', '东莞市', '44', 'dongguan');
INSERT INTO `city` VALUES ('4420', '中山市', '44', 'zhongshan');
INSERT INTO `city` VALUES ('4451', '潮州市', '44', 'chaozhou');
INSERT INTO `city` VALUES ('4452', '揭阳市', '44', 'jieyang');
INSERT INTO `city` VALUES ('4453', '云浮市', '44', 'yunfu');
INSERT INTO `city` VALUES ('4501', '南宁市', '45', 'nanning');
INSERT INTO `city` VALUES ('4502', '柳州市', '45', 'liuzhou');
INSERT INTO `city` VALUES ('4503', '桂林市', '45', 'guilin');
INSERT INTO `city` VALUES ('4504', '梧州市', '45', 'wuzhou');
INSERT INTO `city` VALUES ('4505', '北海市', '45', 'beihai');
INSERT INTO `city` VALUES ('4506', '防城港市', '45', 'fangchenggang');
INSERT INTO `city` VALUES ('4507', '钦州市', '45', 'qinzhou');
INSERT INTO `city` VALUES ('4508', '贵港市', '45', 'guigang');
INSERT INTO `city` VALUES ('4509', '玉林市', '45', 'yulin');
INSERT INTO `city` VALUES ('4510', '百色市', '45', 'baise');
INSERT INTO `city` VALUES ('4511', '贺州市', '45', 'hezhou');
INSERT INTO `city` VALUES ('4512', '河池市', '45', 'hechi');
INSERT INTO `city` VALUES ('4513', '来宾市', '45', 'laibin');
INSERT INTO `city` VALUES ('4514', '崇左市', '45', 'chongzuo');
INSERT INTO `city` VALUES ('4601', '海口市', '46', 'haikou');
INSERT INTO `city` VALUES ('4602', '三亚市', '46', 'sanya');
INSERT INTO `city` VALUES ('4603', '三沙市', '46', 'sansha');
INSERT INTO `city` VALUES ('4604', '儋州市', '46', 'danzhou');
INSERT INTO `city` VALUES ('4690', '海南省直辖县级行政区划', '46', 'hainan');
INSERT INTO `city` VALUES ('5001', '市辖区', '50', 'chongqing');
INSERT INTO `city` VALUES ('5002', '县', '50', 'zhongxian');
INSERT INTO `city` VALUES ('5101', '成都市', '51', 'chengdu');
INSERT INTO `city` VALUES ('5103', '自贡市', '51', 'zigong');
INSERT INTO `city` VALUES ('5104', '攀枝花市', '51', 'panzhihua');
INSERT INTO `city` VALUES ('5105', '泸州市', '51', 'luzhou');
INSERT INTO `city` VALUES ('5106', '德阳市', '51', 'deyang');
INSERT INTO `city` VALUES ('5107', '绵阳市', '51', 'mianyang');
INSERT INTO `city` VALUES ('5108', '广元市', '51', 'guangyuan');
INSERT INTO `city` VALUES ('5109', '遂宁市', '51', 'suining');
INSERT INTO `city` VALUES ('5110', '内江市', '51', 'neijiang');
INSERT INTO `city` VALUES ('5111', '乐山市', '51', 'leshan');
INSERT INTO `city` VALUES ('5113', '南充市', '51', 'nanchong');
INSERT INTO `city` VALUES ('5114', '眉山市', '51', 'meishan');
INSERT INTO `city` VALUES ('5115', '宜宾市', '51', 'yibin');
INSERT INTO `city` VALUES ('5116', '广安市', '51', 'guangan');
INSERT INTO `city` VALUES ('5117', '达州市', '51', 'dazhou');
INSERT INTO `city` VALUES ('5118', '雅安市', '51', 'yaan');
INSERT INTO `city` VALUES ('5119', '巴中市', '51', 'bazhong');
INSERT INTO `city` VALUES ('5120', '资阳市', '51', 'ziyang');
INSERT INTO `city` VALUES ('5132', '阿坝藏族羌族自治州', '51', 'abazangzuqiangzu');
INSERT INTO `city` VALUES ('5133', '甘孜藏族自治州', '51', 'ganzizangzu');
INSERT INTO `city` VALUES ('5134', '凉山彝族自治州', '51', 'liangshanyizu');
INSERT INTO `city` VALUES ('5201', '贵阳市', '52', 'guiyang');
INSERT INTO `city` VALUES ('5202', '六盘水市', '52', 'liupanshui');
INSERT INTO `city` VALUES ('5203', '遵义市', '52', 'zunyi');
INSERT INTO `city` VALUES ('5204', '安顺市', '52', 'anshun');
INSERT INTO `city` VALUES ('5205', '毕节市', '52', 'bijie');
INSERT INTO `city` VALUES ('5206', '铜仁市', '52', 'tongren');
INSERT INTO `city` VALUES ('5223', '黔西南布依族苗族自治州', '52', 'qianxinanbuyizumiaozu');
INSERT INTO `city` VALUES ('5226', '黔东南苗族侗族自治州', '52', 'qiandongnanmiaozudongzu');
INSERT INTO `city` VALUES ('5227', '黔南布依族苗族自治州', '52', 'qiannanbuyizumiaozu');
INSERT INTO `city` VALUES ('5301', '昆明市', '53', 'kunming');
INSERT INTO `city` VALUES ('5303', '曲靖市', '53', 'qujing');
INSERT INTO `city` VALUES ('5304', '玉溪市', '53', 'yuxi');
INSERT INTO `city` VALUES ('5305', '保山市', '53', 'baoshan');
INSERT INTO `city` VALUES ('5306', '昭通市', '53', 'zhaotong');
INSERT INTO `city` VALUES ('5307', '丽江市', '53', 'lijiang');
INSERT INTO `city` VALUES ('5308', '普洱市', '53', 'puer');
INSERT INTO `city` VALUES ('5309', '临沧市', '53', 'lincang');
INSERT INTO `city` VALUES ('5323', '楚雄彝族自治州', '53', 'chuxiongyizu');
INSERT INTO `city` VALUES ('5325', '红河哈尼族彝族自治州', '53', 'honghehanizuyizu');
INSERT INTO `city` VALUES ('5326', '文山壮族苗族自治州', '53', 'wenshanzhuangzumiaozu');
INSERT INTO `city` VALUES ('5328', '西双版纳傣族自治州', '53', 'xishuangbannadaizu');
INSERT INTO `city` VALUES ('5329', '大理白族自治州', '53', 'dalibaizu');
INSERT INTO `city` VALUES ('5331', '德宏傣族景颇族自治州', '53', 'dehongdaizujingpozu');
INSERT INTO `city` VALUES ('5333', '怒江傈僳族自治州', '53', 'nujianglisuzu');
INSERT INTO `city` VALUES ('5334', '迪庆藏族自治州', '53', 'diqingzangzu');
INSERT INTO `city` VALUES ('5401', '拉萨市', '54', 'lasa');
INSERT INTO `city` VALUES ('5402', '日喀则市', '54', 'rikaze');
INSERT INTO `city` VALUES ('5403', '昌都市', '54', 'changdu');
INSERT INTO `city` VALUES ('5404', '林芝市', '54', 'linzhi');
INSERT INTO `city` VALUES ('5405', '山南市', '54', 'shannan');
INSERT INTO `city` VALUES ('5406', '那曲市', '54', 'neiqu');
INSERT INTO `city` VALUES ('5425', '阿里地区', '54', 'alidiqu');
INSERT INTO `city` VALUES ('6101', '西安市', '61', 'xian');
INSERT INTO `city` VALUES ('6102', '铜川市', '61', 'tongchuan');
INSERT INTO `city` VALUES ('6103', '宝鸡市', '61', 'baoji');
INSERT INTO `city` VALUES ('6104', '咸阳市', '61', 'xianyang');
INSERT INTO `city` VALUES ('6105', '渭南市', '61', 'weinan');
INSERT INTO `city` VALUES ('6106', '延安市', '61', 'yanan');
INSERT INTO `city` VALUES ('6107', '汉中市', '61', 'hanzhong');
INSERT INTO `city` VALUES ('6108', '榆林市', '61', 'yulin');
INSERT INTO `city` VALUES ('6109', '安康市', '61', 'ankang');
INSERT INTO `city` VALUES ('6110', '商洛市', '61', 'shangluo');
INSERT INTO `city` VALUES ('6201', '兰州市', '62', 'lanzhou');
INSERT INTO `city` VALUES ('6202', '嘉峪关市', '62', 'jiayuguan');
INSERT INTO `city` VALUES ('6203', '金昌市', '62', 'jinchang');
INSERT INTO `city` VALUES ('6204', '白银市', '62', 'baiyin');
INSERT INTO `city` VALUES ('6205', '天水市', '62', 'tianshui');
INSERT INTO `city` VALUES ('6206', '武威市', '62', 'wuwei');
INSERT INTO `city` VALUES ('6207', '张掖市', '62', 'zhangye');
INSERT INTO `city` VALUES ('6208', '平凉市', '62', 'pingliang');
INSERT INTO `city` VALUES ('6209', '酒泉市', '62', 'jiuquan');
INSERT INTO `city` VALUES ('6210', '庆阳市', '62', 'qingyang');
INSERT INTO `city` VALUES ('6211', '定西市', '62', 'dingxi');
INSERT INTO `city` VALUES ('6212', '陇南市', '62', 'longnan');
INSERT INTO `city` VALUES ('6229', '临夏回族自治州', '62', 'linxiahuizu');
INSERT INTO `city` VALUES ('6230', '甘南藏族自治州', '62', 'gannanzangzu');
INSERT INTO `city` VALUES ('6301', '西宁市', '63', 'xining');
INSERT INTO `city` VALUES ('6302', '海东市', '63', 'haidong');
INSERT INTO `city` VALUES ('6322', '海北藏族自治州', '63', 'haibeizangzu');
INSERT INTO `city` VALUES ('6323', '黄南藏族自治州', '63', 'huangnanzangzu');
INSERT INTO `city` VALUES ('6325', '海南藏族自治州', '63', 'hainanzangzu');
INSERT INTO `city` VALUES ('6326', '果洛藏族自治州', '63', 'guoluozangzu');
INSERT INTO `city` VALUES ('6327', '玉树藏族自治州', '63', 'yushuzangzu');
INSERT INTO `city` VALUES ('6328', '海西蒙古族藏族自治州', '63', 'haiximengguzuzangzu');
INSERT INTO `city` VALUES ('6401', '银川市', '64', 'yinchuan');
INSERT INTO `city` VALUES ('6402', '石嘴山市', '64', 'shizuishan');
INSERT INTO `city` VALUES ('6403', '吴忠市', '64', 'wuzhong');
INSERT INTO `city` VALUES ('6404', '固原市', '64', 'guyuan');
INSERT INTO `city` VALUES ('6405', '中卫市', '64', 'zhongwei');
INSERT INTO `city` VALUES ('6501', '乌鲁木齐市', '65', 'wulumuqi');
INSERT INTO `city` VALUES ('6502', '克拉玛依市', '65', 'kelamayi');
INSERT INTO `city` VALUES ('6504', '吐鲁番市', '65', 'tulufan');
INSERT INTO `city` VALUES ('6505', '哈密市', '65', 'hami');
INSERT INTO `city` VALUES ('6523', '昌吉回族自治州', '65', 'changjihuizu');
INSERT INTO `city` VALUES ('6527', '博尔塔拉蒙古自治州', '65', 'boertalamenggu');
INSERT INTO `city` VALUES ('6528', '巴音郭楞蒙古自治州', '65', 'bayinguolengmenggu');
INSERT INTO `city` VALUES ('6529', '阿克苏地区', '65', 'akesudiqu');
INSERT INTO `city` VALUES ('6530', '克孜勒苏柯尔克孜自治州', '65', 'kezilesukeerkezi');
INSERT INTO `city` VALUES ('6531', '喀什地区', '65', 'kashendiqu');
INSERT INTO `city` VALUES ('6532', '和田地区', '65', 'hetiandiqu');
INSERT INTO `city` VALUES ('6540', '伊犁哈萨克自治州', '65', 'yilihasake');
INSERT INTO `city` VALUES ('6542', '塔城地区', '65', 'tachengdiqu');
INSERT INTO `city` VALUES ('6543', '阿勒泰地区', '65', 'aletaidiqu');
INSERT INTO `city` VALUES ('6590', '新疆自治区直辖县级行政区划', '65', 'xinjiang');
COMMIT;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` bigint DEFAULT NULL,
  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `car_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of comments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for configuration
-- ----------------------------
DROP TABLE IF EXISTS `configuration`;
CREATE TABLE `configuration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `insurance` float DEFAULT NULL,
  `service_phone` varchar(255) DEFAULT NULL,
  `insurance_agreement` longtext DEFAULT NULL,
  `order_agreement`  longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of configuration
-- ----------------------------
BEGIN;
INSERT INTO `com_zhuche_server`.`configuration` (`id`, `app_name`, `logo`, `notice`, `insurance`, `service_phone`, `insurance_agreement`, `order_agreement`) VALUES (1, '车租婆', '2022-2-20-1-27-36-1645291656873-logo.png', '消息公告内容消息公告内容消息公告内容消息公告内容消息公告内容消息公告内容', 1000, '13427969604', '<h4 style=\"text-align:center;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><span style=\"line-height:2\">使用规则</span></span></h4><p style=\"text-align:left;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><strong><span style=\"font-size:14px\"><span style=\"line-height:2\"> • 代缴不扣分违章罚款</span></span></strong></p><p style=\"text-align:left;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"font-size:12px\"><span style=\"color:#999999\"><span style=\"line-height:2\">温馨提示：抵扣违章罚款及代办服务费用，每笔订单上限600元;交通违章仅指电子警察及贴条违章，不含扣分的违章、罚单;本项服务以实际页面显示价格为准。</span></span></span></p><p> </p>', '<p><strong><span style=\"color:#666666\"><span style=\"line-height:2\">•<span style=\"font-size:14px\"> 租赁中修改规则</span></span></span></strong></p><p><span style=\"font-size:12px\"><span style=\"color:#999999\"><span style=\"line-height:2\">订单类型 扣费标准节假日订单 如租赁中修改还车城市将收取改签费，请谨慎修改</span></span></span></p><p><span style=\"font-size:12px\"><span style=\"color:#999999\"><span style=\"line-height:2\"> 实际用车时间含节假日及节假日前后三天订单、高端车订单、 京牌车订单、沪牌车订单、雪地胎车型订单，修改后将收取原 车辆租赁费及门店服务费的30%作为改签费。具体金额以实际 页面显示为准。</span></span></span></p><p><strong><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"line-height:2\"> • 取车凭证</span></span></span></strong></p><p> <span style=\"line-height:2\"><span style=\"color:#999999\"><span style=\"font-size:12px\">本人有效身份证+本人驾驶证原件（正副页）或电子驾照</span></span></span></p><p><strong><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"line-height:2\">• 押金金额</span></span></span></strong></p><p><span style=\"line-height:2\"><span style=\"color:#999999\"><span style=\"font-size:12px\"> 取车时刷取车辆保证金，还车时当场撤销预授权； 还车时刷取违章押金，还车后30-60天无违章自动解冻。</span></span></span> </p><p><strong><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"line-height:2\">• 发票 </span></span></span></strong></p><p><span style=\"font-size:12px\"><span style=\"color:#999999\"><span style=\"line-height:2\">可在&quot;我的-发票&quot;申请开票，还车后为您开具增值税发票。</span></span></span></p>');
COMMIT;

-- ----------------------------
-- Table structure for alipay_account
-- ----------------------------
DROP TABLE IF EXISTS `alipay_account`;
CREATE TABLE `alipay_account` (
                                  `id` bigint NOT NULL AUTO_INCREMENT,
                                  `created_at` bigint DEFAULT NULL,
                                  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                  `access_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `country_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `expires_in` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `re_expires_in` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `refresh_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                                  `is_authorize_base_info` int DEFAULT NULL,
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of alipay_account
-- ----------------------------
BEGIN;
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`) VALUES (1, NULL, NULL, NULL, 'authbseB71cafc443bef48429df6711bb8860C59', 'https://tfs.alipayobjects.com/images/partner/ATMv8TTZKDzsQAAAAAAAAAAAAADtl2AA', '惠州市', '10000', 'CN', '31536000', NULL, NULL, NULL, '广东省', '31536000', 'authbseB7700b11a5f3546519a42c785b839bX59', '2088241974604591');
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`) VALUES (2, NULL, NULL, NULL, 'authbseB72f3ecfca13a4deeb4d1c5ab8303dA08', 'https://tfs.alipayobjects.com/images/partner/T1J_8fXdFuXXXXXXXX', '惠州市', '10000', 'CN', '31536000', 'm', '楚衡', NULL, '广东省', '31536000', 'authbseBd77a32a493f64f66987c3330cadbcX08', '2088012728643085');
COMMIT;

-- ----------------------------
-- Table structure for pickup_guid
-- ----------------------------
DROP TABLE IF EXISTS `pickup_guid`;
CREATE TABLE `pickup_guid` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` bigint DEFAULT NULL,
  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `img_key` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of pickup_guid
-- ----------------------------
BEGIN;
INSERT INTO `pickup_guid` VALUES (1, NULL, NULL, NULL, '2022-3-17-17-40-1-1647510001605-806d6cd71f7141e9b2d8e1d1c8d3140c.jpg', '取车指引图1标题', 1);
INSERT INTO `pickup_guid` VALUES (2, NULL, NULL, NULL, '2022-3-17-17-41-45-1647510105072-806d6cd71f7141e9b2d8e1d1c8d3140c.jpg', '取车指引图1标题', 2);
COMMIT;

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of province
-- ----------------------------
BEGIN;
INSERT INTO `province` VALUES ('11', '北京市');
INSERT INTO `province` VALUES ('12', '天津市');
INSERT INTO `province` VALUES ('13', '河北省');
INSERT INTO `province` VALUES ('14', '山西省');
INSERT INTO `province` VALUES ('15', '内蒙古自治区');
INSERT INTO `province` VALUES ('21', '辽宁省');
INSERT INTO `province` VALUES ('22', '吉林省');
INSERT INTO `province` VALUES ('23', '黑龙江省');
INSERT INTO `province` VALUES ('31', '上海市');
INSERT INTO `province` VALUES ('32', '江苏省');
INSERT INTO `province` VALUES ('33', '浙江省');
INSERT INTO `province` VALUES ('34', '安徽省');
INSERT INTO `province` VALUES ('35', '福建省');
INSERT INTO `province` VALUES ('36', '江西省');
INSERT INTO `province` VALUES ('37', '山东省');
INSERT INTO `province` VALUES ('41', '河南省');
INSERT INTO `province` VALUES ('42', '湖北省');
INSERT INTO `province` VALUES ('43', '湖南省');
INSERT INTO `province` VALUES ('44', '广东省');
INSERT INTO `province` VALUES ('45', '广西壮族自治区');
INSERT INTO `province` VALUES ('46', '海南省');
INSERT INTO `province` VALUES ('50', '重庆市');
INSERT INTO `province` VALUES ('51', '四川省');
INSERT INTO `province` VALUES ('52', '贵州省');
INSERT INTO `province` VALUES ('53', '云南省');
INSERT INTO `province` VALUES ('54', '西藏自治区');
INSERT INTO `province` VALUES ('61', '陕西省');
INSERT INTO `province` VALUES ('62', '甘肃省');
INSERT INTO `province` VALUES ('63', '青海省');
INSERT INTO `province` VALUES ('64', '宁夏回族自治区');
INSERT INTO `province` VALUES ('65', '新疆维吾尔自治区');
COMMIT;

-- ----------------------------
-- Table structure for return_guid
-- ----------------------------
DROP TABLE IF EXISTS `return_guid`;
CREATE TABLE `return_guid` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` bigint DEFAULT NULL,
  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `img_key` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of return_guid
-- ----------------------------
BEGIN;
INSERT INTO `return_guid` VALUES (1, NULL, NULL, NULL, '2022-3-17-17-40-7-1647510007680-85882bc629a74de2a76e480a112f2108.jpg', '还车指引图1标题', 1);
INSERT INTO `return_guid` VALUES (2, NULL, NULL, NULL, '2022-3-17-17-40-22-1647510022949-dc20ea7c29cb4dc2872bfce0905e39fa.jpg', '还车指引图2标题', 1);
INSERT INTO `return_guid` VALUES (3, NULL, NULL, NULL, '2022-3-17-17-41-53-1647510113946-85882bc629a74de2a76e480a112f2108.jpg', '还车指引图1标题', 2);
INSERT INTO `return_guid` VALUES (4, NULL, NULL, NULL, '2022-3-17-17-42-6-1647510126282-dc20ea7c29cb4dc2872bfce0905e39fa.jpg', '还车指引图2标题', 2);
COMMIT;

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` bigint DEFAULT NULL,
  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `end_at` varchar(255) DEFAULT NULL,
  `is_airport` bit(1) DEFAULT NULL,
  `is_enable` bit(1) DEFAULT NULL,
  `is_self_service` bit(1) DEFAULT NULL,
  `is_station` bit(1) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `service_phone` varchar(255) DEFAULT NULL,
  `star_at` varchar(255) DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `area_code` varchar(255) DEFAULT NULL,
  `city_code` varchar(255) DEFAULT NULL,
  `province_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of store
-- ----------------------------
BEGIN;
INSERT INTO `store` VALUES (1, NULL, NULL, NULL, '三亚湾路168号,近海虹路', '23:59', b'1', b'1', b'1', b'1', 18.2867, 109.446, '站内取还', '三亚店', '13427969604', '00:00', NULL, '460204', '4602', '46');
INSERT INTO `store` VALUES (2, NULL, NULL, NULL, '天山一路壹方天第东北侧约90米', '23:59', b'1', b'1', b'1', b'1', 22.7679, 114.442, '', '惠阳店', '13427969604', '00:00', NULL, '441303', '4413', '44');
COMMIT;

-- ----------------------------
-- Table structure for store_banner
-- ----------------------------
DROP TABLE IF EXISTS `store_banner`;
CREATE TABLE `store_banner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` bigint DEFAULT NULL,
  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `img_key` varchar(255) DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of store_banner
-- ----------------------------
BEGIN;
INSERT INTO `store_banner` VALUES (1, NULL, NULL, NULL, '2022-3-17-17-39-12-1647509952912-231_3.jpg', 1);
INSERT INTO `store_banner` VALUES (2, NULL, NULL, NULL, '2022-3-17-17-39-17-1647509957087-231_4.jpg', 1);
INSERT INTO `store_banner` VALUES (3, NULL, NULL, NULL, '2022-3-17-17-41-12-1647510072337-231_3.jpg', 2);
INSERT INTO `store_banner` VALUES (4, NULL, NULL, NULL, '2022-3-17-17-41-15-1647510075296-231_4.jpg', 2);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` bigint DEFAULT NULL,
  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `alipay_account_id` bigint DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 1647430070000, NULL, '2022-03-16 19:27:50', b'1', 'C+jNtUcwGcqNhaklKgaDX0Y5QvK3NsBIt9F06kNjLwg=', 'admin', NULL, NULL);
INSERT INTO `user` VALUES (2, NULL, NULL, NULL, b'1', NULL, NULL, 1, NULL);
INSERT INTO `user` VALUES (3, NULL, NULL, NULL, b'1', 'C+jNtUcwGcqNhaklKgaDX0Y5QvK3NsBIt9F06kNjLwg=', '三亚店', NULL, 1);
INSERT INTO `user` VALUES (4, NULL, NULL, NULL, b'1', 'C+jNtUcwGcqNhaklKgaDX0Y5QvK3NsBIt9F06kNjLwg=', '惠阳店', NULL, 2);
COMMIT;

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `roles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
BEGIN;
INSERT INTO `user_roles` VALUES (1, 'ROLE_ADMIN');
INSERT INTO `user_roles` VALUES (2, 'ROLE_USER');
INSERT INTO `user_roles` VALUES (3, 'ROLE_BUSINESS');
INSERT INTO `user_roles` VALUES (4, 'ROLE_BUSINESS');
COMMIT;

DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `created_at` bigint DEFAULT NULL,
                         `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                         `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                         `img_key` varchar(3000) DEFAULT NULL,
                         `name` varchar(255) DEFAULT NULL,
                         `store_id` bigint DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

BEGIN;
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (28, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==', '丰田', 1);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (29, NULL, NULL, NULL, 'data:image/jpeg;base64,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', '别克', 1);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (30, NULL, NULL, NULL, 'data:image/jpeg;base64,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', '大众', 1);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (31, NULL, NULL, NULL, 'data:image/jpeg;base64,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', '奔驰', 1);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (32, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==', '日产', 1);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (33, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAaAAACAgMAAAAAAAAAAAAAAAAHCAABBgkK/8QAJRAAAgMBAAIBAgcAAAAAAAAAAwQBAgUGBxEAITEIEhQWUYGR/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAQFBgMH/8QAJBEAAgICAgIBBQEAAAAAAAAAAQIDBAAFBhIREwcUFSEjMST/2gAMAwEAAhEDEQA/AO+Dd2lufzi6TQmTiHYY6gTBLDRilvFKUEGLV/NP1m1pm1a0pW97TFYmYYzBc3yvh6TnPKUz9gX7lzldRFiyyx11lHywujOoRNxic0rjNWFgBZrUlmEnRTFbLE9MYUvjGKV5X/EXy+M/t8THPeQSbmQd+1NBbgdrX5kjGIDnmjjJpp3AKQug6VddEg2KkMyvofpxs3zzLkqJ9zXrzSQPBdZo/Z5dKsjRfqEBb9gHUE+9QgJBYq4H5Q56fpvije7zU1dxW2/E4K9xabRV7nIqFa+Bdk2kUfek7/UL6jqZ3snoRXjmqyOQlhDiq+LvLu7hdZm6fcY2vTOUQxeX37Yvizv50tzoz9N1PRr9AKmmojGJjLSvpENjAtv0xG9ttthyXdyFQ8jv6g8g1tgpEqRktTlXx3DkHwQCVAjZmIHlfwCAT4ya3w1yEIWXfcIl/wAdm4oi5ZqpAyVRSDxd1l6JNJJejjrJIyCz67EkLPDC0mbGPHflDnvJXPz0WOp0GUCjx88yHTYOlgaoTgEuxW9kXwDLK7KjarSrFIsMoT1+tSVIOlhUuxXIvdGs0Y7shWeJ4pAQAQejgHqysrK38IYfw+QMVyTiez4vsvtt2bWXZDXjspZ1GyqbSk8cjSRlVs1ZHj9sU0MsM0RIeOSNgQVKsxG9RP3iJ/r5MzMZPUfxH+R8Yy/UR9o9fGM//9k=', '本田', 1);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (34, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAACAkHCv/EACoQAAAGAgEDBAAHAAAAAAAAAAECAwQFBgcICQATIREUFTFBUVNhcZPR/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAED/8QAIxEAAgECBAcAAAAAAAAAAAAAAAERAjETYbHhQVFxgZGh0f/aAAwDAQACEQMRAD8A6UdqOZnjz0vzuOt2w2YbBTcrpxtSlXUW2xneJyHaMbq2RdwblexRcUvEAiZuuRV2qVyYjMoH9wKZkzlKMlRKTm+W4yW7e9OrXHrjir5X2dyK7q9JuFybUKDka3VJ+7rL2R3CTNhQauGdYayK7JBWLgZJYjt0VNA50QRIYyhylEXDz9bml6ubE4f3JwnUdhcBWZ7Z8XXf5QK9Myldmay8dGhpR3DyAKRE42ZyCBUnzJdMiiiIJrEKCiRjFH16Ew3wa0+koOQOtchNwz/b2GHOQk2vOtB6TU4eyYyc6OWzKyJGb2AYNbujF5Vak+KnX9gaSaq6KDdVMkKq5+PcqJnbCYw0psui0FmS41sCatRkvbuGG9ZC0OzVNOIuuZLyvf8AXDPefq9kbEiiT2VLVK5FWRoMax7lqZV2wnuDVE6BGsQrH++QRfLd0UuboBM5dndWMdv86ZpW2Byd3LEhYspL4bmcDGnhRn5ArJIuOJ4iUjGEjmIt2JXqqSZJTsi8TIBT+QGaBdYAAAVVAA+gBQ4AAfkAevgPTx0MJas2u4d9f9ZX+w/+9BL5vyw7yv4nOb9zGMI/x5H66Elu7k//2Q==', '爱驰', 1);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (35, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAABwkICv/EACAQAAIDAQEAAgMBAAAAAAAAAAMEAgUGAQcACBMUFRH/xAAYAQEBAQEBAAAAAAAAAAAAAAAABAUDBv/EACIRAAICAgIDAAMBAAAAAAAAAAECAxEABAUSExQhBhUigf/aAAwDAQACEQMRAD8A7t/RPTsn5fSu3upbOFVCnutAyFNabjQ6POLDcvrgoodjFerqFygm++yQKoJsqAkX9htYJmMXqv2PxnS5Je4q9JnW9sqm5RVlmgoxfSVdHAkGbHOU9hZ39Wqv2f4Xm3a0SiDMZAcOEv8AkJMY/wARRHHAwSQKIsIkGUcuTGQc48lCcJx72M4Tj3koyj3sZR7zvO9534xk/ftpt6eztz+eMeb/AGUtXl6FiJtN5ViVrzH2lVYuZVo9JcGsLBNS1jF01cxNVciVqmOvtzIWKf4mST3NLhDu6y7P7Li9YM5TxbW0Y5wQJTfjEbEqfEQCLHZkU0WGRT7ggcp6+1KVTuWii7JX8fA5YKWBcAi/lEmhROHM1r8V53uV/UK/6/8A2IEpV5exzdCHyv6vL5ayuwFUs7m3t2LnS+gbXfP6Jz+QGkK1Zs15GyNUp6RZeSVjZS0o/wASkdlQ83wEbkqHD8gAsZd40W5BGYmBEhYsjsFVGDEMVVp25VVs+lvkfarXJsAMSQLuh1I+gWSKsWRZPxfepejYCr0Fdh9n50oAzdEHJbyk/gaCsjRF/m8hNCLTo5IyiDn6DYWjAbWjA4ZyHKMu+e5DS9DZOv7OttgIjifUkMsLCRewpiqnsAf6UqCp+EXl+vN7EYk8csVkjpMvSQUaNrZ/wgkEfbxrfIs7YfGMPjGf/9k=', '现代', 1);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (36, NULL, NULL, NULL, 'data:image/jpeg;base64,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', '荣威', 1);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (37, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==', '丰田', 2);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (38, NULL, NULL, NULL, 'data:image/jpeg;base64,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', '别克', 2);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (39, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAWAAEBAQAAAAAAAAAAAAAAAAAJCAr/xAAjEAABBQEBAAEEAwAAAAAAAAAGAgMEBQcBCBIACREUExUi/8QAGAEAAwEBAAAAAAAAAAAAAAAABAYHBQP/xAAkEQACAwACAgMAAwEBAAAAAAABAwIEBQYRABITFCEjMUEVMv/aAAwDAQACEQMRAD8A2P8ApP05Nz64bz0Fk1dVfNviSDfQyGisSQZzGEcWEmAM8foa2dVvEJNdcgWVhCqXraprK6mrpVzcT+Nqrq+0euM8WToIjpaSrNiu+VxWZlUnqrXdh1BMX3JRsuW2FSjUgxYfYCXtY1i69ZMpFjEpnIuSMotlQoMrocmNVmjp21NfUylXGzTVjJCprlZuWZLbJKC5K1qUxz2RiIQYcJF719F4KR0r5sQv6HPuNN0IFh+fzDOxYfPdIpsur4dkdF2QGue2LVVTOVrE6K2M0h/S2VSXz3eVLJVUrc5ZodG8Q47q573086Gcqri0NexuZmtbvUMc6DzXp09ypqV1tlNrYEWG574MqxBsfUdGM4BQhyjdydKvXuaMr7buxcyKmLpZVWnd1ZUE/Pcs49rNfOEYQT1Kuq/Xmqyf4vtxnKBLZZFqoTuOYguv5xbovQXRhmpLBe1S24wqTVW8VuSwmTGd4l6JOjKUuJYQn0pkQZzEiI+lLzK08jd2nYzrdmjbh6WajmIdEEEBi5GMjEgkShLr2hIEiUSJA/vlbrWU3K6bVeful64sXIj1JjIAj2iSTGQ76lEnuJBB/R4GHuGQTCXqgmzAjnzh8W9MI7MCL19MhVJcvy86GBPsuDxKks2RZhWi52IFFkMNq5czs00kntKVPWIF0puxcY1KC+PZGxD0lc4mt0HolIgrZDWnowDh7fx09zOu3aAeQYKv0662yjJiDKTchzNFu3sZk4zNHkzqsluiB2UzyoZ7JR/B8lrH0KlS98Mepsp27JXEhTOy09R7tnNzbt70F6VoBJd47S1/jxmQUxpTttDsRorQ6ZasEIbiR3ZCtFE3pw0AUUFmbc2xORMNx5Up7+NcPenfsUqFjjdvKzKyeWvPOgrPZEmwh9d4y8G5ETmIxp6BTcvumYKTVSybICJA8x0469LYq8iq6mjYfxREuFxOgswhUsxso/6m9SMhEtFjP+apUhH2mywxYEiQB5pt+2TlZ7jfhzBQnT6h8aPFUF0WkQlJ/H7AZL0EsvjpoOkJSpSWpQvEIo9LMYR34MTIb7KPylvnexDkVlNvYtMrt+dKxXqwsd9/Y+nWTVL+z2SGySZgkkkEE/pPloy0Tr0UwnD45yLXSV118Re2bvi6/wA9Pf16/fXrrv8APKZ2jCch9EBMrOdsz8c0YMlSo1h/SkULkhEK0g9WqBc1ExpTNjSXcBTi1QLmolwrOH1a+xpTfzX8gKOhdzLAtULLarxCSzNUuvdc+vdbInuLFzA6kuYlCQ/JRI8Is1a1xRTaSt6uxIRZEH1kP0Sif/UJA9ESiRIEAg9geTDlX2yfF2QH1LqA7krpAeC0n9wOI9KNDjUpQVL4nqETA9g/ISCEPWDSO/FizrYrNlHT/lmW2nvedOfyDTehtcNRWS8etiFGnTo/ZH9kWJVEJk2JJ7MJH0J/uJ84LzKi5xZ6MbNZ7UbD3WfiPXQKvnYwQIH4DHqQ/wAI8vf6xfD/AD//2Q==', '大众', 2);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (40, NULL, NULL, NULL, 'data:image/jpeg;base64,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', '奔驰', 2);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (41, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==', '日产', 2);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (42, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAaAAACAgMAAAAAAAAAAAAAAAAHCAABBgkK/8QAJRAAAgMBAAIBAgcAAAAAAAAAAwQBAgUGBxEAITEIEhQWUYGR/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAQFBgMH/8QAJBEAAgICAgIBBQEAAAAAAAAAAQIDBAAFBhIREwcUFSEjMST/2gAMAwEAAhEDEQA/AO+Dd2lufzi6TQmTiHYY6gTBLDRilvFKUEGLV/NP1m1pm1a0pW97TFYmYYzBc3yvh6TnPKUz9gX7lzldRFiyyx11lHywujOoRNxic0rjNWFgBZrUlmEnRTFbLE9MYUvjGKV5X/EXy+M/t8THPeQSbmQd+1NBbgdrX5kjGIDnmjjJpp3AKQug6VddEg2KkMyvofpxs3zzLkqJ9zXrzSQPBdZo/Z5dKsjRfqEBb9gHUE+9QgJBYq4H5Q56fpvije7zU1dxW2/E4K9xabRV7nIqFa+Bdk2kUfek7/UL6jqZ3snoRXjmqyOQlhDiq+LvLu7hdZm6fcY2vTOUQxeX37Yvizv50tzoz9N1PRr9AKmmojGJjLSvpENjAtv0xG9ttthyXdyFQ8jv6g8g1tgpEqRktTlXx3DkHwQCVAjZmIHlfwCAT4ya3w1yEIWXfcIl/wAdm4oi5ZqpAyVRSDxd1l6JNJJejjrJIyCz67EkLPDC0mbGPHflDnvJXPz0WOp0GUCjx88yHTYOlgaoTgEuxW9kXwDLK7KjarSrFIsMoT1+tSVIOlhUuxXIvdGs0Y7shWeJ4pAQAQejgHqysrK38IYfw+QMVyTiez4vsvtt2bWXZDXjspZ1GyqbSk8cjSRlVs1ZHj9sU0MsM0RIeOSNgQVKsxG9RP3iJ/r5MzMZPUfxH+R8Yy/UR9o9fGM//9k=', '本田', 2);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (43, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAACAkHCv/EACoQAAAGAgEDBAAHAAAAAAAAAAECAwQFBgcICQATIREUFTFBUVNhcZPR/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAED/8QAIxEAAgECBAcAAAAAAAAAAAAAAAERAjETYbHhQVFxgZGh0f/aAAwDAQACEQMRAD8A6UdqOZnjz0vzuOt2w2YbBTcrpxtSlXUW2xneJyHaMbq2RdwblexRcUvEAiZuuRV2qVyYjMoH9wKZkzlKMlRKTm+W4yW7e9OrXHrjir5X2dyK7q9JuFybUKDka3VJ+7rL2R3CTNhQauGdYayK7JBWLgZJYjt0VNA50QRIYyhylEXDz9bml6ubE4f3JwnUdhcBWZ7Z8XXf5QK9Myldmay8dGhpR3DyAKRE42ZyCBUnzJdMiiiIJrEKCiRjFH16Ew3wa0+koOQOtchNwz/b2GHOQk2vOtB6TU4eyYyc6OWzKyJGb2AYNbujF5Vak+KnX9gaSaq6KDdVMkKq5+PcqJnbCYw0psui0FmS41sCatRkvbuGG9ZC0OzVNOIuuZLyvf8AXDPefq9kbEiiT2VLVK5FWRoMax7lqZV2wnuDVE6BGsQrH++QRfLd0UuboBM5dndWMdv86ZpW2Byd3LEhYspL4bmcDGnhRn5ArJIuOJ4iUjGEjmIt2JXqqSZJTsi8TIBT+QGaBdYAAAVVAA+gBQ4AAfkAevgPTx0MJas2u4d9f9ZX+w/+9BL5vyw7yv4nOb9zGMI/x5H66Elu7k//2Q==', '爱驰', 2);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (44, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAABwkICv/EACAQAAIDAQEAAgMBAAAAAAAAAAMEAgUGAQcACBMUFRH/xAAYAQEBAQEBAAAAAAAAAAAAAAAABAUDBv/EACIRAAICAgIDAAMBAAAAAAAAAAECAxEABAUSExQhBhUigf/aAAwDAQACEQMRAD8A7t/RPTsn5fSu3upbOFVCnutAyFNabjQ6POLDcvrgoodjFerqFygm++yQKoJsqAkX9htYJmMXqv2PxnS5Je4q9JnW9sqm5RVlmgoxfSVdHAkGbHOU9hZ39Wqv2f4Xm3a0SiDMZAcOEv8AkJMY/wARRHHAwSQKIsIkGUcuTGQc48lCcJx72M4Tj3koyj3sZR7zvO9534xk/ftpt6eztz+eMeb/AGUtXl6FiJtN5ViVrzH2lVYuZVo9JcGsLBNS1jF01cxNVciVqmOvtzIWKf4mST3NLhDu6y7P7Li9YM5TxbW0Y5wQJTfjEbEqfEQCLHZkU0WGRT7ggcp6+1KVTuWii7JX8fA5YKWBcAi/lEmhROHM1r8V53uV/UK/6/8A2IEpV5exzdCHyv6vL5ayuwFUs7m3t2LnS+gbXfP6Jz+QGkK1Zs15GyNUp6RZeSVjZS0o/wASkdlQ83wEbkqHD8gAsZd40W5BGYmBEhYsjsFVGDEMVVp25VVs+lvkfarXJsAMSQLuh1I+gWSKsWRZPxfepejYCr0Fdh9n50oAzdEHJbyk/gaCsjRF/m8hNCLTo5IyiDn6DYWjAbWjA4ZyHKMu+e5DS9DZOv7OttgIjifUkMsLCRewpiqnsAf6UqCp+EXl+vN7EYk8csVkjpMvSQUaNrZ/wgkEfbxrfIs7YfGMPjGf/9k=', '现代', 2);
INSERT INTO `com_zhuche_server`.`brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (45, NULL, NULL, NULL, 'data:image/jpeg;base64,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', '荣威', 2);
COMMIT;

CREATE TABLE `store_car_config` (
                              `id` bigint NOT NULL AUTO_INCREMENT,
                              `created_at` bigint DEFAULT NULL,
                              `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                              `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                              `name` varchar(255) DEFAULT NULL,
                              `store_id` bigint DEFAULT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

BEGIN;
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (1, NULL, NULL, NULL, '倒车雷达', 1);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (2, NULL, NULL, NULL, '倒车影像', 1);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (3, NULL, NULL, NULL, '雪地胎', 1);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (4, NULL, NULL, NULL, '行车记录仪', 1);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (5, NULL, NULL, NULL, '倒车雷达', 2);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (6, NULL, NULL, NULL, '倒车影像', 2);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (7, NULL, NULL, NULL, '雪地胎', 2);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (8, NULL, NULL, NULL, '行车记录仪', 2);
COMMIT;

DROP TABLE IF EXISTS `car_configs`;
CREATE TABLE `car_configs` (
                               `car_id` bigint NOT NULL,
                               `configs_id` bigint NOT NULL,
                               PRIMARY KEY (`car_id`,`configs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
                       `id` bigint NOT NULL AUTO_INCREMENT,
                       `created_at` bigint DEFAULT NULL,
                       `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                       `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                       `cover` varchar(255) DEFAULT NULL,
                       `displacement` float DEFAULT NULL,
                       `engine_type` varchar(255) DEFAULT NULL,
                       `gas_volume` float NOT NULL,
                       `is_self_help` bit(1) DEFAULT NULL,
                       `name` varchar(255) DEFAULT NULL,
                       `power_type` varchar(255) DEFAULT NULL,
                       `seats` int DEFAULT NULL,
                       `shift` varchar(255) DEFAULT NULL,
                       `tags` varchar(255) DEFAULT NULL,
                       `type` varchar(255) DEFAULT NULL,
                       `store_id` bigint DEFAULT NULL,
                       `brand_series_id` int DEFAULT NULL,
                       `number` varchar(255) DEFAULT NULL,
                       `sent` float NOT NULL,
                       `deposit` float NOT NULL,
                       `insurance_fee` float NOT NULL,
                       `is_online` int DEFAULT NULL,
                       `car_category_id` int DEFAULT NULL,
                       `handling_fee` float NOT NULL,
                       PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
                       `id` bigint NOT NULL AUTO_INCREMENT,
                       `created_at` bigint DEFAULT NULL,
                       `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                       `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                       `title` varchar(255) DEFAULT NULL,
                       `type` varchar(255) DEFAULT NULL,
                       `user_id` bigint DEFAULT NULL,
                       `params` text CHARACTER SET utf8 COLLATE utf8_general_ci,
                       `description` varchar(255) DEFAULT NULL,
                       `class_name` varchar(255) DEFAULT NULL,
                       `request_path` varchar(255) DEFAULT NULL,
                       PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `brand_series`;
CREATE TABLE `brand_series` (
                       `id` bigint NOT NULL AUTO_INCREMENT,
                       `created_at` bigint DEFAULT NULL,
                       `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                       `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                       `name` varchar(255) DEFAULT NULL,
                       `brand_id` bigint DEFAULT NULL,
                       PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (1, NULL, NULL, NULL, 'ERX5(混动)', 45);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (3, NULL, NULL, NULL, '领动', 44);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (4, NULL, NULL, NULL, 'IX35', 44);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (5, NULL, NULL, NULL, 'U5', 43);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (6, NULL, NULL, NULL, '凌派', 42);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (7, NULL, NULL, NULL, '缤智', 42);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (8, NULL, NULL, NULL, '奥德赛', 42);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (9, NULL, NULL, NULL, '新飞度', 42);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (10, NULL, NULL, NULL, '轩逸', 41);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (11, NULL, NULL, NULL, '奇骏', 41);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (12, NULL, NULL, NULL, '天籁', 41);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (13, NULL, NULL, NULL, '劲客', 41);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (14, NULL, NULL, NULL, 'SUV', 40);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (15, NULL, NULL, NULL, '迈腾', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (16, NULL, NULL, NULL, '朗逸', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (17, NULL, NULL, NULL, '探歌', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (18, NULL, NULL, NULL, '高尔夫', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (19, NULL, NULL, NULL, '探岳四驱', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (20, NULL, NULL, NULL, '探岳俩驱	', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (21, NULL, NULL, NULL, '高尔夫.嘉族', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (22, NULL, NULL, NULL, '帕萨特', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (23, NULL, NULL, NULL, '宝来', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (24, NULL, NULL, NULL, '速腾 经典', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (25, NULL, NULL, NULL, '宝来', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (26, NULL, NULL, NULL, '速腾 经典', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (27, NULL, NULL, NULL, '朗逸 经典', 39);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (28, NULL, NULL, NULL, '雷凌', 37);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (29, NULL, NULL, NULL, 'RAV4荣放', 37);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (30, NULL, NULL, NULL, '卡罗拉', 37);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (31, NULL, NULL, NULL, '普拉多（霸道）', 37);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (32, NULL, NULL, NULL, '普拉多2700（霸道）', 37);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (33, NULL, NULL, NULL, '亚洲狮', 37);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (34, NULL, NULL, NULL, 'GL8', 38);

DROP TABLE IF EXISTS `car_category`;
CREATE TABLE `car_category` (
                                `id` bigint NOT NULL AUTO_INCREMENT,
                                `created_at` bigint DEFAULT NULL,
                                `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                `name` varchar(255) DEFAULT NULL,
                                `store_id` bigint DEFAULT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (1, 1649424485986, NULL, NULL, '经济型', 1);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (2, 1649424512656, NULL, NULL, '舒适型', 1);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (3, 1649424522772, NULL, NULL, '精英型', 1);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (4, 1649424533242, NULL, NULL, 'SUV', 1);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (5, 1649424547400, NULL, NULL, '5-15座商务', 1);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (6, 1649424556774, NULL, NULL, '电动型', 1);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (7, 1649424563669, NULL, NULL, '高端车', 1);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (8, 1649425747964, NULL, NULL, '经济型', 2);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (9, 1649425747964, NULL, NULL, '舒适型', 2);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (10, 1649425747964, NULL, NULL, '精英型', 2);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (11, 1649425747964, NULL, NULL, 'SUV', 2);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (12, 1649425747964, NULL, NULL, '5-15座商务', 2);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (13, 1649425747964, NULL, NULL, '电动型', 2);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (14, 1649425747964, NULL, NULL, '高端车', 2);


DROP TABLE IF EXISTS `agreement`;
CREATE TABLE `agreement` (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `created_at` bigint DEFAULT NULL,
                             `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                             `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                             `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
                             `type` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of agreement
-- ----------------------------
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (1, NULL, NULL, '2022-04-13 23:03:40', '预订规则', '<p><span style=\"line-height:2\"><span style=\"color:#07a9fe\"><strong>1、支付方式</strong></span></span></p><p><span style=\"color:#999999\"><span style=\"line-height:2\"><span style=\"font-size:12px\"> 预订用车后，车租婆将为您保留车辆15分钟，为了不影响您的出 行计划，请15分钟内完成支付，避免订单因超时未支付而提交 失败。</span></span></span> </p><p><span style=\"line-height:2\"><span style=\"color:#07a9fe\"><strong>2、订单取消</strong></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 取车前可免费取消订单。 </span></span></span></p><p><span style=\"line-height:2\"><span style=\"color:#07a9fe\"><strong>3、订单修改</strong></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 取车前可免费修改订单。 取车后如修改订单，部分情况可能收取原车辆租费费及门店服 务费的车租婆比例作为改签费，具体费用以实际页面显示为准。 </span></span></span></p><p><span style=\"line-height:2\"><span style=\"color:#07a9fe\"><strong>4、订单支付</strong></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 不支持代金券支付，其它支付方式不限。 如客户未能及时、足额支付租赁费用，车租婆将以合理方式进行 催收；且客户应当每日支付相当于应付而未付费用的千分之三 作为滞纳金至所有费用结清之日止。</span></span></span></p>', 'CHECKOUT_ORDER');
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (2, NULL, NULL, '2022-04-13 23:03:49', '基本保障服务说明', '<h3 size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><span style=\"line-height:2\">责任说明</span></span></h3><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">若发生车辆发生事故，您需按照有关事故责任、车辆违章、事故处理的相关说明进行处理。</span></span></span></p><h4><span style=\"color:#07a9fe\"><span style=\"line-height:2\">基本保障服务说明：</span></span></h4><h4 style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"line-height:2\"><strong>（ 特别说明：下表列明的相关基本保障服务，并不包括《</strong>车租婆<strong>租赁合同通用条款》4-3条和本手册1.2条列明的损失，承租方仍需按照合同约定承担贬值损失及经营损失的赔偿责任。）</strong></span></h4><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">1、车租婆为租赁车辆提供基本保障说明列表所列的服务。车租婆负责处理与租赁车辆及其所涉交通事故相关的赔偿事项，不承担租赁车辆因交通事故造成的除基本保障以外的任何责任和损失；基本保障范围以外的车辆及随车设施设备、证照、标志损坏由承租方承担赔偿责任（具体赔偿额根据租车当地该车辆品牌 4S 店的维修出售价格，或根据实际补办费用确定）。如车辆在租赁期间发生事故，承租方可享受下表列明的相关基本保障，并承担相应赔偿责任：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">情形您需承担车租婆将分担车租婆分担限度本方租赁车辆受损本方应负担的车辆维修费用中小于或等于1500元的部分本方应负担的损失赔偿中超过20万元的部分至多为新车购置价【上方情形解读和说明】：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当租赁车辆在使用期间因意外事故受损，您无需自行维修，只需将车辆交还车租婆。车租婆将安排车辆的维修；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">车辆维修费用≠本方应负担的车辆维修费用（Z）；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">本方应负担的车辆维修费用（Z）=车辆维修费用－他方应承担的费用；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">本方应负担的车辆维修费用（Z）=租赁车辆维修费用（X）×本方责任比例（Y）；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当本方应负担的车辆维修费用（Z）≤1500元时，您需要赔付车租婆的费用为 Z。当 Z ≥1500元时，您至多只需承担1500元，免于承担超过1500元的部分；即对于 Z 中超过1500元且≤新车购置价的部分，车租婆将直接豁免您车辆维修费的赔偿责任。行车致使他人人身或财产损失本方应负担的损失赔偿中超过20万元的部分本方应负担的损失赔偿中小于或等于20万元的部分至多为20万元【上方情形解读和说明】：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当使用租赁车辆期间因不可归责于车租婆的意外事故，致使他人遭受人身伤亡或财产直接损失时，您将会立即得到车租婆对事故处理的协助；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">他人遭受的人身伤亡或财产直接损失≠本方应负担的他人人伤或物损赔偿（Z）；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">本方应负担的他人人伤或物损赔偿（Z）=他人遭受的人身伤亡或财产直接损失×本方责任比例（Y）；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当本方应负担的他人人伤或物损赔偿（Z）≤20万元时，车租婆承诺将按约定流程分担您的赔付额20万元，并在您无其它严重违约情形下，放弃对您的相应追偿权。但当Z大于20万元时，您仍需承担Z中超过20万元的部分。行车致使驾驶员人身损害本方需承担的驾驶员人身损失中超过5万元的部分本方需承担的驾驶员人身损失中少于或等于5万元的部分至多为5万元【上方情形解读和说明】：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当租赁车辆在使用过程中发生不可归责于车租婆的事故，致使本车驾驶员遭受人身伤亡损失时，车租婆将根据驾驶员人身伤亡情况，并结合您为减少损失而支付的必要合理的施救、保护费用，给与您及驾驶员不超过5万元的人道援助。车辆被盗抢新车购置价（或折旧价）的20%新车购置价（或折旧价）的80%至多为新车购置价（或折旧价）的80%【上方情形解读和说明】：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当租赁车辆在使用期间因不可归责于您的原因被盗抢，车租婆豁免您返还租赁车辆原物以及赔偿折价款80%的责任，但您仍需赔偿车租婆折价款的20%；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">车辆折价款=新车购置价（或折旧价）；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">车租婆并不当然会因此豁免您返还租赁车辆行驶证以及车匙原物的责任。如车辆行驶证、附加税证无法返还，您需另行赔偿车辆折价款的0.5%；如车匙无法返还，您需另行赔偿车辆折价款的5%。车辆自燃受损0车辆因自燃致损所需修复费用的100%至多为新车购置价【上方情形解读和说明】：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当租赁车辆在使用期间因车辆自身原因起火燃烧而致损的，车租婆豁免您维修后方可返还租赁车辆的责任，您只需返还车辆，车租婆将自行安排车辆的修复，并承担相关成本及费用。</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">2、免予赔偿事项：承租方租赁过程中发生任何免予赔偿事由，所有费用均须由承租方自行承担。所有费用包括但不限于事故中的各项财产损失、人身伤害赔偿及全部租车文件约定的赔偿项目等。</span></span></span></p>', 'CHECKOUT_ORDER');
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (3, NULL, NULL, '2022-04-13 23:04:19', '补充保障权益说明', '<p><strong><span style=\"font-size:16px\"><span style=\"line-height:2\">1、该补充保障系车租婆基于满足客户安全用车需求、以自身责任财产直接向承租人提供的保障权益。</span></span></strong></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><span style=\"font-size:12px\"><span style=\"color:#999999\"><span style=\"line-height:2\">2、免予赔偿事项：承租方租赁过程中发生任何免予赔偿事由，所有费用均须由承租方自行承担。所有费用包括但不限于事故中的各项财产损失、人身伤害赔偿及全部租车文件约定的赔偿项目等</span></span></span></p><p></p><p><span style=\"line-height:2\"><span style=\"font-size:16px\">补充保障</span>：</span></p><p><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\"><strong>套餐价格文字描述</strong>优享补充保障55元/天保障服务内容：1.全国免费道路救援服务。2.本车车损5000元以下无需承担车辆维修的赔偿责任（不包含轮胎损坏）。3. 三者保障自基本20万增强至30万。尊享补充保障80元/天保障服务内容：1.全国免费道路救援服务。2.本车车损5000元以下无需承担车辆维修的赔偿责任。3. 三者保障自基本20万增强至70万。百万补充保障105元/天保障服务内容：1.全国免费道路救援服务。2.本车车损5000元以下无需承担车辆维修的赔偿责任。3. 三者保障自基本20万增强至120万。</span></span></span></p><p><span style=\"font-size:16px\"><span style=\"line-height:2\">细则：</span></span></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">1、已购买补充保障的订单如果续租则续租时必须继续购买补充保障，未购买的订单如果续租则续租不可购买；细则：</span></span></span></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">2、单张订单，客户在取车前如果未购买补充保障，在取车后不可通过任何途径购买；</span></span></span></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">3、在同一城市如有未完成订单则后续订单不可继续购买，需前一张订单为已完成状态方可购买；</span></span></span></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><br/><span style=\"line-height:2\"><span style=\"font-size:16px\">操作流程：</span></span></p><p><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">1、租赁期间发生事故，需第一时间拨打110报案，并与车租婆联系报告情况（救援客服13427969604）；</span></span></span></p><p><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">2、购买了补充保障的订单，还车时发现车辆新损伤，需向车租婆提供相关材料（事故证明&amp;小区提供的物业证明，客户驾驶证复印件）即可享受补充保障；</span></span></span></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">3、购买了补充保障的订单，还车时发现车辆新损伤，如无相关材料则无法享受补充保障，且需根据损伤情况收取一定的维修押金。</span></span></span></p><p></p>', 'CHECKOUT_ORDER');
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (4, NULL, NULL, '2022-04-13 23:04:42', '费用说明', '<p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">1.车辆保证金（可退）：</span></strong></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·以“预授权”（冻结额度）形式支付，还车如无问题会操作“预授权撤销”（解冻额度）。</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·租期如满15天，以消费形式支付。</span></span></span></span></p><p><strong><span style=\"color:#07a9fe\"><span style=\"line-height:2\">2.违章押金（可退）：</span></span></strong></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·以“预授权”（冻结额度）形式支付，还车后如无违章，30-45天由发卡银行自动解冻（恢复额度）。</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·已知交通银行、农业银行解冻周期为45天，芝麻信用免押订单，解冻时间为30-60天，微信支付分免押订单，解冻时间为45天。</span></span></span></span></p><p><strong><span style=\"color:#07a9fe\"><span style=\"line-height:2\">3.延时还车费：</span></span></strong></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·超出预订还车时间所收取的费用。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·收费规则：</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">1.一般情况下，超出0.5小时内不收取费用；</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">2.超时0.5小时-1小时以内按照1小时收费；</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">3.超出6小时（含）以内，按小时收费（每小时收取的费用=车辆租赁费及门店服务费均价÷6）；</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">4.超出6小时以上，按同类型车型租赁价格的200%收取。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">超出的时间段不享受基本补充保障与补充保障服务，故此时间段如果发生事故/故障，是您全责的情况下，需要您本人承担全部责任。且如果订单修改，车辆租赁费及门店服务费发生变化，延时还车费也会变化，具体金额以实际订单为准。</span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">4.油费及加油服务费：</span></strong></span></h3><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·若还车时油量超过取车油量，根据当日油价，将油量差额部分的油费退还至账户。</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·若油量不足，需按当日油价补足差额部分的油费，且需额外支付100元加油服务费。</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·若在发车前已购买【免除加油服务费】，则仅需支付油费差额，无需再支付加油服务费。</span></span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><strong><span style=\"color:#07a9fe\"><span style=\"line-height:2\">5.充电服务费：</span></span></strong></h3><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·用户取车时应与车租婆门店工作人员共同确认电量，还车时应保持与取车时同等电量。</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·如还车时电量超过取车电量，将向用户退还电量差额部分的电费。</span></span></span></span></p><p><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·如电量不足，用户须补足电量差额部分的电费，且需额外支付50元充电服务费（电费计算标准：车辆电池容量kWh*电量差额%*1.6元）。</span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">6.ETC服务费：</span></strong></span></h3><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·如您需使用车租婆提供的ETC设备，除支付实际产生的ETC总费用外，还需支付总费用的5%的ETC服务费。如您无需使用，建议走人工收费通道现场缴费即可。</span></span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">7.异地还车费：</span></strong></span></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·取还车城市不同，或同城异门店，按照两地之间公里数收取的费用（部分城市同城异门店还车不收取费用，以最终订单显示为准）。</span></span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">8.贬值损失费：</span></strong></span></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·如租赁车辆损失总额达到或超过 5000 元(含车辆报废情形在内)，除应按相关约定支付应付费用外，承租方应另外按损失总额的20%向服务提供方赔偿车辆贬值损失。</span></span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">9.基本保障服务费：</span></strong></span></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·包含车辆损失、三者责任（额度20万元）等。</span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">10.改签费：</span></strong></span></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·修改订单所收取的费用。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">租赁中订单如需修改还车地点：实际用车时间含节假日及节假日前后三天订单、高端车订单、京牌车订单、沪牌车订单、雪地胎车型订单，修改后将收取原车辆租赁费及门店服务费的30%作为改签费。具体金额以实际页面显示为准。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><strong><span style=\"color:#07a9fe\"><span style=\"line-height:2\">11.优惠订单费用说明：</span></span></strong></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·满减订单减免的费用仅限最后一天的车辆租赁费及门店服务费部分。（例如：本田缤智，租3天免1天，即，租满3天，可减免第3天的车辆租赁费及门店服务费）。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·长租特惠订单，如提前还车后，租期＜28天，则不再享受长租优惠，需重新计算订单价格。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">12.其他费用：</span></strong></span></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><strong><span style=\"line-height:2\">·租帐篷</span></strong></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">帐篷租赁价格：20元/天，400元封顶/单。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">使用过程中出现明显破损、无法清洁的污渍、骨架变形情况下，不影响二次使用的，需赔偿100元；</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">使用过程中出现大面积无法清洁的污渍及破损，影响二次使用的，需赔偿200元。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><strong><span style=\"color:#000000\"><span style=\"line-height:2\">·租车载冰箱</span></span></strong></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">车载冰箱租赁价格：20元/天，400元封顶/单。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">使用过程中出现表面严重磨损，零配件破损，但未影响二次使用的，需赔偿100元；</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">使用过程中出现严重破损、零配件缺失，无法修理，影响二次使用的，需赔偿200元。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"></p>', 'CHECKOUT_ORDER');
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (5, NULL, NULL, '2022-04-13 23:04:55', '驾无忧产品说明', '<p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">协议须知</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">本服务协议（以下简称“本协议”）是一嗨租车与使用“一嗨租车”租车平台用户（以下或称为“您”）就使用“一嗨租车”平台租车有关的事宜所动力的有效合约。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">定义</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">1.1 行无忧：指您在“一嗨租车”平台上租用车辆的同时购买了行无忧服务。行无忧服务不是保险，是一嗨租车为特定用户提供的一项便利用户、有偿增值特权，一嗨租车据此支付的赔偿金不是保险金，是用户在使用一嗨平台租用车辆期间因发生交通违章（<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong>），并委托一嗨为用户提供代缴违章罚款及相关代办服务费用的赔偿；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">1.2 用户：是指在一嗨租车各平台上租用车辆的具有完全民事权利能力和行为能力自然人。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">服务内容</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">您在一嗨租车平台租用车辆的同时购买行无忧服务。除本协议另有约定外，在您付款成功后，在订单约定的租车期间内发生交通违章，一嗨租车会在租车合同结束后为您提供代缴违章罚款协调处理服务，并可抵扣相关服务费用。抵扣金额及内容如下：</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">行无忧服务：抵扣违章罚款及代办服务费用，<strong>每笔订单</strong>上限 600 元（购买后，普通订单仅需刷1400元违章押金预授权，芝麻信用免车辆保证金的订单仅需刷2400元违章押金预授权）。该服务作为一嗨针对用户的特殊权益，每一年内只可享受一次赔偿，请珍惜您的特权。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">用户的权利和义务</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.1 行无忧服务售出后不可单独申请退款；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.2 如您租车期间所需处理相关违章金额超过所购产品对应赔偿限额，超额部分将由您自行承担；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.3 交通违章<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong></span></span></span></span></p>', 'CHECKOUT_ORDER');

DROP TABLE IF EXISTS `holiday`;
CREATE TABLE `holiday` (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `created_at` bigint DEFAULT NULL,
                           `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                           `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                           `mark` varchar(255) DEFAULT NULL,
                           `day` bigint DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
                          `id` bigint NOT NULL AUTO_INCREMENT,
                          `created_at` bigint DEFAULT NULL,
                          `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `title` varchar(255) DEFAULT NULL,
                          `content` text,
                          `is_auto_dispatching_to_new_user` int DEFAULT NULL,
                          `amount` float DEFAULT NULL,
                          `meet_amount` float DEFAULT NULL,
                          `expired` bigint DEFAULT NULL,
                          `is_with_holiday` int DEFAULT NULL,
                          `is_with_rent` int DEFAULT NULL,
                          `is_with_service_amount` int DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of coupon
-- ----------------------------
BEGIN;
INSERT INTO `coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `is_auto_dispatching_to_new_user`, `amount`, `meet_amount`, `expired`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (1, NULL, NULL, NULL, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 1, 100, 200, 60, 0, 1, 1);
INSERT INTO `coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `is_auto_dispatching_to_new_user`, `amount`, `meet_amount`, `expired`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (2, NULL, NULL, NULL, '满800减88元优惠券', '<p style=\"text-align:center;\"><span style=\"line-height:2\"><span style=\"color:#07a9fe\"><strong>使用规则</strong></span></span></p><p style=\"text-align:left;\"><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">1、自绑定日起6个月有效，单笔订单车辆租赁费 及门店服务费部分满800元可用，仅减免车辆租 赁费及门店服务费部分，其他费用正常收取；</span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、租期包含任意法定节假日（含公休及调休） 及前一天不能使用，不可与一嗨其他优惠共享， 仅限一嗨国内自驾业务使用。</span></span></span></p>', 0, 88, 800, 60, 0, 1, 1);
INSERT INTO `coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `is_auto_dispatching_to_new_user`, `amount`, `meet_amount`, `expired`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (3, NULL, NULL, NULL, '普卡生日优惠', '<h3 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h3><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">1 .生日优惠券使用有效期为生日之日起60天有 效； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">2 .仅对车辆租赁费及门店服务费部分进行减免， 其他费用正常收取； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">3 .一年内仅可享受一次生日优惠，不可与其他优 惠同享，租期包含任意法定节假日（含公休及调 休）及前一天不能使用； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">4 .仅限一嗨国内自驾业务使用。</span></span></span></p><p></p>', 0, 50, 0, 60, 0, 1, 1);
COMMIT;

DROP TABLE IF EXISTS `user_coupon`;
CREATE TABLE `user_coupon` (
                               `id` bigint NOT NULL AUTO_INCREMENT,
                               `created_at` bigint DEFAULT NULL,
                               `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `expired` bigint DEFAULT NULL,
                               `user_id` int DEFAULT NULL,
                               `coupon_id` int DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
                          `id` bigint NOT NULL AUTO_INCREMENT,
                          `created_at` bigint DEFAULT NULL,
                          `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `alipay_token` varchar(255) DEFAULT NULL,
                          `alipay_trade_no` varchar(255) DEFAULT NULL,
                          `alipay_out_trade_no` varchar(255) DEFAULT NULL,
                          `title` varchar(255) DEFAULT NULL,
                          `amount` double DEFAULT NULL,
                          `cover`  varchar(255) DEFAULT NULL,
                          `create_alipay_at` datetime(6) DEFAULT NULL,
                          `deposit` float DEFAULT NULL,
                          `end_time_stamp` bigint DEFAULT NULL,
                          `handling_fee` float DEFAULT NULL,
                          `insurance_fee` float DEFAULT NULL,
                          `is_insurance` bit(1) DEFAULT NULL,
                          `pay_type` varchar(255) DEFAULT NULL,
                          `rent` float DEFAULT NULL,
                          `start_time_stamp` bigint DEFAULT NULL,
                          `status` int DEFAULT NULL,
                          `waiver_amount` float DEFAULT NULL,
                          `car_id` bigint DEFAULT NULL,
                          `end_store_id` bigint DEFAULT NULL,
                          `start_store_id` bigint DEFAULT NULL,
                          `user_id` bigint DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;