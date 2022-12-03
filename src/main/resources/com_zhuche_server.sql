/*
 Navicat Premium Data Transfer

 Source Server         : a1003_zhuche_online
 Source Server Type    : MySQL
 Source Server Version : 50650
 Source Host           : 42.193.248.205:3306
 Source Schema         : zhuche

 Target Server Type    : MySQL
 Target Server Version : 50650
 File Encoding         : 65001

 Date: 03/12/2022 20:29:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agreement
-- ----------------------------
DROP TABLE IF EXISTS `agreement`;
CREATE TABLE `agreement` (
                             `id` bigint(20) NOT NULL AUTO_INCREMENT,
                             `created_at` bigint(20) DEFAULT NULL,
                             `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                             `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                             `title` varchar(255) DEFAULT NULL,
                             `content` text,
                             `type` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agreement
-- ----------------------------
BEGIN;
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (1, NULL, NULL, '2022-04-13 23:03:40', '预订规则', '<p><span style=\"line-height:2\"><span style=\"color:#07a9fe\"><strong>1、支付方式</strong></span></span></p><p><span style=\"color:#999999\"><span style=\"line-height:2\"><span style=\"font-size:12px\"> 预订用车后，车租婆将为您保留车辆15分钟，为了不影响您的出 行计划，请15分钟内完成支付，避免订单因超时未支付而提交 失败。</span></span></span> </p><p><span style=\"line-height:2\"><span style=\"color:#07a9fe\"><strong>2、订单取消</strong></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 取车前可免费取消订单。 </span></span></span></p><p><span style=\"line-height:2\"><span style=\"color:#07a9fe\"><strong>3、订单修改</strong></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 取车前可免费修改订单。 取车后如修改订单，部分情况可能收取原车辆租费费及门店服 务费的车租婆比例作为改签费，具体费用以实际页面显示为准。 </span></span></span></p><p><span style=\"line-height:2\"><span style=\"color:#07a9fe\"><strong>4、订单支付</strong></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 不支持代金券支付，其它支付方式不限。 如客户未能及时、足额支付租赁费用，车租婆将以合理方式进行 催收；且客户应当每日支付相当于应付而未付费用的千分之三 作为滞纳金至所有费用结清之日止。</span></span></span></p>', 'CHECKOUT_ORDER');
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (2, NULL, NULL, '2022-04-13 23:03:49', '基本保障服务说明', '<h3 size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><span style=\"line-height:2\">责任说明</span></span></h3><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">若发生车辆发生事故，您需按照有关事故责任、车辆违章、事故处理的相关说明进行处理。</span></span></span></p><h4><span style=\"color:#07a9fe\"><span style=\"line-height:2\">基本保障服务说明：</span></span></h4><h4 style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"line-height:2\"><strong>（ 特别说明：下表列明的相关基本保障服务，并不包括《</strong>车租婆<strong>租赁合同通用条款》4-3条和本手册1.2条列明的损失，承租方仍需按照合同约定承担贬值损失及经营损失的赔偿责任。）</strong></span></h4><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">1、车租婆为租赁车辆提供基本保障说明列表所列的服务。车租婆负责处理与租赁车辆及其所涉交通事故相关的赔偿事项，不承担租赁车辆因交通事故造成的除基本保障以外的任何责任和损失；基本保障范围以外的车辆及随车设施设备、证照、标志损坏由承租方承担赔偿责任（具体赔偿额根据租车当地该车辆品牌 4S 店的维修出售价格，或根据实际补办费用确定）。如车辆在租赁期间发生事故，承租方可享受下表列明的相关基本保障，并承担相应赔偿责任：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">情形您需承担车租婆将分担车租婆分担限度本方租赁车辆受损本方应负担的车辆维修费用中小于或等于1500元的部分本方应负担的损失赔偿中超过20万元的部分至多为新车购置价【上方情形解读和说明】：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当租赁车辆在使用期间因意外事故受损，您无需自行维修，只需将车辆交还车租婆。车租婆将安排车辆的维修；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">车辆维修费用≠本方应负担的车辆维修费用（Z）；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">本方应负担的车辆维修费用（Z）=车辆维修费用－他方应承担的费用；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">本方应负担的车辆维修费用（Z）=租赁车辆维修费用（X）×本方责任比例（Y）；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当本方应负担的车辆维修费用（Z）≤1500元时，您需要赔付车租婆的费用为 Z。当 Z ≥1500元时，您至多只需承担1500元，免于承担超过1500元的部分；即对于 Z 中超过1500元且≤新车购置价的部分，车租婆将直接豁免您车辆维修费的赔偿责任。行车致使他人人身或财产损失本方应负担的损失赔偿中超过20万元的部分本方应负担的损失赔偿中小于或等于20万元的部分至多为20万元【上方情形解读和说明】：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当使用租赁车辆期间因不可归责于车租婆的意外事故，致使他人遭受人身伤亡或财产直接损失时，您将会立即得到车租婆对事故处理的协助；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">他人遭受的人身伤亡或财产直接损失≠本方应负担的他人人伤或物损赔偿（Z）；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">本方应负担的他人人伤或物损赔偿（Z）=他人遭受的人身伤亡或财产直接损失×本方责任比例（Y）；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当本方应负担的他人人伤或物损赔偿（Z）≤20万元时，车租婆承诺将按约定流程分担您的赔付额20万元，并在您无其它严重违约情形下，放弃对您的相应追偿权。但当Z大于20万元时，您仍需承担Z中超过20万元的部分。行车致使驾驶员人身损害本方需承担的驾驶员人身损失中超过5万元的部分本方需承担的驾驶员人身损失中少于或等于5万元的部分至多为5万元【上方情形解读和说明】：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当租赁车辆在使用过程中发生不可归责于车租婆的事故，致使本车驾驶员遭受人身伤亡损失时，车租婆将根据驾驶员人身伤亡情况，并结合您为减少损失而支付的必要合理的施救、保护费用，给与您及驾驶员不超过5万元的人道援助。车辆被盗抢新车购置价（或折旧价）的20%新车购置价（或折旧价）的80%至多为新车购置价（或折旧价）的80%【上方情形解读和说明】：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当租赁车辆在使用期间因不可归责于您的原因被盗抢，车租婆豁免您返还租赁车辆原物以及赔偿折价款80%的责任，但您仍需赔偿车租婆折价款的20%；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">车辆折价款=新车购置价（或折旧价）；</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">车租婆并不当然会因此豁免您返还租赁车辆行驶证以及车匙原物的责任。如车辆行驶证、附加税证无法返还，您需另行赔偿车辆折价款的0.5%；如车匙无法返还，您需另行赔偿车辆折价款的5%。车辆自燃受损0车辆因自燃致损所需修复费用的100%至多为新车购置价【上方情形解读和说明】：</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">当租赁车辆在使用期间因车辆自身原因起火燃烧而致损的，车租婆豁免您维修后方可返还租赁车辆的责任，您只需返还车辆，车租婆将自行安排车辆的修复，并承担相关成本及费用。</span></span></span></p><p style=\"text-indent:2em;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">2、免予赔偿事项：承租方租赁过程中发生任何免予赔偿事由，所有费用均须由承租方自行承担。所有费用包括但不限于事故中的各项财产损失、人身伤害赔偿及全部租车文件约定的赔偿项目等。</span></span></span></p>', 'CHECKOUT_ORDER');
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (3, NULL, NULL, '2022-04-13 23:04:19', '补充保障权益说明', '<p><strong><span style=\"font-size:16px\"><span style=\"line-height:2\">1、该补充保障系车租婆基于满足客户安全用车需求、以自身责任财产直接向承租人提供的保障权益。</span></span></strong></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><span style=\"font-size:12px\"><span style=\"color:#999999\"><span style=\"line-height:2\">2、免予赔偿事项：承租方租赁过程中发生任何免予赔偿事由，所有费用均须由承租方自行承担。所有费用包括但不限于事故中的各项财产损失、人身伤害赔偿及全部租车文件约定的赔偿项目等</span></span></span></p><p></p><p><span style=\"line-height:2\"><span style=\"font-size:16px\">补充保障</span>：</span></p><p><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\"><strong>套餐价格文字描述</strong>优享补充保障55元/天保障服务内容：1.全国免费道路救援服务。2.本车车损5000元以下无需承担车辆维修的赔偿责任（不包含轮胎损坏）。3. 三者保障自基本20万增强至30万。尊享补充保障80元/天保障服务内容：1.全国免费道路救援服务。2.本车车损5000元以下无需承担车辆维修的赔偿责任。3. 三者保障自基本20万增强至70万。百万补充保障105元/天保障服务内容：1.全国免费道路救援服务。2.本车车损5000元以下无需承担车辆维修的赔偿责任。3. 三者保障自基本20万增强至120万。</span></span></span></p><p><span style=\"font-size:16px\"><span style=\"line-height:2\">细则：</span></span></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">1、已购买补充保障的订单如果续租则续租时必须继续购买补充保障，未购买的订单如果续租则续租不可购买；细则：</span></span></span></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">2、单张订单，客户在取车前如果未购买补充保障，在取车后不可通过任何途径购买；</span></span></span></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">3、在同一城市如有未完成订单则后续订单不可继续购买，需前一张订单为已完成状态方可购买；</span></span></span></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><br/><span style=\"line-height:2\"><span style=\"font-size:16px\">操作流程：</span></span></p><p><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">1、租赁期间发生事故，需第一时间拨打110报案，并与车租婆联系报告情况（救援客服13427969604）；</span></span></span></p><p><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">2、购买了补充保障的订单，还车时发现车辆新损伤，需向车租婆提供相关材料（事故证明&amp;小区提供的物业证明，客户驾驶证复印件）即可享受补充保障；</span></span></span></p><p style=\"text-align:start;text-indent:2em;\" class=\"MsoNormal\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">3、购买了补充保障的订单，还车时发现车辆新损伤，如无相关材料则无法享受补充保障，且需根据损伤情况收取一定的维修押金。</span></span></span></p><p></p>', 'CHECKOUT_ORDER');
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (4, NULL, NULL, '2022-04-13 23:04:42', '费用说明', '<p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">1.车辆保证金（可退）：</span></strong></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·以“预授权”（冻结额度）形式支付，还车如无问题会操作“预授权撤销”（解冻额度）。</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·租期如满15天，以消费形式支付。</span></span></span></span></p><p><strong><span style=\"color:#07a9fe\"><span style=\"line-height:2\">2.违章押金（可退）：</span></span></strong></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·以“预授权”（冻结额度）形式支付，还车后如无违章，30-45天由发卡银行自动解冻（恢复额度）。</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·已知交通银行、农业银行解冻周期为45天，芝麻信用免押订单，解冻时间为30-60天，微信支付分免押订单，解冻时间为45天。</span></span></span></span></p><p><strong><span style=\"color:#07a9fe\"><span style=\"line-height:2\">3.延时还车费：</span></span></strong></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·超出预订还车时间所收取的费用。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·收费规则：</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">1.一般情况下，超出0.5小时内不收取费用；</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">2.超时0.5小时-1小时以内按照1小时收费；</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">3.超出6小时（含）以内，按小时收费（每小时收取的费用=车辆租赁费及门店服务费均价÷6）；</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">4.超出6小时以上，按同类型车型租赁价格的200%收取。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">超出的时间段不享受基本补充保障与补充保障服务，故此时间段如果发生事故/故障，是您全责的情况下，需要您本人承担全部责任。且如果订单修改，车辆租赁费及门店服务费发生变化，延时还车费也会变化，具体金额以实际订单为准。</span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">4.油费及加油服务费：</span></strong></span></h3><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·若还车时油量超过取车油量，根据当日油价，将油量差额部分的油费退还至账户。</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·若油量不足，需按当日油价补足差额部分的油费，且需额外支付100元加油服务费。</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·若在发车前已购买【免除加油服务费】，则仅需支付油费差额，无需再支付加油服务费。</span></span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><strong><span style=\"color:#07a9fe\"><span style=\"line-height:2\">5.充电服务费：</span></span></strong></h3><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·用户取车时应与车租婆门店工作人员共同确认电量，还车时应保持与取车时同等电量。</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·如还车时电量超过取车电量，将向用户退还电量差额部分的电费。</span></span></span></span></p><p><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·如电量不足，用户须补足电量差额部分的电费，且需额外支付50元充电服务费（电费计算标准：车辆电池容量kWh*电量差额%*1.6元）。</span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">6.ETC服务费：</span></strong></span></h3><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·如您需使用车租婆提供的ETC设备，除支付实际产生的ETC总费用外，还需支付总费用的5%的ETC服务费。如您无需使用，建议走人工收费通道现场缴费即可。</span></span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">7.异地还车费：</span></strong></span></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·取还车城市不同，或同城异门店，按照两地之间公里数收取的费用（部分城市同城异门店还车不收取费用，以最终订单显示为准）。</span></span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">8.贬值损失费：</span></strong></span></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">·如租赁车辆损失总额达到或超过 5000 元(含车辆报废情形在内)，除应按相关约定支付应付费用外，承租方应另外按损失总额的20%向服务提供方赔偿车辆贬值损失。</span></span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">9.基本保障服务费：</span></strong></span></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·包含车辆损失、三者责任（额度20万元）等。</span></span></span></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">10.改签费：</span></strong></span></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·修改订单所收取的费用。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">租赁中订单如需修改还车地点：实际用车时间含节假日及节假日前后三天订单、高端车订单、京牌车订单、沪牌车订单、雪地胎车型订单，修改后将收取原车辆租赁费及门店服务费的30%作为改签费。具体金额以实际页面显示为准。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><strong><span style=\"color:#07a9fe\"><span style=\"line-height:2\">11.优惠订单费用说明：</span></span></strong></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·满减订单减免的费用仅限最后一天的车辆租赁费及门店服务费部分。（例如：本田缤智，租3天免1天，即，租满3天，可减免第3天的车辆租赁费及门店服务费）。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">·长租特惠订单，如提前还车后，租期＜28天，则不再享受长租优惠，需重新计算订单价格。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"></p><h3 style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><strong><span style=\"line-height:2\">12.其他费用：</span></strong></span></h3><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><strong><span style=\"line-height:2\">·租帐篷</span></strong></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">帐篷租赁价格：20元/天，400元封顶/单。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">使用过程中出现明显破损、无法清洁的污渍、骨架变形情况下，不影响二次使用的，需赔偿100元；</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">使用过程中出现大面积无法清洁的污渍及破损，影响二次使用的，需赔偿200元。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><strong><span style=\"color:#000000\"><span style=\"line-height:2\">·租车载冰箱</span></span></strong></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">车载冰箱租赁价格：20元/天，400元封顶/单。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">使用过程中出现表面严重磨损，零配件破损，但未影响二次使用的，需赔偿100元；</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#999999\"><span style=\"font-size:12px\"><span style=\"line-height:2\">使用过程中出现严重破损、零配件缺失，无法修理，影响二次使用的，需赔偿200元。</span></span></span></p><p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"></p>', 'CHECKOUT_ORDER');
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (5, NULL, NULL, '2022-04-13 23:04:55', '驾无忧产品说明', '<p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">协议须知</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">本服务协议（以下简称“本协议”）是车租婆租车与使用“车租婆租车”租车平台用户（以下或称为“您”）就使用“车租婆租车”平台租车有关的事宜所动力的有效合约。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">定义</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">1.1 行无忧：指您在“车租婆租车”平台上租用车辆的同时购买了行无忧服务。行无忧服务不是保险，是车租婆租车为特定用户提供的一项便利用户、有偿增值特权，车租婆租车据此支付的赔偿金不是保险金，是用户在使用车租婆平台租用车辆期间因发生交通违章（<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong>），并委托车租婆为用户提供代缴违章罚款及相关代办服务费用的赔偿；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">1.2 用户：是指在车租婆租车各平台上租用车辆的具有完全民事权利能力和行为能力自然人。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">服务内容</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">您在车租婆租车平台租用车辆的同时购买行无忧服务。除本协议另有约定外，在您付款成功后，在订单约定的租车期间内发生交通违章，车租婆租车会在租车合同结束后为您提供代缴违章罚款协调处理服务，并可抵扣相关服务费用。抵扣金额及内容如下：</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">行无忧服务：抵扣违章罚款及代办服务费用，<strong>每笔订单</strong>上限 600 元（购买后，普通订单仅需刷1400元违章押金预授权，芝麻信用免车辆保证金的订单仅需刷2400元违章押金预授权）。该服务作为车租婆针对用户的特殊权益，每一年内只可享受一次赔偿，请珍惜您的特权。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">用户的权利和义务</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.1 行无忧服务售出后不可单独申请退款；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.2 如您租车期间所需处理相关违章金额超过所购产品对应赔偿限额，超额部分将由您自行承担；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.3 交通违章<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong></span></span></span></span></p>', 'CHECKOUT_ORDER');
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (6, NULL, NULL, '2022-04-13 23:04:55', '车租婆会员注册协议', '<p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">协议须知</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">本服务协议（以下简称“本协议”）是车租婆租车与使用“车租婆租车”租车平台用户（以下或称为“您”）就使用“车租婆租车”平台租车有关的事宜所动力的有效合约。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">定义</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">1.1 行无忧：指您在“车租婆租车”平台上租用车辆的同时购买了行无忧服务。行无忧服务不是保险，是车租婆租车为特定用户提供的一项便利用户、有偿增值特权，车租婆租车据此支付的赔偿金不是保险金，是用户在使用车租婆平台租用车辆期间因发生交通违章（<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong>），并委托车租婆为用户提供代缴违章罚款及相关代办服务费用的赔偿；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">1.2 用户：是指在车租婆租车各平台上租用车辆的具有完全民事权利能力和行为能力自然人。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">服务内容</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">您在车租婆租车平台租用车辆的同时购买行无忧服务。除本协议另有约定外，在您付款成功后，在订单约定的租车期间内发生交通违章，车租婆租车会在租车合同结束后为您提供代缴违章罚款协调处理服务，并可抵扣相关服务费用。抵扣金额及内容如下：</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">行无忧服务：抵扣违章罚款及代办服务费用，<strong>每笔订单</strong>上限 600 元（购买后，普通订单仅需刷1400元违章押金预授权，芝麻信用免车辆保证金的订单仅需刷2400元违章押金预授权）。该服务作为车租婆针对用户的特殊权益，每一年内只可享受一次赔偿，请珍惜您的特权。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">用户的权利和义务</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.1 行无忧服务售出后不可单独申请退款；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.2 如您租车期间所需处理相关违章金额超过所购产品对应赔偿限额，超额部分将由您自行承担；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.3 交通违章<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong></span></span></span></span></p>', 'LOGIN');
INSERT INTO `agreement` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `type`) VALUES (7, NULL, NULL, '2022-04-13 23:04:55', '车租婆租车隐私政策', '<p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">协议须知</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">本服务协议（以下简称“本协议”）是车租婆租车与使用“车租婆租车”租车平台用户（以下或称为“您”）就使用“车租婆租车”平台租车有关的事宜所动力的有效合约。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">定义</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">1.1 行无忧：指您在“车租婆租车”平台上租用车辆的同时购买了行无忧服务。行无忧服务不是保险，是车租婆租车为特定用户提供的一项便利用户、有偿增值特权，车租婆租车据此支付的赔偿金不是保险金，是用户在使用车租婆平台租用车辆期间因发生交通违章（<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong>），并委托车租婆为用户提供代缴违章罚款及相关代办服务费用的赔偿；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">1.2 用户：是指在车租婆租车各平台上租用车辆的具有完全民事权利能力和行为能力自然人。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">服务内容</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">您在车租婆租车平台租用车辆的同时购买行无忧服务。除本协议另有约定外，在您付款成功后，在订单约定的租车期间内发生交通违章，车租婆租车会在租车合同结束后为您提供代缴违章罚款协调处理服务，并可抵扣相关服务费用。抵扣金额及内容如下：</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">行无忧服务：抵扣违章罚款及代办服务费用，<strong>每笔订单</strong>上限 600 元（购买后，普通订单仅需刷1400元违章押金预授权，芝麻信用免车辆保证金的订单仅需刷2400元违章押金预授权）。该服务作为车租婆针对用户的特殊权益，每一年内只可享受一次赔偿，请珍惜您的特权。</span></span></span></span></p><p></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">用户的权利和义务</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.1 行无忧服务售出后不可单独申请退款；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.2 如您租车期间所需处理相关违章金额超过所购产品对应赔偿限额，超额部分将由您自行承担；</span></span></span></span></p><p><span style=\"color:#7b7b7b\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\">3.3 交通违章<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong></span></span></span></span></p>', 'LOGIN');
COMMIT;

-- ----------------------------
-- Table structure for alipay_account
-- ----------------------------
DROP TABLE IF EXISTS `alipay_account`;
CREATE TABLE `alipay_account` (
                                  `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                  `created_at` bigint(20) DEFAULT NULL,
                                  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                  `access_token` varchar(255) DEFAULT NULL,
                                  `avatar` varchar(255) DEFAULT NULL,
                                  `city` varchar(255) DEFAULT NULL,
                                  `code` varchar(255) DEFAULT NULL,
                                  `country_code` varchar(255) DEFAULT NULL,
                                  `expires_in` varchar(255) DEFAULT NULL,
                                  `gender` varchar(255) DEFAULT NULL,
                                  `nick_name` varchar(255) DEFAULT NULL,
                                  `phone` varchar(255) DEFAULT NULL,
                                  `province` varchar(255) DEFAULT NULL,
                                  `re_expires_in` varchar(255) DEFAULT NULL,
                                  `refresh_token` varchar(255) DEFAULT NULL,
                                  `user_id` varchar(255) DEFAULT NULL,
                                  `is_authorize_base_info` int(11) DEFAULT NULL,
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alipay_account
-- ----------------------------
BEGIN;
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (19, 1650899551635, NULL, NULL, 'authbseB13e8396ef56a4ba99aa2f2869b835B08', 'https://tfs.alipayobjects.com/images/partner/T1J_8fXdFuXXXXXXXX', '', '10000', '', '31536000', '', '楚衡', '13427969604', '', '31536000', 'authbseB6a17b719bc33421eae983c1d59551X08', '2088012728643085', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (20, 1651015696552, NULL, NULL, 'composeB_0000000000000000000000000000X75', NULL, NULL, NULL, NULL, '100000', NULL, NULL, NULL, NULL, '100000', 'composeB_0100000000000000000000000000X75', '2088042865655966', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (22, 1651036744205, NULL, NULL, 'authbseB71cafc443bef48429df6711bb8860C59', 'https://tfs.alipayobjects.com/images/partner/ATMv8TTZKDzsQAAAAAAAAAAAAADtl2AA', '惠州市', '10000', 'CN', '31536000', NULL, NULL, NULL, '广东省', '31536000', 'authbseB7700b11a5f3546519a42c785b839bX59', '2088241974604591', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (23, 1651038083834, NULL, NULL, 'authbseBa38266e42d6441feaa8e0c3c36106X28', 'https://tfs.alipayobjects.com/images/partner/ATGRtUTLf1BsYAAAAAAAAAAAAADtl2AA', '杭州市', '10000', 'CN', '31536000', 'f', '三水', NULL, '浙江省', '31536000', 'authbseBced418cb61d54612a06b5b1b28c91X28', '2088932262492289', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (24, 1651038180341, NULL, NULL, 'authbseB4d5924dae6d3400f92f542a478226C34', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB78a36eda86e94c4098df10a4732b3D34', '2088142901796342', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (25, 1651039194802, NULL, NULL, 'authbseB173d2f9d322c4c63be512a826a16aB57', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB1f8fa3ef36db4335a913b6ca6d85fF57', '2088442061166574', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (26, 1651039799035, NULL, NULL, 'authbseBa61b4133b657460dbbe8350f82522A03', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB22618d20b56544fb8ebd6b745ea0cA03', '2088612455487031', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (27, 1651040049906, NULL, NULL, 'authbseBde7f3eb63ce845588638ecc8d46f3X47', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB977b735ff4de44cb949c89b867a7cC47', '2088522837629475', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (28, 1651138114405, NULL, NULL, 'authbseB9be62497bb8547e3a4c27bbe77a04D22', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB72cb2f7c30a448fcb8bbf989e1a6eX22', '2088142901572223', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (29, 1651138127922, NULL, NULL, 'authbseBdd908576c19547a681eb7e785d288F04', 'https://tfs.alipayobjects.com/images/partner/TB1qwg4b8hDDuNjm2EIXXXc7pXa', '杭州市', '10000', 'CN', '31536000', 'm', '测试小哥', '15268819227', '浙江省', '31536000', 'authbseB099ec65d4bc144c7bff61574f6554A04', '2088802574204042', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (30, 1651155014479, NULL, NULL, 'authbseBd9ea0b0941564296a449173b652aeX24', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB5a9f001fcfaf4d6e8056ee37beb4eX24', '2088142902970246', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (31, 1651219514047, NULL, NULL, 'authbseBb3e051808f9a4072b1f6b0f6b56c9X70', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB386c2ac7be5d4d4ea4684813b858dX70', '2088442101596703', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (32, 1651391079146, NULL, NULL, 'authbseB903c31569d78451f932671cd766fdX73', NULL, '杭州市', '10000', 'CN', '31536000', 'f', '哈哈', '13456854748', '浙江省', '31536000', 'authbseB92854fc92d27490db33d7e4825ab0C73', '2088922557796730', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (33, 1651391222013, NULL, NULL, 'authbseB2a4e273994694f5d963fe3bd7fde4B43', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB7fd3697e5f2946b9a26604f6c0b6aX43', '2088142902326434', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (34, 1651392048505, NULL, NULL, 'authbseBdae8b70f3ca14180a0e2e1f5790b8B92', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBa712b2a1441a48eaac1da176f105fX92', '2088042582246920', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (35, 1651392191263, NULL, NULL, 'authbseBcc0342d213924dbf8b37f0e22dd78X91', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBe25cd6ccbb36436b9fd7549b29b0bX91', '2088042489475915', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (36, 1651396960056, NULL, NULL, 'authbseBa24e7101fb144bea800beb3a17d72C12', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB28a9366db08f4d4db7363cd9bdd88X12', '2088142903082126', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (37, 1651715264490, NULL, NULL, 'authbseBe479ee3933284630b9f8309367d96B91', 'https://tfs.alipayobjects.com/images/partner/T1K9tDXflaXXXXXXXX', '湖州市', '10000', 'CN', '31536000', 'm', '落雨殇', NULL, '浙江省', '31536000', 'authbseB359371bef88745d29036faa8308bdX91', '2088522182110914', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (38, 1651898321075, NULL, NULL, 'authbseB668119a5ac0c48b39de1168fb9709X76', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB2ca567d52710439ba5b254876d673X76', '2088032374646766', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (39, 1652132328402, NULL, NULL, 'authbseB4da49d6d9a114415918fc4e0385a8F44', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB3877509fe5b844bc8f4abc3a93dc2X44', '2088342558016448', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (40, 1652161206228, NULL, NULL, 'authbseB521fb715c01b49eeae3072491d904X97', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB8470434f1e94470dbb38b5dd1be23X97', '2088342559651972', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (41, 1652264949165, NULL, NULL, 'authbseB07740106d724486c9f9a95af28ea0C08', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB52cd5718ef2b44738cf413528ff20X08', '20880127286430852', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (42, 1652310150332, NULL, NULL, 'composeB_0000000000000000000000000000X97', NULL, NULL, NULL, NULL, '100000', NULL, NULL, NULL, NULL, '100000', 'composeB_0100000000000000000000000000X97', '2088532636361975', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (43, 1652324083457, NULL, NULL, 'authbseB07740106d724486c9f9a95af28ea0C08', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB52cd5718ef2b44738cf413528ff20X08', '20880127286430853', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (44, 1652324770205, NULL, NULL, 'authbseB07740106d724486c9f9a95af28ea0C08', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB52cd5718ef2b44738cf413528ff20X08', '20880127286430854', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (45, 1652324885159, NULL, NULL, 'authbseB07740106d724486c9f9a95af28ea0C08', 'https://tfs.alipayobjects.com/images/partner/T1J_8fXdFuXXXXXXXX', '惠州市', '10000', 'CN', '31536000', 'm', '楚衡', NULL, '广东省', '31536000', 'authbseB52cd5718ef2b44738cf413528ff20X08', '20880127286430855', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (46, 1652326318706, NULL, NULL, 'authbseB0cf9803d00bb4d02821db2c9af27cX08', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB98c7279a173042ffb00523f1f23aaC08', '20880127286430856', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (47, 1652326355068, NULL, NULL, 'authbseB0cf9803d00bb4d02821db2c9af27cX08', 'https://tfs.alipayobjects.com/images/partner/T1J_8fXdFuXXXXXXXX', '惠州市', '10000', 'CN', '31536000', 'm', '楚衡', '13427969604', '广东省', '31536000', 'authbseB98c7279a173042ffb00523f1f23aaC08', '20880127286430857', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (48, 1652329254755, NULL, NULL, 'authbseB0cf9803d00bb4d02821db2c9af27cX08', 'https://tfs.alipayobjects.com/images/partner/T1J_8fXdFuXXXXXXXX', '惠州市', '10000', 'CN', '31536000', 'm', '楚衡', '13427969604', '广东省', '31536000', 'authbseB98c7279a173042ffb00523f1f23aaC08', '20880127286430858', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (49, 1652401860229, NULL, NULL, 'authbseB6e4188e446fb4049b2f5d7e279b29X83', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB76bf14c09c56483483739acf8cafeX83', '2088122939731834', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (50, 1652403575068, NULL, NULL, 'authbseBcefd8043928743fcaeb2b7bf2f3e6X99', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB1e2046c3144e4f2b8f57cd0ab5edbA99', '2088142901954995', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (51, 1652413502009, NULL, NULL, 'authbseBd748ecac916d4d2587bf6a189859aX64', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBe83d7ddbd4134238b8978a5cea7eaA64', '2088442134006642', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (52, 1652414587361, NULL, NULL, 'authbseB6749d2eccee8459ba2a04e96ac7deX74', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBe28826d546914ee7bb4f3acafaa51B74', '2088042488046741', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (53, 1652415662807, NULL, NULL, 'authbseB126616a0742044aaaa37635f5857dD21', 'https://tfs.alipayobjects.com/images/partner/ATcamoRa8-bbEAAAAAAAAAAAAADtl2AA', '杭州市', '10000', 'CN', '31536000', 'f', '木子', '17737150436', '浙江省', '31536000', 'authbseBdf88eeefb07a445d94ceaee9553dfX21', '2088342607308214', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (54, 1652421609253, NULL, NULL, 'authbseBff0d610b37cc4f989be6d071b4875A20', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB67080fc10b3840df82c0bf3742bcbE20', '2088422604390202', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (55, 1652662446455, NULL, NULL, 'authbseBc675e576aa91467ab7b3c26e9558fX17', 'https://tfs.alipayobjects.com/images/partner/T1qKlBXdBaXXXXXXXX', '海口市', '10000', 'CN', '31536000', 'm', '车租婆租车', NULL, '海南省', '31536000', 'authbseB3a00c7ecd4d0454faa1f6435ba9e6X17', '2088902612777173', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (56, 1652667274613, NULL, NULL, 'authbseB4682626135864538aa41ffa667ab8X73', 'https://tfs.alipayobjects.com/images/partner/TB14V4ralhDDuNjm2FfXXai4pXa', '三亚市', '10000', 'CN', '31536000', 'f', '车租婆租车', '15308987118', '海南省', '31536000', 'authbseB4b46d597371b4020ab537b0feeb78X73', '2088412590305731', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (57, 1652788262990, NULL, NULL, 'authbseBb55911f58e514305ab481ad4b7911X92', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB248de1a471244226b8252e4c20764X92', '2088822477434926', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (58, 1652832603934, NULL, NULL, 'authbseB94a106132d824f69be4bc6b518e46X62', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB173ebf5e111d435daab0040f53af5F62', '2088222038020623', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (59, 1652833255470, NULL, NULL, 'authbseBdf7f424d3764466da74bf553eb9d3A51', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB9b00558b3df74603b2db6d999eb2fA51', '2088142902411514', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (60, 1652833289034, NULL, NULL, 'authbseB3449cccc752a429b94685650762efX14', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB6c532ddb111d4f758aa753c735c8fX14', '2088422288311142', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (61, 1652839986321, NULL, NULL, 'authbseBfd8e88df09e3443d8460610046e9aX69', 'https://tfs.alipayobjects.com/images/partner/TB1KTW.Xg1JDuNjHvSTXXX3KFXa', '杭州市', '10000', 'CN', '31536000', 'm', '随心', '15867725375', '浙江省', '31536000', 'authbseB65211ae8fe9e4765ac2a046a093acX69', '2088022451151698', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (62, 1652866508888, NULL, NULL, 'authbseBe947de22fb75412a9a6705759ff7bX46', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB6b5aad7eea95446983dcc2f18a0a1A46', '2088342559625463', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (63, 1652928655043, NULL, NULL, 'authbseB6b94575e49cc4462904be3e6b2c9dX46', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB4d818365e79d4a6ea970347801708X46', '2088802021436468', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (64, 1653020420749, NULL, NULL, 'authbseB7741a751947247c4a19367e3d4580X08', 'https://tfs.alipayobjects.com/images/partner/ATlzibQ6_rywQAAAAAAAAAAAAADtl2AA', '杭州市', '10000', 'CN', '31536000', 'f', '蛋某人', '18684702615', '浙江省', '31536000', 'authbseBcf5308ba6ade49c9b02773f2a0290X08', '2088342237892080', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (65, 1653023152852, NULL, NULL, 'authbseBd1e6e6b653224f37833193ecd2d0aX30', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB976a7052dae1403fa4b858cb9acd5A30', '2088342169747304', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (66, 1653028908105, NULL, NULL, 'authbseB1f2d6153652e4f4ba21efcad5dd87X09', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB4a4bf77fb50b46b29eda61690b844X09', '2088142903674093', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (67, 1653132290209, NULL, NULL, 'authbseB0e9224e826d64c329e1f86b787b89X88', 'https://tfs.alipayobjects.com/images/partner/TB18y3VcJdFDuNkUuLAXXXvvFXa', '杭州市', '10000', 'CN', '31536000', 'f', '测试勿扰', '17612288619', '浙江省', '31536000', 'authbseB4577e9921a2c4ad38ce5c8c69da0aF88', '2088042501247881', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (68, 1653228765605, NULL, NULL, 'authbseB76bc7f249fe548f382476f1df1f3bC53', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB551117b05193492dbb3e34d39c362X53', '2088142817438532', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (69, 1653460356814, NULL, NULL, 'authbseB86b294e15e7d466e958021d617ec3X22', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB3289bcfd5fc24505806e434bd7df1D22', '2088022471200222', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (70, 1654136320741, NULL, NULL, 'authbseBaa68e55622314f5faf982b854b126X74', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB23562da0033143da854d1764e56aeX74', '2088022516550743', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (71, 1654570566292, NULL, NULL, 'authbseBd9cca4c067ec4790a842f90f5a841X16', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB8050b7fe698547d8ba9ba8c7836f4E16', '2088432384490162', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (72, 1654613827296, NULL, NULL, 'authbseB2f752e9b00f74956a827f92a8278aX77', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBbcb88dbe203f41fc8258caaf92bb9X77', '2088522332728778', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (73, 1654841190878, NULL, NULL, 'authbseB40d542e053f449e786c138f739040X72', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB0cd02387f89f4898a74d484d72c79D72', '2088632461019721', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (74, 1655102092151, NULL, NULL, 'authbseB04373a43bd8d43df869201c1309ceX87', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB08912eea943840bbacf7836a42bb9D87', '2088802366908875', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (75, 1656676562134, NULL, NULL, 'composeB_0000000000000000000000000000X31', NULL, NULL, NULL, NULL, '100000', NULL, NULL, NULL, NULL, '100000', 'composeB_0100000000000000000000000000X31', '2088342505212574', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (76, 1656754028317, NULL, NULL, 'authbseBebb5f37b8837492083e1a672ebf86A91', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB45097369defb49be9101d87584640X91', '2088932712641915', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (77, 1656924264785, NULL, NULL, 'authbseB3b64d4200e6a418eb4e016f553b81X36', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBe78b14241e734b94a0a0725897d2dE36', '2088422437207366', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (78, 1657354856182, NULL, NULL, 'authbseB809ce897c600470db1a1d0d5f6613X86', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBfb961cf62d6b47a6910ebdaf5ca78X86', '2088422322830860', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (79, 1657428962165, NULL, NULL, 'authbseBf11c8242a9214a7885dd7925befe7X66', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB6a164c1eba1e4077a5dc8fb5e2554X66', '2088112066201663', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (80, 1657518576143, NULL, NULL, 'authbseB485d12fbdccd4db38aa238fad4240A13', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB9a1e934699e344ada1ebc4007edddX13', '2088922301812130', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (81, 1657899035491, NULL, NULL, 'authbseBfc3948f064974bba8414a28ad038eX60', 'https://tfs.alipayobjects.com/images/partner/ATb3SzQq7-uOgAAAAAAAAAAAAADtl2AA', '', '10000', '', '31536000', '', '初见', NULL, '', '31536000', 'authbseB379a43e6a4c74ff19fbb10a546241X60', '2088522422987603', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (82, 1657899313340, NULL, NULL, 'authbseBa9930ca8779b4e1e97036b99e11e5X73', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBd0ecdbadc4ce49c8a6dd32d8332fbX73', '2088522312379734', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (83, 1658029524452, NULL, NULL, 'authbseBf6cb083894ac415faf1418fd2787aB01', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBc74aeca548c641d488b03617a9ff2D01', '2088432785369010', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (84, 1658168863009, NULL, NULL, 'authbseB28953e7291e346afb2db5b64c4da0X03', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBaa12a75b46214ece87524f6a8d893B03', '2088022807730030', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (85, 1659182161149, NULL, NULL, 'authbseB64f1a682e3024b7d89e29a5f23428F35', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBf687d5f6bf9e4982b32a7400e7696X35', '2088232977569354', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (86, 1659271826516, NULL, NULL, 'authbseB9cc9282593e8426bb16ce1183723fX38', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB3938f3815f414e469a3369083f360X38', '2088232826664382', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (87, 1659535574771, NULL, NULL, 'authbseB861d348afd9e4ebfb62b18b9a2b78X00', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB76b70cb59db6427795b861ffe65d4X00', '2088532747849007', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (88, 1659535836776, NULL, NULL, 'authbseBfe88410a994242f386b19c3665f79X96', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB6126db7bf5534183a0df88f166e35F96', '2088422208111962', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (89, 1659698056003, NULL, NULL, 'authbseB494b9043ded44c8e889fff1190cc6E24', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBf512ae111b3c478cb6214de08bde2A24', '2088342558176249', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (90, 1659944220966, NULL, NULL, 'authbseB7899a6a9637e4e08bc99380750c79A18', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB3a8f5b74bf5d4655b6e8b813fb7e6X18', '2088812099184183', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (91, 1660216637626, NULL, NULL, 'authbseB4d4f690841b0476abecc4d69cb41eX56', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBc7ebce15e0554383aaceab82c7079F56', '2088442341009562', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (92, 1660223360031, NULL, NULL, 'authbseB7b42833551744d368b3044d933149X50', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBc86ec839b8fe454b9d5487d7fbb80X50', '2088122139664509', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (93, 1662839661809, NULL, NULL, 'authbseBbcb856dc635a4eae8a81a35395229X26', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBc9d6e8cb04d94756aa7117e3f5c36X26', '2088032893842261', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (94, 1663042624562, NULL, NULL, 'authbseBfde7d425ee614f78baf253bf75536X47', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBdd451dcb45a84e218d0841f14b179X47', '2088342559625472', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (95, 1664068663009, NULL, NULL, 'authbseB2a68743cd00141a4a9a8886482702X47', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB8a18185ac6cf43e9b1bfede7e4555C47', '2088032041260471', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (96, 1665498335494, NULL, NULL, 'authbseBfd2c0f2591ca49a7aa7f256a1e80fX89', 'https://tfs.alipayobjects.com/images/partner/TB18_DScY8CDuNkUuZmXXaU0XXa', '', '10000', '', '31536000', '', '', NULL, '', '31536000', 'authbseB24660799f4c34aceb8ed9dbb5c319X89', '2088432736224890', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (97, 1665984172785, NULL, NULL, 'authbseB0d272a2e51ac4b9d93e0058ce83adX56', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB1c6664f65a694f6091528e54a41d4X56', '2088342559318567', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (98, 1666096651282, NULL, NULL, 'authbseB233b3b41d5cf46d3b715f2f6bf04eB96', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB74eac83b86a8470c8330dfdd9648aF96', '2088442956454960', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (99, 1666785274071, NULL, NULL, 'authbseB1827c4877b3b42f488fc7771698deX44', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBdaf177928a754388883f39600c014X44', '2088342560000444', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (100, 1666932854572, NULL, NULL, 'authbseB670414fcbcf94947b58ec98eb2dd7X88', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBffbf0ac51c3e45ec91a22a0b79745B88', '2088702901890884', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (101, 1667274902139, NULL, NULL, 'authbseB262105be30c849bab04bea9057dccE33', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBdf7a3fcc43ac4c0a8dae99e40a366X33', '2088122346993331', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (102, 1667287210794, NULL, NULL, 'authbseBd4e3252094684e7a88ba3d23d4ccdX22', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB9d09d7c10304405aaa65b62ae050aX22', '2088432859614220', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (103, 1667648520464, NULL, NULL, 'authbseB94348c07170f4446bbd0d50337be4D71', 'https://tfs.alipayobjects.com/images/partner/ATjmEXQZzSTYYAAAAAAAAAAAAADtl2AA', '', '10000', '', '31536000', '', '凯南', NULL, '', '31536000', 'authbseB9f9f59f56d734366b43db522155acX71', '2088522979761716', 1);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (104, 1667866021696, NULL, NULL, 'authbseB10cd2a7e99014c00a654405029849D97', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB0d6a85edfc0c43b5a5d05ad703100X97', '2088042981196974', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (105, 1669259203531, NULL, NULL, 'authbseBd653315b9ba2493aa821c0097ed42X51', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB58e73bbb6ac445178d5155b7b0267X51', '2088632382042514', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (106, 1669385089989, NULL, NULL, 'authbseB80cccd16d46c4356a6e86215200a6X53', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB70429b02a85e43e28db81c2d16f3aX53', '2088542405895532', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (107, 1669855016905, NULL, NULL, 'authbseB598641da4a134d01aab2babe04c1cC40', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB924e5956baa0438c801f7141b54ccE40', '2088142901675403', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (108, 1669858337044, NULL, NULL, 'authbseBc481a667043144fe8a38936de10e8X39', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBcd54e3b2f6164b7f866af99def51fX39', '2088042489214392', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (109, 1669863026639, NULL, NULL, 'authbseB93738b0239a04d9fa6578d5099bb4A03', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBa80c01d8501e4af28ad03fcc0415dF03', '2088512232736036', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (110, 1669866988269, NULL, NULL, 'authbseB3651af501d604c0ead48b433d5440X28', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBa980a94d14354ecd86bc270e26337X28', '2088442091103280', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (111, 1669869717498, NULL, NULL, 'authbseBbb6e029b06d449c19e7b041061a9eX53', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseBc80ca23f411a43d0a02356a2d078aX53', '2088442483643538', NULL);
INSERT INTO `alipay_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `access_token`, `avatar`, `city`, `code`, `country_code`, `expires_in`, `gender`, `nick_name`, `phone`, `province`, `re_expires_in`, `refresh_token`, `user_id`, `is_authorize_base_info`) VALUES (112, 1669873829086, NULL, NULL, 'authbseB018de040c824495e96456c33fcfefX74', NULL, NULL, NULL, NULL, '31536000', NULL, NULL, NULL, NULL, '31536000', 'authbseB686fd831f3b640d1b49fadf724218F74', '2088142903401749', NULL);
COMMIT;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
                        `code` varchar(255) NOT NULL,
                        `name` varchar(255) DEFAULT NULL,
                        `city_code` varchar(255) DEFAULT NULL,
                        `province_code` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
BEGIN;
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110101', '东城区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110102', '西城区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110105', '朝阳区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110106', '丰台区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110107', '石景山区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110108', '海淀区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110109', '门头沟区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110111', '房山区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110112', '通州区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110113', '顺义区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110114', '昌平区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110115', '大兴区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110116', '怀柔区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110117', '平谷区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110118', '密云区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('110119', '延庆区', '1101', '11');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120101', '和平区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120102', '河东区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120103', '河西区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120104', '南开区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120105', '河北区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120106', '红桥区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120110', '东丽区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120111', '西青区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120112', '津南区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120113', '北辰区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120114', '武清区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120115', '宝坻区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120116', '滨海新区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120117', '宁河区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120118', '静海区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('120119', '蓟州区', '1201', '12');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130102', '长安区', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130104', '桥西区', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130105', '新华区', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130107', '井陉矿区', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130108', '裕华区', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130109', '藁城区', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130110', '鹿泉区', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130111', '栾城区', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130121', '井陉县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130123', '正定县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130125', '行唐县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130126', '灵寿县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130127', '高邑县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130128', '深泽县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130129', '赞皇县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130130', '无极县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130131', '平山县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130132', '元氏县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130133', '赵县', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130171', '石家庄高新技术产业开发区', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130172', '石家庄循环化工园区', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130181', '辛集市', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130183', '晋州市', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130184', '新乐市', '1301', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130202', '路南区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130203', '路北区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130204', '古冶区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130205', '开平区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130207', '丰南区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130208', '丰润区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130209', '曹妃甸区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130224', '滦南县', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130225', '乐亭县', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130227', '迁西县', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130229', '玉田县', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130271', '河北唐山芦台经济开发区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130272', '唐山市汉沽管理区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130273', '唐山高新技术产业开发区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130274', '河北唐山海港经济开发区', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130281', '遵化市', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130283', '迁安市', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130284', '滦州市', '1302', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130302', '海港区', '1303', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130303', '山海关区', '1303', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130304', '北戴河区', '1303', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130306', '抚宁区', '1303', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130321', '青龙满族自治县', '1303', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130322', '昌黎县', '1303', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130324', '卢龙县', '1303', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130371', '秦皇岛市经济技术开发区', '1303', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130372', '北戴河新区', '1303', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130402', '邯山区', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130403', '丛台区', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130404', '复兴区', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130406', '峰峰矿区', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130407', '肥乡区', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130408', '永年区', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130423', '临漳县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130424', '成安县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130425', '大名县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130426', '涉县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130427', '磁县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130430', '邱县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130431', '鸡泽县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130432', '广平县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130433', '馆陶县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130434', '魏县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130435', '曲周县', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130471', '邯郸经济技术开发区', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130473', '邯郸冀南新区', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130481', '武安市', '1304', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130502', '襄都区', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130503', '信都区', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130505', '任泽区', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130506', '南和区', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130522', '临城县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130523', '内丘县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130524', '柏乡县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130525', '隆尧县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130528', '宁晋县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130529', '巨鹿县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130530', '新河县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130531', '广宗县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130532', '平乡县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130533', '威县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130534', '清河县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130535', '临西县', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130571', '河北邢台经济开发区', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130581', '南宫市', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130582', '沙河市', '1305', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130602', '竞秀区', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130606', '莲池区', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130607', '满城区', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130608', '清苑区', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130609', '徐水区', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130623', '涞水县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130624', '阜平县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130626', '定兴县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130627', '唐县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130628', '高阳县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130629', '容城县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130630', '涞源县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130631', '望都县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130632', '安新县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130633', '易县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130634', '曲阳县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130635', '蠡县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130636', '顺平县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130637', '博野县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130638', '雄县', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130671', '保定高新技术产业开发区', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130672', '保定白沟新城', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130681', '涿州市', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130682', '定州市', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130683', '安国市', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130684', '高碑店市', '1306', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130702', '桥东区', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130703', '桥西区', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130705', '宣化区', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130706', '下花园区', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130708', '万全区', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130709', '崇礼区', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130722', '张北县', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130723', '康保县', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130724', '沽源县', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130725', '尚义县', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130726', '蔚县', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130727', '阳原县', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130728', '怀安县', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130730', '怀来县', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130731', '涿鹿县', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130732', '赤城县', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130771', '张家口经济开发区', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130772', '张家口市察北管理区', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130773', '张家口市塞北管理区', '1307', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130802', '双桥区', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130803', '双滦区', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130804', '鹰手营子矿区', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130821', '承德县', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130822', '兴隆县', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130824', '滦平县', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130825', '隆化县', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130826', '丰宁满族自治县', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130827', '宽城满族自治县', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130828', '围场满族蒙古族自治县', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130871', '承德高新技术产业开发区', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130881', '平泉市', '1308', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130902', '新华区', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130903', '运河区', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130921', '沧县', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130922', '青县', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130923', '东光县', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130924', '海兴县', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130925', '盐山县', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130926', '肃宁县', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130927', '南皮县', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130928', '吴桥县', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130929', '献县', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130930', '孟村回族自治县', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130971', '河北沧州经济开发区', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130972', '沧州高新技术产业开发区', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130973', '沧州渤海新区', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130981', '泊头市', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130982', '任丘市', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130983', '黄骅市', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('130984', '河间市', '1309', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131002', '安次区', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131003', '广阳区', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131022', '固安县', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131023', '永清县', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131024', '香河县', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131025', '大城县', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131026', '文安县', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131028', '大厂回族自治县', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131071', '廊坊经济技术开发区', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131081', '霸州市', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131082', '三河市', '1310', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131102', '桃城区', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131103', '冀州区', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131121', '枣强县', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131122', '武邑县', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131123', '武强县', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131124', '饶阳县', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131125', '安平县', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131126', '故城县', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131127', '景县', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131128', '阜城县', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131171', '河北衡水高新技术产业开发区', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131172', '衡水滨湖新区', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('131182', '深州市', '1311', '13');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140105', '小店区', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140106', '迎泽区', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140107', '杏花岭区', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140108', '尖草坪区', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140109', '万柏林区', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140110', '晋源区', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140121', '清徐县', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140122', '阳曲县', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140123', '娄烦县', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140171', '山西转型综合改革示范区', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140181', '古交市', '1401', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140212', '新荣区', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140213', '平城区', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140214', '云冈区', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140215', '云州区', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140221', '阳高县', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140222', '天镇县', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140223', '广灵县', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140224', '灵丘县', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140225', '浑源县', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140226', '左云县', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140271', '山西大同经济开发区', '1402', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140302', '城区', '1403', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140303', '矿区', '1403', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140311', '郊区', '1403', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140321', '平定县', '1403', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140322', '盂县', '1403', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140403', '潞州区', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140404', '上党区', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140405', '屯留区', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140406', '潞城区', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140423', '襄垣县', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140425', '平顺县', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140426', '黎城县', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140427', '壶关县', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140428', '长子县', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140429', '武乡县', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140430', '沁县', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140431', '沁源县', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140471', '山西长治高新技术产业园区', '1404', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140502', '城区', '1405', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140521', '沁水县', '1405', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140522', '阳城县', '1405', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140524', '陵川县', '1405', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140525', '泽州县', '1405', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140581', '高平市', '1405', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140602', '朔城区', '1406', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140603', '平鲁区', '1406', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140621', '山阴县', '1406', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140622', '应县', '1406', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140623', '右玉县', '1406', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140671', '山西朔州经济开发区', '1406', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140681', '怀仁市', '1406', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140702', '榆次区', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140703', '太谷区', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140721', '榆社县', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140722', '左权县', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140723', '和顺县', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140724', '昔阳县', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140725', '寿阳县', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140727', '祁县', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140728', '平遥县', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140729', '灵石县', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140781', '介休市', '1407', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140802', '盐湖区', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140821', '临猗县', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140822', '万荣县', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140823', '闻喜县', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140824', '稷山县', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140825', '新绛县', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140826', '绛县', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140827', '垣曲县', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140828', '夏县', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140829', '平陆县', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140830', '芮城县', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140881', '永济市', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140882', '河津市', '1408', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140902', '忻府区', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140921', '定襄县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140922', '五台县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140923', '代县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140924', '繁峙县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140925', '宁武县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140926', '静乐县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140927', '神池县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140928', '五寨县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140929', '岢岚县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140930', '河曲县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140931', '保德县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140932', '偏关县', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140971', '五台山风景名胜区', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('140981', '原平市', '1409', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141002', '尧都区', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141021', '曲沃县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141022', '翼城县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141023', '襄汾县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141024', '洪洞县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141025', '古县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141026', '安泽县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141027', '浮山县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141028', '吉县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141029', '乡宁县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141030', '大宁县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141031', '隰县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141032', '永和县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141033', '蒲县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141034', '汾西县', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141081', '侯马市', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141082', '霍州市', '1410', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141102', '离石区', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141121', '文水县', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141122', '交城县', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141123', '兴县', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141124', '临县', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141125', '柳林县', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141126', '石楼县', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141127', '岚县', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141128', '方山县', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141129', '中阳县', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141130', '交口县', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141181', '孝义市', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('141182', '汾阳市', '1411', '14');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150102', '新城区', '1501', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150103', '回民区', '1501', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150104', '玉泉区', '1501', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150105', '赛罕区', '1501', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150121', '土默特左旗', '1501', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150122', '托克托县', '1501', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150123', '和林格尔县', '1501', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150124', '清水河县', '1501', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150125', '武川县', '1501', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150172', '呼和浩特经济技术开发区', '1501', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150202', '东河区', '1502', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150203', '昆都仑区', '1502', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150204', '青山区', '1502', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150205', '石拐区', '1502', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150206', '白云鄂博矿区', '1502', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150207', '九原区', '1502', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150221', '土默特右旗', '1502', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150222', '固阳县', '1502', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150223', '达尔罕茂明安联合旗', '1502', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150271', '包头稀土高新技术产业开发区', '1502', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150302', '海勃湾区', '1503', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150303', '海南区', '1503', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150304', '乌达区', '1503', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150402', '红山区', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150403', '元宝山区', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150404', '松山区', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150421', '阿鲁科尔沁旗', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150422', '巴林左旗', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150423', '巴林右旗', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150424', '林西县', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150425', '克什克腾旗', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150426', '翁牛特旗', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150428', '喀喇沁旗', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150429', '宁城县', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150430', '敖汉旗', '1504', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150502', '科尔沁区', '1505', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150521', '科尔沁左翼中旗', '1505', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150522', '科尔沁左翼后旗', '1505', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150523', '开鲁县', '1505', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150524', '库伦旗', '1505', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150525', '奈曼旗', '1505', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150526', '扎鲁特旗', '1505', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150571', '通辽经济技术开发区', '1505', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150581', '霍林郭勒市', '1505', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150602', '东胜区', '1506', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150603', '康巴什区', '1506', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150621', '达拉特旗', '1506', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150622', '准格尔旗', '1506', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150623', '鄂托克前旗', '1506', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150624', '鄂托克旗', '1506', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150625', '杭锦旗', '1506', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150626', '乌审旗', '1506', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150627', '伊金霍洛旗', '1506', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150702', '海拉尔区', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150703', '扎赉诺尔区', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150721', '阿荣旗', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150722', '莫力达瓦达斡尔族自治旗', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150723', '鄂伦春自治旗', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150724', '鄂温克族自治旗', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150725', '陈巴尔虎旗', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150726', '新巴尔虎左旗', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150727', '新巴尔虎右旗', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150781', '满洲里市', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150782', '牙克石市', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150783', '扎兰屯市', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150784', '额尔古纳市', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150785', '根河市', '1507', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150802', '临河区', '1508', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150821', '五原县', '1508', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150822', '磴口县', '1508', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150823', '乌拉特前旗', '1508', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150824', '乌拉特中旗', '1508', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150825', '乌拉特后旗', '1508', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150826', '杭锦后旗', '1508', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150902', '集宁区', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150921', '卓资县', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150922', '化德县', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150923', '商都县', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150924', '兴和县', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150925', '凉城县', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150926', '察哈尔右翼前旗', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150927', '察哈尔右翼中旗', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150928', '察哈尔右翼后旗', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150929', '四子王旗', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('150981', '丰镇市', '1509', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152201', '乌兰浩特市', '1522', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152202', '阿尔山市', '1522', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152221', '科尔沁右翼前旗', '1522', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152222', '科尔沁右翼中旗', '1522', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152223', '扎赉特旗', '1522', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152224', '突泉县', '1522', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152501', '二连浩特市', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152502', '锡林浩特市', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152522', '阿巴嘎旗', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152523', '苏尼特左旗', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152524', '苏尼特右旗', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152525', '东乌珠穆沁旗', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152526', '西乌珠穆沁旗', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152527', '太仆寺旗', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152528', '镶黄旗', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152529', '正镶白旗', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152530', '正蓝旗', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152531', '多伦县', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152571', '乌拉盖管委会', '1525', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152921', '阿拉善左旗', '1529', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152922', '阿拉善右旗', '1529', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152923', '额济纳旗', '1529', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('152971', '内蒙古阿拉善高新技术产业开发区', '1529', '15');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210102', '和平区', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210103', '沈河区', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210104', '大东区', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210105', '皇姑区', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210106', '铁西区', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210111', '苏家屯区', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210112', '浑南区', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210113', '沈北新区', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210114', '于洪区', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210115', '辽中区', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210123', '康平县', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210124', '法库县', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210181', '新民市', '2101', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210202', '中山区', '2102', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210203', '西岗区', '2102', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210204', '沙河口区', '2102', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210211', '甘井子区', '2102', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210212', '旅顺口区', '2102', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210213', '金州区', '2102', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210214', '普兰店区', '2102', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210224', '长海县', '2102', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210281', '瓦房店市', '2102', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210283', '庄河市', '2102', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210302', '铁东区', '2103', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210303', '铁西区', '2103', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210304', '立山区', '2103', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210311', '千山区', '2103', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210321', '台安县', '2103', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210323', '岫岩满族自治县', '2103', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210381', '海城市', '2103', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210402', '新抚区', '2104', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210403', '东洲区', '2104', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210404', '望花区', '2104', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210411', '顺城区', '2104', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210421', '抚顺县', '2104', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210422', '新宾满族自治县', '2104', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210423', '清原满族自治县', '2104', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210502', '平山区', '2105', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210503', '溪湖区', '2105', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210504', '明山区', '2105', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210505', '南芬区', '2105', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210521', '本溪满族自治县', '2105', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210522', '桓仁满族自治县', '2105', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210602', '元宝区', '2106', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210603', '振兴区', '2106', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210604', '振安区', '2106', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210624', '宽甸满族自治县', '2106', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210681', '东港市', '2106', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210682', '凤城市', '2106', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210702', '古塔区', '2107', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210703', '凌河区', '2107', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210711', '太和区', '2107', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210726', '黑山县', '2107', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210727', '义县', '2107', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210781', '凌海市', '2107', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210782', '北镇市', '2107', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210802', '站前区', '2108', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210803', '西市区', '2108', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210804', '鲅鱼圈区', '2108', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210811', '老边区', '2108', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210881', '盖州市', '2108', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210882', '大石桥市', '2108', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210902', '海州区', '2109', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210903', '新邱区', '2109', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210904', '太平区', '2109', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210905', '清河门区', '2109', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210911', '细河区', '2109', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210921', '阜新蒙古族自治县', '2109', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('210922', '彰武县', '2109', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211002', '白塔区', '2110', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211003', '文圣区', '2110', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211004', '宏伟区', '2110', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211005', '弓长岭区', '2110', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211011', '太子河区', '2110', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211021', '辽阳县', '2110', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211081', '灯塔市', '2110', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211102', '双台子区', '2111', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211103', '兴隆台区', '2111', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211104', '大洼区', '2111', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211122', '盘山县', '2111', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211202', '银州区', '2112', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211204', '清河区', '2112', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211221', '铁岭县', '2112', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211223', '西丰县', '2112', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211224', '昌图县', '2112', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211281', '调兵山市', '2112', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211282', '开原市', '2112', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211302', '双塔区', '2113', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211303', '龙城区', '2113', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211321', '朝阳县', '2113', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211322', '建平县', '2113', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211324', '喀喇沁左翼蒙古族自治县', '2113', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211381', '北票市', '2113', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211382', '凌源市', '2113', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211402', '连山区', '2114', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211403', '龙港区', '2114', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211404', '南票区', '2114', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211421', '绥中县', '2114', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211422', '建昌县', '2114', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('211481', '兴城市', '2114', '21');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220102', '南关区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220103', '宽城区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220104', '朝阳区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220105', '二道区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220106', '绿园区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220112', '双阳区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220113', '九台区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220122', '农安县', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220171', '长春经济技术开发区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220172', '长春净月高新技术产业开发区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220173', '长春高新技术产业开发区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220174', '长春汽车经济技术开发区', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220182', '榆树市', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220183', '德惠市', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220184', '公主岭市', '2201', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220202', '昌邑区', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220203', '龙潭区', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220204', '船营区', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220211', '丰满区', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220221', '永吉县', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220271', '吉林经济开发区', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220272', '吉林高新技术产业开发区', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220273', '吉林中国新加坡食品区', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220281', '蛟河市', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220282', '桦甸市', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220283', '舒兰市', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220284', '磐石市', '2202', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220302', '铁西区', '2203', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220303', '铁东区', '2203', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220322', '梨树县', '2203', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220323', '伊通满族自治县', '2203', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220382', '双辽市', '2203', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220402', '龙山区', '2204', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220403', '西安区', '2204', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220421', '东丰县', '2204', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220422', '东辽县', '2204', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220502', '东昌区', '2205', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220503', '二道江区', '2205', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220521', '通化县', '2205', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220523', '辉南县', '2205', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220524', '柳河县', '2205', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220581', '梅河口市', '2205', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220582', '集安市', '2205', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220602', '浑江区', '2206', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220605', '江源区', '2206', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220621', '抚松县', '2206', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220622', '靖宇县', '2206', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220623', '长白朝鲜族自治县', '2206', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220681', '临江市', '2206', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220702', '宁江区', '2207', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220721', '前郭尔罗斯蒙古族自治县', '2207', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220722', '长岭县', '2207', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220723', '乾安县', '2207', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220771', '吉林松原经济开发区', '2207', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220781', '扶余市', '2207', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220802', '洮北区', '2208', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220821', '镇赉县', '2208', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220822', '通榆县', '2208', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220871', '吉林白城经济开发区', '2208', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220881', '洮南市', '2208', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('220882', '大安市', '2208', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('222401', '延吉市', '2224', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('222402', '图们市', '2224', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('222403', '敦化市', '2224', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('222404', '珲春市', '2224', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('222405', '龙井市', '2224', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('222406', '和龙市', '2224', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('222424', '汪清县', '2224', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('222426', '安图县', '2224', '22');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230102', '道里区', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230103', '南岗区', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230104', '道外区', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230108', '平房区', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230109', '松北区', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230110', '香坊区', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230111', '呼兰区', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230112', '阿城区', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230113', '双城区', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230123', '依兰县', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230124', '方正县', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230125', '宾县', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230126', '巴彦县', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230127', '木兰县', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230128', '通河县', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230129', '延寿县', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230183', '尚志市', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230184', '五常市', '2301', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230202', '龙沙区', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230203', '建华区', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230204', '铁锋区', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230205', '昂昂溪区', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230206', '富拉尔基区', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230207', '碾子山区', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230208', '梅里斯达斡尔族区', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230221', '龙江县', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230223', '依安县', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230224', '泰来县', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230225', '甘南县', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230227', '富裕县', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230229', '克山县', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230230', '克东县', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230231', '拜泉县', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230281', '讷河市', '2302', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230302', '鸡冠区', '2303', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230303', '恒山区', '2303', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230304', '滴道区', '2303', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230305', '梨树区', '2303', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230306', '城子河区', '2303', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230307', '麻山区', '2303', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230321', '鸡东县', '2303', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230381', '虎林市', '2303', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230382', '密山市', '2303', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230402', '向阳区', '2304', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230403', '工农区', '2304', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230404', '南山区', '2304', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230405', '兴安区', '2304', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230406', '东山区', '2304', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230407', '兴山区', '2304', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230421', '萝北县', '2304', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230422', '绥滨县', '2304', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230502', '尖山区', '2305', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230503', '岭东区', '2305', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230505', '四方台区', '2305', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230506', '宝山区', '2305', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230521', '集贤县', '2305', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230522', '友谊县', '2305', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230523', '宝清县', '2305', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230524', '饶河县', '2305', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230602', '萨尔图区', '2306', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230603', '龙凤区', '2306', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230604', '让胡路区', '2306', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230605', '红岗区', '2306', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230606', '大同区', '2306', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230621', '肇州县', '2306', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230622', '肇源县', '2306', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230623', '林甸县', '2306', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230624', '杜尔伯特蒙古族自治县', '2306', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230671', '大庆高新技术产业开发区', '2306', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230717', '伊美区', '2307', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230718', '乌翠区', '2307', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230719', '友好区', '2307', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230722', '嘉荫县', '2307', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230723', '汤旺县', '2307', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230724', '丰林县', '2307', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230725', '大箐山县', '2307', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230726', '南岔县', '2307', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230751', '金林区', '2307', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230781', '铁力市', '2307', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230803', '向阳区', '2308', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230804', '前进区', '2308', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230805', '东风区', '2308', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230811', '郊区', '2308', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230822', '桦南县', '2308', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230826', '桦川县', '2308', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230828', '汤原县', '2308', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230881', '同江市', '2308', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230882', '富锦市', '2308', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230883', '抚远市', '2308', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230902', '新兴区', '2309', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230903', '桃山区', '2309', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230904', '茄子河区', '2309', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('230921', '勃利县', '2309', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231002', '东安区', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231003', '阳明区', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231004', '爱民区', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231005', '西安区', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231025', '林口县', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231071', '牡丹江经济技术开发区', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231081', '绥芬河市', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231083', '海林市', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231084', '宁安市', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231085', '穆棱市', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231086', '东宁市', '2310', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231102', '爱辉区', '2311', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231123', '逊克县', '2311', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231124', '孙吴县', '2311', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231181', '北安市', '2311', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231182', '五大连池市', '2311', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231183', '嫩江市', '2311', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231202', '北林区', '2312', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231221', '望奎县', '2312', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231222', '兰西县', '2312', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231223', '青冈县', '2312', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231224', '庆安县', '2312', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231225', '明水县', '2312', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231226', '绥棱县', '2312', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231281', '安达市', '2312', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231282', '肇东市', '2312', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('231283', '海伦市', '2312', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('232701', '漠河市', '2327', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('232721', '呼玛县', '2327', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('232722', '塔河县', '2327', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('232761', '加格达奇区', '2327', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('232762', '松岭区', '2327', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('232763', '新林区', '2327', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('232764', '呼中区', '2327', '23');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310101', '黄浦区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310104', '徐汇区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310105', '长宁区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310106', '静安区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310107', '普陀区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310109', '虹口区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310110', '杨浦区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310112', '闵行区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310113', '宝山区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310114', '嘉定区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310115', '浦东新区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310116', '金山区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310117', '松江区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310118', '青浦区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310120', '奉贤区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('310151', '崇明区', '3101', '31');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320102', '玄武区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320104', '秦淮区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320105', '建邺区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320106', '鼓楼区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320111', '浦口区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320113', '栖霞区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320114', '雨花台区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320115', '江宁区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320116', '六合区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320117', '溧水区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320118', '高淳区', '3201', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320205', '锡山区', '3202', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320206', '惠山区', '3202', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320211', '滨湖区', '3202', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320213', '梁溪区', '3202', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320214', '新吴区', '3202', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320281', '江阴市', '3202', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320282', '宜兴市', '3202', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320302', '鼓楼区', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320303', '云龙区', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320305', '贾汪区', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320311', '泉山区', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320312', '铜山区', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320321', '丰县', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320322', '沛县', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320324', '睢宁县', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320371', '徐州经济技术开发区', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320381', '新沂市', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320382', '邳州市', '3203', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320402', '天宁区', '3204', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320404', '钟楼区', '3204', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320411', '新北区', '3204', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320412', '武进区', '3204', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320413', '金坛区', '3204', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320481', '溧阳市', '3204', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320505', '虎丘区', '3205', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320506', '吴中区', '3205', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320507', '相城区', '3205', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320508', '姑苏区', '3205', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320509', '吴江区', '3205', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320571', '苏州工业园区', '3205', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320581', '常熟市', '3205', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320582', '张家港市', '3205', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320583', '昆山市', '3205', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320585', '太仓市', '3205', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320612', '通州区', '3206', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320613', '崇川区', '3206', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320614', '海门区', '3206', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320623', '如东县', '3206', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320671', '南通经济技术开发区', '3206', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320681', '启东市', '3206', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320682', '如皋市', '3206', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320685', '海安市', '3206', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320703', '连云区', '3207', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320706', '海州区', '3207', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320707', '赣榆区', '3207', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320722', '东海县', '3207', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320723', '灌云县', '3207', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320724', '灌南县', '3207', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320771', '连云港经济技术开发区', '3207', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320772', '连云港高新技术产业开发区', '3207', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320803', '淮安区', '3208', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320804', '淮阴区', '3208', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320812', '清江浦区', '3208', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320813', '洪泽区', '3208', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320826', '涟水县', '3208', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320830', '盱眙县', '3208', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320831', '金湖县', '3208', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320871', '淮安经济技术开发区', '3208', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320902', '亭湖区', '3209', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320903', '盐都区', '3209', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320904', '大丰区', '3209', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320921', '响水县', '3209', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320922', '滨海县', '3209', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320923', '阜宁县', '3209', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320924', '射阳县', '3209', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320925', '建湖县', '3209', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320971', '盐城经济技术开发区', '3209', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('320981', '东台市', '3209', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321002', '广陵区', '3210', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321003', '邗江区', '3210', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321012', '江都区', '3210', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321023', '宝应县', '3210', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321071', '扬州经济技术开发区', '3210', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321081', '仪征市', '3210', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321084', '高邮市', '3210', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321102', '京口区', '3211', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321111', '润州区', '3211', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321112', '丹徒区', '3211', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321171', '镇江新区', '3211', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321181', '丹阳市', '3211', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321182', '扬中市', '3211', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321183', '句容市', '3211', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321202', '海陵区', '3212', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321203', '高港区', '3212', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321204', '姜堰区', '3212', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321271', '泰州医药高新技术产业开发区', '3212', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321281', '兴化市', '3212', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321282', '靖江市', '3212', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321283', '泰兴市', '3212', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321302', '宿城区', '3213', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321311', '宿豫区', '3213', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321322', '沭阳县', '3213', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321323', '泗阳县', '3213', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321324', '泗洪县', '3213', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('321371', '宿迁经济技术开发区', '3213', '32');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330102', '上城区', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330105', '拱墅区', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330106', '西湖区', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330108', '滨江区', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330109', '萧山区', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330110', '余杭区', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330111', '富阳区', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330112', '临安区', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330113', '临平区', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330114', '钱塘区', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330122', '桐庐县', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330127', '淳安县', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330182', '建德市', '3301', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330203', '海曙区', '3302', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330205', '江北区', '3302', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330206', '北仑区', '3302', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330211', '镇海区', '3302', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330212', '鄞州区', '3302', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330213', '奉化区', '3302', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330225', '象山县', '3302', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330226', '宁海县', '3302', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330281', '余姚市', '3302', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330282', '慈溪市', '3302', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330302', '鹿城区', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330303', '龙湾区', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330304', '瓯海区', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330305', '洞头区', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330324', '永嘉县', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330326', '平阳县', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330327', '苍南县', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330328', '文成县', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330329', '泰顺县', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330371', '温州经济技术开发区', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330381', '瑞安市', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330382', '乐清市', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330383', '龙港市', '3303', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330402', '南湖区', '3304', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330411', '秀洲区', '3304', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330421', '嘉善县', '3304', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330424', '海盐县', '3304', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330481', '海宁市', '3304', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330482', '平湖市', '3304', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330483', '桐乡市', '3304', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330502', '吴兴区', '3305', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330503', '南浔区', '3305', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330521', '德清县', '3305', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330522', '长兴县', '3305', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330523', '安吉县', '3305', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330602', '越城区', '3306', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330603', '柯桥区', '3306', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330604', '上虞区', '3306', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330624', '新昌县', '3306', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330681', '诸暨市', '3306', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330683', '嵊州市', '3306', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330702', '婺城区', '3307', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330703', '金东区', '3307', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330723', '武义县', '3307', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330726', '浦江县', '3307', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330727', '磐安县', '3307', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330781', '兰溪市', '3307', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330782', '义乌市', '3307', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330783', '东阳市', '3307', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330784', '永康市', '3307', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330802', '柯城区', '3308', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330803', '衢江区', '3308', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330822', '常山县', '3308', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330824', '开化县', '3308', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330825', '龙游县', '3308', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330881', '江山市', '3308', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330902', '定海区', '3309', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330903', '普陀区', '3309', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330921', '岱山县', '3309', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('330922', '嵊泗县', '3309', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331002', '椒江区', '3310', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331003', '黄岩区', '3310', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331004', '路桥区', '3310', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331022', '三门县', '3310', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331023', '天台县', '3310', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331024', '仙居县', '3310', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331081', '温岭市', '3310', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331082', '临海市', '3310', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331083', '玉环市', '3310', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331102', '莲都区', '3311', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331121', '青田县', '3311', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331122', '缙云县', '3311', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331123', '遂昌县', '3311', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331124', '松阳县', '3311', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331125', '云和县', '3311', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331126', '庆元县', '3311', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331127', '景宁畲族自治县', '3311', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('331181', '龙泉市', '3311', '33');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340102', '瑶海区', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340103', '庐阳区', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340104', '蜀山区', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340111', '包河区', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340121', '长丰县', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340122', '肥东县', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340123', '肥西县', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340124', '庐江县', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340171', '合肥高新技术产业开发区', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340172', '合肥经济技术开发区', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340173', '合肥新站高新技术产业开发区', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340181', '巢湖市', '3401', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340202', '镜湖区', '3402', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340207', '鸠江区', '3402', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340209', '弋江区', '3402', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340210', '湾沚区', '3402', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340212', '繁昌区', '3402', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340223', '南陵县', '3402', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340271', '芜湖经济技术开发区', '3402', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340272', '安徽芜湖三山经济开发区', '3402', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340281', '无为市', '3402', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340302', '龙子湖区', '3403', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340303', '蚌山区', '3403', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340304', '禹会区', '3403', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340311', '淮上区', '3403', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340321', '怀远县', '3403', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340322', '五河县', '3403', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340323', '固镇县', '3403', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340371', '蚌埠市高新技术开发区', '3403', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340372', '蚌埠市经济开发区', '3403', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340402', '大通区', '3404', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340403', '田家庵区', '3404', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340404', '谢家集区', '3404', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340405', '八公山区', '3404', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340406', '潘集区', '3404', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340421', '凤台县', '3404', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340422', '寿县', '3404', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340503', '花山区', '3405', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340504', '雨山区', '3405', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340506', '博望区', '3405', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340521', '当涂县', '3405', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340522', '含山县', '3405', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340523', '和县', '3405', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340602', '杜集区', '3406', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340603', '相山区', '3406', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340604', '烈山区', '3406', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340621', '濉溪县', '3406', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340705', '铜官区', '3407', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340706', '义安区', '3407', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340711', '郊区', '3407', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340722', '枞阳县', '3407', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340802', '迎江区', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340803', '大观区', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340811', '宜秀区', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340822', '怀宁县', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340825', '太湖县', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340826', '宿松县', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340827', '望江县', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340828', '岳西县', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340871', '安徽安庆经济开发区', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340881', '桐城市', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('340882', '潜山市', '3408', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341002', '屯溪区', '3410', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341003', '黄山区', '3410', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341004', '徽州区', '3410', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341021', '歙县', '3410', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341022', '休宁县', '3410', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341023', '黟县', '3410', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341024', '祁门县', '3410', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341102', '琅琊区', '3411', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341103', '南谯区', '3411', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341122', '来安县', '3411', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341124', '全椒县', '3411', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341125', '定远县', '3411', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341126', '凤阳县', '3411', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341171', '中新苏滁高新技术产业开发区', '3411', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341172', '滁州经济技术开发区', '3411', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341181', '天长市', '3411', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341182', '明光市', '3411', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341202', '颍州区', '3412', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341203', '颍东区', '3412', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341204', '颍泉区', '3412', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341221', '临泉县', '3412', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341222', '太和县', '3412', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341225', '阜南县', '3412', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341226', '颍上县', '3412', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341271', '阜阳合肥现代产业园区', '3412', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341272', '阜阳经济技术开发区', '3412', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341282', '界首市', '3412', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341302', '埇桥区', '3413', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341321', '砀山县', '3413', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341322', '萧县', '3413', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341323', '灵璧县', '3413', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341324', '泗县', '3413', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341371', '宿州马鞍山现代产业园区', '3413', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341372', '宿州经济技术开发区', '3413', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341502', '金安区', '3415', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341503', '裕安区', '3415', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341504', '叶集区', '3415', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341522', '霍邱县', '3415', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341523', '舒城县', '3415', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341524', '金寨县', '3415', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341525', '霍山县', '3415', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341602', '谯城区', '3416', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341621', '涡阳县', '3416', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341622', '蒙城县', '3416', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341623', '利辛县', '3416', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341702', '贵池区', '3417', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341721', '东至县', '3417', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341722', '石台县', '3417', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341723', '青阳县', '3417', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341802', '宣州区', '3418', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341821', '郎溪县', '3418', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341823', '泾县', '3418', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341824', '绩溪县', '3418', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341825', '旌德县', '3418', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341871', '宣城市经济开发区', '3418', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341881', '宁国市', '3418', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('341882', '广德市', '3418', '34');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350102', '鼓楼区', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350103', '台江区', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350104', '仓山区', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350105', '马尾区', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350111', '晋安区', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350112', '长乐区', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350121', '闽侯县', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350122', '连江县', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350123', '罗源县', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350124', '闽清县', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350125', '永泰县', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350128', '平潭县', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350181', '福清市', '3501', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350203', '思明区', '3502', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350205', '海沧区', '3502', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350206', '湖里区', '3502', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350211', '集美区', '3502', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350212', '同安区', '3502', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350213', '翔安区', '3502', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350302', '城厢区', '3503', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350303', '涵江区', '3503', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350304', '荔城区', '3503', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350305', '秀屿区', '3503', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350322', '仙游县', '3503', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350404', '三元区', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350405', '沙县区', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350421', '明溪县', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350423', '清流县', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350424', '宁化县', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350425', '大田县', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350426', '尤溪县', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350428', '将乐县', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350429', '泰宁县', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350430', '建宁县', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350481', '永安市', '3504', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350502', '鲤城区', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350503', '丰泽区', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350504', '洛江区', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350505', '泉港区', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350521', '惠安县', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350524', '安溪县', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350525', '永春县', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350526', '德化县', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350527', '金门县', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350581', '石狮市', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350582', '晋江市', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350583', '南安市', '3505', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350602', '芗城区', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350603', '龙文区', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350604', '龙海区', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350605', '长泰区', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350622', '云霄县', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350623', '漳浦县', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350624', '诏安县', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350626', '东山县', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350627', '南靖县', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350628', '平和县', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350629', '华安县', '3506', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350702', '延平区', '3507', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350703', '建阳区', '3507', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350721', '顺昌县', '3507', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350722', '浦城县', '3507', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350723', '光泽县', '3507', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350724', '松溪县', '3507', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350725', '政和县', '3507', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350781', '邵武市', '3507', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350782', '武夷山市', '3507', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350783', '建瓯市', '3507', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350802', '新罗区', '3508', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350803', '永定区', '3508', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350821', '长汀县', '3508', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350823', '上杭县', '3508', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350824', '武平县', '3508', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350825', '连城县', '3508', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350881', '漳平市', '3508', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350902', '蕉城区', '3509', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350921', '霞浦县', '3509', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350922', '古田县', '3509', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350923', '屏南县', '3509', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350924', '寿宁县', '3509', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350925', '周宁县', '3509', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350926', '柘荣县', '3509', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350981', '福安市', '3509', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('350982', '福鼎市', '3509', '35');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360102', '东湖区', '3601', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360103', '西湖区', '3601', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360104', '青云谱区', '3601', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360111', '青山湖区', '3601', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360112', '新建区', '3601', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360113', '红谷滩区', '3601', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360121', '南昌县', '3601', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360123', '安义县', '3601', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360124', '进贤县', '3601', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360202', '昌江区', '3602', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360203', '珠山区', '3602', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360222', '浮梁县', '3602', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360281', '乐平市', '3602', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360302', '安源区', '3603', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360313', '湘东区', '3603', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360321', '莲花县', '3603', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360322', '上栗县', '3603', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360323', '芦溪县', '3603', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360402', '濂溪区', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360403', '浔阳区', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360404', '柴桑区', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360423', '武宁县', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360424', '修水县', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360425', '永修县', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360426', '德安县', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360428', '都昌县', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360429', '湖口县', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360430', '彭泽县', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360481', '瑞昌市', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360482', '共青城市', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360483', '庐山市', '3604', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360502', '渝水区', '3605', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360521', '分宜县', '3605', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360602', '月湖区', '3606', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360603', '余江区', '3606', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360681', '贵溪市', '3606', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360702', '章贡区', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360703', '南康区', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360704', '赣县区', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360722', '信丰县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360723', '大余县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360724', '上犹县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360725', '崇义县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360726', '安远县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360728', '定南县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360729', '全南县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360730', '宁都县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360731', '于都县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360732', '兴国县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360733', '会昌县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360734', '寻乌县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360735', '石城县', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360781', '瑞金市', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360783', '龙南市', '3607', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360802', '吉州区', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360803', '青原区', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360821', '吉安县', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360822', '吉水县', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360823', '峡江县', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360824', '新干县', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360825', '永丰县', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360826', '泰和县', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360827', '遂川县', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360828', '万安县', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360829', '安福县', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360830', '永新县', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360881', '井冈山市', '3608', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360902', '袁州区', '3609', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360921', '奉新县', '3609', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360922', '万载县', '3609', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360923', '上高县', '3609', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360924', '宜丰县', '3609', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360925', '靖安县', '3609', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360926', '铜鼓县', '3609', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360981', '丰城市', '3609', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360982', '樟树市', '3609', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('360983', '高安市', '3609', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361002', '临川区', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361003', '东乡区', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361021', '南城县', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361022', '黎川县', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361023', '南丰县', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361024', '崇仁县', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361025', '乐安县', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361026', '宜黄县', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361027', '金溪县', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361028', '资溪县', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361030', '广昌县', '3610', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361102', '信州区', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361103', '广丰区', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361104', '广信区', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361123', '玉山县', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361124', '铅山县', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361125', '横峰县', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361126', '弋阳县', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361127', '余干县', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361128', '鄱阳县', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361129', '万年县', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361130', '婺源县', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('361181', '德兴市', '3611', '36');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370102', '历下区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370103', '市中区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370104', '槐荫区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370105', '天桥区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370112', '历城区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370113', '长清区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370114', '章丘区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370115', '济阳区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370116', '莱芜区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370117', '钢城区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370124', '平阴县', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370126', '商河县', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370171', '济南高新技术产业开发区', '3701', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370202', '市南区', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370203', '市北区', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370211', '黄岛区', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370212', '崂山区', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370213', '李沧区', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370214', '城阳区', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370215', '即墨区', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370271', '青岛高新技术产业开发区', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370281', '胶州市', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370283', '平度市', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370285', '莱西市', '3702', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370302', '淄川区', '3703', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370303', '张店区', '3703', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370304', '博山区', '3703', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370305', '临淄区', '3703', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370306', '周村区', '3703', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370321', '桓台县', '3703', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370322', '高青县', '3703', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370323', '沂源县', '3703', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370402', '市中区', '3704', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370403', '薛城区', '3704', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370404', '峄城区', '3704', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370405', '台儿庄区', '3704', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370406', '山亭区', '3704', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370481', '滕州市', '3704', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370502', '东营区', '3705', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370503', '河口区', '3705', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370505', '垦利区', '3705', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370522', '利津县', '3705', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370523', '广饶县', '3705', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370571', '东营经济技术开发区', '3705', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370572', '东营港经济开发区', '3705', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370602', '芝罘区', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370611', '福山区', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370612', '牟平区', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370613', '莱山区', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370614', '蓬莱区', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370671', '烟台高新技术产业开发区', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370672', '烟台经济技术开发区', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370681', '龙口市', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370682', '莱阳市', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370683', '莱州市', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370685', '招远市', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370686', '栖霞市', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370687', '海阳市', '3706', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370702', '潍城区', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370703', '寒亭区', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370704', '坊子区', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370705', '奎文区', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370724', '临朐县', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370725', '昌乐县', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370772', '潍坊滨海经济技术开发区', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370781', '青州市', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370782', '诸城市', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370783', '寿光市', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370784', '安丘市', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370785', '高密市', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370786', '昌邑市', '3707', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370811', '任城区', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370812', '兖州区', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370826', '微山县', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370827', '鱼台县', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370828', '金乡县', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370829', '嘉祥县', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370830', '汶上县', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370831', '泗水县', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370832', '梁山县', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370871', '济宁高新技术产业开发区', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370881', '曲阜市', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370883', '邹城市', '3708', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370902', '泰山区', '3709', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370911', '岱岳区', '3709', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370921', '宁阳县', '3709', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370923', '东平县', '3709', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370982', '新泰市', '3709', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('370983', '肥城市', '3709', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371002', '环翠区', '3710', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371003', '文登区', '3710', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371071', '威海火炬高技术产业开发区', '3710', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371072', '威海经济技术开发区', '3710', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371073', '威海临港经济技术开发区', '3710', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371082', '荣成市', '3710', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371083', '乳山市', '3710', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371102', '东港区', '3711', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371103', '岚山区', '3711', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371121', '五莲县', '3711', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371122', '莒县', '3711', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371171', '日照经济技术开发区', '3711', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371302', '兰山区', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371311', '罗庄区', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371312', '河东区', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371321', '沂南县', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371322', '郯城县', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371323', '沂水县', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371324', '兰陵县', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371325', '费县', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371326', '平邑县', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371327', '莒南县', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371328', '蒙阴县', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371329', '临沭县', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371371', '临沂高新技术产业开发区', '3713', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371402', '德城区', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371403', '陵城区', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371422', '宁津县', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371423', '庆云县', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371424', '临邑县', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371425', '齐河县', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371426', '平原县', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371427', '夏津县', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371428', '武城县', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371471', '德州经济技术开发区', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371472', '德州运河经济开发区', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371481', '乐陵市', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371482', '禹城市', '3714', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371502', '东昌府区', '3715', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371503', '茌平区', '3715', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371521', '阳谷县', '3715', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371522', '莘县', '3715', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371524', '东阿县', '3715', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371525', '冠县', '3715', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371526', '高唐县', '3715', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371581', '临清市', '3715', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371602', '滨城区', '3716', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371603', '沾化区', '3716', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371621', '惠民县', '3716', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371622', '阳信县', '3716', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371623', '无棣县', '3716', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371625', '博兴县', '3716', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371681', '邹平市', '3716', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371702', '牡丹区', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371703', '定陶区', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371721', '曹县', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371722', '单县', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371723', '成武县', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371724', '巨野县', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371725', '郓城县', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371726', '鄄城县', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371728', '东明县', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371771', '菏泽经济技术开发区', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('371772', '菏泽高新技术开发区', '3717', '37');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410102', '中原区', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410103', '二七区', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410104', '管城回族区', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410105', '金水区', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410106', '上街区', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410108', '惠济区', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410122', '中牟县', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410171', '郑州经济技术开发区', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410172', '郑州高新技术产业开发区', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410173', '郑州航空港经济综合实验区', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410181', '巩义市', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410182', '荥阳市', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410183', '新密市', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410184', '新郑市', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410185', '登封市', '4101', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410202', '龙亭区', '4102', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410203', '顺河回族区', '4102', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410204', '鼓楼区', '4102', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410205', '禹王台区', '4102', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410212', '祥符区', '4102', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410221', '杞县', '4102', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410222', '通许县', '4102', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410223', '尉氏县', '4102', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410225', '兰考县', '4102', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410302', '老城区', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410303', '西工区', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410304', '瀍河回族区', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410305', '涧西区', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410307', '偃师区', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410308', '孟津区', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410311', '洛龙区', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410323', '新安县', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410324', '栾川县', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410325', '嵩县', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410326', '汝阳县', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410327', '宜阳县', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410328', '洛宁县', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410329', '伊川县', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410371', '洛阳高新技术产业开发区', '4103', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410402', '新华区', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410403', '卫东区', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410404', '石龙区', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410411', '湛河区', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410421', '宝丰县', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410422', '叶县', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410423', '鲁山县', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410425', '郏县', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410471', '平顶山高新技术产业开发区', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410472', '平顶山市城乡一体化示范区', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410481', '舞钢市', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410482', '汝州市', '4104', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410502', '文峰区', '4105', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410503', '北关区', '4105', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410505', '殷都区', '4105', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410506', '龙安区', '4105', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410522', '安阳县', '4105', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410523', '汤阴县', '4105', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410526', '滑县', '4105', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410527', '内黄县', '4105', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410571', '安阳高新技术产业开发区', '4105', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410581', '林州市', '4105', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410602', '鹤山区', '4106', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410603', '山城区', '4106', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410611', '淇滨区', '4106', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410621', '浚县', '4106', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410622', '淇县', '4106', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410671', '鹤壁经济技术开发区', '4106', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410702', '红旗区', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410703', '卫滨区', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410704', '凤泉区', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410711', '牧野区', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410721', '新乡县', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410724', '获嘉县', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410725', '原阳县', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410726', '延津县', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410727', '封丘县', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410771', '新乡高新技术产业开发区', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410772', '新乡经济技术开发区', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410773', '新乡市平原城乡一体化示范区', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410781', '卫辉市', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410782', '辉县市', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410783', '长垣市', '4107', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410802', '解放区', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410803', '中站区', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410804', '马村区', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410811', '山阳区', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410821', '修武县', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410822', '博爱县', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410823', '武陟县', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410825', '温县', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410871', '焦作城乡一体化示范区', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410882', '沁阳市', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410883', '孟州市', '4108', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410902', '华龙区', '4109', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410922', '清丰县', '4109', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410923', '南乐县', '4109', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410926', '范县', '4109', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410927', '台前县', '4109', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410928', '濮阳县', '4109', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410971', '河南濮阳工业园区', '4109', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('410972', '濮阳经济技术开发区', '4109', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411002', '魏都区', '4110', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411003', '建安区', '4110', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411024', '鄢陵县', '4110', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411025', '襄城县', '4110', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411071', '许昌经济技术开发区', '4110', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411081', '禹州市', '4110', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411082', '长葛市', '4110', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411102', '源汇区', '4111', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411103', '郾城区', '4111', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411104', '召陵区', '4111', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411121', '舞阳县', '4111', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411122', '临颍县', '4111', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411171', '漯河经济技术开发区', '4111', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411202', '湖滨区', '4112', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411203', '陕州区', '4112', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411221', '渑池县', '4112', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411224', '卢氏县', '4112', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411271', '河南三门峡经济开发区', '4112', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411281', '义马市', '4112', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411282', '灵宝市', '4112', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411302', '宛城区', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411303', '卧龙区', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411321', '南召县', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411322', '方城县', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411323', '西峡县', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411324', '镇平县', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411325', '内乡县', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411326', '淅川县', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411327', '社旗县', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411328', '唐河县', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411329', '新野县', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411330', '桐柏县', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411371', '南阳高新技术产业开发区', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411372', '南阳市城乡一体化示范区', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411381', '邓州市', '4113', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411402', '梁园区', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411403', '睢阳区', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411421', '民权县', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411422', '睢县', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411423', '宁陵县', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411424', '柘城县', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411425', '虞城县', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411426', '夏邑县', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411471', '豫东综合物流产业聚集区', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411472', '河南商丘经济开发区', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411481', '永城市', '4114', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411502', '浉河区', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411503', '平桥区', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411521', '罗山县', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411522', '光山县', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411523', '新县', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411524', '商城县', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411525', '固始县', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411526', '潢川县', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411527', '淮滨县', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411528', '息县', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411571', '信阳高新技术产业开发区', '4115', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411602', '川汇区', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411603', '淮阳区', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411621', '扶沟县', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411622', '西华县', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411623', '商水县', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411624', '沈丘县', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411625', '郸城县', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411627', '太康县', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411628', '鹿邑县', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411671', '河南周口经济开发区', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411681', '项城市', '4116', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411702', '驿城区', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411721', '西平县', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411722', '上蔡县', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411723', '平舆县', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411724', '正阳县', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411725', '确山县', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411726', '泌阳县', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411727', '汝南县', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411728', '遂平县', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411729', '新蔡县', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('411771', '河南驻马店经济开发区', '4117', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('419001', '济源市', '4190', '41');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420102', '江岸区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420103', '江汉区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420104', '硚口区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420105', '汉阳区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420106', '武昌区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420107', '青山区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420111', '洪山区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420112', '东西湖区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420113', '汉南区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420114', '蔡甸区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420115', '江夏区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420116', '黄陂区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420117', '新洲区', '4201', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420202', '黄石港区', '4202', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420203', '西塞山区', '4202', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420204', '下陆区', '4202', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420205', '铁山区', '4202', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420222', '阳新县', '4202', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420281', '大冶市', '4202', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420302', '茅箭区', '4203', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420303', '张湾区', '4203', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420304', '郧阳区', '4203', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420322', '郧西县', '4203', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420323', '竹山县', '4203', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420324', '竹溪县', '4203', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420325', '房县', '4203', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420381', '丹江口市', '4203', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420502', '西陵区', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420503', '伍家岗区', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420504', '点军区', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420505', '猇亭区', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420506', '夷陵区', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420525', '远安县', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420526', '兴山县', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420527', '秭归县', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420528', '长阳土家族自治县', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420529', '五峰土家族自治县', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420581', '宜都市', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420582', '当阳市', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420583', '枝江市', '4205', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420602', '襄城区', '4206', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420606', '樊城区', '4206', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420607', '襄州区', '4206', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420624', '南漳县', '4206', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420625', '谷城县', '4206', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420626', '保康县', '4206', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420682', '老河口市', '4206', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420683', '枣阳市', '4206', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420684', '宜城市', '4206', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420702', '梁子湖区', '4207', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420703', '华容区', '4207', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420704', '鄂城区', '4207', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420802', '东宝区', '4208', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420804', '掇刀区', '4208', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420822', '沙洋县', '4208', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420881', '钟祥市', '4208', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420882', '京山市', '4208', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420902', '孝南区', '4209', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420921', '孝昌县', '4209', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420922', '大悟县', '4209', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420923', '云梦县', '4209', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420981', '应城市', '4209', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420982', '安陆市', '4209', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('420984', '汉川市', '4209', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421002', '沙市区', '4210', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421003', '荆州区', '4210', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421022', '公安县', '4210', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421024', '江陵县', '4210', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421071', '荆州经济技术开发区', '4210', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421081', '石首市', '4210', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421083', '洪湖市', '4210', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421087', '松滋市', '4210', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421088', '监利市', '4210', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421102', '黄州区', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421121', '团风县', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421122', '红安县', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421123', '罗田县', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421124', '英山县', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421125', '浠水县', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421126', '蕲春县', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421127', '黄梅县', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421171', '龙感湖管理区', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421181', '麻城市', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421182', '武穴市', '4211', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421202', '咸安区', '4212', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421221', '嘉鱼县', '4212', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421222', '通城县', '4212', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421223', '崇阳县', '4212', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421224', '通山县', '4212', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421281', '赤壁市', '4212', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421303', '曾都区', '4213', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421321', '随县', '4213', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('421381', '广水市', '4213', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('422801', '恩施市', '4228', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('422802', '利川市', '4228', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('422822', '建始县', '4228', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('422823', '巴东县', '4228', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('422825', '宣恩县', '4228', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('422826', '咸丰县', '4228', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('422827', '来凤县', '4228', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('422828', '鹤峰县', '4228', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('429004', '仙桃市', '4290', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('429005', '潜江市', '4290', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('429006', '天门市', '4290', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('429021', '神农架林区', '4290', '42');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430102', '芙蓉区', '4301', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430103', '天心区', '4301', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430104', '岳麓区', '4301', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430105', '开福区', '4301', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430111', '雨花区', '4301', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430112', '望城区', '4301', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430121', '长沙县', '4301', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430181', '浏阳市', '4301', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430182', '宁乡市', '4301', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430202', '荷塘区', '4302', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430203', '芦淞区', '4302', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430204', '石峰区', '4302', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430211', '天元区', '4302', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430212', '渌口区', '4302', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430223', '攸县', '4302', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430224', '茶陵县', '4302', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430225', '炎陵县', '4302', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430271', '云龙示范区', '4302', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430281', '醴陵市', '4302', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430302', '雨湖区', '4303', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430304', '岳塘区', '4303', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430321', '湘潭县', '4303', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430371', '湖南湘潭高新技术产业园区', '4303', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430372', '湘潭昭山示范区', '4303', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430373', '湘潭九华示范区', '4303', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430381', '湘乡市', '4303', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430382', '韶山市', '4303', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430405', '珠晖区', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430406', '雁峰区', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430407', '石鼓区', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430408', '蒸湘区', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430412', '南岳区', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430421', '衡阳县', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430422', '衡南县', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430423', '衡山县', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430424', '衡东县', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430426', '祁东县', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430471', '衡阳综合保税区', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430472', '湖南衡阳高新技术产业园区', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430473', '湖南衡阳松木经济开发区', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430481', '耒阳市', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430482', '常宁市', '4304', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430502', '双清区', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430503', '大祥区', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430511', '北塔区', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430522', '新邵县', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430523', '邵阳县', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430524', '隆回县', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430525', '洞口县', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430527', '绥宁县', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430528', '新宁县', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430529', '城步苗族自治县', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430581', '武冈市', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430582', '邵东市', '4305', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430602', '岳阳楼区', '4306', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430603', '云溪区', '4306', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430611', '君山区', '4306', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430621', '岳阳县', '4306', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430623', '华容县', '4306', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430624', '湘阴县', '4306', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430626', '平江县', '4306', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430671', '岳阳市屈原管理区', '4306', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430681', '汨罗市', '4306', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430682', '临湘市', '4306', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430702', '武陵区', '4307', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430703', '鼎城区', '4307', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430721', '安乡县', '4307', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430722', '汉寿县', '4307', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430723', '澧县', '4307', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430724', '临澧县', '4307', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430725', '桃源县', '4307', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430726', '石门县', '4307', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430771', '常德市西洞庭管理区', '4307', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430781', '津市市', '4307', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430802', '永定区', '4308', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430811', '武陵源区', '4308', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430821', '慈利县', '4308', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430822', '桑植县', '4308', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430902', '资阳区', '4309', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430903', '赫山区', '4309', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430921', '南县', '4309', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430922', '桃江县', '4309', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430923', '安化县', '4309', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430971', '益阳市大通湖管理区', '4309', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430972', '湖南益阳高新技术产业园区', '4309', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('430981', '沅江市', '4309', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431002', '北湖区', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431003', '苏仙区', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431021', '桂阳县', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431022', '宜章县', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431023', '永兴县', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431024', '嘉禾县', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431025', '临武县', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431026', '汝城县', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431027', '桂东县', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431028', '安仁县', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431081', '资兴市', '4310', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431102', '零陵区', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431103', '冷水滩区', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431122', '东安县', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431123', '双牌县', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431124', '道县', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431125', '江永县', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431126', '宁远县', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431127', '蓝山县', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431128', '新田县', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431129', '江华瑶族自治县', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431171', '永州经济技术开发区', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431173', '永州市回龙圩管理区', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431181', '祁阳市', '4311', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431202', '鹤城区', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431221', '中方县', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431222', '沅陵县', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431223', '辰溪县', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431224', '溆浦县', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431225', '会同县', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431226', '麻阳苗族自治县', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431227', '新晃侗族自治县', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431228', '芷江侗族自治县', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431229', '靖州苗族侗族自治县', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431230', '通道侗族自治县', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431271', '怀化市洪江管理区', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431281', '洪江市', '4312', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431302', '娄星区', '4313', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431321', '双峰县', '4313', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431322', '新化县', '4313', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431381', '冷水江市', '4313', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('431382', '涟源市', '4313', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('433101', '吉首市', '4331', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('433122', '泸溪县', '4331', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('433123', '凤凰县', '4331', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('433124', '花垣县', '4331', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('433125', '保靖县', '4331', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('433126', '古丈县', '4331', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('433127', '永顺县', '4331', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('433130', '龙山县', '4331', '43');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440103', '荔湾区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440104', '越秀区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440105', '海珠区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440106', '天河区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440111', '白云区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440112', '黄埔区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440113', '番禺区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440114', '花都区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440115', '南沙区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440117', '从化区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440118', '增城区', '4401', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440203', '武江区', '4402', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440204', '浈江区', '4402', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440205', '曲江区', '4402', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440222', '始兴县', '4402', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440224', '仁化县', '4402', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440229', '翁源县', '4402', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440232', '乳源瑶族自治县', '4402', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440233', '新丰县', '4402', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440281', '乐昌市', '4402', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440282', '南雄市', '4402', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440303', '罗湖区', '4403', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440304', '福田区', '4403', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440305', '南山区', '4403', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440306', '宝安区', '4403', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440307', '龙岗区', '4403', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440308', '盐田区', '4403', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440309', '龙华区', '4403', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440310', '坪山区', '4403', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440311', '光明区', '4403', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440402', '香洲区', '4404', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440403', '斗门区', '4404', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440404', '金湾区', '4404', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440507', '龙湖区', '4405', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440511', '金平区', '4405', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440512', '濠江区', '4405', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440513', '潮阳区', '4405', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440514', '潮南区', '4405', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440515', '澄海区', '4405', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440523', '南澳县', '4405', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440604', '禅城区', '4406', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440605', '南海区', '4406', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440606', '顺德区', '4406', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440607', '三水区', '4406', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440608', '高明区', '4406', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440703', '蓬江区', '4407', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440704', '江海区', '4407', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440705', '新会区', '4407', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440781', '台山市', '4407', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440783', '开平市', '4407', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440784', '鹤山市', '4407', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440785', '恩平市', '4407', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440802', '赤坎区', '4408', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440803', '霞山区', '4408', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440804', '坡头区', '4408', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440811', '麻章区', '4408', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440823', '遂溪县', '4408', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440825', '徐闻县', '4408', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440881', '廉江市', '4408', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440882', '雷州市', '4408', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440883', '吴川市', '4408', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440902', '茂南区', '4409', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440904', '电白区', '4409', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440981', '高州市', '4409', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440982', '化州市', '4409', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('440983', '信宜市', '4409', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441202', '端州区', '4412', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441203', '鼎湖区', '4412', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441204', '高要区', '4412', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441223', '广宁县', '4412', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441224', '怀集县', '4412', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441225', '封开县', '4412', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441226', '德庆县', '4412', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441284', '四会市', '4412', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441302', '惠城区', '4413', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441303', '惠阳区', '4413', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441322', '博罗县', '4413', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441323', '惠东县', '4413', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441324', '龙门县', '4413', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441402', '梅江区', '4414', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441403', '梅县区', '4414', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441422', '大埔县', '4414', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441423', '丰顺县', '4414', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441424', '五华县', '4414', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441426', '平远县', '4414', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441427', '蕉岭县', '4414', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441481', '兴宁市', '4414', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441502', '城区', '4415', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441521', '海丰县', '4415', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441523', '陆河县', '4415', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441581', '陆丰市', '4415', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441602', '源城区', '4416', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441621', '紫金县', '4416', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441622', '龙川县', '4416', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441623', '连平县', '4416', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441624', '和平县', '4416', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441625', '东源县', '4416', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441702', '江城区', '4417', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441704', '阳东区', '4417', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441721', '阳西县', '4417', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441781', '阳春市', '4417', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441802', '清城区', '4418', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441803', '清新区', '4418', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441821', '佛冈县', '4418', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441823', '阳山县', '4418', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441825', '连山壮族瑶族自治县', '4418', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441826', '连南瑶族自治县', '4418', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441881', '英德市', '4418', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441882', '连州市', '4418', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('441900', '东莞市', '4419', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('442000', '中山市', '4420', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445102', '湘桥区', '4451', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445103', '潮安区', '4451', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445122', '饶平县', '4451', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445202', '榕城区', '4452', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445203', '揭东区', '4452', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445222', '揭西县', '4452', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445224', '惠来县', '4452', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445281', '普宁市', '4452', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445302', '云城区', '4453', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445303', '云安区', '4453', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445321', '新兴县', '4453', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445322', '郁南县', '4453', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('445381', '罗定市', '4453', '44');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450102', '兴宁区', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450103', '青秀区', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450105', '江南区', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450107', '西乡塘区', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450108', '良庆区', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450109', '邕宁区', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450110', '武鸣区', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450123', '隆安县', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450124', '马山县', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450125', '上林县', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450126', '宾阳县', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450181', '横州市', '4501', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450202', '城中区', '4502', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450203', '鱼峰区', '4502', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450204', '柳南区', '4502', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450205', '柳北区', '4502', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450206', '柳江区', '4502', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450222', '柳城县', '4502', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450223', '鹿寨县', '4502', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450224', '融安县', '4502', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450225', '融水苗族自治县', '4502', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450226', '三江侗族自治县', '4502', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450302', '秀峰区', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450303', '叠彩区', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450304', '象山区', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450305', '七星区', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450311', '雁山区', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450312', '临桂区', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450321', '阳朔县', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450323', '灵川县', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450324', '全州县', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450325', '兴安县', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450326', '永福县', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450327', '灌阳县', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450328', '龙胜各族自治县', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450329', '资源县', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450330', '平乐县', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450332', '恭城瑶族自治县', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450381', '荔浦市', '4503', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450403', '万秀区', '4504', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450405', '长洲区', '4504', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450406', '龙圩区', '4504', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450421', '苍梧县', '4504', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450422', '藤县', '4504', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450423', '蒙山县', '4504', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450481', '岑溪市', '4504', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450502', '海城区', '4505', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450503', '银海区', '4505', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450512', '铁山港区', '4505', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450521', '合浦县', '4505', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450602', '港口区', '4506', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450603', '防城区', '4506', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450621', '上思县', '4506', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450681', '东兴市', '4506', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450702', '钦南区', '4507', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450703', '钦北区', '4507', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450721', '灵山县', '4507', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450722', '浦北县', '4507', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450802', '港北区', '4508', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450803', '港南区', '4508', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450804', '覃塘区', '4508', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450821', '平南县', '4508', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450881', '桂平市', '4508', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450902', '玉州区', '4509', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450903', '福绵区', '4509', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450921', '容县', '4509', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450922', '陆川县', '4509', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450923', '博白县', '4509', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450924', '兴业县', '4509', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('450981', '北流市', '4509', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451002', '右江区', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451003', '田阳区', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451022', '田东县', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451024', '德保县', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451026', '那坡县', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451027', '凌云县', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451028', '乐业县', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451029', '田林县', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451030', '西林县', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451031', '隆林各族自治县', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451081', '靖西市', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451082', '平果市', '4510', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451102', '八步区', '4511', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451103', '平桂区', '4511', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451121', '昭平县', '4511', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451122', '钟山县', '4511', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451123', '富川瑶族自治县', '4511', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451202', '金城江区', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451203', '宜州区', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451221', '南丹县', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451222', '天峨县', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451223', '凤山县', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451224', '东兰县', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451225', '罗城仫佬族自治县', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451226', '环江毛南族自治县', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451227', '巴马瑶族自治县', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451228', '都安瑶族自治县', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451229', '大化瑶族自治县', '4512', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451302', '兴宾区', '4513', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451321', '忻城县', '4513', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451322', '象州县', '4513', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451323', '武宣县', '4513', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451324', '金秀瑶族自治县', '4513', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451381', '合山市', '4513', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451402', '江州区', '4514', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451421', '扶绥县', '4514', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451422', '宁明县', '4514', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451423', '龙州县', '4514', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451424', '大新县', '4514', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451425', '天等县', '4514', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('451481', '凭祥市', '4514', '45');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460105', '秀英区', '4601', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460106', '龙华区', '4601', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460107', '琼山区', '4601', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460108', '美兰区', '4601', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460202', '海棠区', '4602', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460203', '吉阳区', '4602', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460204', '天涯区', '4602', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460205', '崖州区', '4602', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460321', '西沙群岛', '4603', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460322', '南沙群岛', '4603', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460323', '中沙群岛的岛礁及其海域', '4603', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('460400', '儋州市', '4604', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469001', '五指山市', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469002', '琼海市', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469005', '文昌市', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469006', '万宁市', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469007', '东方市', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469021', '定安县', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469022', '屯昌县', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469023', '澄迈县', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469024', '临高县', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469025', '白沙黎族自治县', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469026', '昌江黎族自治县', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469027', '乐东黎族自治县', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469028', '陵水黎族自治县', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469029', '保亭黎族苗族自治县', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('469030', '琼中黎族苗族自治县', '4690', '46');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500101', '万州区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500102', '涪陵区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500103', '渝中区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500104', '大渡口区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500105', '江北区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500106', '沙坪坝区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500107', '九龙坡区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500108', '南岸区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500109', '北碚区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500110', '綦江区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500111', '大足区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500112', '渝北区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500113', '巴南区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500114', '黔江区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500115', '长寿区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500116', '江津区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500117', '合川区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500118', '永川区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500119', '南川区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500120', '璧山区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500151', '铜梁区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500152', '潼南区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500153', '荣昌区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500154', '开州区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500155', '梁平区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500156', '武隆区', '5001', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500229', '城口县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500230', '丰都县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500231', '垫江县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500233', '忠县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500235', '云阳县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500236', '奉节县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500237', '巫山县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500238', '巫溪县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500240', '石柱土家族自治县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500241', '秀山土家族苗族自治县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500242', '酉阳土家族苗族自治县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('500243', '彭水苗族土家族自治县', '5002', '50');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510104', '锦江区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510105', '青羊区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510106', '金牛区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510107', '武侯区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510108', '成华区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510112', '龙泉驿区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510113', '青白江区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510114', '新都区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510115', '温江区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510116', '双流区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510117', '郫都区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510118', '新津区', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510121', '金堂县', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510129', '大邑县', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510131', '蒲江县', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510181', '都江堰市', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510182', '彭州市', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510183', '邛崃市', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510184', '崇州市', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510185', '简阳市', '5101', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510302', '自流井区', '5103', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510303', '贡井区', '5103', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510304', '大安区', '5103', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510311', '沿滩区', '5103', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510321', '荣县', '5103', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510322', '富顺县', '5103', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510402', '东区', '5104', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510403', '西区', '5104', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510411', '仁和区', '5104', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510421', '米易县', '5104', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510422', '盐边县', '5104', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510502', '江阳区', '5105', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510503', '纳溪区', '5105', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510504', '龙马潭区', '5105', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510521', '泸县', '5105', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510522', '合江县', '5105', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510524', '叙永县', '5105', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510525', '古蔺县', '5105', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510603', '旌阳区', '5106', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510604', '罗江区', '5106', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510623', '中江县', '5106', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510681', '广汉市', '5106', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510682', '什邡市', '5106', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510683', '绵竹市', '5106', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510703', '涪城区', '5107', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510704', '游仙区', '5107', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510705', '安州区', '5107', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510722', '三台县', '5107', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510723', '盐亭县', '5107', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510725', '梓潼县', '5107', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510726', '北川羌族自治县', '5107', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510727', '平武县', '5107', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510781', '江油市', '5107', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510802', '利州区', '5108', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510811', '昭化区', '5108', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510812', '朝天区', '5108', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510821', '旺苍县', '5108', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510822', '青川县', '5108', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510823', '剑阁县', '5108', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510824', '苍溪县', '5108', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510903', '船山区', '5109', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510904', '安居区', '5109', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510921', '蓬溪县', '5109', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510923', '大英县', '5109', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('510981', '射洪市', '5109', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511002', '市中区', '5110', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511011', '东兴区', '5110', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511024', '威远县', '5110', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511025', '资中县', '5110', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511071', '内江经济开发区', '5110', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511083', '隆昌市', '5110', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511102', '市中区', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511111', '沙湾区', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511112', '五通桥区', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511113', '金口河区', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511123', '犍为县', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511124', '井研县', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511126', '夹江县', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511129', '沐川县', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511132', '峨边彝族自治县', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511133', '马边彝族自治县', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511181', '峨眉山市', '5111', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511302', '顺庆区', '5113', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511303', '高坪区', '5113', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511304', '嘉陵区', '5113', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511321', '南部县', '5113', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511322', '营山县', '5113', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511323', '蓬安县', '5113', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511324', '仪陇县', '5113', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511325', '西充县', '5113', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511381', '阆中市', '5113', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511402', '东坡区', '5114', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511403', '彭山区', '5114', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511421', '仁寿县', '5114', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511423', '洪雅县', '5114', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511424', '丹棱县', '5114', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511425', '青神县', '5114', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511502', '翠屏区', '5115', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511503', '南溪区', '5115', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511504', '叙州区', '5115', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511523', '江安县', '5115', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511524', '长宁县', '5115', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511525', '高县', '5115', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511526', '珙县', '5115', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511527', '筠连县', '5115', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511528', '兴文县', '5115', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511529', '屏山县', '5115', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511602', '广安区', '5116', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511603', '前锋区', '5116', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511621', '岳池县', '5116', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511622', '武胜县', '5116', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511623', '邻水县', '5116', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511681', '华蓥市', '5116', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511702', '通川区', '5117', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511703', '达川区', '5117', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511722', '宣汉县', '5117', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511723', '开江县', '5117', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511724', '大竹县', '5117', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511725', '渠县', '5117', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511771', '达州经济开发区', '5117', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511781', '万源市', '5117', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511802', '雨城区', '5118', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511803', '名山区', '5118', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511822', '荥经县', '5118', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511823', '汉源县', '5118', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511824', '石棉县', '5118', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511825', '天全县', '5118', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511826', '芦山县', '5118', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511827', '宝兴县', '5118', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511902', '巴州区', '5119', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511903', '恩阳区', '5119', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511921', '通江县', '5119', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511922', '南江县', '5119', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511923', '平昌县', '5119', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('511971', '巴中经济开发区', '5119', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('512002', '雁江区', '5120', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('512021', '安岳县', '5120', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('512022', '乐至县', '5120', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513201', '马尔康市', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513221', '汶川县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513222', '理县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513223', '茂县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513224', '松潘县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513225', '九寨沟县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513226', '金川县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513227', '小金县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513228', '黑水县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513230', '壤塘县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513231', '阿坝县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513232', '若尔盖县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513233', '红原县', '5132', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513301', '康定市', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513322', '泸定县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513323', '丹巴县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513324', '九龙县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513325', '雅江县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513326', '道孚县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513327', '炉霍县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513328', '甘孜县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513329', '新龙县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513330', '德格县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513331', '白玉县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513332', '石渠县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513333', '色达县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513334', '理塘县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513335', '巴塘县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513336', '乡城县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513337', '稻城县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513338', '得荣县', '5133', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513401', '西昌市', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513402', '会理市', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513422', '木里藏族自治县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513423', '盐源县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513424', '德昌县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513426', '会东县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513427', '宁南县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513428', '普格县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513429', '布拖县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513430', '金阳县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513431', '昭觉县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513432', '喜德县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513433', '冕宁县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513434', '越西县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513435', '甘洛县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513436', '美姑县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('513437', '雷波县', '5134', '51');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520102', '南明区', '5201', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520103', '云岩区', '5201', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520111', '花溪区', '5201', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520112', '乌当区', '5201', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520113', '白云区', '5201', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520115', '观山湖区', '5201', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520121', '开阳县', '5201', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520122', '息烽县', '5201', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520123', '修文县', '5201', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520181', '清镇市', '5201', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520201', '钟山区', '5202', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520203', '六枝特区', '5202', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520204', '水城区', '5202', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520281', '盘州市', '5202', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520302', '红花岗区', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520303', '汇川区', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520304', '播州区', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520322', '桐梓县', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520323', '绥阳县', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520324', '正安县', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520325', '道真仡佬族苗族自治县', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520326', '务川仡佬族苗族自治县', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520327', '凤冈县', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520328', '湄潭县', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520329', '余庆县', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520330', '习水县', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520381', '赤水市', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520382', '仁怀市', '5203', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520402', '西秀区', '5204', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520403', '平坝区', '5204', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520422', '普定县', '5204', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520423', '镇宁布依族苗族自治县', '5204', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520424', '关岭布依族苗族自治县', '5204', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520425', '紫云苗族布依族自治县', '5204', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520502', '七星关区', '5205', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520521', '大方县', '5205', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520523', '金沙县', '5205', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520524', '织金县', '5205', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520525', '纳雍县', '5205', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520526', '威宁彝族回族苗族自治县', '5205', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520527', '赫章县', '5205', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520581', '黔西市', '5205', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520602', '碧江区', '5206', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520603', '万山区', '5206', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520621', '江口县', '5206', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520622', '玉屏侗族自治县', '5206', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520623', '石阡县', '5206', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520624', '思南县', '5206', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520625', '印江土家族苗族自治县', '5206', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520626', '德江县', '5206', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520627', '沿河土家族自治县', '5206', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('520628', '松桃苗族自治县', '5206', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522301', '兴义市', '5223', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522302', '兴仁市', '5223', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522323', '普安县', '5223', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522324', '晴隆县', '5223', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522325', '贞丰县', '5223', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522326', '望谟县', '5223', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522327', '册亨县', '5223', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522328', '安龙县', '5223', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522601', '凯里市', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522622', '黄平县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522623', '施秉县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522624', '三穗县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522625', '镇远县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522626', '岑巩县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522627', '天柱县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522628', '锦屏县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522629', '剑河县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522630', '台江县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522631', '黎平县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522632', '榕江县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522633', '从江县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522634', '雷山县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522635', '麻江县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522636', '丹寨县', '5226', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522701', '都匀市', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522702', '福泉市', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522722', '荔波县', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522723', '贵定县', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522725', '瓮安县', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522726', '独山县', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522727', '平塘县', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522728', '罗甸县', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522729', '长顺县', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522730', '龙里县', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522731', '惠水县', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('522732', '三都水族自治县', '5227', '52');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530102', '五华区', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530103', '盘龙区', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530111', '官渡区', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530112', '西山区', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530113', '东川区', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530114', '呈贡区', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530115', '晋宁区', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530124', '富民县', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530125', '宜良县', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530126', '石林彝族自治县', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530127', '嵩明县', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530128', '禄劝彝族苗族自治县', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530129', '寻甸回族彝族自治县', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530181', '安宁市', '5301', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530302', '麒麟区', '5303', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530303', '沾益区', '5303', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530304', '马龙区', '5303', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530322', '陆良县', '5303', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530323', '师宗县', '5303', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530324', '罗平县', '5303', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530325', '富源县', '5303', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530326', '会泽县', '5303', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530381', '宣威市', '5303', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530402', '红塔区', '5304', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530403', '江川区', '5304', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530423', '通海县', '5304', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530424', '华宁县', '5304', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530425', '易门县', '5304', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530426', '峨山彝族自治县', '5304', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530427', '新平彝族傣族自治县', '5304', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530428', '元江哈尼族彝族傣族自治县', '5304', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530481', '澄江市', '5304', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530502', '隆阳区', '5305', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530521', '施甸县', '5305', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530523', '龙陵县', '5305', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530524', '昌宁县', '5305', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530581', '腾冲市', '5305', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530602', '昭阳区', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530621', '鲁甸县', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530622', '巧家县', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530623', '盐津县', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530624', '大关县', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530625', '永善县', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530626', '绥江县', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530627', '镇雄县', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530628', '彝良县', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530629', '威信县', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530681', '水富市', '5306', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530702', '古城区', '5307', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530721', '玉龙纳西族自治县', '5307', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530722', '永胜县', '5307', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530723', '华坪县', '5307', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530724', '宁蒗彝族自治县', '5307', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530802', '思茅区', '5308', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530821', '宁洱哈尼族彝族自治县', '5308', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530822', '墨江哈尼族自治县', '5308', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530823', '景东彝族自治县', '5308', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530824', '景谷傣族彝族自治县', '5308', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '5308', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530826', '江城哈尼族彝族自治县', '5308', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530827', '孟连傣族拉祜族佤族自治县', '5308', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530828', '澜沧拉祜族自治县', '5308', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530829', '西盟佤族自治县', '5308', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530902', '临翔区', '5309', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530921', '凤庆县', '5309', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530922', '云县', '5309', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530923', '永德县', '5309', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530924', '镇康县', '5309', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '5309', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530926', '耿马傣族佤族自治县', '5309', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('530927', '沧源佤族自治县', '5309', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532301', '楚雄市', '5323', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532302', '禄丰市', '5323', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532322', '双柏县', '5323', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532323', '牟定县', '5323', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532324', '南华县', '5323', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532325', '姚安县', '5323', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532326', '大姚县', '5323', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532327', '永仁县', '5323', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532328', '元谋县', '5323', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532329', '武定县', '5323', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532501', '个旧市', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532502', '开远市', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532503', '蒙自市', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532504', '弥勒市', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532523', '屏边苗族自治县', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532524', '建水县', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532525', '石屏县', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532527', '泸西县', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532528', '元阳县', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532529', '红河县', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532530', '金平苗族瑶族傣族自治县', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532531', '绿春县', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532532', '河口瑶族自治县', '5325', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532601', '文山市', '5326', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532622', '砚山县', '5326', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532623', '西畴县', '5326', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532624', '麻栗坡县', '5326', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532625', '马关县', '5326', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532626', '丘北县', '5326', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532627', '广南县', '5326', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532628', '富宁县', '5326', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532801', '景洪市', '5328', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532822', '勐海县', '5328', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532823', '勐腊县', '5328', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532901', '大理市', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532922', '漾濞彝族自治县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532923', '祥云县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532924', '宾川县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532925', '弥渡县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532926', '南涧彝族自治县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532927', '巍山彝族回族自治县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532928', '永平县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532929', '云龙县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532930', '洱源县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532931', '剑川县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('532932', '鹤庆县', '5329', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533102', '瑞丽市', '5331', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533103', '芒市', '5331', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533122', '梁河县', '5331', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533123', '盈江县', '5331', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533124', '陇川县', '5331', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533301', '泸水市', '5333', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533323', '福贡县', '5333', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533324', '贡山独龙族怒族自治县', '5333', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533325', '兰坪白族普米族自治县', '5333', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533401', '香格里拉市', '5334', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533422', '德钦县', '5334', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('533423', '维西傈僳族自治县', '5334', '53');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540102', '城关区', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540103', '堆龙德庆区', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540104', '达孜区', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540121', '林周县', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540122', '当雄县', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540123', '尼木县', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540124', '曲水县', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540127', '墨竹工卡县', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540171', '格尔木藏青工业园区', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540172', '拉萨经济技术开发区', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540173', '西藏文化旅游创意园区', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540174', '达孜工业园区', '5401', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540202', '桑珠孜区', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540221', '南木林县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540222', '江孜县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540223', '定日县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540224', '萨迦县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540225', '拉孜县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540226', '昂仁县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540227', '谢通门县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540228', '白朗县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540229', '仁布县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540230', '康马县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540231', '定结县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540232', '仲巴县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540233', '亚东县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540234', '吉隆县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540235', '聂拉木县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540236', '萨嘎县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540237', '岗巴县', '5402', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540302', '卡若区', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540321', '江达县', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540322', '贡觉县', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540323', '类乌齐县', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540324', '丁青县', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540325', '察雅县', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540326', '八宿县', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540327', '左贡县', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540328', '芒康县', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540329', '洛隆县', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540330', '边坝县', '5403', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540402', '巴宜区', '5404', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540421', '工布江达县', '5404', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540422', '米林县', '5404', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540423', '墨脱县', '5404', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540424', '波密县', '5404', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540425', '察隅县', '5404', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540426', '朗县', '5404', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540502', '乃东区', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540521', '扎囊县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540522', '贡嘎县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540523', '桑日县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540524', '琼结县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540525', '曲松县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540526', '措美县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540527', '洛扎县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540528', '加查县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540529', '隆子县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540530', '错那县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540531', '浪卡子县', '5405', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540602', '色尼区', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540621', '嘉黎县', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540622', '比如县', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540623', '聂荣县', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540624', '安多县', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540625', '申扎县', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540626', '索县', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540627', '班戈县', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540628', '巴青县', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540629', '尼玛县', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('540630', '双湖县', '5406', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('542521', '普兰县', '5425', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('542522', '札达县', '5425', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('542523', '噶尔县', '5425', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('542524', '日土县', '5425', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('542525', '革吉县', '5425', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('542526', '改则县', '5425', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('542527', '措勤县', '5425', '54');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610102', '新城区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610103', '碑林区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610104', '莲湖区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610111', '灞桥区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610112', '未央区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610113', '雁塔区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610114', '阎良区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610115', '临潼区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610116', '长安区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610117', '高陵区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610118', '鄠邑区', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610122', '蓝田县', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610124', '周至县', '6101', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610202', '王益区', '6102', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610203', '印台区', '6102', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610204', '耀州区', '6102', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610222', '宜君县', '6102', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610302', '渭滨区', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610303', '金台区', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610304', '陈仓区', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610305', '凤翔区', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610323', '岐山县', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610324', '扶风县', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610326', '眉县', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610327', '陇县', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610328', '千阳县', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610329', '麟游县', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610330', '凤县', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610331', '太白县', '6103', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610402', '秦都区', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610403', '杨陵区', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610404', '渭城区', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610422', '三原县', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610423', '泾阳县', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610424', '乾县', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610425', '礼泉县', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610426', '永寿县', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610428', '长武县', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610429', '旬邑县', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610430', '淳化县', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610431', '武功县', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610481', '兴平市', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610482', '彬州市', '6104', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610502', '临渭区', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610503', '华州区', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610522', '潼关县', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610523', '大荔县', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610524', '合阳县', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610525', '澄城县', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610526', '蒲城县', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610527', '白水县', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610528', '富平县', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610581', '韩城市', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610582', '华阴市', '6105', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610602', '宝塔区', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610603', '安塞区', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610621', '延长县', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610622', '延川县', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610625', '志丹县', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610626', '吴起县', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610627', '甘泉县', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610628', '富县', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610629', '洛川县', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610630', '宜川县', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610631', '黄龙县', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610632', '黄陵县', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610681', '子长市', '6106', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610702', '汉台区', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610703', '南郑区', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610722', '城固县', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610723', '洋县', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610724', '西乡县', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610725', '勉县', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610726', '宁强县', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610727', '略阳县', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610728', '镇巴县', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610729', '留坝县', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610730', '佛坪县', '6107', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610802', '榆阳区', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610803', '横山区', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610822', '府谷县', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610824', '靖边县', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610825', '定边县', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610826', '绥德县', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610827', '米脂县', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610828', '佳县', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610829', '吴堡县', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610830', '清涧县', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610831', '子洲县', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610881', '神木市', '6108', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610902', '汉滨区', '6109', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610921', '汉阴县', '6109', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610922', '石泉县', '6109', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610923', '宁陕县', '6109', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610924', '紫阳县', '6109', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610925', '岚皋县', '6109', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610926', '平利县', '6109', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610927', '镇坪县', '6109', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610929', '白河县', '6109', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('610981', '旬阳市', '6109', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('611002', '商州区', '6110', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('611021', '洛南县', '6110', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('611022', '丹凤县', '6110', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('611023', '商南县', '6110', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('611024', '山阳县', '6110', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('611025', '镇安县', '6110', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('611026', '柞水县', '6110', '61');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620102', '城关区', '6201', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620103', '七里河区', '6201', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620104', '西固区', '6201', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620105', '安宁区', '6201', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620111', '红古区', '6201', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620121', '永登县', '6201', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620122', '皋兰县', '6201', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620123', '榆中县', '6201', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620171', '兰州新区', '6201', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620201', '嘉峪关市', '6202', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620302', '金川区', '6203', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620321', '永昌县', '6203', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620402', '白银区', '6204', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620403', '平川区', '6204', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620421', '靖远县', '6204', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620422', '会宁县', '6204', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620423', '景泰县', '6204', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620502', '秦州区', '6205', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620503', '麦积区', '6205', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620521', '清水县', '6205', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620522', '秦安县', '6205', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620523', '甘谷县', '6205', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620524', '武山县', '6205', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620525', '张家川回族自治县', '6205', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620602', '凉州区', '6206', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620621', '民勤县', '6206', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620622', '古浪县', '6206', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620623', '天祝藏族自治县', '6206', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620702', '甘州区', '6207', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620721', '肃南裕固族自治县', '6207', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620722', '民乐县', '6207', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620723', '临泽县', '6207', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620724', '高台县', '6207', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620725', '山丹县', '6207', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620802', '崆峒区', '6208', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620821', '泾川县', '6208', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620822', '灵台县', '6208', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620823', '崇信县', '6208', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620825', '庄浪县', '6208', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620826', '静宁县', '6208', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620881', '华亭市', '6208', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620902', '肃州区', '6209', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620921', '金塔县', '6209', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620922', '瓜州县', '6209', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620923', '肃北蒙古族自治县', '6209', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620924', '阿克塞哈萨克族自治县', '6209', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620981', '玉门市', '6209', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('620982', '敦煌市', '6209', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621002', '西峰区', '6210', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621021', '庆城县', '6210', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621022', '环县', '6210', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621023', '华池县', '6210', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621024', '合水县', '6210', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621025', '正宁县', '6210', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621026', '宁县', '6210', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621027', '镇原县', '6210', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621102', '安定区', '6211', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621121', '通渭县', '6211', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621122', '陇西县', '6211', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621123', '渭源县', '6211', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621124', '临洮县', '6211', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621125', '漳县', '6211', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621126', '岷县', '6211', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621202', '武都区', '6212', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621221', '成县', '6212', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621222', '文县', '6212', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621223', '宕昌县', '6212', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621224', '康县', '6212', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621225', '西和县', '6212', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621226', '礼县', '6212', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621227', '徽县', '6212', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('621228', '两当县', '6212', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('622901', '临夏市', '6229', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('622921', '临夏县', '6229', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('622922', '康乐县', '6229', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('622923', '永靖县', '6229', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('622924', '广河县', '6229', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('622925', '和政县', '6229', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('622926', '东乡族自治县', '6229', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '6229', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('623001', '合作市', '6230', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('623021', '临潭县', '6230', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('623022', '卓尼县', '6230', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('623023', '舟曲县', '6230', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('623024', '迭部县', '6230', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('623025', '玛曲县', '6230', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('623026', '碌曲县', '6230', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('623027', '夏河县', '6230', '62');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630102', '城东区', '6301', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630103', '城中区', '6301', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630104', '城西区', '6301', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630105', '城北区', '6301', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630106', '湟中区', '6301', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630121', '大通回族土族自治县', '6301', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630123', '湟源县', '6301', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630202', '乐都区', '6302', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630203', '平安区', '6302', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630222', '民和回族土族自治县', '6302', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630223', '互助土族自治县', '6302', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630224', '化隆回族自治县', '6302', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('630225', '循化撒拉族自治县', '6302', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632221', '门源回族自治县', '6322', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632222', '祁连县', '6322', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632223', '海晏县', '6322', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632224', '刚察县', '6322', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632301', '同仁市', '6323', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632322', '尖扎县', '6323', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632323', '泽库县', '6323', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632324', '河南蒙古族自治县', '6323', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632521', '共和县', '6325', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632522', '同德县', '6325', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632523', '贵德县', '6325', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632524', '兴海县', '6325', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632525', '贵南县', '6325', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632621', '玛沁县', '6326', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632622', '班玛县', '6326', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632623', '甘德县', '6326', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632624', '达日县', '6326', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632625', '久治县', '6326', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632626', '玛多县', '6326', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632701', '玉树市', '6327', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632722', '杂多县', '6327', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632723', '称多县', '6327', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632724', '治多县', '6327', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632725', '囊谦县', '6327', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632726', '曲麻莱县', '6327', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632801', '格尔木市', '6328', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632802', '德令哈市', '6328', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632803', '茫崖市', '6328', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632821', '乌兰县', '6328', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632822', '都兰县', '6328', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632823', '天峻县', '6328', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('632857', '大柴旦行政委员会', '6328', '63');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640104', '兴庆区', '6401', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640105', '西夏区', '6401', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640106', '金凤区', '6401', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640121', '永宁县', '6401', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640122', '贺兰县', '6401', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640181', '灵武市', '6401', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640202', '大武口区', '6402', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640205', '惠农区', '6402', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640221', '平罗县', '6402', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640302', '利通区', '6403', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640303', '红寺堡区', '6403', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640323', '盐池县', '6403', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640324', '同心县', '6403', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640381', '青铜峡市', '6403', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640402', '原州区', '6404', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640422', '西吉县', '6404', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640423', '隆德县', '6404', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640424', '泾源县', '6404', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640425', '彭阳县', '6404', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640502', '沙坡头区', '6405', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640521', '中宁县', '6405', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('640522', '海原县', '6405', '64');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650102', '天山区', '6501', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650103', '沙依巴克区', '6501', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650104', '新市区', '6501', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650105', '水磨沟区', '6501', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650106', '头屯河区', '6501', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650107', '达坂城区', '6501', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650109', '米东区', '6501', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650121', '乌鲁木齐县', '6501', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650202', '独山子区', '6502', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650203', '克拉玛依区', '6502', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650204', '白碱滩区', '6502', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650205', '乌尔禾区', '6502', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650402', '高昌区', '6504', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650421', '鄯善县', '6504', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650422', '托克逊县', '6504', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650502', '伊州区', '6505', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650521', '巴里坤哈萨克自治县', '6505', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('650522', '伊吾县', '6505', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652301', '昌吉市', '6523', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652302', '阜康市', '6523', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652323', '呼图壁县', '6523', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652324', '玛纳斯县', '6523', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652325', '奇台县', '6523', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652327', '吉木萨尔县', '6523', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652328', '木垒哈萨克自治县', '6523', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652701', '博乐市', '6527', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652702', '阿拉山口市', '6527', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652722', '精河县', '6527', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652723', '温泉县', '6527', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652801', '库尔勒市', '6528', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652822', '轮台县', '6528', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652823', '尉犁县', '6528', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652824', '若羌县', '6528', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652825', '且末县', '6528', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652826', '焉耆回族自治县', '6528', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652827', '和静县', '6528', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652828', '和硕县', '6528', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652829', '博湖县', '6528', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652871', '库尔勒经济技术开发区', '6528', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652901', '阿克苏市', '6529', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652902', '库车市', '6529', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652922', '温宿县', '6529', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652924', '沙雅县', '6529', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652925', '新和县', '6529', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652926', '拜城县', '6529', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652927', '乌什县', '6529', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652928', '阿瓦提县', '6529', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('652929', '柯坪县', '6529', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653001', '阿图什市', '6530', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653022', '阿克陶县', '6530', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653023', '阿合奇县', '6530', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653024', '乌恰县', '6530', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653101', '喀什市', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653121', '疏附县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653122', '疏勒县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653123', '英吉沙县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653124', '泽普县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653125', '莎车县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653126', '叶城县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653127', '麦盖提县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653128', '岳普湖县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653129', '伽师县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653130', '巴楚县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653131', '塔什库尔干塔吉克自治县', '6531', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653201', '和田市', '6532', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653221', '和田县', '6532', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653222', '墨玉县', '6532', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653223', '皮山县', '6532', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653224', '洛浦县', '6532', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653225', '策勒县', '6532', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653226', '于田县', '6532', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('653227', '民丰县', '6532', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654002', '伊宁市', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654003', '奎屯市', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654004', '霍尔果斯市', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654021', '伊宁县', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654022', '察布查尔锡伯自治县', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654023', '霍城县', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654024', '巩留县', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654025', '新源县', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654026', '昭苏县', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654027', '特克斯县', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654028', '尼勒克县', '6540', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654201', '塔城市', '6542', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654202', '乌苏市', '6542', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654203', '沙湾市', '6542', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654221', '额敏县', '6542', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654224', '托里县', '6542', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654225', '裕民县', '6542', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654226', '和布克赛尔蒙古自治县', '6542', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654301', '阿勒泰市', '6543', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654321', '布尔津县', '6543', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654322', '富蕴县', '6543', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654323', '福海县', '6543', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654324', '哈巴河县', '6543', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654325', '青河县', '6543', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('654326', '吉木乃县', '6543', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659001', '石河子市', '6590', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659002', '阿拉尔市', '6590', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659003', '图木舒克市', '6590', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659004', '五家渠市', '6590', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659005', '北屯市', '6590', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659006', '铁门关市', '6590', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659007', '双河市', '6590', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659008', '可克达拉市', '6590', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659009', '昆玉市', '6590', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659010', '胡杨河市', '6590', '65');
INSERT INTO `area` (`code`, `name`, `city_code`, `province_code`) VALUES ('659011', '新星市', '6590', '65');
COMMIT;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `created_at` bigint(20) DEFAULT NULL,
                          `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `content` longtext,
                          `img_key` varchar(255) DEFAULT NULL,
                          `title` varchar(255) DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` (`id`, `created_at`, `deleted_at`, `updated_at`, `content`, `img_key`, `title`) VALUES (1, NULL, NULL, NULL, '<p>第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容第一banner标题内容</p>', '2022-2-20-10-53-55-1645325635746-banner1.jpeg', '第一banner标题');
INSERT INTO `banner` (`id`, `created_at`, `deleted_at`, `updated_at`, `content`, `img_key`, `title`) VALUES (2, NULL, NULL, NULL, '<p>第二banner标题内容</p>', '2022-2-20-10-54-22-1645325662677-banner2.jpeg', '第二banner标题');
COMMIT;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
                         `id` bigint(20) NOT NULL AUTO_INCREMENT,
                         `created_at` bigint(20) DEFAULT NULL,
                         `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                         `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                         `img_key` varchar(3000) DEFAULT NULL,
                         `name` varchar(255) DEFAULT NULL,
                         `store_id` bigint(20) DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
BEGIN;
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (28, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==', '丰田', 1);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (29, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAZAAACAwEAAAAAAAAAAAAAAAAJCgECBwj/xAAkEAABBAIDAAICAwAAAAAAAAAEAQIDBQYHCBESACEJMRMVYf/EABgBAAMBAQAAAAAAAAAAAAAAAAADBAEC/8QAJBEAAwACAgAGAwEAAAAAAAAAAQIDBAUAEhETISIjMRQkYUH/2gAMAwEAAhEDEQA/AHheSHIXXfFnTmZ7v2kVYQYhhYDCih6YCW2vbY0qeMSspKOqgVJrC2tTZoRAhmOajpZPUj44mSSN0ff2B/SQAP6SfQAf748ACSAqs7EgKiKXdyT4BURfczsfRVAJZiAASfDnFHD38qOruV+aDa3stZ7C0Tn93BYWGHYts11HIblVSA15CECT0J54YliTXMW3joSZ/wC3iqXR2M40QU4s89T4dkw45/xti3vTHlRKo3akpyq/sBFBMrZfLr1MqkUWdGaNQq+5FqY9J1leI+WVpPJ5nsyGbq4BWqMjLWTdXmQvZff4KUr5JxnBVc0NycU9+V+TcQ8t3HNrXZIeW0JlLkJdRZh1OLZ9hF5jd7SGHX5A8VKOINY2VMk8xhw0LoC5JRpnSQKrV2mLSrEs6Cs6SLzIV1FEKFkJDAMAxKkggH7BHpy3W5ra3Y6/ZJGOS+vzsTOTHyVZsbIbDyJ5CwyFRkdoVMxOyq6s02YKykggE/49ON2seOXK605Tb15i4psXEtTYSRb6yxvANfZLjiOxqnos0xyrv7aG2NtyskbU0AOYC08OGFWbyVnNRccrQ7CjllbJ6R12Dq1f9LXCn4cAqKkTaWLGxQKo6ik8LGBQfGvlAoi9m7dbjY33e73G/wA0l9jvNjl7PPsz1rS2TmZeTmValr0rezedlWY1tSlaFy1KOxJ43Pq7bOAbmxATO9c5CLkWLnF2AA9hD6ge0yrKkCPEMBISI6sOEJifCXW2YwdmFK1YDgxp2uibnIOaA4eB6yK+KJ/8rUZJ6jY721P01/bV9tRfvp3af5+vhw5LoYnua90bHPZ68Pcxiub7REd5cre2+mp5d5VO0+l76T4cOXRjG99Nana9qvlEVV6RO16T7XpETte1+kT9Inw4c//Z', '别克', 1);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (30, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAWAAEBAQAAAAAAAAAAAAAAAAAJCAr/xAAjEAABBQEBAAEEAwAAAAAAAAAGAgMEBQcBCBIACREUExUi/8QAGAEAAwEBAAAAAAAAAAAAAAAABAYHBQP/xAAkEQACAwACAgMAAwEBAAAAAAABAwIEBQYRABITFCEjMUEVMv/aAAwDAQACEQMRAD8A2P8ApP05Nz64bz0Fk1dVfNviSDfQyGisSQZzGEcWEmAM8foa2dVvEJNdcgWVhCqXraprK6mrpVzcT+Nqrq+0euM8WToIjpaSrNiu+VxWZlUnqrXdh1BMX3JRsuW2FSjUgxYfYCXtY1i69ZMpFjEpnIuSMotlQoMrocmNVmjp21NfUylXGzTVjJCprlZuWZLbJKC5K1qUxz2RiIQYcJF719F4KR0r5sQv6HPuNN0IFh+fzDOxYfPdIpsur4dkdF2QGue2LVVTOVrE6K2M0h/S2VSXz3eVLJVUrc5ZodG8Q47q573086Gcqri0NexuZmtbvUMc6DzXp09ypqV1tlNrYEWG574MqxBsfUdGM4BQhyjdydKvXuaMr7buxcyKmLpZVWnd1ZUE/Pcs49rNfOEYQT1Kuq/Xmqyf4vtxnKBLZZFqoTuOYguv5xbovQXRhmpLBe1S24wqTVW8VuSwmTGd4l6JOjKUuJYQn0pkQZzEiI+lLzK08jd2nYzrdmjbh6WajmIdEEEBi5GMjEgkShLr2hIEiUSJA/vlbrWU3K6bVeful64sXIj1JjIAj2iSTGQ76lEnuJBB/R4GHuGQTCXqgmzAjnzh8W9MI7MCL19MhVJcvy86GBPsuDxKks2RZhWi52IFFkMNq5czs00kntKVPWIF0puxcY1KC+PZGxD0lc4mt0HolIgrZDWnowDh7fx09zOu3aAeQYKv0662yjJiDKTchzNFu3sZk4zNHkzqsluiB2UzyoZ7JR/B8lrH0KlS98Mepsp27JXEhTOy09R7tnNzbt70F6VoBJd47S1/jxmQUxpTttDsRorQ6ZasEIbiR3ZCtFE3pw0AUUFmbc2xORMNx5Up7+NcPenfsUqFjjdvKzKyeWvPOgrPZEmwh9d4y8G5ETmIxp6BTcvumYKTVSybICJA8x0469LYq8iq6mjYfxREuFxOgswhUsxso/6m9SMhEtFjP+apUhH2mywxYEiQB5pt+2TlZ7jfhzBQnT6h8aPFUF0WkQlJ/H7AZL0EsvjpoOkJSpSWpQvEIo9LMYR34MTIb7KPylvnexDkVlNvYtMrt+dKxXqwsd9/Y+nWTVL+z2SGySZgkkkEE/pPloy0Tr0UwnD45yLXSV118Re2bvi6/wA9Pf16/fXrrv8APKZ2jCch9EBMrOdsz8c0YMlSo1h/SkULkhEK0g9WqBc1ExpTNjSXcBTi1QLmolwrOH1a+xpTfzX8gKOhdzLAtULLarxCSzNUuvdc+vdbInuLFzA6kuYlCQ/JRI8Is1a1xRTaSt6uxIRZEH1kP0Sif/UJA9ESiRIEAg9geTDlX2yfF2QH1LqA7krpAeC0n9wOI9KNDjUpQVL4nqETA9g/ISCEPWDSO/FizrYrNlHT/lmW2nvedOfyDTehtcNRWS8etiFGnTo/ZH9kWJVEJk2JJ7MJH0J/uJ84LzKi5xZ6MbNZ7UbD3WfiPXQKvnYwQIH4DHqQ/wAI8vf6xfD/AD//2Q==', '大众', 1);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (31, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAACAwAAAAAAAAAAAAAAAAAHCAYJCv/EACIQAAIDAQEAAgIDAQAAAAAAAAUGAwQHAgEAEQgTCRIhIv/EABcBAQEBAQAAAAAAAAAAAAAAAAIDAQT/xAAmEQEBAQACAgECBgMAAAAAAAABAhEDIQASMRNRIiMyQXGRYWKB/9oADAMBAAIRAxEAPwDDjnefqMax3rWvyMMWYQHyKmFAppMOIdtKcRIsWXLLa4YMi2Mcqjl0cwLhBsciauy1w0TABp0Vw4QLcw1EHWukjnXyuLhv8dv7aOOgiqRJkGk3vck3NcP5w0aRB6UPmgZXgNKPO1GwvPmPPOjY/n76oN5x1oHs8nLtPtzuMc9BiiqJMCRhyCOH9D+EaIRC/J5xNdRrg21YICaVMbJJUexo3c0O/ApEZne13+3Qa+SmuUKaqOQhSiIqKMNUPfk9t6yen5xpw8SQ0GKLhksvHKNgWbBE74YwNt8frtDigu1LSIUbMf37/SxUtwTV5uPv3+skfXP379fJIyspiKJ9kcT+/LiUFDogj9xNH+vG6xMPmTZnlQ7oAtv0ODCjTazncVSe6wUw7qjBTW7Y0taZ4Y/SQZGCmARyHVz4moZbBIK2rVAUIqqRut6XaSa45Ffy6uqme6qaOPE3o7lKrv1PV9KzHnv6kctsk/mRxzN25M1DyaVm1X6yonJKfY953RktF/I5Y/kUtD1Z9wRMxhkzZRHBUDZsk8N01PJcfSh4wAtqWzAzJK9SM5crDIYafjpXmi0yE1eqT0O3Uhc8SWRVfHykyTfGxLMPt9SfXdy/wyy6q8k7PwHFJ2GI5uBqnkjlLRsZ+nXv641xvtYjgHHXfy/Vp6a6dkYk9t1rS2bPRZUIgHXppJowc7NBZOjE60ZuSLFE5YrddV7BmsE9oxFZ4O+4Zr/NiSPvvjrzr2PJTd1S+yvdYns/DSOo1+p13V8vxR9PjiA9SZAnd9f9ROsn9J/gPIcvsTApGxjKqnDCyxhbcV8MfXyd0MbE34PfuG6MKjp616hbh9/2KzVnimj9/wB4789+EUdFE+EcT/p40KMQT7IJ06dP2e/58JugfkVverA4ljStl016WYTU7LwutDqwGQPTLZg5q2WWUPdvyjrDFZrc817B2etIWnh8/VLc74/5+a3TuvyA51odm5m4996734Z44nskEVH5xenN3106Qw8DXw+Pz//Z', '奔驰', 1);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (32, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==', '日产', 1);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (33, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAaAAACAgMAAAAAAAAAAAAAAAAHCAABBgkK/8QAJRAAAgMBAAIBAgcAAAAAAAAAAwQBAgUGBxEAITEIEhQWUYGR/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAQFBgMH/8QAJBEAAgICAgIBBQEAAAAAAAAAAQIDBAAFBhIREwcUFSEjMST/2gAMAwEAAhEDEQA/AO+Dd2lufzi6TQmTiHYY6gTBLDRilvFKUEGLV/NP1m1pm1a0pW97TFYmYYzBc3yvh6TnPKUz9gX7lzldRFiyyx11lHywujOoRNxic0rjNWFgBZrUlmEnRTFbLE9MYUvjGKV5X/EXy+M/t8THPeQSbmQd+1NBbgdrX5kjGIDnmjjJpp3AKQug6VddEg2KkMyvofpxs3zzLkqJ9zXrzSQPBdZo/Z5dKsjRfqEBb9gHUE+9QgJBYq4H5Q56fpvije7zU1dxW2/E4K9xabRV7nIqFa+Bdk2kUfek7/UL6jqZ3snoRXjmqyOQlhDiq+LvLu7hdZm6fcY2vTOUQxeX37Yvizv50tzoz9N1PRr9AKmmojGJjLSvpENjAtv0xG9ttthyXdyFQ8jv6g8g1tgpEqRktTlXx3DkHwQCVAjZmIHlfwCAT4ya3w1yEIWXfcIl/wAdm4oi5ZqpAyVRSDxd1l6JNJJejjrJIyCz67EkLPDC0mbGPHflDnvJXPz0WOp0GUCjx88yHTYOlgaoTgEuxW9kXwDLK7KjarSrFIsMoT1+tSVIOlhUuxXIvdGs0Y7shWeJ4pAQAQejgHqysrK38IYfw+QMVyTiez4vsvtt2bWXZDXjspZ1GyqbSk8cjSRlVs1ZHj9sU0MsM0RIeOSNgQVKsxG9RP3iJ/r5MzMZPUfxH+R8Yy/UR9o9fGM//9k=', '本田', 1);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (34, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAACAkHCv/EACoQAAAGAgEDBAAHAAAAAAAAAAECAwQFBgcICQATIREUFTFBUVNhcZPR/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAED/8QAIxEAAgECBAcAAAAAAAAAAAAAAAERAjETYbHhQVFxgZGh0f/aAAwDAQACEQMRAD8A6UdqOZnjz0vzuOt2w2YbBTcrpxtSlXUW2xneJyHaMbq2RdwblexRcUvEAiZuuRV2qVyYjMoH9wKZkzlKMlRKTm+W4yW7e9OrXHrjir5X2dyK7q9JuFybUKDka3VJ+7rL2R3CTNhQauGdYayK7JBWLgZJYjt0VNA50QRIYyhylEXDz9bml6ubE4f3JwnUdhcBWZ7Z8XXf5QK9Myldmay8dGhpR3DyAKRE42ZyCBUnzJdMiiiIJrEKCiRjFH16Ew3wa0+koOQOtchNwz/b2GHOQk2vOtB6TU4eyYyc6OWzKyJGb2AYNbujF5Vak+KnX9gaSaq6KDdVMkKq5+PcqJnbCYw0psui0FmS41sCatRkvbuGG9ZC0OzVNOIuuZLyvf8AXDPefq9kbEiiT2VLVK5FWRoMax7lqZV2wnuDVE6BGsQrH++QRfLd0UuboBM5dndWMdv86ZpW2Byd3LEhYspL4bmcDGnhRn5ArJIuOJ4iUjGEjmIt2JXqqSZJTsi8TIBT+QGaBdYAAAVVAA+gBQ4AAfkAevgPTx0MJas2u4d9f9ZX+w/+9BL5vyw7yv4nOb9zGMI/x5H66Elu7k//2Q==', '爱驰', 1);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (35, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAABwkICv/EACAQAAIDAQEAAgMBAAAAAAAAAAMEAgUGAQcACBMUFRH/xAAYAQEBAQEBAAAAAAAAAAAAAAAABAUDBv/EACIRAAICAgIDAAMBAAAAAAAAAAECAxEABAUSExQhBhUigf/aAAwDAQACEQMRAD8A7t/RPTsn5fSu3upbOFVCnutAyFNabjQ6POLDcvrgoodjFerqFygm++yQKoJsqAkX9htYJmMXqv2PxnS5Je4q9JnW9sqm5RVlmgoxfSVdHAkGbHOU9hZ39Wqv2f4Xm3a0SiDMZAcOEv8AkJMY/wARRHHAwSQKIsIkGUcuTGQc48lCcJx72M4Tj3koyj3sZR7zvO9534xk/ftpt6eztz+eMeb/AGUtXl6FiJtN5ViVrzH2lVYuZVo9JcGsLBNS1jF01cxNVciVqmOvtzIWKf4mST3NLhDu6y7P7Li9YM5TxbW0Y5wQJTfjEbEqfEQCLHZkU0WGRT7ggcp6+1KVTuWii7JX8fA5YKWBcAi/lEmhROHM1r8V53uV/UK/6/8A2IEpV5exzdCHyv6vL5ayuwFUs7m3t2LnS+gbXfP6Jz+QGkK1Zs15GyNUp6RZeSVjZS0o/wASkdlQ83wEbkqHD8gAsZd40W5BGYmBEhYsjsFVGDEMVVp25VVs+lvkfarXJsAMSQLuh1I+gWSKsWRZPxfepejYCr0Fdh9n50oAzdEHJbyk/gaCsjRF/m8hNCLTo5IyiDn6DYWjAbWjA4ZyHKMu+e5DS9DZOv7OttgIjifUkMsLCRewpiqnsAf6UqCp+EXl+vN7EYk8csVkjpMvSQUaNrZ/wgkEfbxrfIs7YfGMPjGf/9k=', '现代', 1);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (36, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAJCgYL/8QAJBAAAQUBAQACAgIDAAAAAAAAAwECBAUGBwgJEwAhChIRFCL/xAAbAQABBAMAAAAAAAAAAAAAAAAIAwQGBwECBf/EACcRAAICAQMDBAIDAAAAAAAAAAECAwQFBhEhABITBxUiMSNBFBaB/9oADAMBAAIRAxEAPwBWf5CfZfUeU7/8fXGeFeiepedsZ2DXaWF0bVcwlTIFqkBLvGVhZAlgyQMtZlJRSdBcjjXRY1JXjE6dNkDjJKILi6nzn9a01mc6sMViXG0rFiGKdxHDJNHBI1eGR9mZVnn8cX4laZiwSJGdlHWa8DW7sNb5bSABe1iCT37OdgQD2qVJLcKGJOygnoVYnor2NksB2Oxf8i3oLV33N9fMz+cQXV7O+PfAjbfT005+jGKtp0rDwqetqgObBaRIegBbDlAfXS4ZYA+Zj1V1DYy+HirRT0IcrjatyWPxiskBmoQWVaAu05kWWR3ZCxPlrtG6sGRllND0W0XpCzjdJU9SaJxucXP6i1PirGbuC3FIoxpxoqV6MwuR17dmCa5KbtfwLLHXNaOESzyfK4L4+9J0DYeNPPup6jfWmm3d/g4tlf3t09pLSzkGmzUDLmGa1v3EPFaErSqiK8TxqqIv6QlKTyyUqUljbzyUqck3xC/letE0u6jYBi5YsAAAd+B0Jmq6+Pqaq1RUxK9mKqakz1XGIHaQJj62Wtw00WRyXdFrpGEZmZioBLMeSTP8kbidbufKHNOwSqh1gbi3TVFMlBG5x6vP9EqS52xsEVpQ/wB/qlAr4I2Ee0aNs5DfsC0pHrG9cJkH03c9tlMU8UtWw/xDK8UUo3VwVb4qzrKCFJ74k2B+jY/oJU0XkPUvFY/XWOTJYa/RylaKJ7U1NUvrWFyq5ngIkVZTUerJsGIhsSMq+RUZYvNne0+v1fOOK8L1sOVruwdH4LgtBjwxIthfVL9Wa4iaS3zRa+QNdLYz7gYK6+FMr2MriOqZFSxX6QliOrNB6V91yEFjUuKtzRxJlmgyR8scNiOGejFVrWIyGNaNK08s1JIpd5ik8UhAqLGZDrXXWqdC5y5j9J5WHD4zG5KfJYHE1wbFbGtme+SS1jlycDWyLSVq8clmyi2TXEBmUmQqvU55piYHNed4XntY5HwMRkc9lYpUajFOOiqotb/svaiIiElOjLIKv+P2QrlX9r+EEx7mYgAAkkAcAAngAfoAcAfodDwO4jd2LueXdiSzseWZieSzHckk7kkk9Zzu3HsF37kW/wCPdOpmX2G3ubsaHQVquYwhIcoDk+6KZ4ypGmxiIyRDkoN7o8gYzMT+zE/E2VXVkdQyOrI6n6ZWBBB22P0eCCCDsQQQOl69qxSsQXKkz17VWVLFeeM7PFNEwdHU8jgjlSCrKSrAqxBELxp8BngzzT6Vz3ojLD67td/hyLa5UXSthm76gp7qOqsg3Ya+nw+clHs65P8AqAWZYSRAKjT/AEOOMZWa1ooqkP8AHrxrHEO7ZR3HtDHcgbkgD/OnGWylzN3BeyEiyWGjjVjHHHEhWJQqDsjUKAAfobAnk9UL/inTHr//2Q==', '荣威', 1);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (37, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==', '丰田', 2);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (38, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAZAAACAwEAAAAAAAAAAAAAAAAJCgECBwj/xAAkEAABBAIDAAICAwAAAAAAAAAEAQIDBQYHCBESACEJMRMVYf/EABgBAAMBAQAAAAAAAAAAAAAAAAADBAEC/8QAJBEAAwACAgAGAwEAAAAAAAAAAQIDBAUAEhETISIjMRQkYUH/2gAMAwEAAhEDEQA/AHheSHIXXfFnTmZ7v2kVYQYhhYDCih6YCW2vbY0qeMSspKOqgVJrC2tTZoRAhmOajpZPUj44mSSN0ff2B/SQAP6SfQAf748ACSAqs7EgKiKXdyT4BURfczsfRVAJZiAASfDnFHD38qOruV+aDa3stZ7C0Tn93BYWGHYts11HIblVSA15CECT0J54YliTXMW3joSZ/wC3iqXR2M40QU4s89T4dkw45/xti3vTHlRKo3akpyq/sBFBMrZfLr1MqkUWdGaNQq+5FqY9J1leI+WVpPJ5nsyGbq4BWqMjLWTdXmQvZff4KUr5JxnBVc0NycU9+V+TcQ8t3HNrXZIeW0JlLkJdRZh1OLZ9hF5jd7SGHX5A8VKOINY2VMk8xhw0LoC5JRpnSQKrV2mLSrEs6Cs6SLzIV1FEKFkJDAMAxKkggH7BHpy3W5ra3Y6/ZJGOS+vzsTOTHyVZsbIbDyJ5CwyFRkdoVMxOyq6s02YKykggE/49ON2seOXK605Tb15i4psXEtTYSRb6yxvANfZLjiOxqnos0xyrv7aG2NtyskbU0AOYC08OGFWbyVnNRccrQ7CjllbJ6R12Dq1f9LXCn4cAqKkTaWLGxQKo6ik8LGBQfGvlAoi9m7dbjY33e73G/wA0l9jvNjl7PPsz1rS2TmZeTmValr0rezedlWY1tSlaFy1KOxJ43Pq7bOAbmxATO9c5CLkWLnF2AA9hD6ge0yrKkCPEMBISI6sOEJifCXW2YwdmFK1YDgxp2uibnIOaA4eB6yK+KJ/8rUZJ6jY721P01/bV9tRfvp3af5+vhw5LoYnua90bHPZ68Pcxiub7REd5cre2+mp5d5VO0+l76T4cOXRjG99Nana9qvlEVV6RO16T7XpETte1+kT9Inw4c//Z', '别克', 2);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (39, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAWAAEBAQAAAAAAAAAAAAAAAAAJCAr/xAAjEAABBQEBAAEEAwAAAAAAAAAGAgMEBQcBCBIACREUExUi/8QAGAEAAwEBAAAAAAAAAAAAAAAABAYHBQP/xAAkEQACAwACAgMAAwEBAAAAAAABAwIEBQYRABITFCEjMUEVMv/aAAwDAQACEQMRAD8A2P8ApP05Nz64bz0Fk1dVfNviSDfQyGisSQZzGEcWEmAM8foa2dVvEJNdcgWVhCqXraprK6mrpVzcT+Nqrq+0euM8WToIjpaSrNiu+VxWZlUnqrXdh1BMX3JRsuW2FSjUgxYfYCXtY1i69ZMpFjEpnIuSMotlQoMrocmNVmjp21NfUylXGzTVjJCprlZuWZLbJKC5K1qUxz2RiIQYcJF719F4KR0r5sQv6HPuNN0IFh+fzDOxYfPdIpsur4dkdF2QGue2LVVTOVrE6K2M0h/S2VSXz3eVLJVUrc5ZodG8Q47q573086Gcqri0NexuZmtbvUMc6DzXp09ypqV1tlNrYEWG574MqxBsfUdGM4BQhyjdydKvXuaMr7buxcyKmLpZVWnd1ZUE/Pcs49rNfOEYQT1Kuq/Xmqyf4vtxnKBLZZFqoTuOYguv5xbovQXRhmpLBe1S24wqTVW8VuSwmTGd4l6JOjKUuJYQn0pkQZzEiI+lLzK08jd2nYzrdmjbh6WajmIdEEEBi5GMjEgkShLr2hIEiUSJA/vlbrWU3K6bVeful64sXIj1JjIAj2iSTGQ76lEnuJBB/R4GHuGQTCXqgmzAjnzh8W9MI7MCL19MhVJcvy86GBPsuDxKks2RZhWi52IFFkMNq5czs00kntKVPWIF0puxcY1KC+PZGxD0lc4mt0HolIgrZDWnowDh7fx09zOu3aAeQYKv0662yjJiDKTchzNFu3sZk4zNHkzqsluiB2UzyoZ7JR/B8lrH0KlS98Mepsp27JXEhTOy09R7tnNzbt70F6VoBJd47S1/jxmQUxpTttDsRorQ6ZasEIbiR3ZCtFE3pw0AUUFmbc2xORMNx5Up7+NcPenfsUqFjjdvKzKyeWvPOgrPZEmwh9d4y8G5ETmIxp6BTcvumYKTVSybICJA8x0469LYq8iq6mjYfxREuFxOgswhUsxso/6m9SMhEtFjP+apUhH2mywxYEiQB5pt+2TlZ7jfhzBQnT6h8aPFUF0WkQlJ/H7AZL0EsvjpoOkJSpSWpQvEIo9LMYR34MTIb7KPylvnexDkVlNvYtMrt+dKxXqwsd9/Y+nWTVL+z2SGySZgkkkEE/pPloy0Tr0UwnD45yLXSV118Re2bvi6/wA9Pf16/fXrrv8APKZ2jCch9EBMrOdsz8c0YMlSo1h/SkULkhEK0g9WqBc1ExpTNjSXcBTi1QLmolwrOH1a+xpTfzX8gKOhdzLAtULLarxCSzNUuvdc+vdbInuLFzA6kuYlCQ/JRI8Is1a1xRTaSt6uxIRZEH1kP0Sif/UJA9ESiRIEAg9geTDlX2yfF2QH1LqA7krpAeC0n9wOI9KNDjUpQVL4nqETA9g/ISCEPWDSO/FizrYrNlHT/lmW2nvedOfyDTehtcNRWS8etiFGnTo/ZH9kWJVEJk2JJ7MJH0J/uJ84LzKi5xZ6MbNZ7UbD3WfiPXQKvnYwQIH4DHqQ/wAI8vf6xfD/AD//2Q==', '大众', 2);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (40, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAACAwAAAAAAAAAAAAAAAAAHCAYJCv/EACIQAAIDAQEAAgIDAQAAAAAAAAUGAwQHAgEAEQgTCRIhIv/EABcBAQEBAQAAAAAAAAAAAAAAAAIDAQT/xAAmEQEBAQACAgECBgMAAAAAAAABAhEDIQASMRNRIiMyQXGRYWKB/9oADAMBAAIRAxEAPwDDjnefqMax3rWvyMMWYQHyKmFAppMOIdtKcRIsWXLLa4YMi2Mcqjl0cwLhBsciauy1w0TABp0Vw4QLcw1EHWukjnXyuLhv8dv7aOOgiqRJkGk3vck3NcP5w0aRB6UPmgZXgNKPO1GwvPmPPOjY/n76oN5x1oHs8nLtPtzuMc9BiiqJMCRhyCOH9D+EaIRC/J5xNdRrg21YICaVMbJJUexo3c0O/ApEZne13+3Qa+SmuUKaqOQhSiIqKMNUPfk9t6yen5xpw8SQ0GKLhksvHKNgWbBE74YwNt8frtDigu1LSIUbMf37/SxUtwTV5uPv3+skfXP379fJIyspiKJ9kcT+/LiUFDogj9xNH+vG6xMPmTZnlQ7oAtv0ODCjTazncVSe6wUw7qjBTW7Y0taZ4Y/SQZGCmARyHVz4moZbBIK2rVAUIqqRut6XaSa45Ffy6uqme6qaOPE3o7lKrv1PV9KzHnv6kctsk/mRxzN25M1DyaVm1X6yonJKfY953RktF/I5Y/kUtD1Z9wRMxhkzZRHBUDZsk8N01PJcfSh4wAtqWzAzJK9SM5crDIYafjpXmi0yE1eqT0O3Uhc8SWRVfHykyTfGxLMPt9SfXdy/wyy6q8k7PwHFJ2GI5uBqnkjlLRsZ+nXv641xvtYjgHHXfy/Vp6a6dkYk9t1rS2bPRZUIgHXppJowc7NBZOjE60ZuSLFE5YrddV7BmsE9oxFZ4O+4Zr/NiSPvvjrzr2PJTd1S+yvdYns/DSOo1+p13V8vxR9PjiA9SZAnd9f9ROsn9J/gPIcvsTApGxjKqnDCyxhbcV8MfXyd0MbE34PfuG6MKjp616hbh9/2KzVnimj9/wB4789+EUdFE+EcT/p40KMQT7IJ06dP2e/58JugfkVverA4ljStl016WYTU7LwutDqwGQPTLZg5q2WWUPdvyjrDFZrc817B2etIWnh8/VLc74/5+a3TuvyA51odm5m4996734Z44nskEVH5xenN3106Qw8DXw+Pz//Z', '奔驰', 2);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (41, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==', '日产', 2);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (42, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAaAAACAgMAAAAAAAAAAAAAAAAHCAABBgkK/8QAJRAAAgMBAAIBAgcAAAAAAAAAAwQBAgUGBxEAITEIEhQWUYGR/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAQFBgMH/8QAJBEAAgICAgIBBQEAAAAAAAAAAQIDBAAFBhIREwcUFSEjMST/2gAMAwEAAhEDEQA/AO+Dd2lufzi6TQmTiHYY6gTBLDRilvFKUEGLV/NP1m1pm1a0pW97TFYmYYzBc3yvh6TnPKUz9gX7lzldRFiyyx11lHywujOoRNxic0rjNWFgBZrUlmEnRTFbLE9MYUvjGKV5X/EXy+M/t8THPeQSbmQd+1NBbgdrX5kjGIDnmjjJpp3AKQug6VddEg2KkMyvofpxs3zzLkqJ9zXrzSQPBdZo/Z5dKsjRfqEBb9gHUE+9QgJBYq4H5Q56fpvije7zU1dxW2/E4K9xabRV7nIqFa+Bdk2kUfek7/UL6jqZ3snoRXjmqyOQlhDiq+LvLu7hdZm6fcY2vTOUQxeX37Yvizv50tzoz9N1PRr9AKmmojGJjLSvpENjAtv0xG9ttthyXdyFQ8jv6g8g1tgpEqRktTlXx3DkHwQCVAjZmIHlfwCAT4ya3w1yEIWXfcIl/wAdm4oi5ZqpAyVRSDxd1l6JNJJejjrJIyCz67EkLPDC0mbGPHflDnvJXPz0WOp0GUCjx88yHTYOlgaoTgEuxW9kXwDLK7KjarSrFIsMoT1+tSVIOlhUuxXIvdGs0Y7shWeJ4pAQAQejgHqysrK38IYfw+QMVyTiez4vsvtt2bWXZDXjspZ1GyqbSk8cjSRlVs1ZHj9sU0MsM0RIeOSNgQVKsxG9RP3iJ/r5MzMZPUfxH+R8Yy/UR9o9fGM//9k=', '本田', 2);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (43, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAACAkHCv/EACoQAAAGAgEDBAAHAAAAAAAAAAECAwQFBgcICQATIREUFTFBUVNhcZPR/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAED/8QAIxEAAgECBAcAAAAAAAAAAAAAAAERAjETYbHhQVFxgZGh0f/aAAwDAQACEQMRAD8A6UdqOZnjz0vzuOt2w2YbBTcrpxtSlXUW2xneJyHaMbq2RdwblexRcUvEAiZuuRV2qVyYjMoH9wKZkzlKMlRKTm+W4yW7e9OrXHrjir5X2dyK7q9JuFybUKDka3VJ+7rL2R3CTNhQauGdYayK7JBWLgZJYjt0VNA50QRIYyhylEXDz9bml6ubE4f3JwnUdhcBWZ7Z8XXf5QK9Myldmay8dGhpR3DyAKRE42ZyCBUnzJdMiiiIJrEKCiRjFH16Ew3wa0+koOQOtchNwz/b2GHOQk2vOtB6TU4eyYyc6OWzKyJGb2AYNbujF5Vak+KnX9gaSaq6KDdVMkKq5+PcqJnbCYw0psui0FmS41sCatRkvbuGG9ZC0OzVNOIuuZLyvf8AXDPefq9kbEiiT2VLVK5FWRoMax7lqZV2wnuDVE6BGsQrH++QRfLd0UuboBM5dndWMdv86ZpW2Byd3LEhYspL4bmcDGnhRn5ArJIuOJ4iUjGEjmIt2JXqqSZJTsi8TIBT+QGaBdYAAAVVAA+gBQ4AAfkAevgPTx0MJas2u4d9f9ZX+w/+9BL5vyw7yv4nOb9zGMI/x5H66Elu7k//2Q==', '爱驰', 2);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (44, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAABwkICv/EACAQAAIDAQEAAgMBAAAAAAAAAAMEAgUGAQcACBMUFRH/xAAYAQEBAQEBAAAAAAAAAAAAAAAABAUDBv/EACIRAAICAgIDAAMBAAAAAAAAAAECAxEABAUSExQhBhUigf/aAAwDAQACEQMRAD8A7t/RPTsn5fSu3upbOFVCnutAyFNabjQ6POLDcvrgoodjFerqFygm++yQKoJsqAkX9htYJmMXqv2PxnS5Je4q9JnW9sqm5RVlmgoxfSVdHAkGbHOU9hZ39Wqv2f4Xm3a0SiDMZAcOEv8AkJMY/wARRHHAwSQKIsIkGUcuTGQc48lCcJx72M4Tj3koyj3sZR7zvO9534xk/ftpt6eztz+eMeb/AGUtXl6FiJtN5ViVrzH2lVYuZVo9JcGsLBNS1jF01cxNVciVqmOvtzIWKf4mST3NLhDu6y7P7Li9YM5TxbW0Y5wQJTfjEbEqfEQCLHZkU0WGRT7ggcp6+1KVTuWii7JX8fA5YKWBcAi/lEmhROHM1r8V53uV/UK/6/8A2IEpV5exzdCHyv6vL5ayuwFUs7m3t2LnS+gbXfP6Jz+QGkK1Zs15GyNUp6RZeSVjZS0o/wASkdlQ83wEbkqHD8gAsZd40W5BGYmBEhYsjsFVGDEMVVp25VVs+lvkfarXJsAMSQLuh1I+gWSKsWRZPxfepejYCr0Fdh9n50oAzdEHJbyk/gaCsjRF/m8hNCLTo5IyiDn6DYWjAbWjA4ZyHKMu+e5DS9DZOv7OttgIjifUkMsLCRewpiqnsAf6UqCp+EXl+vN7EYk8csVkjpMvSQUaNrZ/wgkEfbxrfIs7YfGMPjGf/9k=', '现代', 2);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (45, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAJCgYL/8QAJBAAAQUBAQACAgIDAAAAAAAAAwECBAUGBwgJEwAhChIRFCL/xAAbAQABBAMAAAAAAAAAAAAAAAAIAwQGBwECBf/EACcRAAICAQMDBAIDAAAAAAAAAAECAwQFBhEhABITBxUiMSNBFBaB/9oADAMBAAIRAxEAPwBWf5CfZfUeU7/8fXGeFeiepedsZ2DXaWF0bVcwlTIFqkBLvGVhZAlgyQMtZlJRSdBcjjXRY1JXjE6dNkDjJKILi6nzn9a01mc6sMViXG0rFiGKdxHDJNHBI1eGR9mZVnn8cX4laZiwSJGdlHWa8DW7sNb5bSABe1iCT37OdgQD2qVJLcKGJOygnoVYnor2NksB2Oxf8i3oLV33N9fMz+cQXV7O+PfAjbfT005+jGKtp0rDwqetqgObBaRIegBbDlAfXS4ZYA+Zj1V1DYy+HirRT0IcrjatyWPxiskBmoQWVaAu05kWWR3ZCxPlrtG6sGRllND0W0XpCzjdJU9SaJxucXP6i1PirGbuC3FIoxpxoqV6MwuR17dmCa5KbtfwLLHXNaOESzyfK4L4+9J0DYeNPPup6jfWmm3d/g4tlf3t09pLSzkGmzUDLmGa1v3EPFaErSqiK8TxqqIv6QlKTyyUqUljbzyUqck3xC/letE0u6jYBi5YsAAAd+B0Jmq6+Pqaq1RUxK9mKqakz1XGIHaQJj62Wtw00WRyXdFrpGEZmZioBLMeSTP8kbidbufKHNOwSqh1gbi3TVFMlBG5x6vP9EqS52xsEVpQ/wB/qlAr4I2Ee0aNs5DfsC0pHrG9cJkH03c9tlMU8UtWw/xDK8UUo3VwVb4qzrKCFJ74k2B+jY/oJU0XkPUvFY/XWOTJYa/RylaKJ7U1NUvrWFyq5ngIkVZTUerJsGIhsSMq+RUZYvNne0+v1fOOK8L1sOVruwdH4LgtBjwxIthfVL9Wa4iaS3zRa+QNdLYz7gYK6+FMr2MriOqZFSxX6QliOrNB6V91yEFjUuKtzRxJlmgyR8scNiOGejFVrWIyGNaNK08s1JIpd5ik8UhAqLGZDrXXWqdC5y5j9J5WHD4zG5KfJYHE1wbFbGtme+SS1jlycDWyLSVq8clmyi2TXEBmUmQqvU55piYHNed4XntY5HwMRkc9lYpUajFOOiqotb/svaiIiElOjLIKv+P2QrlX9r+EEx7mYgAAkkAcAAngAfoAcAfodDwO4jd2LueXdiSzseWZieSzHckk7kkk9Zzu3HsF37kW/wCPdOpmX2G3ubsaHQVquYwhIcoDk+6KZ4ypGmxiIyRDkoN7o8gYzMT+zE/E2VXVkdQyOrI6n6ZWBBB22P0eCCCDsQQQOl69qxSsQXKkz17VWVLFeeM7PFNEwdHU8jgjlSCrKSrAqxBELxp8BngzzT6Vz3ojLD67td/hyLa5UXSthm76gp7qOqsg3Ya+nw+clHs65P8AqAWZYSRAKjT/AEOOMZWa1ooqkP8AHrxrHEO7ZR3HtDHcgbkgD/OnGWylzN3BeyEiyWGjjVjHHHEhWJQqDsjUKAAfobAnk9UL/inTHr//2Q==', '荣威', 2);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (46, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==', '丰田', 3);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (47, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAZAAACAwEAAAAAAAAAAAAAAAAJCgECBwj/xAAkEAABBAIDAAICAwAAAAAAAAAEAQIDBQYHCBESACEJMRMVYf/EABgBAAMBAQAAAAAAAAAAAAAAAAADBAEC/8QAJBEAAwACAgAGAwEAAAAAAAAAAQIDBAUAEhETISIjMRQkYUH/2gAMAwEAAhEDEQA/AHheSHIXXfFnTmZ7v2kVYQYhhYDCih6YCW2vbY0qeMSspKOqgVJrC2tTZoRAhmOajpZPUj44mSSN0ff2B/SQAP6SfQAf748ACSAqs7EgKiKXdyT4BURfczsfRVAJZiAASfDnFHD38qOruV+aDa3stZ7C0Tn93BYWGHYts11HIblVSA15CECT0J54YliTXMW3joSZ/wC3iqXR2M40QU4s89T4dkw45/xti3vTHlRKo3akpyq/sBFBMrZfLr1MqkUWdGaNQq+5FqY9J1leI+WVpPJ5nsyGbq4BWqMjLWTdXmQvZff4KUr5JxnBVc0NycU9+V+TcQ8t3HNrXZIeW0JlLkJdRZh1OLZ9hF5jd7SGHX5A8VKOINY2VMk8xhw0LoC5JRpnSQKrV2mLSrEs6Cs6SLzIV1FEKFkJDAMAxKkggH7BHpy3W5ra3Y6/ZJGOS+vzsTOTHyVZsbIbDyJ5CwyFRkdoVMxOyq6s02YKykggE/49ON2seOXK605Tb15i4psXEtTYSRb6yxvANfZLjiOxqnos0xyrv7aG2NtyskbU0AOYC08OGFWbyVnNRccrQ7CjllbJ6R12Dq1f9LXCn4cAqKkTaWLGxQKo6ik8LGBQfGvlAoi9m7dbjY33e73G/wA0l9jvNjl7PPsz1rS2TmZeTmValr0rezedlWY1tSlaFy1KOxJ43Pq7bOAbmxATO9c5CLkWLnF2AA9hD6ge0yrKkCPEMBISI6sOEJifCXW2YwdmFK1YDgxp2uibnIOaA4eB6yK+KJ/8rUZJ6jY721P01/bV9tRfvp3af5+vhw5LoYnua90bHPZ68Pcxiub7REd5cre2+mp5d5VO0+l76T4cOXRjG99Nana9qvlEVV6RO16T7XpETte1+kT9Inw4c//Z', '别克', 3);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (48, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAWAAEBAQAAAAAAAAAAAAAAAAAJCAr/xAAjEAABBQEBAAEEAwAAAAAAAAAGAgMEBQcBCBIACREUExUi/8QAGAEAAwEBAAAAAAAAAAAAAAAABAYHBQP/xAAkEQACAwACAgMAAwEBAAAAAAABAwIEBQYRABITFCEjMUEVMv/aAAwDAQACEQMRAD8A2P8ApP05Nz64bz0Fk1dVfNviSDfQyGisSQZzGEcWEmAM8foa2dVvEJNdcgWVhCqXraprK6mrpVzcT+Nqrq+0euM8WToIjpaSrNiu+VxWZlUnqrXdh1BMX3JRsuW2FSjUgxYfYCXtY1i69ZMpFjEpnIuSMotlQoMrocmNVmjp21NfUylXGzTVjJCprlZuWZLbJKC5K1qUxz2RiIQYcJF719F4KR0r5sQv6HPuNN0IFh+fzDOxYfPdIpsur4dkdF2QGue2LVVTOVrE6K2M0h/S2VSXz3eVLJVUrc5ZodG8Q47q573086Gcqri0NexuZmtbvUMc6DzXp09ypqV1tlNrYEWG574MqxBsfUdGM4BQhyjdydKvXuaMr7buxcyKmLpZVWnd1ZUE/Pcs49rNfOEYQT1Kuq/Xmqyf4vtxnKBLZZFqoTuOYguv5xbovQXRhmpLBe1S24wqTVW8VuSwmTGd4l6JOjKUuJYQn0pkQZzEiI+lLzK08jd2nYzrdmjbh6WajmIdEEEBi5GMjEgkShLr2hIEiUSJA/vlbrWU3K6bVeful64sXIj1JjIAj2iSTGQ76lEnuJBB/R4GHuGQTCXqgmzAjnzh8W9MI7MCL19MhVJcvy86GBPsuDxKks2RZhWi52IFFkMNq5czs00kntKVPWIF0puxcY1KC+PZGxD0lc4mt0HolIgrZDWnowDh7fx09zOu3aAeQYKv0662yjJiDKTchzNFu3sZk4zNHkzqsluiB2UzyoZ7JR/B8lrH0KlS98Mepsp27JXEhTOy09R7tnNzbt70F6VoBJd47S1/jxmQUxpTttDsRorQ6ZasEIbiR3ZCtFE3pw0AUUFmbc2xORMNx5Up7+NcPenfsUqFjjdvKzKyeWvPOgrPZEmwh9d4y8G5ETmIxp6BTcvumYKTVSybICJA8x0469LYq8iq6mjYfxREuFxOgswhUsxso/6m9SMhEtFjP+apUhH2mywxYEiQB5pt+2TlZ7jfhzBQnT6h8aPFUF0WkQlJ/H7AZL0EsvjpoOkJSpSWpQvEIo9LMYR34MTIb7KPylvnexDkVlNvYtMrt+dKxXqwsd9/Y+nWTVL+z2SGySZgkkkEE/pPloy0Tr0UwnD45yLXSV118Re2bvi6/wA9Pf16/fXrrv8APKZ2jCch9EBMrOdsz8c0YMlSo1h/SkULkhEK0g9WqBc1ExpTNjSXcBTi1QLmolwrOH1a+xpTfzX8gKOhdzLAtULLarxCSzNUuvdc+vdbInuLFzA6kuYlCQ/JRI8Is1a1xRTaSt6uxIRZEH1kP0Sif/UJA9ESiRIEAg9geTDlX2yfF2QH1LqA7krpAeC0n9wOI9KNDjUpQVL4nqETA9g/ISCEPWDSO/FizrYrNlHT/lmW2nvedOfyDTehtcNRWS8etiFGnTo/ZH9kWJVEJk2JJ7MJH0J/uJ84LzKi5xZ6MbNZ7UbD3WfiPXQKvnYwQIH4DHqQ/wAI8vf6xfD/AD//2Q==', '大众', 3);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (49, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAACAwAAAAAAAAAAAAAAAAAHCAYJCv/EACIQAAIDAQEAAgIDAQAAAAAAAAUGAwQHAgEAEQgTCRIhIv/EABcBAQEBAQAAAAAAAAAAAAAAAAIDAQT/xAAmEQEBAQACAgECBgMAAAAAAAABAhEDIQASMRNRIiMyQXGRYWKB/9oADAMBAAIRAxEAPwDDjnefqMax3rWvyMMWYQHyKmFAppMOIdtKcRIsWXLLa4YMi2Mcqjl0cwLhBsciauy1w0TABp0Vw4QLcw1EHWukjnXyuLhv8dv7aOOgiqRJkGk3vck3NcP5w0aRB6UPmgZXgNKPO1GwvPmPPOjY/n76oN5x1oHs8nLtPtzuMc9BiiqJMCRhyCOH9D+EaIRC/J5xNdRrg21YICaVMbJJUexo3c0O/ApEZne13+3Qa+SmuUKaqOQhSiIqKMNUPfk9t6yen5xpw8SQ0GKLhksvHKNgWbBE74YwNt8frtDigu1LSIUbMf37/SxUtwTV5uPv3+skfXP379fJIyspiKJ9kcT+/LiUFDogj9xNH+vG6xMPmTZnlQ7oAtv0ODCjTazncVSe6wUw7qjBTW7Y0taZ4Y/SQZGCmARyHVz4moZbBIK2rVAUIqqRut6XaSa45Ffy6uqme6qaOPE3o7lKrv1PV9KzHnv6kctsk/mRxzN25M1DyaVm1X6yonJKfY953RktF/I5Y/kUtD1Z9wRMxhkzZRHBUDZsk8N01PJcfSh4wAtqWzAzJK9SM5crDIYafjpXmi0yE1eqT0O3Uhc8SWRVfHykyTfGxLMPt9SfXdy/wyy6q8k7PwHFJ2GI5uBqnkjlLRsZ+nXv641xvtYjgHHXfy/Vp6a6dkYk9t1rS2bPRZUIgHXppJowc7NBZOjE60ZuSLFE5YrddV7BmsE9oxFZ4O+4Zr/NiSPvvjrzr2PJTd1S+yvdYns/DSOo1+p13V8vxR9PjiA9SZAnd9f9ROsn9J/gPIcvsTApGxjKqnDCyxhbcV8MfXyd0MbE34PfuG6MKjp616hbh9/2KzVnimj9/wB4789+EUdFE+EcT/p40KMQT7IJ06dP2e/58JugfkVverA4ljStl016WYTU7LwutDqwGQPTLZg5q2WWUPdvyjrDFZrc817B2etIWnh8/VLc74/5+a3TuvyA51odm5m4996734Z44nskEVH5xenN3106Qw8DXw+Pz//Z', '奔驰', 3);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (50, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==', '日产', 3);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (51, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAaAAACAgMAAAAAAAAAAAAAAAAHCAABBgkK/8QAJRAAAgMBAAIBAgcAAAAAAAAAAwQBAgUGBxEAITEIEhQWUYGR/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAQFBgMH/8QAJBEAAgICAgIBBQEAAAAAAAAAAQIDBAAFBhIREwcUFSEjMST/2gAMAwEAAhEDEQA/AO+Dd2lufzi6TQmTiHYY6gTBLDRilvFKUEGLV/NP1m1pm1a0pW97TFYmYYzBc3yvh6TnPKUz9gX7lzldRFiyyx11lHywujOoRNxic0rjNWFgBZrUlmEnRTFbLE9MYUvjGKV5X/EXy+M/t8THPeQSbmQd+1NBbgdrX5kjGIDnmjjJpp3AKQug6VddEg2KkMyvofpxs3zzLkqJ9zXrzSQPBdZo/Z5dKsjRfqEBb9gHUE+9QgJBYq4H5Q56fpvije7zU1dxW2/E4K9xabRV7nIqFa+Bdk2kUfek7/UL6jqZ3snoRXjmqyOQlhDiq+LvLu7hdZm6fcY2vTOUQxeX37Yvizv50tzoz9N1PRr9AKmmojGJjLSvpENjAtv0xG9ttthyXdyFQ8jv6g8g1tgpEqRktTlXx3DkHwQCVAjZmIHlfwCAT4ya3w1yEIWXfcIl/wAdm4oi5ZqpAyVRSDxd1l6JNJJejjrJIyCz67EkLPDC0mbGPHflDnvJXPz0WOp0GUCjx88yHTYOlgaoTgEuxW9kXwDLK7KjarSrFIsMoT1+tSVIOlhUuxXIvdGs0Y7shWeJ4pAQAQejgHqysrK38IYfw+QMVyTiez4vsvtt2bWXZDXjspZ1GyqbSk8cjSRlVs1ZHj9sU0MsM0RIeOSNgQVKsxG9RP3iJ/r5MzMZPUfxH+R8Yy/UR9o9fGM//9k=', '本田', 3);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (52, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAACAkHCv/EACoQAAAGAgEDBAAHAAAAAAAAAAECAwQFBgcICQATIREUFTFBUVNhcZPR/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAED/8QAIxEAAgECBAcAAAAAAAAAAAAAAAERAjETYbHhQVFxgZGh0f/aAAwDAQACEQMRAD8A6UdqOZnjz0vzuOt2w2YbBTcrpxtSlXUW2xneJyHaMbq2RdwblexRcUvEAiZuuRV2qVyYjMoH9wKZkzlKMlRKTm+W4yW7e9OrXHrjir5X2dyK7q9JuFybUKDka3VJ+7rL2R3CTNhQauGdYayK7JBWLgZJYjt0VNA50QRIYyhylEXDz9bml6ubE4f3JwnUdhcBWZ7Z8XXf5QK9Myldmay8dGhpR3DyAKRE42ZyCBUnzJdMiiiIJrEKCiRjFH16Ew3wa0+koOQOtchNwz/b2GHOQk2vOtB6TU4eyYyc6OWzKyJGb2AYNbujF5Vak+KnX9gaSaq6KDdVMkKq5+PcqJnbCYw0psui0FmS41sCatRkvbuGG9ZC0OzVNOIuuZLyvf8AXDPefq9kbEiiT2VLVK5FWRoMax7lqZV2wnuDVE6BGsQrH++QRfLd0UuboBM5dndWMdv86ZpW2Byd3LEhYspL4bmcDGnhRn5ArJIuOJ4iUjGEjmIt2JXqqSZJTsi8TIBT+QGaBdYAAAVVAA+gBQ4AAfkAevgPTx0MJas2u4d9f9ZX+w/+9BL5vyw7yv4nOb9zGMI/x5H66Elu7k//2Q==', '爱驰', 3);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (53, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAABwkICv/EACAQAAIDAQEAAgMBAAAAAAAAAAMEAgUGAQcACBMUFRH/xAAYAQEBAQEBAAAAAAAAAAAAAAAABAUDBv/EACIRAAICAgIDAAMBAAAAAAAAAAECAxEABAUSExQhBhUigf/aAAwDAQACEQMRAD8A7t/RPTsn5fSu3upbOFVCnutAyFNabjQ6POLDcvrgoodjFerqFygm++yQKoJsqAkX9htYJmMXqv2PxnS5Je4q9JnW9sqm5RVlmgoxfSVdHAkGbHOU9hZ39Wqv2f4Xm3a0SiDMZAcOEv8AkJMY/wARRHHAwSQKIsIkGUcuTGQc48lCcJx72M4Tj3koyj3sZR7zvO9534xk/ftpt6eztz+eMeb/AGUtXl6FiJtN5ViVrzH2lVYuZVo9JcGsLBNS1jF01cxNVciVqmOvtzIWKf4mST3NLhDu6y7P7Li9YM5TxbW0Y5wQJTfjEbEqfEQCLHZkU0WGRT7ggcp6+1KVTuWii7JX8fA5YKWBcAi/lEmhROHM1r8V53uV/UK/6/8A2IEpV5exzdCHyv6vL5ayuwFUs7m3t2LnS+gbXfP6Jz+QGkK1Zs15GyNUp6RZeSVjZS0o/wASkdlQ83wEbkqHD8gAsZd40W5BGYmBEhYsjsFVGDEMVVp25VVs+lvkfarXJsAMSQLuh1I+gWSKsWRZPxfepejYCr0Fdh9n50oAzdEHJbyk/gaCsjRF/m8hNCLTo5IyiDn6DYWjAbWjA4ZyHKMu+e5DS9DZOv7OttgIjifUkMsLCRewpiqnsAf6UqCp+EXl+vN7EYk8csVkjpMvSQUaNrZ/wgkEfbxrfIs7YfGMPjGf/9k=', '现代', 3);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (54, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAJCgYL/8QAJBAAAQUBAQACAgIDAAAAAAAAAwECBAUGBwgJEwAhChIRFCL/xAAbAQABBAMAAAAAAAAAAAAAAAAIAwQGBwECBf/EACcRAAICAQMDBAIDAAAAAAAAAAECAwQFBhEhABITBxUiMSNBFBaB/9oADAMBAAIRAxEAPwBWf5CfZfUeU7/8fXGeFeiepedsZ2DXaWF0bVcwlTIFqkBLvGVhZAlgyQMtZlJRSdBcjjXRY1JXjE6dNkDjJKILi6nzn9a01mc6sMViXG0rFiGKdxHDJNHBI1eGR9mZVnn8cX4laZiwSJGdlHWa8DW7sNb5bSABe1iCT37OdgQD2qVJLcKGJOygnoVYnor2NksB2Oxf8i3oLV33N9fMz+cQXV7O+PfAjbfT005+jGKtp0rDwqetqgObBaRIegBbDlAfXS4ZYA+Zj1V1DYy+HirRT0IcrjatyWPxiskBmoQWVaAu05kWWR3ZCxPlrtG6sGRllND0W0XpCzjdJU9SaJxucXP6i1PirGbuC3FIoxpxoqV6MwuR17dmCa5KbtfwLLHXNaOESzyfK4L4+9J0DYeNPPup6jfWmm3d/g4tlf3t09pLSzkGmzUDLmGa1v3EPFaErSqiK8TxqqIv6QlKTyyUqUljbzyUqck3xC/letE0u6jYBi5YsAAAd+B0Jmq6+Pqaq1RUxK9mKqakz1XGIHaQJj62Wtw00WRyXdFrpGEZmZioBLMeSTP8kbidbufKHNOwSqh1gbi3TVFMlBG5x6vP9EqS52xsEVpQ/wB/qlAr4I2Ee0aNs5DfsC0pHrG9cJkH03c9tlMU8UtWw/xDK8UUo3VwVb4qzrKCFJ74k2B+jY/oJU0XkPUvFY/XWOTJYa/RylaKJ7U1NUvrWFyq5ngIkVZTUerJsGIhsSMq+RUZYvNne0+v1fOOK8L1sOVruwdH4LgtBjwxIthfVL9Wa4iaS3zRa+QNdLYz7gYK6+FMr2MriOqZFSxX6QliOrNB6V91yEFjUuKtzRxJlmgyR8scNiOGejFVrWIyGNaNK08s1JIpd5ik8UhAqLGZDrXXWqdC5y5j9J5WHD4zG5KfJYHE1wbFbGtme+SS1jlycDWyLSVq8clmyi2TXEBmUmQqvU55piYHNed4XntY5HwMRkc9lYpUajFOOiqotb/svaiIiElOjLIKv+P2QrlX9r+EEx7mYgAAkkAcAAngAfoAcAfodDwO4jd2LueXdiSzseWZieSzHckk7kkk9Zzu3HsF37kW/wCPdOpmX2G3ubsaHQVquYwhIcoDk+6KZ4ypGmxiIyRDkoN7o8gYzMT+zE/E2VXVkdQyOrI6n6ZWBBB22P0eCCCDsQQQOl69qxSsQXKkz17VWVLFeeM7PFNEwdHU8jgjlSCrKSrAqxBELxp8BngzzT6Vz3ojLD67td/hyLa5UXSthm76gp7qOqsg3Ya+nw+clHs65P8AqAWZYSRAKjT/AEOOMZWa1ooqkP8AHrxrHEO7ZR3HtDHcgbkgD/OnGWylzN3BeyEiyWGjjVjHHHEhWJQqDsjUKAAfobAnk9UL/inTHr//2Q==', '荣威', 3);
INSERT INTO `brand` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `name`, `store_id`) VALUES (55, NULL, NULL, NULL, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAZAAACAwEAAAAAAAAAAAAAAAAFBwYICQv/xAAkEAABBQEAAQQCAwAAAAAAAAADAQIEBQYHEQgSExQAIxUWIv/EABoBAAEFAQAAAAAAAAAAAAAAAAkCBQYHCAP/xAAwEQACAwABAgQEAgsAAAAAAAABAgMEBQYAEQcTFSESFBYxF5YjQVFVVldxldPU1f/aAAwDAQACEQMRAD8Azi53o6vTdO02C7P6gE5DyfLwtqCvsrjDbrqZ45KSyvHZ/L4DD4wtcOdsi2OhurLNM2Wmx/Pw2Eu8l6nSxf5M4LUyHLeLZmZANPjPDU29wXRBDFDrZ+QVq2mia5Lo6+w80tfMaKnU+f8ATq93Ul8moYKc3k/FEOrC0HuqK2ttyUMtqfzD96tu95liONvlY6dGm0MEugzzTJUN2xVoIZJvPsRhgGYcqp9NknhMm9y/rUFA71m85RbAOC0/pu6bTf3y60VCB2t5TUdCzFhvsvAs+d3FFKi5S5tsVj6DYN14ra+3UWHMdn+XRLOo8pfeSrs+GUzcbuzzUZ9Cvzbj19MuGKyxr6drOliyrVmC/Xsr83FXt2JqleokNfLltJJc1npxgnLkkq8lWts044LUVabD04WvTywKbOfBdrz3YoZKM8JWtJYqVkstYE0l2ONzXz4FxaNL3WYs7nQGfZTx6ObD+y/9L3CbX1Uvw9IjQsI9TzDkcV7XFe4i+56ojUS5avEOLrGQ2ZGOzdgPnNBAFCqAFWOx8IA7e3YD+nVd3tu/DMB5rMWQOzGOuxLM79yzPGzEnt7knro+8o4zys3Pua2Ejn+FkSV5vj2SgGx2WM08qRR1Zi2UohKh00s4jhPY0xZSjVCSHqJxikJ+By5hyHd+reUhNrWWMci2wiLpXAiJ6laCoqiYKFC9gFVQoAAAA9uiE8QyMmbiXF5Xy852l45iSOWpVm+JnzarMzExEsxJJJJJP6/fpiyeQcjc1GP5nzUf+PDvkxWbR6BT2sX43NhBeL2+9rWka79bnM8Ii+PMa9f3fc+ta3c+5PqNz3P7T+m6kXomL+6Mv+31P8PWXnqy5Fz6h3GNrM1m6BKuPzKgaOV9KvkyLNzbvTDS0mzkArrGbMCwLzTyOe6R4aqKg0Y1urvArcvniOibN+7O/wBR3OzzXZ3YJ6ZkEKC8hPwhixA+3difuT1lTxygoUeW50VehThRuO1JCsVeKJSx09dSxWOMKWIRQWPuQAPsB1TiL13r0GPGiQuudThxYUYUKHGi9D10cEWHHYwYIsYIbdgwRgjGwYgCawQ2MYxjGtaiJoCbhfC7Ess9jhnEZ555Hmmml41iyTTTSsXklllekXkkkdmd3dizsSzEkk9D6i8WPE+rBDXreIfN69evGleCCDlW9FDBBCvlxQwxR31SOKKNVSONFVEQBVUAAAfa9G6TemgSLvpPQ7mRVG+zVntdtprA1bI+WOf7EAsuzM+Gb54kU3yx3DJ8saOT3e8I1bz+huDfwRw38r4f+j0v8YPFb+ZPO/zdyH/o9AVvdCoxidpNG4QnzSCG69tHMESys511YvG10pUY+fcWdlbTXNRFlWdhOnnUkqXIKR0o4OBmRNXzcDDz4HkMzw0cjPqRNKyojStHXrxo0jJHGhcqWKoik9lUBm0efc2151s63LOR6dhIlgSxobmpcmSFXeRYVlsW5HWJZJZHWMMEDyOwHdmJ/9k=', '皮卡', 2);
COMMIT;

-- ----------------------------
-- Table structure for brand_series
-- ----------------------------
DROP TABLE IF EXISTS `brand_series`;
CREATE TABLE `brand_series` (
                                `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                `created_at` bigint(20) DEFAULT NULL,
                                `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                `name` varchar(255) DEFAULT NULL,
                                `brand_id` bigint(20) DEFAULT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand_series
-- ----------------------------
BEGIN;
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
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (35, NULL, NULL, NULL, '亚洲狮', 46);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (36, NULL, NULL, NULL, '普拉多', 46);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (37, NULL, NULL, NULL, '普拉多', 46);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (38, NULL, NULL, NULL, '卡罗拉', 46);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (39, NULL, NULL, NULL, 'RAV4荣放', 46);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (40, NULL, NULL, NULL, '雷凌', 46);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (41, NULL, NULL, NULL, 'GL8', 47);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (42, NULL, NULL, NULL, '探岳四驱', 48);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (43, NULL, NULL, NULL, '高尔夫', 48);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (44, NULL, NULL, NULL, '探岳俩驱', 48);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (45, NULL, NULL, NULL, '高尔夫.嘉族', 48);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (46, NULL, NULL, NULL, '帕萨特', 48);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (47, NULL, NULL, NULL, '宝来', 48);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (48, NULL, NULL, NULL, '探歌', 48);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (49, NULL, NULL, NULL, '朗逸', 48);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (50, NULL, NULL, NULL, '迈腾', 48);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (51, NULL, NULL, NULL, 'SUV', 49);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (52, NULL, NULL, NULL, '劲客', 50);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (53, NULL, NULL, NULL, '天籁', 50);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (54, NULL, NULL, NULL, '奇骏', 50);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (55, NULL, NULL, NULL, '轩逸', 50);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (56, NULL, NULL, NULL, '新飞度', 51);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (57, NULL, NULL, NULL, '奥德赛', 51);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (58, NULL, NULL, NULL, '缤智', 51);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (59, NULL, NULL, NULL, '凌派', 51);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (60, NULL, NULL, NULL, 'U5', 52);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (61, NULL, NULL, NULL, 'IX35', 53);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (62, NULL, NULL, NULL, '领动', 53);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (63, NULL, NULL, NULL, 'ERX5', 54);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (64, NULL, NULL, NULL, '皮卡A3', 55);
INSERT INTO `brand_series` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `brand_id`) VALUES (65, NULL, NULL, NULL, '长城跑', 55);
COMMIT;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
                       `id` bigint(20) NOT NULL AUTO_INCREMENT,
                       `created_at` bigint(20) DEFAULT NULL,
                       `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                       `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                       `cover` varchar(255) DEFAULT NULL,
                       `displacement` float DEFAULT NULL,
                       `engine_type` varchar(255) DEFAULT NULL,
                       `gas_volume` float NOT NULL,
                       `is_self_help` bit(1) DEFAULT NULL,
                       `name` varchar(255) DEFAULT NULL,
                       `power_type` varchar(255) DEFAULT NULL,
                       `seats` int(11) DEFAULT NULL,
                       `shift` varchar(255) DEFAULT NULL,
                       `tags` varchar(255) DEFAULT NULL,
                       `type` varchar(255) DEFAULT NULL,
                       `store_id` bigint(20) DEFAULT NULL,
                       `brand_series_id` int(11) DEFAULT NULL,
                       `number` varchar(255) DEFAULT NULL,
                       `rent` float NOT NULL,
                       `deposit` float NOT NULL,
                       `insurance_fee` float NOT NULL,
                       `is_online` int(11) DEFAULT NULL,
                       `car_category_id` int(11) DEFAULT NULL,
                       `handling_fee` float NOT NULL,
                       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
BEGIN;
INSERT INTO `car` (`id`, `created_at`, `deleted_at`, `updated_at`, `cover`, `displacement`, `engine_type`, `gas_volume`, `is_self_help`, `name`, `power_type`, `seats`, `shift`, `tags`, `type`, `store_id`, `brand_series_id`, `number`, `rent`, `deposit`, `insurance_fee`, `is_online`, `car_category_id`, `handling_fee`) VALUES (1, 1650900986926, NULL, '2022-04-25 23:36:27', '2022-4-25-23-35-14-1650900914689-cover.jpg', 2, 'SUPERCHARGED', 2, b'0', '日产轩逸', 'GAS', 1, 'AUTO', '蓝牙', '六座', 2, 1, '浙A12555A', 0.1, 0.02, 0.04, 1, 14, 0.03);
INSERT INTO `car` (`id`, `created_at`, `deleted_at`, `updated_at`, `cover`, `displacement`, `engine_type`, `gas_volume`, `is_self_help`, `name`, `power_type`, `seats`, `shift`, `tags`, `type`, `store_id`, `brand_series_id`, `number`, `rent`, `deposit`, `insurance_fee`, `is_online`, `car_category_id`, `handling_fee`) VALUES (2, 1652677186914, NULL, '2022-05-16 12:59:47', '2022-5-16-12-40-33-1652676033507-微信图片_20220516124015.jpg', 2.5, 'NATURALLY_ASPIRATED', 60, b'0', '别克商务', 'GAS', 7, 'AUTO', '蓝牙', '商务', 3, 41, '琼BGM195', 350, 3, 80, 1, 19, 35);
INSERT INTO `car` (`id`, `created_at`, `deleted_at`, `updated_at`, `cover`, `displacement`, `engine_type`, `gas_volume`, `is_self_help`, `name`, `power_type`, `seats`, `shift`, `tags`, `type`, `store_id`, `brand_series_id`, `number`, `rent`, `deposit`, `insurance_fee`, `is_online`, `car_category_id`, `handling_fee`) VALUES (3, 1669877929957, NULL, '2022-12-01 14:58:50', '2022-12-1-14-57-55-1669877875430-2022-4-25-23-35-14-1650900914689-cover.jpg', 2, 'NATURALLY_ASPIRATED', 2, b'0', '日产轩逸1', 'GAS', 6, 'AUTO', '蓝牙', '1111', 2, 3, '浙A12555A', 1, 2, 2, 1, 22, 1);
INSERT INTO `car` (`id`, `created_at`, `deleted_at`, `updated_at`, `cover`, `displacement`, `engine_type`, `gas_volume`, `is_self_help`, `name`, `power_type`, `seats`, `shift`, `tags`, `type`, `store_id`, `brand_series_id`, `number`, `rent`, `deposit`, `insurance_fee`, `is_online`, `car_category_id`, `handling_fee`) VALUES (4, 1669878488989, NULL, '2022-12-01 15:08:09', '2022-12-1-15-8-6-1669878486006-2022-4-25-23-35-14-1650900914689-cover.jpg', 2.5, 'NATURALLY_ASPIRATED', 50, b'0', '皮卡', 'GAS', 5, 'MANUAL', '倒车影像', '皮卡', 2, 65, '琼BGM195', 0.1, 0.3, 0.01, 1, 22, 0.2);
COMMIT;

-- ----------------------------
-- Table structure for car_category
-- ----------------------------
DROP TABLE IF EXISTS `car_category`;
CREATE TABLE `car_category` (
                                `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                `created_at` bigint(20) DEFAULT NULL,
                                `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                `name` varchar(255) DEFAULT NULL,
                                `store_id` bigint(20) DEFAULT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_category
-- ----------------------------
BEGIN;
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
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (15, 1652674667962, NULL, NULL, '经济型', 3);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (16, 1652674667962, NULL, NULL, '舒适型', 3);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (17, 1652674667962, NULL, NULL, '精英型', 3);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (18, 1652674667962, NULL, NULL, 'SUV', 3);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (19, 1652674667962, NULL, NULL, '5-15座商务', 3);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (20, 1652674667962, NULL, NULL, '电动型', 3);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (21, 1652674667962, NULL, NULL, '高端车', 3);
INSERT INTO `car_category` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (22, 1669877476819, NULL, NULL, '皮卡', 2);
COMMIT;

-- ----------------------------
-- Table structure for car_configs
-- ----------------------------
DROP TABLE IF EXISTS `car_configs`;
CREATE TABLE `car_configs` (
                               `car_id` bigint(20) NOT NULL,
                               `configs_id` bigint(20) NOT NULL,
                               PRIMARY KEY (`car_id`,`configs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_configs
-- ----------------------------
BEGIN;
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (1, 5);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (1, 6);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (1, 7);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (1, 8);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (2, 9);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (2, 10);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (3, 5);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (3, 6);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (3, 7);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (3, 8);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (4, 5);
INSERT INTO `car_configs` (`car_id`, `configs_id`) VALUES (4, 6);
COMMIT;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
                        `code` varchar(255) NOT NULL,
                        `name` varchar(255) DEFAULT NULL,
                        `province_code` varchar(255) DEFAULT NULL,
                        `pinyin` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
BEGIN;
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1101', '市辖区', '11', 'beijing');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1201', '市辖区', '12', 'tianjin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1301', '石家庄市', '13', 'shijiazhuang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1302', '唐山市', '13', 'tangshan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1303', '秦皇岛市', '13', 'qinhuangdao');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1304', '邯郸市', '13', 'handan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1305', '邢台市', '13', 'xingtai');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1306', '保定市', '13', 'baoding');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1307', '张家口市', '13', 'zhangjiakou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1308', '承德市', '13', 'chengde');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1309', '沧州市', '13', 'cangzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1310', '廊坊市', '13', 'langfang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1311', '衡水市', '13', 'hengshui');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1401', '太原市', '14', 'taiyuan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1402', '大同市', '14', 'datong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1403', '阳泉市', '14', 'yangquan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1404', '长治市', '14', 'changzhi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1405', '晋城市', '14', 'jincheng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1406', '朔州市', '14', 'shuozhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1407', '晋中市', '14', 'jinzhong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1408', '运城市', '14', 'yuncheng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1409', '忻州市', '14', 'xinzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1410', '临汾市', '14', 'linfen');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1411', '吕梁市', '14', 'lvliang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1501', '呼和浩特市', '15', 'huhehaote');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1502', '包头市', '15', 'baotou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1503', '乌海市', '15', 'wuhai');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1504', '赤峰市', '15', 'chifeng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1505', '通辽市', '15', 'tongliao');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1506', '鄂尔多斯市', '15', 'eerduosi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1507', '呼伦贝尔市', '15', 'hulunbeier');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1508', '巴彦淖尔市', '15', 'bayannaoer');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1509', '乌兰察布市', '15', 'wulanchabu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1522', '兴安盟', '15', 'xinganmeng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1525', '锡林郭勒盟', '15', 'xilinguolemeng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('1529', '阿拉善盟', '15', 'alashanmeng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2101', '沈阳市', '21', 'shenyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2102', '大连市', '21', 'dalian');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2103', '鞍山市', '21', 'anshan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2104', '抚顺市', '21', 'fushun');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2105', '本溪市', '21', 'benxi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2106', '丹东市', '21', 'dandong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2107', '锦州市', '21', 'jinzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2108', '营口市', '21', 'yingkou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2109', '阜新市', '21', 'fuxin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2110', '辽阳市', '21', 'liaoyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2111', '盘锦市', '21', 'panjin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2112', '铁岭市', '21', 'tieling');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2113', '朝阳市', '21', 'chaoyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2114', '葫芦岛市', '21', 'huludao');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2201', '长春市', '22', 'changchun');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2202', '吉林市', '22', 'jilin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2203', '四平市', '22', 'siping');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2204', '辽源市', '22', 'liaoyuan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2205', '通化市', '22', 'tonghua');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2206', '白山市', '22', 'baishan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2207', '松原市', '22', 'songyuan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2208', '白城市', '22', 'baicheng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2224', '延边朝鲜族自治州', '22', 'yanbianchaoxianzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2301', '哈尔滨市', '23', 'haerbin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2302', '齐齐哈尔市', '23', 'qiqihaer');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2303', '鸡西市', '23', 'jixi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2304', '鹤岗市', '23', 'hegang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2305', '双鸭山市', '23', 'shuangyashan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2306', '大庆市', '23', 'daqing');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2307', '伊春市', '23', 'yichun');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2308', '佳木斯市', '23', 'jiamusi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2309', '七台河市', '23', 'qitaihe');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2310', '牡丹江市', '23', 'mudanjiang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2311', '黑河市', '23', 'heihe');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2312', '绥化市', '23', 'suihua');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('2327', '大兴安岭地区', '23', 'daxinganlingdiqu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3101', '市辖区', '31', 'shanghai');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3201', '南京市', '32', 'nanjing');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3202', '无锡市', '32', 'wuxi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3203', '徐州市', '32', 'xuzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3204', '常州市', '32', 'changzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3205', '苏州市', '32', 'suzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3206', '南通市', '32', 'nantong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3207', '连云港市', '32', 'lianyungang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3208', '淮安市', '32', 'huaian');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3209', '盐城市', '32', 'yancheng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3210', '扬州市', '32', 'yangzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3211', '镇江市', '32', 'zhenjiang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3212', '泰州市', '32', 'taizhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3213', '宿迁市', '32', 'suqian');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3301', '杭州市', '33', 'hangzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3302', '宁波市', '33', 'ningbo');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3303', '温州市', '33', 'wenzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3304', '嘉兴市', '33', 'jiaxing');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3305', '湖州市', '33', 'huzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3306', '绍兴市', '33', 'shaoxing');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3307', '金华市', '33', 'jinhua');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3308', '衢州市', '33', 'quzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3309', '舟山市', '33', 'zhoushan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3310', '台州市', '33', 'taizhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3311', '丽水市', '33', 'lishui');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3401', '合肥市', '34', 'hefei');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3402', '芜湖市', '34', 'wuhu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3403', '蚌埠市', '34', 'bengbu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3404', '淮南市', '34', 'huainan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3405', '马鞍山市', '34', 'maanshan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3406', '淮北市', '34', 'huaibei');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3407', '铜陵市', '34', 'tongling');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3408', '安庆市', '34', 'anqing');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3410', '黄山市', '34', 'huangshan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3411', '滁州市', '34', 'chuzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3412', '阜阳市', '34', 'fuyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3413', '宿州市', '34', 'suzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3415', '六安市', '34', 'liuan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3416', '亳州市', '34', 'bozhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3417', '池州市', '34', 'chizhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3418', '宣城市', '34', 'xuancheng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3501', '福州市', '35', 'fuzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3502', '厦门市', '35', 'xiamen');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3503', '莆田市', '35', 'putian');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3504', '三明市', '35', 'sanming');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3505', '泉州市', '35', 'quanzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3506', '漳州市', '35', 'zhangzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3507', '南平市', '35', 'nanping');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3508', '龙岩市', '35', 'longyan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3509', '宁德市', '35', 'ningde');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3601', '南昌市', '36', 'nanchang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3602', '景德镇市', '36', 'jingdezhen');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3603', '萍乡市', '36', 'pingxiang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3604', '九江市', '36', 'jiujiang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3605', '新余市', '36', 'xinyu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3606', '鹰潭市', '36', 'yingtan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3607', '赣州市', '36', 'ganzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3608', '吉安市', '36', 'jian');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3609', '宜春市', '36', 'yichun');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3610', '抚州市', '36', 'fuzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3611', '上饶市', '36', 'shangrao');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3701', '济南市', '37', 'jinan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3702', '青岛市', '37', 'qingdao');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3703', '淄博市', '37', 'zibo');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3704', '枣庄市', '37', 'zaozhuang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3705', '东营市', '37', 'dongying');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3706', '烟台市', '37', 'yantai');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3707', '潍坊市', '37', 'weifang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3708', '济宁市', '37', 'jining');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3709', '泰安市', '37', 'taian');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3710', '威海市', '37', 'weihai');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3711', '日照市', '37', 'rizhao');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3713', '临沂市', '37', 'linyi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3714', '德州市', '37', 'dezhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3715', '聊城市', '37', 'liaocheng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3716', '滨州市', '37', 'binzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('3717', '菏泽市', '37', 'heze');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4101', '郑州市', '41', 'zhengzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4102', '开封市', '41', 'kaifeng');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4103', '洛阳市', '41', 'luoyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4104', '平顶山市', '41', 'pingdingshan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4105', '安阳市', '41', 'anyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4106', '鹤壁市', '41', 'hebi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4107', '新乡市', '41', 'xinxiang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4108', '焦作市', '41', 'jiaozuo');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4109', '濮阳市', '41', 'puyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4110', '许昌市', '41', 'xuchuang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4111', '漯河市', '41', 'luohe');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4112', '三门峡市', '41', 'sanmenxia');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4113', '南阳市', '41', 'nanyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4114', '商丘市', '41', 'shangqiu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4115', '信阳市', '41', 'xinyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4116', '周口市', '41', 'zhoukou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4117', '驻马店市', '41', 'zhumadian');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4190', '河南省直辖县级行政区划', '41', 'henan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4201', '武汉市', '42', 'wuhan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4202', '黄石市', '42', 'huangshi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4203', '十堰市', '42', 'shiyan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4205', '宜昌市', '42', 'yichang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4206', '襄阳市', '42', 'xiangyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4207', '鄂州市', '42', 'ezhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4208', '荆门市', '42', 'jingmen');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4209', '孝感市', '42', 'xiaogan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4210', '荆州市', '42', 'jingzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4211', '黄冈市', '42', 'huanggang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4212', '咸宁市', '42', 'xianning');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4213', '随州市', '42', 'suizhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4228', '恩施土家族苗族自治州', '42', 'enshitujiazumiaozu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4290', '省直辖县级行政区划', '42', 'hubei');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4301', '长沙市', '43', 'changsha');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4302', '株洲市', '43', 'zhuzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4303', '湘潭市', '43', 'xiangtan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4304', '衡阳市', '43', 'hengyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4305', '邵阳市', '43', 'shaoyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4306', '岳阳市', '43', 'yueyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4307', '常德市', '43', 'changde');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4308', '张家界市', '43', 'zhangjiajie');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4309', '益阳市', '43', 'yiyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4310', '郴州市', '43', 'chenzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4311', '永州市', '43', 'yongzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4312', '怀化市', '43', 'huaihua');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4313', '娄底市', '43', 'loudi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4331', '湘西土家族苗族自治州', '43', 'xiangxitujiazumiaozu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4401', '广州市', '44', 'guangzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4402', '韶关市', '44', 'shaoguan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4403', '深圳市', '44', 'shenzhen');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4404', '珠海市', '44', 'zhuhai');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4405', '汕头市', '44', 'shantou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4406', '佛山市', '44', 'foshan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4407', '江门市', '44', 'jiangmen');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4408', '湛江市', '44', 'zhanjiang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4409', '茂名市', '44', 'maoming');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4412', '肇庆市', '44', 'zhaoqing');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4413', '惠州市', '44', 'huizhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4414', '梅州市', '44', 'meizhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4415', '汕尾市', '44', 'shanwei');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4416', '河源市', '44', 'heyuan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4417', '阳江市', '44', 'yangjiang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4418', '清远市', '44', 'qingyuan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4419', '东莞市', '44', 'dongguan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4420', '中山市', '44', 'zhongshan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4451', '潮州市', '44', 'chaozhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4452', '揭阳市', '44', 'jieyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4453', '云浮市', '44', 'yunfu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4501', '南宁市', '45', 'nanning');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4502', '柳州市', '45', 'liuzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4503', '桂林市', '45', 'guilin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4504', '梧州市', '45', 'wuzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4505', '北海市', '45', 'beihai');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4506', '防城港市', '45', 'fangchenggang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4507', '钦州市', '45', 'qinzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4508', '贵港市', '45', 'guigang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4509', '玉林市', '45', 'yulin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4510', '百色市', '45', 'baise');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4511', '贺州市', '45', 'hezhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4512', '河池市', '45', 'hechi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4513', '来宾市', '45', 'laibin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4514', '崇左市', '45', 'chongzuo');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4601', '海口市', '46', 'haikou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4602', '三亚市', '46', 'sanya');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4603', '三沙市', '46', 'sansha');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4604', '儋州市', '46', 'danzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('4690', '海南省直辖县级行政区划', '46', 'hainan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5001', '市辖区', '50', 'chongqing');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5002', '县', '50', 'zhongxian');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5101', '成都市', '51', 'chengdu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5103', '自贡市', '51', 'zigong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5104', '攀枝花市', '51', 'panzhihua');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5105', '泸州市', '51', 'luzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5106', '德阳市', '51', 'deyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5107', '绵阳市', '51', 'mianyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5108', '广元市', '51', 'guangyuan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5109', '遂宁市', '51', 'suining');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5110', '内江市', '51', 'neijiang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5111', '乐山市', '51', 'leshan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5113', '南充市', '51', 'nanchong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5114', '眉山市', '51', 'meishan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5115', '宜宾市', '51', 'yibin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5116', '广安市', '51', 'guangan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5117', '达州市', '51', 'dazhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5118', '雅安市', '51', 'yaan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5119', '巴中市', '51', 'bazhong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5120', '资阳市', '51', 'ziyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5132', '阿坝藏族羌族自治州', '51', 'abazangzuqiangzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5133', '甘孜藏族自治州', '51', 'ganzizangzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5134', '凉山彝族自治州', '51', 'liangshanyizu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5201', '贵阳市', '52', 'guiyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5202', '六盘水市', '52', 'liupanshui');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5203', '遵义市', '52', 'zunyi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5204', '安顺市', '52', 'anshun');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5205', '毕节市', '52', 'bijie');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5206', '铜仁市', '52', 'tongren');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5223', '黔西南布依族苗族自治州', '52', 'qianxinanbuyizumiaozu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5226', '黔东南苗族侗族自治州', '52', 'qiandongnanmiaozudongzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5227', '黔南布依族苗族自治州', '52', 'qiannanbuyizumiaozu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5301', '昆明市', '53', 'kunming');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5303', '曲靖市', '53', 'qujing');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5304', '玉溪市', '53', 'yuxi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5305', '保山市', '53', 'baoshan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5306', '昭通市', '53', 'zhaotong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5307', '丽江市', '53', 'lijiang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5308', '普洱市', '53', 'puer');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5309', '临沧市', '53', 'lincang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5323', '楚雄彝族自治州', '53', 'chuxiongyizu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5325', '红河哈尼族彝族自治州', '53', 'honghehanizuyizu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5326', '文山壮族苗族自治州', '53', 'wenshanzhuangzumiaozu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5328', '西双版纳傣族自治州', '53', 'xishuangbannadaizu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5329', '大理白族自治州', '53', 'dalibaizu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5331', '德宏傣族景颇族自治州', '53', 'dehongdaizujingpozu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5333', '怒江傈僳族自治州', '53', 'nujianglisuzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5334', '迪庆藏族自治州', '53', 'diqingzangzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5401', '拉萨市', '54', 'lasa');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5402', '日喀则市', '54', 'rikaze');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5403', '昌都市', '54', 'changdu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5404', '林芝市', '54', 'linzhi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5405', '山南市', '54', 'shannan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5406', '那曲市', '54', 'neiqu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('5425', '阿里地区', '54', 'alidiqu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6101', '西安市', '61', 'xian');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6102', '铜川市', '61', 'tongchuan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6103', '宝鸡市', '61', 'baoji');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6104', '咸阳市', '61', 'xianyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6105', '渭南市', '61', 'weinan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6106', '延安市', '61', 'yanan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6107', '汉中市', '61', 'hanzhong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6108', '榆林市', '61', 'yulin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6109', '安康市', '61', 'ankang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6110', '商洛市', '61', 'shangluo');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6201', '兰州市', '62', 'lanzhou');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6202', '嘉峪关市', '62', 'jiayuguan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6203', '金昌市', '62', 'jinchang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6204', '白银市', '62', 'baiyin');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6205', '天水市', '62', 'tianshui');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6206', '武威市', '62', 'wuwei');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6207', '张掖市', '62', 'zhangye');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6208', '平凉市', '62', 'pingliang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6209', '酒泉市', '62', 'jiuquan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6210', '庆阳市', '62', 'qingyang');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6211', '定西市', '62', 'dingxi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6212', '陇南市', '62', 'longnan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6229', '临夏回族自治州', '62', 'linxiahuizu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6230', '甘南藏族自治州', '62', 'gannanzangzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6301', '西宁市', '63', 'xining');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6302', '海东市', '63', 'haidong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6322', '海北藏族自治州', '63', 'haibeizangzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6323', '黄南藏族自治州', '63', 'huangnanzangzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6325', '海南藏族自治州', '63', 'hainanzangzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6326', '果洛藏族自治州', '63', 'guoluozangzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6327', '玉树藏族自治州', '63', 'yushuzangzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6328', '海西蒙古族藏族自治州', '63', 'haiximengguzuzangzu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6401', '银川市', '64', 'yinchuan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6402', '石嘴山市', '64', 'shizuishan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6403', '吴忠市', '64', 'wuzhong');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6404', '固原市', '64', 'guyuan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6405', '中卫市', '64', 'zhongwei');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6501', '乌鲁木齐市', '65', 'wulumuqi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6502', '克拉玛依市', '65', 'kelamayi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6504', '吐鲁番市', '65', 'tulufan');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6505', '哈密市', '65', 'hami');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6523', '昌吉回族自治州', '65', 'changjihuizu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6527', '博尔塔拉蒙古自治州', '65', 'boertalamenggu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6528', '巴音郭楞蒙古自治州', '65', 'bayinguolengmenggu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6529', '阿克苏地区', '65', 'akesudiqu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6530', '克孜勒苏柯尔克孜自治州', '65', 'kezilesukeerkezi');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6531', '喀什地区', '65', 'kashendiqu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6532', '和田地区', '65', 'hetiandiqu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6540', '伊犁哈萨克自治州', '65', 'yilihasake');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6542', '塔城地区', '65', 'tachengdiqu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6543', '阿勒泰地区', '65', 'aletaidiqu');
INSERT INTO `city` (`code`, `name`, `province_code`, `pinyin`) VALUES ('6590', '新疆自治区直辖县级行政区划', '65', 'xinjiang');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
                           `id` bigint(20) NOT NULL AUTO_INCREMENT,
                           `created_at` bigint(20) DEFAULT NULL,
                           `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                           `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                           `content` varchar(255) DEFAULT NULL,
                           `rate` int(11) DEFAULT NULL,
                           `store_id` bigint(20) DEFAULT NULL,
                           `order_id` bigint(20) DEFAULT NULL,
                           `car_id` bigint(20) DEFAULT NULL,
                           `user_id` bigint(20) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` (`id`, `created_at`, `deleted_at`, `updated_at`, `content`, `rate`, `store_id`, `order_id`, `car_id`, `user_id`) VALUES (5, 1651854930204, NULL, NULL, 'hello', 4, 2, 46, 1, 21);
INSERT INTO `comment` (`id`, `created_at`, `deleted_at`, `updated_at`, `content`, `rate`, `store_id`, `order_id`, `car_id`, `user_id`) VALUES (6, 1652130576272, NULL, NULL, '12312312312', 5, 2, 48, 1, 21);
INSERT INTO `comment` (`id`, `created_at`, `deleted_at`, `updated_at`, `content`, `rate`, `store_id`, `order_id`, `car_id`, `user_id`) VALUES (7, 1669875553297, NULL, NULL, '车新，服务好，', 5, 2, 113, 1, 132);
COMMIT;

-- ----------------------------
-- Table structure for configuration
-- ----------------------------
DROP TABLE IF EXISTS `configuration`;
CREATE TABLE `configuration` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                 `app_name` varchar(255) DEFAULT NULL,
                                 `logo` varchar(255) DEFAULT NULL,
                                 `notice` varchar(255) DEFAULT NULL,
                                 `insurance` float DEFAULT NULL,
                                 `service_phone` varchar(255) DEFAULT NULL,
                                 `insurance_agreement` longtext,
                                 `order_agreement` longtext,
                                 `promotion_level1` decimal(10,2) DEFAULT NULL,
                                 `promotion_level2` decimal(10,2) DEFAULT NULL,
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of configuration
-- ----------------------------
BEGIN;
INSERT INTO `configuration` (`id`, `app_name`, `logo`, `notice`, `insurance`, `service_phone`, `insurance_agreement`, `order_agreement`, `promotion_level1`, `promotion_level2`) VALUES (1, '车租婆', '2022-2-20-1-27-36-1645291656873-logo.png', '消息公告内容消息公告内容消息公告内容消息公告内容消息公告内容消息公告内容', 1000, '13427969604', '<h4 style=\"text-align:center;\" size=\"0\" _root=\"undefined\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"color:#07a9fe\"><span style=\"line-height:2\">使用规则</span></span></h4><p style=\"text-align:left;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><strong><span style=\"font-size:14px\"><span style=\"line-height:2\"> • 代缴不扣分违章罚款</span></span></strong></p><p style=\"text-align:left;\" size=\"5\" _root=\"[object Object]\" __ownerid=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"font-size:12px\"><span style=\"color:#999999\"><span style=\"line-height:2\">温馨提示：抵扣违章罚款及代办服务费用，每笔订单上限600元;交通违章仅指电子警察及贴条违章，不含扣分的违章、罚单;本项服务以实际页面显示价格为准。</span></span></span></p><p> </p>', '<p><strong><span style=\"color:#666666\"><span style=\"line-height:2\">•<span style=\"font-size:14px\"> 租赁中修改规则</span></span></span></strong></p><p><span style=\"font-size:12px\"><span style=\"color:#999999\"><span style=\"line-height:2\">订单类型 扣费标准节假日订单 如租赁中修改还车城市将收取改签费，请谨慎修改</span></span></span></p><p><span style=\"font-size:12px\"><span style=\"color:#999999\"><span style=\"line-height:2\"> 实际用车时间含节假日及节假日前后三天订单、高端车订单、 京牌车订单、沪牌车订单、雪地胎车型订单，修改后将收取原 车辆租赁费及门店服务费的30%作为改签费。具体金额以实际 页面显示为准。</span></span></span></p><p><strong><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"line-height:2\"> • 取车凭证</span></span></span></strong></p><p> <span style=\"line-height:2\"><span style=\"color:#999999\"><span style=\"font-size:12px\">本人有效身份证+本人驾驶证原件（正副页）或电子驾照</span></span></span></p><p><strong><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"line-height:2\">• 押金金额</span></span></span></strong></p><p><span style=\"line-height:2\"><span style=\"color:#999999\"><span style=\"font-size:12px\"> 取车时刷取车辆保证金，还车时当场撤销预授权； 还车时刷取违章押金，还车后30-60天无违章自动解冻。</span></span></span> </p><p><strong><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"line-height:2\">• 发票 </span></span></span></strong></p><p><span style=\"font-size:12px\"><span style=\"color:#999999\"><span style=\"line-height:2\">可在&quot;我的-发票&quot;申请开票，还车后为您开具增值税发票。</span></span></span></p>', 1.00, 1.00);
COMMIT;

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `created_at` bigint(20) DEFAULT NULL,
                          `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `title` varchar(255) DEFAULT NULL,
                          `content` text,
                          `is_auto_dispatching_to_new_user` int(11) DEFAULT NULL,
                          `amount` float DEFAULT NULL,
                          `meet_amount` float DEFAULT NULL,
                          `expired` bigint(20) DEFAULT NULL,
                          `is_with_holiday` int(11) DEFAULT NULL,
                          `is_with_rent` int(11) DEFAULT NULL,
                          `is_with_service_amount` int(11) DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------
BEGIN;
INSERT INTO `coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `is_auto_dispatching_to_new_user`, `amount`, `meet_amount`, `expired`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (1, NULL, NULL, NULL, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 1, 100, 200, 60, 0, 1, 1);
INSERT INTO `coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `is_auto_dispatching_to_new_user`, `amount`, `meet_amount`, `expired`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (2, NULL, NULL, NULL, '满800减88元优惠券', '<p style=\"text-align:center;\"><span style=\"line-height:2\"><span style=\"color:#07a9fe\"><strong>使用规则</strong></span></span></p><p style=\"text-align:left;\"><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">1、自绑定日起6个月有效，单笔订单车辆租赁费 及门店服务费部分满800元可用，仅减免车辆租 赁费及门店服务费部分，其他费用正常收取；</span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、租期包含任意法定节假日（含公休及调休） 及前一天不能使用，不可与一嗨其他优惠共享， 仅限一嗨国内自驾业务使用。</span></span></span></p>', 0, 88, 800, 60, 0, 1, 1);
INSERT INTO `coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `is_auto_dispatching_to_new_user`, `amount`, `meet_amount`, `expired`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (3, NULL, NULL, NULL, '普卡生日优惠', '<h3 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h3><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">1 .生日优惠券使用有效期为生日之日起60天有 效； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">2 .仅对车辆租赁费及门店服务费部分进行减免， 其他费用正常收取； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">3 .一年内仅可享受一次生日优惠，不可与其他优 惠同享，租期包含任意法定节假日（含公休及调 休）及前一天不能使用； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">4 .仅限一嗨国内自驾业务使用。</span></span></span></p><p></p>', 0, 50, 0, 60, 0, 1, 1);
INSERT INTO `coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `content`, `is_auto_dispatching_to_new_user`, `amount`, `meet_amount`, `expired`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (41, NULL, NULL, NULL, '满0.02减0.01元优惠券', '<p>faf</p>', 0, 0.01, 0.02, 5, 0, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `created_at` bigint(20) DEFAULT NULL,
                            `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                            `flag` varchar(255) DEFAULT NULL,
                            `content` text,
                            `phone` varchar(255) DEFAULT NULL,
                            `email` varchar(255) DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
BEGIN;
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (64, NULL, NULL, NULL, '发票相关', '123123123123', '13427969658', '123123123123123');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (65, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (66, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (67, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (68, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (69, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (70, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (71, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (72, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (73, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (74, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (75, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (76, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (77, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (78, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (79, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (80, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (81, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (82, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (83, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (84, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (85, 1651944828248, NULL, NULL, '发票相关', '123123123', '13425968965', '12312312');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (86, 1652415925879, NULL, NULL, '自驾游相关', '测试数据', '13123456789', '');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (87, 1669876803631, NULL, NULL, '自驾租车订单', '送车上门', '15308987118', '');
INSERT INTO `feedback` (`id`, `created_at`, `deleted_at`, `updated_at`, `flag`, `content`, `phone`, `email`) VALUES (88, 1669876810021, NULL, NULL, '发票相关', '建议测试，我随便写点', '13427969604', '');
COMMIT;

-- ----------------------------
-- Table structure for holiday
-- ----------------------------
DROP TABLE IF EXISTS `holiday`;
CREATE TABLE `holiday` (
                           `id` bigint(20) NOT NULL AUTO_INCREMENT,
                           `created_at` bigint(20) DEFAULT NULL,
                           `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                           `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                           `mark` varchar(255) DEFAULT NULL,
                           `day` bigint(20) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of holiday
-- ----------------------------
BEGIN;
INSERT INTO `holiday` (`id`, `created_at`, `deleted_at`, `updated_at`, `mark`, `day`) VALUES (134, NULL, NULL, NULL, '昌是', 1651075200000);
INSERT INTO `holiday` (`id`, `created_at`, `deleted_at`, `updated_at`, `mark`, `day`) VALUES (135, NULL, NULL, NULL, '血', 1651248000000);
COMMIT;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
                       `id` bigint(20) NOT NULL AUTO_INCREMENT,
                       `created_at` bigint(20) DEFAULT NULL,
                       `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                       `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                       `title` varchar(255) DEFAULT NULL,
                       `type` varchar(255) DEFAULT NULL,
                       `user_id` bigint(20) DEFAULT NULL,
                       `params` text,
                       `description` varchar(255) DEFAULT NULL,
                       `class_name` varchar(255) DEFAULT NULL,
                       `request_path` varchar(255) DEFAULT NULL,
                       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
BEGIN;
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (1, 1650900914349, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (2, 1650900914629, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (3, 1650900987041, NULL, NULL, '添加汽车', 'CREATED', 4, '[{\"carCategoryId\":14,\"configIds\":[8,7,6,5],\"cover\":\"2022-4-25-23-35-14-1650900914689-cover.jpg\",\"deposit\":0.02,\"displacement\":2.0,\"engineType\":\"SUPERCHARGED\",\"gasVolume\":2.0,\"handlingFee\":0.03,\"insuranceFee\":0.04,\"isOnline\":true,\"isSelfHelp\":false,\"name\":\"日产轩逸\",\"number\":\"浙A12555A\",\"powerType\":\"GAS\",\"rent\":0.01,\"seats\":1,\"seriesId\":1,\"shift\":\"AUTO\",\"tags\":[\"蓝牙\"],\"type\":\"六座\"}]', '', 'com.zhuche.server.api.v1.admin.Car.createCar', '/api/v1/cars');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (4, 1650903114018, NULL, NULL, '添加优惠卷', 'CREATED', 1, '[{\"amount\":0.01,\"content\":\"<p>faf</p>\",\"expired\":5,\"isAutoDispatchingToNewUser\":false,\"isWithHoliday\":false,\"isWithRent\":true,\"isWithServiceAmount\":true,\"meetAmount\":0.02,\"title\":\"满0.02减0.01元优惠券\"}]', '', 'com.zhuche.server.api.v1.admin.Coupon.createCoupon', '/api/v1/coupons');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (5, 1650903121695, NULL, NULL, '赠送用户优惠卷', 'CREATED', 1, '[21,{\"couponIds\":[41]}]', '', 'com.zhuche.server.api.v1.admin.UserCoupon.createUserCoupon', '/api/v1/users/21/coupons');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (6, 1650968682159, NULL, NULL, '更新协议', 'UPDATED', 1, '[1,{\"content\":\"<p><span style=\\\"line-height:2\\\"><span style=\\\"color:#07a9fe\\\"><strong>1、支付方式</strong></span></span></p><p><span style=\\\"color:#999999\\\"><span style=\\\"line-height:2\\\"><span style=\\\"font-size:12px\\\"> 预订用车后，车租婆将为您保留车辆15分钟，为了不影响您的出 行计划，请15分钟内完成支付，避免订单因超时未支付而提交 失败。</span></span></span> </p><p><span style=\\\"line-height:2\\\"><span style=\\\"color:#07a9fe\\\"><strong>2、订单取消</strong></span></span></p><p><span style=\\\"line-height:2\\\"><span style=\\\"font-size:12px\\\"><span style=\\\"color:#999999\\\"> 取车前可免费取消订单。 </span></span></span></p><p><span style=\\\"line-height:2\\\"><span style=\\\"color:#07a9fe\\\"><strong>3、订单修改</strong></span></span></p><p><span style=\\\"line-height:2\\\"><span style=\\\"font-size:12px\\\"><span style=\\\"color:#999999\\\"> 取车前可免费修改订单。 取车后如修改订单，部分情况可能收取原车辆租费费及门店服 务费的车租婆比例作为改签费，具体费用以实际页面显示为准。 </span></span></span></p><p><span style=\\\"line-height:2\\\"><span style=\\\"color:#07a9fe\\\"><strong>4、订单支付</strong></span></span></p><p><span style=\\\"line-height:2\\\"><span style=\\\"font-size:12px\\\"><span style=\\\"color:#999999\\\"> 不支持代金券支付，其它支付方式不限。 如客户未能及时、足额支付租赁费用，车租婆将以合理方式进行 催收；且客户应当每日支付相当于应付而未付费用的千分之三 作为滞纳金至所有费用结清之日止。1</span></span></span></p>\",\"title\":\"预订规则\"}]', '', 'com.zhuche.server.api.v1.admin.Agreement.updateAgreement', '/api/v1/agreements/1');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (7, 1650968692842, NULL, NULL, '更新协议', 'UPDATED', 1, '[1,{\"content\":\"<p><span style=\\\"line-height:2\\\"><span style=\\\"color:#07a9fe\\\"><strong>1、支付方式</strong></span></span></p><p><span style=\\\"color:#999999\\\"><span style=\\\"line-height:2\\\"><span style=\\\"font-size:12px\\\"> 预订用车后，车租婆将为您保留车辆15分钟，为了不影响您的出 行计划，请15分钟内完成支付，避免订单因超时未支付而提交 失败。</span></span></span> </p><p><span style=\\\"line-height:2\\\"><span style=\\\"color:#07a9fe\\\"><strong>2、订单取消</strong></span></span></p><p><span style=\\\"line-height:2\\\"><span style=\\\"font-size:12px\\\"><span style=\\\"color:#999999\\\"> 取车前可免费取消订单。 </span></span></span></p><p><span style=\\\"line-height:2\\\"><span style=\\\"color:#07a9fe\\\"><strong>3、订单修改</strong></span></span></p><p><span style=\\\"line-height:2\\\"><span style=\\\"font-size:12px\\\"><span style=\\\"color:#999999\\\"> 取车前可免费修改订单。 取车后如修改订单，部分情况可能收取原车辆租费费及门店服 务费的车租婆比例作为改签费，具体费用以实际页面显示为准。 </span></span></span></p><p><span style=\\\"line-height:2\\\"><span style=\\\"color:#07a9fe\\\"><strong>4、订单支付</strong></span></span></p><p><span style=\\\"line-height:2\\\"><span style=\\\"font-size:12px\\\"><span style=\\\"color:#999999\\\"> 不支持代金券支付，其它支付方式不限。 如客户未能及时、足额支付租赁费用，车租婆将以合理方式进行 催收；且客户应当每日支付相当于应付而未付费用的千分之三 作为滞纳金至所有费用结清之日止。</span></span></span></p>\",\"title\":\"预订规则\"}]', '', 'com.zhuche.server.api.v1.admin.Agreement.updateAgreement', '/api/v1/agreements/1');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (8, 1650969598811, NULL, NULL, '更新协议', 'UPDATED', 1, '[60,{\"content\":\"<p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">协议须知</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">本服务协议（以下简称“本协议”）是一嗨租车与使用“一嗨租车”租车平台用户（以下或称为“您”）就使用“一嗨租车”平台租车有关的事宜所动力的有效合约。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">定义</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">1.1 行无忧：指您在“一嗨租车”平台上租用车辆的同时购买了行无忧服务。行无忧服务不是保险，是一嗨租车为特定用户提供的一项便利用户、有偿增值特权，一嗨租车据此支付的赔偿金不是保险金，是用户在使用一嗨平台租用车辆期间因发生交通违章（<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong>），并委托一嗨为用户提供代缴违章罚款及相关代办服务费用的赔偿；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">1.2 用户：是指在一嗨租车各平台上租用车辆的具有完全民事权利能力和行为能力自然人。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">服务内容</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">您在一嗨租车平台租用车辆的同时购买行无忧服务。除本协议另有约定外，在您付款成功后，在订单约定的租车期间内发生交通违章，一嗨租车会在租车合同结束后为您提供代缴违章罚款协调处理服务，并可抵扣相关服务费用。抵扣金额及内容如下：</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">行无忧服务：抵扣违章罚款及代办服务费用，<strong>每笔订单</strong>上限 600 元（购买后，普通订单仅需刷1400元违章押金预授权，芝麻信用免车辆保证金的订单仅需刷2400元违章押金预授权）。该服务作为一嗨针对用户的特殊权益，每一年内只可享受一次赔偿，请珍惜您的特权。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">用户的权利和义务</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.1 行无忧服务售出后不可单独申请退款；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.2 如您租车期间所需处理相关违章金额超过所购产品对应赔偿限额，超额部分将由您自行承担；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.3 交通违章<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong></span></span></span></span></p>\",\"title\":\"车租婆会员注册协议\"}]', '', 'com.zhuche.server.api.v1.admin.Agreement.updateAgreement', '/api/v1/agreements/60');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (9, 1650969632420, NULL, NULL, '更新协议', 'UPDATED', 1, '[61,{\"content\":\"<p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">协议须知</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">本服务协议（以下简称“本协议”）是一嗨租车与使用“一嗨租车”租车平台用户（以下或称为“您”）就使用“一嗨租车”平台租车有关的事宜所动力的有效合约。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">定义</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">1.1 行无忧：指您在“一嗨租车”平台上租用车辆的同时购买了行无忧服务。行无忧服务不是保险，是一嗨租车为特定用户提供的一项便利用户、有偿增值特权，一嗨租车据此支付的赔偿金不是保险金，是用户在使用一嗨平台租用车辆期间因发生交通违章（<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong>），并委托一嗨为用户提供代缴违章罚款及相关代办服务费用的赔偿；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">1.2 用户：是指在一嗨租车各平台上租用车辆的具有完全民事权利能力和行为能力自然人。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">服务内容</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">您在一嗨租车平台租用车辆的同时购买行无忧服务。除本协议另有约定外，在您付款成功后，在订单约定的租车期间内发生交通违章，一嗨租车会在租车合同结束后为您提供代缴违章罚款协调处理服务，并可抵扣相关服务费用。抵扣金额及内容如下：</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">行无忧服务：抵扣违章罚款及代办服务费用，<strong>每笔订单</strong>上限 600 元（购买后，普通订单仅需刷1400元违章押金预授权，芝麻信用免车辆保证金的订单仅需刷2400元违章押金预授权）。该服务作为一嗨针对用户的特殊权益，每一年内只可享受一次赔偿，请珍惜您的特权。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">用户的权利和义务</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.1 行无忧服务售出后不可单独申请退款；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.2 如您租车期间所需处理相关违章金额超过所购产品对应赔偿限额，超额部分将由您自行承担；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.3 交通违章<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong></span></span></span></span></p>\",\"title\":\"车租婆租车隐私政策\"}]', '', 'com.zhuche.server.api.v1.admin.Agreement.updateAgreement', '/api/v1/agreements/61');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (10, 1650981420925, NULL, NULL, '更新协议', 'UPDATED', 1, '[6,{\"content\":\"<p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">协议须知</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">本服务协议（以下简称“本协议”）是车租婆租车与使用“车租婆租车”租车平台用户（以下或称为“您”）就使用“车租婆租车”平台租车有关的事宜所动力的有效合约。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">定义</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">1.1 行无忧：指您在“车租婆租车”平台上租用车辆的同时购买了行无忧服务。行无忧服务不是保险，是车租婆租车为特定用户提供的一项便利用户、有偿增值特权，车租婆租车据此支付的赔偿金不是保险金，是用户在使用车租婆平台租用车辆期间因发生交通违章（<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong>），并委托车租婆为用户提供代缴违章罚款及相关代办服务费用的赔偿；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">1.2 用户：是指在车租婆租车各平台上租用车辆的具有完全民事权利能力和行为能力自然人。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">服务内容</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">您在车租婆租车平台租用车辆的同时购买行无忧服务。除本协议另有约定外，在您付款成功后，在订单约定的租车期间内发生交通违章，车租婆租车会在租车合同结束后为您提供代缴违章罚款协调处理服务，并可抵扣相关服务费用。抵扣金额及内容如下：</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">行无忧服务：抵扣违章罚款及代办服务费用，<strong>每笔订单</strong>上限 600 元（购买后，普通订单仅需刷1400元违章押金预授权，芝麻信用免车辆保证金的订单仅需刷2400元违章押金预授权）。该服务作为车租婆针对用户的特殊权益，每一年内只可享受一次赔偿，请珍惜您的特权。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">用户的权利和义务</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.1 行无忧服务售出后不可单独申请退款；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.2 如您租车期间所需处理相关违章金额超过所购产品对应赔偿限额，超额部分将由您自行承担；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.3 交通违章<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong></span></span></span></span></p>\",\"title\":\"车租婆会员注册协议\"}]', '', 'com.zhuche.server.api.v1.admin.Agreement.updateAgreement', '/api/v1/agreements/6');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (11, 1650981431117, NULL, NULL, '更新协议', 'UPDATED', 1, '[7,{\"content\":\"<p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">协议须知</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">本服务协议（以下简称“本协议”）是车租婆租车与使用“车租婆租车”租车平台用户（以下或称为“您”）就使用“车租婆租车”平台租车有关的事宜所动力的有效合约。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">定义</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">1.1 行无忧：指您在“车租婆租车”平台上租用车辆的同时购买了行无忧服务。行无忧服务不是保险，是车租婆租车为特定用户提供的一项便利用户、有偿增值特权，车租婆租车据此支付的赔偿金不是保险金，是用户在使用车租婆平台租用车辆期间因发生交通违章（<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong>），并委托车租婆为用户提供代缴违章罚款及相关代办服务费用的赔偿；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">1.2 用户：是指在车租婆租车各平台上租用车辆的具有完全民事权利能力和行为能力自然人。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">服务内容</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">您在车租婆租车平台租用车辆的同时购买行无忧服务。除本协议另有约定外，在您付款成功后，在订单约定的租车期间内发生交通违章，车租婆租车会在租车合同结束后为您提供代缴违章罚款协调处理服务，并可抵扣相关服务费用。抵扣金额及内容如下：</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">行无忧服务：抵扣违章罚款及代办服务费用，<strong>每笔订单</strong>上限 600 元（购买后，普通订单仅需刷1400元违章押金预授权，芝麻信用免车辆保证金的订单仅需刷2400元违章押金预授权）。该服务作为车租婆针对用户的特殊权益，每一年内只可享受一次赔偿，请珍惜您的特权。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">用户的权利和义务</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.1 行无忧服务售出后不可单独申请退款；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.2 如您租车期间所需处理相关违章金额超过所购产品对应赔偿限额，超额部分将由您自行承担；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.3 交通违章<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong></span></span></span></span></p>\",\"title\":\"车租婆租车隐私政策\"}]', '', 'com.zhuche.server.api.v1.admin.Agreement.updateAgreement', '/api/v1/agreements/7');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (12, 1650981444413, NULL, NULL, '更新协议', 'UPDATED', 1, '[5,{\"content\":\"<p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">协议须知</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">本服务协议（以下简称“本协议”）是车租婆租车与使用“车租婆租车”租车平台用户（以下或称为“您”）就使用“车租婆租车”平台租车有关的事宜所动力的有效合约。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">定义</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">1.1 行无忧：指您在“车租婆租车”平台上租用车辆的同时购买了行无忧服务。行无忧服务不是保险，是车租婆租车为特定用户提供的一项便利用户、有偿增值特权，车租婆租车据此支付的赔偿金不是保险金，是用户在使用车租婆平台租用车辆期间因发生交通违章（<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong>），并委托车租婆为用户提供代缴违章罚款及相关代办服务费用的赔偿；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">1.2 用户：是指在车租婆租车各平台上租用车辆的具有完全民事权利能力和行为能力自然人。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">服务内容</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">您在车租婆租车平台租用车辆的同时购买行无忧服务。除本协议另有约定外，在您付款成功后，在订单约定的租车期间内发生交通违章，车租婆租车会在租车合同结束后为您提供代缴违章罚款协调处理服务，并可抵扣相关服务费用。抵扣金额及内容如下：</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">行无忧服务：抵扣违章罚款及代办服务费用，<strong>每笔订单</strong>上限 600 元（购买后，普通订单仅需刷1400元违章押金预授权，芝麻信用免车辆保证金的订单仅需刷2400元违章押金预授权）。该服务作为车租婆针对用户的特殊权益，每一年内只可享受一次赔偿，请珍惜您的特权。</span></span></span></span></p><p></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">用户的权利和义务</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.1 行无忧服务售出后不可单独申请退款；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.2 如您租车期间所需处理相关违章金额超过所购产品对应赔偿限额，超额部分将由您自行承担；</span></span></span></span></p><p><span style=\\\"color:#7b7b7b\\\"><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"line-height:2\\\">3.3 交通违章<strong>仅指电子警察及贴条违章，不含扣分的违章、现场罚单及裁决罚单</strong></span></span></span></span></p>\",\"title\":\"驾无忧产品说明\"}]', '', 'com.zhuche.server.api.v1.admin.Agreement.updateAgreement', '/api/v1/agreements/5');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (13, 1651134360261, NULL, NULL, '配置节假日', 'UPDATED', 1, '[{\"day\":1651075200000,\"mark\":\"昌是\"}]', '', 'com.zhuche.server.api.v1.admin.Holiday.updateHoliday', '/api/v1/holidays');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (14, 1651134409709, NULL, NULL, '赠送用户优惠卷', 'CREATED', 1, '[21,{\"couponIds\":[3,41]}]', '', 'com.zhuche.server.api.v1.admin.UserCoupon.createUserCoupon', '/api/v1/users/21/coupons');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (15, 1651283991975, NULL, NULL, '配置节假日', 'UPDATED', 1, '[{\"day\":1651248000000,\"mark\":\"血\"}]', '', 'com.zhuche.server.api.v1.admin.Holiday.updateHoliday', '/api/v1/holidays');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (16, 1651512967082, NULL, NULL, '通过用户提现申请', 'CREATED', 1, '[99]', '本操作中如果同意则会从平台的账户上向用户的账户上进行真实的转账，需要谨慎操作', 'com.zhuche.server.api.v1.admin.Withdraw.withDrawUpdate', '/api/v1/withdraws/99/status');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (17, 1651520691860, NULL, NULL, '通过用户的提现申请', 'UPDATED', 1, '[98]', '', 'com.zhuche.server.api.v1.admin.Withdraw.withDrawUpdate', '/api/v1/withdraws/98/status');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (18, 1651520697941, NULL, NULL, '通过用户的提现申请', 'UPDATED', 1, '[97]', '', 'com.zhuche.server.api.v1.admin.Withdraw.withDrawUpdate', '/api/v1/withdraws/97/status');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (19, 1651520712251, NULL, NULL, '通过用户的提现申请', 'UPDATED', 1, '[96,{\"reason\":\"我不想给钱了\"}]', '', 'com.zhuche.server.api.v1.admin.Withdraw.rejectWithDrawUpdate', '/api/v1/withdraws/96/status/failed');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (20, 1651520715936, NULL, NULL, '通过用户的提现申请', 'UPDATED', 1, '[95]', '', 'com.zhuche.server.api.v1.admin.Withdraw.withDrawUpdate', '/api/v1/withdraws/95/status');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (21, 1651521018370, NULL, NULL, '通过用户的提现申请', 'UPDATED', 1, '[96,{\"reason\":\"我不想给钱了\"}]', '', 'com.zhuche.server.api.v1.admin.Withdraw.rejectWithDrawUpdate', '/api/v1/withdraws/96/status/failed');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (22, 1651586644175, NULL, NULL, '赠送用户优惠卷', 'CREATED', 1, '[21,{\"couponIds\":[41]}]', '', 'com.zhuche.server.api.v1.admin.UserCoupon.createUserCoupon', '/api/v1/users/21/coupons');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (23, 1651587050219, NULL, NULL, '赠送用户优惠卷', 'CREATED', 1, '[21,{\"couponIds\":[41]}]', '', 'com.zhuche.server.api.v1.admin.UserCoupon.createUserCoupon', '/api/v1/users/21/coupons');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (24, 1651587106671, NULL, NULL, '赠送用户优惠卷', 'CREATED', 1, '[21,{\"couponIds\":[41]}]', '', 'com.zhuche.server.api.v1.admin.UserCoupon.createUserCoupon', '/api/v1/users/21/coupons');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (25, 1651587204147, NULL, NULL, '赠送用户优惠卷', 'CREATED', 1, '[21,{\"couponIds\":[41]}]', '', 'com.zhuche.server.api.v1.admin.UserCoupon.createUserCoupon', '/api/v1/users/21/coupons');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (26, 1651587350374, NULL, NULL, '赠送用户优惠卷', 'CREATED', 1, '[21,{\"couponIds\":[41]}]', '', 'com.zhuche.server.api.v1.admin.UserCoupon.createUserCoupon', '/api/v1/users/21/coupons');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (27, 1651587668946, NULL, NULL, '赠送用户优惠卷', 'CREATED', 1, '[21,{\"couponIds\":[41]}]', '', 'com.zhuche.server.api.v1.admin.UserCoupon.createUserCoupon', '/api/v1/users/21/coupons');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (28, 1651603956327, NULL, NULL, '赠送用户优惠卷', 'CREATED', 1, '[21,{\"couponIds\":[3]}]', '', 'com.zhuche.server.api.v1.admin.UserCoupon.createUserCoupon', '/api/v1/users/21/coupons');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (29, 1651694105971, NULL, NULL, '确认取车', 'UPDATED', 4, '[46]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/46/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (30, 1651701131777, NULL, NULL, '确认取车', 'UPDATED', 4, '[44]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/44/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (31, 1651701253644, NULL, NULL, '确认还车', 'UPDATED', 4, '[46]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/46/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (32, 1652021364159, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (33, 1652021721066, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (34, 1652032722358, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (35, 1652044968971, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (36, 1652045118548, NULL, NULL, '添加违章', 'UPDATED', 1, '[46,{\"amount\":0.01,\"description\":\"test\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-9-5-22-52-1652044972227-logo.png\"],\"title\":\"test\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/46/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (37, 1652069110315, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (38, 1652069195461, NULL, NULL, '添加违章', 'UPDATED', 1, '[46,{\"amount\":0.01,\"description\":\"fasfasf\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-9-12-5-10-1652069110431-logo.jpg\"],\"title\":\"顶戴sf\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/46/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (39, 1652129574922, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (40, 1652130091221, NULL, NULL, '确认取车', 'UPDATED', 1, '[48]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/48/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (41, 1652130125252, NULL, NULL, '确认还车', 'UPDATED', 1, '[48]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/48/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (42, 1652130143167, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (43, 1652130146556, NULL, NULL, '添加违章', 'UPDATED', 1, '[48,{\"amount\":0.01,\"description\":\"sdfasdfas\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-10-5-2-23-1652130143223-logo.png\"],\"title\":\"dfdsdf\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/48/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (44, 1652130275725, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (45, 1652130278934, NULL, NULL, '添加违章', 'UPDATED', 1, '[48,{\"amount\":0.01,\"description\":\"123123\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-10-5-4-35-1652130275809-logo.png\"],\"title\":\"123123\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/48/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (46, 1652130719761, NULL, NULL, '确认取车', 'UPDATED', 1, '[49]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/49/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (47, 1652130736093, NULL, NULL, '确认还车', 'UPDATED', 1, '[49]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/49/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (48, 1652130753075, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (49, 1652130756159, NULL, NULL, '添加违章', 'UPDATED', 1, '[49,{\"amount\":0.01,\"description\":\"123123123\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-10-5-12-33-1652130753139-logo.png\"],\"title\":\"123123\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/49/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (50, 1652131778310, NULL, NULL, '解冻订单', 'UPDATED', 1, '[49]', '', 'com.zhuche.server.api.v1.admin.Order.unfreezeOrder', '/api/v1/orders/49/status/unfreeze');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (51, 1652132179219, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (52, 1652132230036, NULL, NULL, '确认取车', 'UPDATED', 1, '[50]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/50/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (53, 1652132244616, NULL, NULL, '确认还车', 'UPDATED', 1, '[50]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/50/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (54, 1652132249632, NULL, NULL, '解冻订单', 'UPDATED', 1, '[50]', '', 'com.zhuche.server.api.v1.admin.Order.unfreezeOrder', '/api/v1/orders/50/status/unfreeze');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (55, 1652133920388, NULL, NULL, '确认取车', 'UPDATED', 1, '[51]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/51/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (56, 1652133935636, NULL, NULL, '确认还车', 'UPDATED', 1, '[51]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/51/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (57, 1652133948042, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (58, 1652133951136, NULL, NULL, '添加违章', 'UPDATED', 1, '[51,{\"amount\":0.01,\"description\":\"fasfas\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-10-6-5-48-1652133948100-logo.png\"],\"title\":\"1313\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/51/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (59, 1652133956985, NULL, NULL, '添加违章', 'UPDATED', 1, '[51,{\"amount\":0.01,\"description\":\"fasfas\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-10-6-5-48-1652133948100-logo.png\"],\"title\":\"1313\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/51/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (60, 1652137953283, NULL, NULL, '确认取车', 'UPDATED', 1, '[52]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/52/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (61, 1652156179385, NULL, NULL, '修改推广设置', 'UPDATED', 1, '[{\"promotionLevel1\":10.0,\"promotionLevel2\":5.0}]', '', 'com.zhuche.server.api.v1.admin.Promotion.setSetting', '/api/v1/promotion');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (62, 1652156185762, NULL, NULL, '修改推广设置', 'UPDATED', 1, '[{\"promotionLevel1\":9.0,\"promotionLevel2\":5.0}]', '', 'com.zhuche.server.api.v1.admin.Promotion.setSetting', '/api/v1/promotion');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (63, 1652156188509, NULL, NULL, '修改推广设置', 'UPDATED', 1, '[{\"promotionLevel1\":9.0,\"promotionLevel2\":4.0}]', '', 'com.zhuche.server.api.v1.admin.Promotion.setSetting', '/api/v1/promotion');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (64, 1652213575323, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (65, 1652213575612, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (66, 1652213675851, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (67, 1652213676243, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (68, 1652213684132, NULL, NULL, '创建推广海报', 'CREATED', 1, '[{\"url\":\"2022-5-11-4-14-36-1652213676403-logo.png\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.createPoster', '/api/v1/promotionalPoster');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (69, 1652216636086, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (70, 1652216637013, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (71, 1652216639057, NULL, NULL, '创建推广海报', 'CREATED', 1, '[{\"url\":\"2022-5-11-5-3-57-1652216637238-logo.jpg\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.createPoster', '/api/v1/promotionalPoster');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (72, 1652216639937, NULL, NULL, '创建推广海报', 'CREATED', 1, '[{\"url\":\"2022-5-11-5-3-57-1652216637238-logo.jpg\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.createPoster', '/api/v1/promotionalPoster');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (73, 1652217008819, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (74, 1652217009002, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (75, 1652217010825, NULL, NULL, '创建推广海报', 'CREATED', 1, '[{\"url\":\"2022-5-11-5-10-9-1652217009067-poster1.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.createPoster', '/api/v1/promotionalPoster');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (76, 1652217017536, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (77, 1652217017744, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (78, 1652217019633, NULL, NULL, '创建推广海报', 'CREATED', 1, '[{\"url\":\"2022-5-11-5-10-17-1652217017805-poster2.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.createPoster', '/api/v1/promotionalPoster');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (79, 1652219383110, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (80, 1652219383262, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (81, 1652222591852, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (82, 1652222592008, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (83, 1652223107309, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (84, 1652223107511, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (85, 1652223130443, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (86, 1652223130643, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (87, 1652223156140, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (88, 1652223156318, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (89, 1652223181929, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (90, 1652223182101, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (91, 1652223945616, NULL, NULL, '创建推广海报', 'CREATED', 1, '[{\"positionX\":9.7,\"positionY\":430,\"size\":1.2,\"url\":\"2022-5-11-6-53-2-1652223182157-poster2.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.createPoster', '/api/v1/promotionalPoster');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (92, 1652224990199, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (93, 1652224990412, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (94, 1652225033420, NULL, NULL, '创建推广海报', 'CREATED', 1, '[{\"positionX\":20,\"positionY\":430,\"size\":1.5,\"url\":\"2022-5-11-7-23-10-1652224990477-poster1.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.createPoster', '/api/v1/promotionalPoster');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (95, 1652226257887, NULL, NULL, '修改推广海报', 'DELETED', 1, '[70,{\"positionX\":33,\"positionY\":430,\"size\":1.5,\"url\":\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-11-7-23-10-1652224990477-poster1.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.updatePoster', '/api/v1/promotionalPoster/70');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (96, 1652226265747, NULL, NULL, '修改推广海报', 'DELETED', 1, '[70,{\"positionX\":21,\"positionY\":430,\"size\":1.5,\"url\":\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-11-7-23-10-1652224990477-poster1.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.updatePoster', '/api/v1/promotionalPoster/70');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (97, 1652226271531, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (98, 1652226271677, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (99, 1652226286540, NULL, NULL, '修改推广海报', 'DELETED', 1, '[69,{\"positionX\":9.7,\"positionY\":430,\"size\":1.2,\"url\":\"2022-5-11-7-44-31-1652226271743-poster1.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.updatePoster', '/api/v1/promotionalPoster/69');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (100, 1652226931095, NULL, NULL, '删除推广海报', 'DELETED', 1, '[69]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.deletePoster', '/api/v1/promotionalPoster/69');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (101, 1652252406144, NULL, NULL, '修改推广海报', 'UPDATED', 1, '[68,{\"positionX\":45,\"positionY\":400,\"size\":2,\"url\":\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-11-6-53-2-1652223182157-poster2.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.PromotionalPoster.updatePoster', '/api/v1/promotionalPoster/68');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (102, 1652340933109, NULL, NULL, '确认取车', 'UPDATED', 1, '[54]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/54/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (103, 1652341443720, NULL, NULL, '确认还车', 'UPDATED', 1, '[54]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/54/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (104, 1652341892623, NULL, NULL, '确认还车', 'UPDATED', 1, '[54]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/54/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (105, 1652342072279, NULL, NULL, '确认还车', 'UPDATED', 1, '[54]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/54/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (106, 1652342141238, NULL, NULL, '确认还车', 'UPDATED', 1, '[54]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/54/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (107, 1652342291700, NULL, NULL, '确认还车', 'UPDATED', 1, '[54]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/54/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (108, 1652343581492, NULL, NULL, '确认还车', 'UPDATED', 1, '[54]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/54/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (109, 1652343737255, NULL, NULL, '确认还车', 'UPDATED', 1, '[54]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/54/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (110, 1652389540961, NULL, NULL, '通过用户的提现申请', 'UPDATED', 1, '[118,{\"reason\":\"我不想给\"}]', '', 'com.zhuche.server.api.v1.admin.Withdraw.rejectWithDrawUpdate', '/api/v1/withdraws/118/status/failed');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (111, 1652389565290, NULL, NULL, '通过用户的提现申请', 'UPDATED', 1, '[117]', '', 'com.zhuche.server.api.v1.admin.Withdraw.withDrawUpdate', '/api/v1/withdraws/117/status');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (112, 1652670704838, NULL, NULL, '修改推广设置', 'UPDATED', 1, '[{\"promotionLevel1\":1,\"promotionLevel2\":1}]', '', 'com.zhuche.server.api.v1.admin.Promotion.setSetting', '/api/v1/promotion');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (113, 1652673978187, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (114, 1652674319948, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (115, 1652674668022, NULL, NULL, '创建商店', 'CREATED', 1, '[{\"address\":\"凤翔西路24号\",\"areaCode\":\"460107\",\"banners\":[\"2022-5-16-12-6-18-1652673978270-微信图片_20220516120606.jpg\"],\"endAt\":\"23:59\",\"isAirport\":false,\"isSelfService\":false,\"isStation\":true,\"lat\":19.98726,\"lng\":110.34627,\"mark\":\"\",\"name\":\"车租婆租车东站店\",\"password\":\"12345678\",\"pickupGuids\":[],\"returnGuids\":[],\"servicePhone\":\"15308987118\",\"starAt\":\"00:00\",\"username\":\"chezupo\"}]', '', 'com.zhuche.server.api.v1.admin.Store.createStore', '/api/v1/stores');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (116, 1652676033350, NULL, NULL, '创建token', 'CREATED', 59, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (117, 1652676033400, NULL, NULL, '创建token', 'CREATED', 59, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (118, 1652676091379, NULL, NULL, '添加汽车', 'CREATED', 59, '[{\"carCategoryId\":19,\"configIds\":[10,9],\"cover\":\"2022-5-16-12-40-33-1652676033507-微信图片_20220516124015.jpg\",\"deposit\":3000.0,\"displacement\":2.5,\"engineType\":\"NATURALLY_ASPIRATED\",\"gasVolume\":60.0,\"handlingFee\":35.0,\"insuranceFee\":80.0,\"isOnline\":true,\"isSelfHelp\":false,\"name\":\"别克商务\",\"number\":\"琼BGM195\",\"powerType\":\"GAS\",\"rent\":350.0,\"seats\":7,\"seriesId\":41,\"shift\":\"AUTO\",\"tags\":[\"蓝牙\"],\"type\":\"商务\"}]', '', 'com.zhuche.server.api.v1.admin.Car.createCar', '/api/v1/cars');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (119, 1652676785422, NULL, NULL, '修改汽车', 'UPDATED', 59, '[2,{\"carCategoryId\":19,\"configIds\":[10,9],\"cover\":\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-16-12-40-33-1652676033507-微信图片_20220516124015.jpg\",\"deposit\":1.0,\"displacement\":2.5,\"engineType\":\"NATURALLY_ASPIRATED\",\"gasVolume\":60.0,\"handlingFee\":35.0,\"insuranceFee\":80.0,\"isOnline\":true,\"isSelfHelp\":false,\"name\":\"别克商务\",\"number\":\"琼BGM195\",\"powerType\":\"GAS\",\"rent\":350.0,\"seats\":7,\"seriesId\":41,\"shift\":\"AUTO\",\"tags\":[\"蓝牙\"],\"type\":\"商务\"}]', '', 'com.zhuche.server.api.v1.admin.Car.updateCar', '/api/v1/cars/2');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (120, 1652676831380, NULL, NULL, '修改汽车', 'UPDATED', 59, '[2,{\"carCategoryId\":19,\"configIds\":[10,9],\"cover\":\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-16-12-40-33-1652676033507-微信图片_20220516124015.jpg\",\"deposit\":3000.0,\"displacement\":2.5,\"engineType\":\"NATURALLY_ASPIRATED\",\"gasVolume\":60.0,\"handlingFee\":35.0,\"insuranceFee\":80.0,\"isOnline\":true,\"isSelfHelp\":false,\"name\":\"别克商务\",\"number\":\"琼BGM195\",\"powerType\":\"GAS\",\"rent\":350.0,\"seats\":7,\"seriesId\":41,\"shift\":\"AUTO\",\"tags\":[\"蓝牙\"],\"type\":\"商务\"}]', '', 'com.zhuche.server.api.v1.admin.Car.updateCar', '/api/v1/cars/2');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (121, 1652677186925, NULL, NULL, '修改汽车', 'UPDATED', 59, '[2,{\"carCategoryId\":19,\"configIds\":[10,9],\"cover\":\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-16-12-40-33-1652676033507-微信图片_20220516124015.jpg\",\"deposit\":3.0,\"displacement\":2.5,\"engineType\":\"NATURALLY_ASPIRATED\",\"gasVolume\":60.0,\"handlingFee\":35.0,\"insuranceFee\":80.0,\"isOnline\":true,\"isSelfHelp\":false,\"name\":\"别克商务\",\"number\":\"琼BGM195\",\"powerType\":\"GAS\",\"rent\":350.0,\"seats\":7,\"seriesId\":41,\"shift\":\"AUTO\",\"tags\":[\"蓝牙\"],\"type\":\"商务\"}]', '', 'com.zhuche.server.api.v1.admin.Car.updateCar', '/api/v1/cars/2');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (122, 1652680520581, NULL, NULL, '确认取车', 'UPDATED', 59, '[58]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/58/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (123, 1652758895460, NULL, NULL, '修改密码', 'UPDATED', 1, '[4,{\"password\":\"12345678\"}]', '', 'com.zhuche.server.api.v1.admin.Users.updatePassword', '/api/v1/users/4/password');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (124, 1652931141698, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (125, 1652931141944, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (126, 1652931166366, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (127, 1652931166529, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (128, 1653017269701, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (129, 1653017269908, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (130, 1653017686475, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (131, 1653017686654, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (132, 1653017766432, NULL, NULL, '确认取车', 'UPDATED', 1, '[59,{\"contract\":\"2022-5-20-11-34-46-1653017686721-法人正面.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/59/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (133, 1653018179521, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (134, 1653018179712, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (135, 1653018183785, NULL, NULL, '确认取车', 'UPDATED', 1, '[62,{\"contract\":\"2022-5-20-11-42-59-1653018179777-logo.png\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/62/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (136, 1653019617866, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (137, 1653019617966, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (138, 1653019626083, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (139, 1653019626140, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (140, 1653019627185, NULL, NULL, '确认取车', 'UPDATED', 1, '[53,{\"contract\":\"2022-5-20-12-7-6-1653019626182-公开账号.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/53/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (141, 1653054551238, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (142, 1653055128081, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (143, 1653055142196, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (144, 1653055428249, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (145, 1653055516102, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (146, 1653055696574, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (147, 1653055696574, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (148, 1653055819094, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (149, 1653056103875, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (150, 1653056766012, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (151, 1653056790006, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (152, 1653056833493, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (153, 1653056894647, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (154, 1653058514024, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (155, 1653058920295, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (156, 1653059480642, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (157, 1653059599098, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (158, 1653059879365, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (159, 1653059920842, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (160, 1653060106809, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (161, 1653060191703, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (162, 1653060738465, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (163, 1653104124260, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (164, 1653104159643, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (165, 1653104217695, NULL, NULL, '创建token', 'CREATED', 21, '[]', '', 'com.zhuche.server.api.v1.mini.program.UploadToken.createToken', '/api/v1/miniProgram/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (166, 1667871298367, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (167, 1667871299557, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (168, 1667871318787, NULL, NULL, '确认取车', 'UPDATED', 1, '[70,{\"contract\":\"2022-11-8-9-34-59-1667871299834-取车合同.png\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/70/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (169, 1669502826016, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (170, 1669502826270, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (171, 1669502828216, NULL, NULL, '确认取车', 'UPDATED', 1, '[112,{\"contract\":\"2022-11-27-6-47-6-1669502826368-logo.png\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/112/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (172, 1669770542156, NULL, NULL, '设定业务员', 'UPDATED', 1, '[119]', '', 'com.zhuche.server.api.v1.admin.Users.setUserRolePromoter', '/api/v1/users/119/roles/ROLE_PROMOTER');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (173, 1669803838693, NULL, NULL, '通过用户的提现申请', 'UPDATED', 1, '[132]', '', 'com.zhuche.server.api.v1.admin.Withdraw.withDrawUpdate', '/api/v1/withdraws/132/status');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (174, 1669845994786, NULL, NULL, '通过用户的提现申请', 'UPDATED', 1, '[132,{\"reason\":\"我不想给钱了\"}]', '', 'com.zhuche.server.api.v1.admin.Withdraw.rejectWithDrawUpdate', '/api/v1/withdraws/132/status/failed');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (175, 1669851853834, NULL, NULL, '确认还车', 'UPDATED', 4, '[112]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/112/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (176, 1669872793154, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (177, 1669872793452, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (178, 1669872795862, NULL, NULL, '确认取车', 'UPDATED', 4, '[113,{\"contract\":\"2022-12-1-13-33-14-1669872794306-微信图片_20221130171854.jpg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/113/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (179, 1669875345179, NULL, NULL, '确认还车', 'UPDATED', 4, '[113]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/113/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (180, 1669877476927, NULL, NULL, '创建汽车分类', 'CREATED', 4, '[{\"name\":\"皮卡\"}]', '', 'com.zhuche.server.api.v1.admin.CarCategory.create', '/api/v1/cars/categories');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (181, 1669877671587, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (182, 1669877671862, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (183, 1669877763773, NULL, NULL, '创建品牌', 'CREATED', 4, '[{\"imgKey\":\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAZAAACAwEAAAAAAAAAAAAAAAAFBwYICQv/xAAkEAABBQEAAQQCAwAAAAAAAAADAQIEBQYHEQgSExQAIxUWIv/EABoBAAEFAQAAAAAAAAAAAAAAAAkCBQYHCAP/xAAwEQACAwABAgQEAgsAAAAAAAABAgMEBQYAEQcTFSESFBYxF5YjQVFVVldxldPU1f/aAAwDAQACEQMRAD8Azi53o6vTdO02C7P6gE5DyfLwtqCvsrjDbrqZ45KSyvHZ/L4DD4wtcOdsi2OhurLNM2Wmx/Pw2Eu8l6nSxf5M4LUyHLeLZmZANPjPDU29wXRBDFDrZ+QVq2mia5Lo6+w80tfMaKnU+f8ATq93Ul8moYKc3k/FEOrC0HuqK2ttyUMtqfzD96tu95liONvlY6dGm0MEugzzTJUN2xVoIZJvPsRhgGYcqp9NknhMm9y/rUFA71m85RbAOC0/pu6bTf3y60VCB2t5TUdCzFhvsvAs+d3FFKi5S5tsVj6DYN14ra+3UWHMdn+XRLOo8pfeSrs+GUzcbuzzUZ9Cvzbj19MuGKyxr6drOliyrVmC/Xsr83FXt2JqleokNfLltJJc1npxgnLkkq8lWts044LUVabD04WvTywKbOfBdrz3YoZKM8JWtJYqVkstYE0l2ONzXz4FxaNL3WYs7nQGfZTx6ObD+y/9L3CbX1Uvw9IjQsI9TzDkcV7XFe4i+56ojUS5avEOLrGQ2ZGOzdgPnNBAFCqAFWOx8IA7e3YD+nVd3tu/DMB5rMWQOzGOuxLM79yzPGzEnt7knro+8o4zys3Pua2Ejn+FkSV5vj2SgGx2WM08qRR1Zi2UohKh00s4jhPY0xZSjVCSHqJxikJ+By5hyHd+reUhNrWWMci2wiLpXAiJ6laCoqiYKFC9gFVQoAAAA9uiE8QyMmbiXF5Xy852l45iSOWpVm+JnzarMzExEsxJJJJJP6/fpiyeQcjc1GP5nzUf+PDvkxWbR6BT2sX43NhBeL2+9rWka79bnM8Ii+PMa9f3fc+ta3c+5PqNz3P7T+m6kXomL+6Mv+31P8PWXnqy5Fz6h3GNrM1m6BKuPzKgaOV9KvkyLNzbvTDS0mzkArrGbMCwLzTyOe6R4aqKg0Y1urvArcvniOibN+7O/wBR3OzzXZ3YJ6ZkEKC8hPwhixA+3difuT1lTxygoUeW50VehThRuO1JCsVeKJSx09dSxWOMKWIRQWPuQAPsB1TiL13r0GPGiQuudThxYUYUKHGi9D10cEWHHYwYIsYIbdgwRgjGwYgCawQ2MYxjGtaiJoCbhfC7Ess9jhnEZ555Hmmml41iyTTTSsXklllekXkkkdmd3dizsSzEkk9D6i8WPE+rBDXreIfN69evGleCCDlW9FDBBCvlxQwxR31SOKKNVSONFVEQBVUAAAfa9G6TemgSLvpPQ7mRVG+zVntdtprA1bI+WOf7EAsuzM+Gb54kU3yx3DJ8saOT3e8I1bz+huDfwRw38r4f+j0v8YPFb+ZPO/zdyH/o9AVvdCoxidpNG4QnzSCG69tHMESys511YvG10pUY+fcWdlbTXNRFlWdhOnnUkqXIKR0o4OBmRNXzcDDz4HkMzw0cjPqRNKyojStHXrxo0jJHGhcqWKoik9lUBm0efc2151s63LOR6dhIlgSxobmpcmSFXeRYVlsW5HWJZJZHWMMEDyOwHdmJ/9k=\",\"name\":\"皮卡\"}]', '', 'com.zhuche.server.api.v1.admin.Brand.create', '/api/v1/brands');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (184, 1669877791612, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (185, 1669877791859, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (186, 1669877875078, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (187, 1669877875352, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (188, 1669877930133, NULL, NULL, '添加汽车', 'CREATED', 4, '[{\"carCategoryId\":22,\"configIds\":[8,6,5,7],\"cover\":\"2022-12-1-14-57-55-1669877875430-2022-4-25-23-35-14-1650900914689-cover.jpg\",\"deposit\":2.0,\"displacement\":2.0,\"engineType\":\"NATURALLY_ASPIRATED\",\"gasVolume\":2.0,\"handlingFee\":1.0,\"insuranceFee\":2.0,\"isOnline\":true,\"isSelfHelp\":false,\"name\":\"日产轩逸1\",\"number\":\"浙A12555A\",\"powerType\":\"GAS\",\"rent\":1.0,\"seats\":6,\"seriesId\":3,\"shift\":\"AUTO\",\"tags\":[\"蓝牙\"],\"type\":\"1111\"}]', '', 'com.zhuche.server.api.v1.admin.Car.createCar', '/api/v1/cars');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (189, 1669878032486, NULL, NULL, '创建车系列', 'CREATED', 4, '[{\"name\":\"皮卡A3\"},55]', '', 'com.zhuche.server.api.v1.admin.BrandSeries.create', '/api/v1/brands/55/series');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (190, 1669878178764, NULL, NULL, '创建车系列', 'CREATED', 4, '[{\"name\":\"长城跑\"},55]', '', 'com.zhuche.server.api.v1.admin.BrandSeries.create', '/api/v1/brands/55/series');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (191, 1669878241369, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (192, 1669878241614, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (193, 1669878327889, NULL, NULL, '添加汽车', 'CREATED', 4, '[{\"carCategoryId\":22,\"configIds\":[6,5],\"cover\":\"2022-12-1-15-4-2-1669878242486-微信图片_20221130171854.jpg\",\"deposit\":0.3,\"displacement\":2.5,\"engineType\":\"NATURALLY_ASPIRATED\",\"gasVolume\":50.0,\"handlingFee\":0.2,\"insuranceFee\":0.01,\"isOnline\":true,\"isSelfHelp\":false,\"name\":\"皮卡\",\"number\":\"琼BGM195\",\"powerType\":\"GAS\",\"rent\":0.1,\"seats\":5,\"seriesId\":65,\"shift\":\"MANUAL\",\"tags\":[\"倒车影像\"],\"type\":\"皮卡\"}]', '', 'com.zhuche.server.api.v1.admin.Car.createCar', '/api/v1/cars');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (194, 1669878485649, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (195, 1669878485931, NULL, NULL, '创建token', 'CREATED', 4, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (196, 1669878489160, NULL, NULL, '修改汽车', 'UPDATED', 4, '[4,{\"carCategoryId\":22,\"configIds\":[5,6],\"cover\":\"2022-12-1-15-8-6-1669878486006-2022-4-25-23-35-14-1650900914689-cover.jpg\",\"deposit\":0.3,\"displacement\":2.5,\"engineType\":\"NATURALLY_ASPIRATED\",\"gasVolume\":50.0,\"handlingFee\":0.2,\"insuranceFee\":0.01,\"isOnline\":true,\"isSelfHelp\":false,\"name\":\"皮卡\",\"number\":\"琼BGM195\",\"powerType\":\"GAS\",\"rent\":0.1,\"seats\":5,\"seriesId\":65,\"shift\":\"MANUAL\",\"tags\":[\"倒车影像\"],\"type\":\"皮卡\"}]', '', 'com.zhuche.server.api.v1.admin.Car.updateCar', '/api/v1/cars/4');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (197, 1669936970545, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (198, 1669936970857, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (199, 1669936974413, NULL, NULL, '确认取车', 'UPDATED', 1, '[116,{\"contract\":\"2022-12-2-7-22-51-1669936971266-公开账号.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/116/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (200, 1669937021617, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (201, 1669937022159, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (202, 1669937028561, NULL, NULL, '确认取车', 'UPDATED', 1, '[118,{\"contract\":\"2022-12-2-7-23-42-1669937022568-公开账号.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/118/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (203, 1669938944827, NULL, NULL, '确认还车', 'UPDATED', 1, '[118]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/118/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (204, 1669939355802, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (205, 1669939356384, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (206, 1669939363587, NULL, NULL, '确认取车', 'UPDATED', 1, '[117,{\"contract\":\"2022-12-2-8-2-36-1669939356780-logo.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/117/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (207, 1669939450926, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (208, 1669939451477, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (209, 1669939457728, NULL, NULL, '确认取车', 'UPDATED', 1, '[108,{\"contract\":\"2022-12-2-8-4-11-1669939451870-logo.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/108/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (210, 1669939504848, NULL, NULL, '确认还车', 'UPDATED', 1, '[117]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/117/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (211, 1669939636087, NULL, NULL, '确认还车', 'UPDATED', 1, '[116]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/116/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (212, 1669941085972, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (213, 1669941086521, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (214, 1669941094081, NULL, NULL, '确认取车', 'UPDATED', 1, '[105,{\"contract\":\"2022-12-2-8-31-26-1669941086845-logo.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/105/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (215, 1669941692302, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (216, 1669941692842, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (217, 1669941699772, NULL, NULL, '确认取车', 'UPDATED', 1, '[118,{\"contract\":\"2022-12-2-8-41-33-1669941693376-logo.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/118/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (218, 1669941774852, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (219, 1669941775414, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (220, 1669941781756, NULL, NULL, '确认取车', 'UPDATED', 1, '[117,{\"contract\":\"2022-12-2-8-42-55-1669941775830-logo.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/117/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (221, 1669941796303, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (222, 1669941796869, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (223, 1669941803747, NULL, NULL, '确认取车', 'UPDATED', 1, '[116,{\"contract\":\"2022-12-2-8-43-17-1669941797269-logo.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/116/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (224, 1669941906234, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (225, 1669941906912, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (226, 1669941914279, NULL, NULL, '确认取车', 'UPDATED', 1, '[118,{\"contract\":\"2022-12-2-8-45-7-1669941907294-logo.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/118/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (227, 1669942696717, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (228, 1669942696959, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (229, 1669942699015, NULL, NULL, '确认取车', 'UPDATED', 1, '[117,{\"contract\":\"2022-12-2-8-58-17-1669942697063-公开账号.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/117/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (230, 1669991149155, NULL, NULL, '确认还车', 'UPDATED', 1, '[118]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/118/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (231, 1670026207540, NULL, NULL, '续租订单', 'UPDATED', 1, '[117,{\"days\":1}]', '', 'com.zhuche.server.api.v1.admin.Order.renewingOrder', '/api/v1/orders/117/status/renewing');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (232, 1670027588074, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (233, 1670027588719, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (234, 1670027595450, NULL, NULL, '确认取车', 'UPDATED', 1, '[119,{\"contract\":\"2022-12-3-8-33-9-1670027589145-logo.jpeg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/119/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (235, 1670030483676, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (236, 1670030629777, NULL, NULL, '添加违章', 'UPDATED', 1, '[118,{\"amount\":0.3,\"description\":\"违章测试描述\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-9-21-23-1670030483899-logo.jpeg\"],\"title\":\"违章测试标题\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/118/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (237, 1670030814064, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (238, 1670030835479, NULL, NULL, '添加违章', 'UPDATED', 1, '[118,{\"amount\":0.1,\"description\":\"2\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-9-26-54-1670030814202-image.png\"],\"title\":\"1\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/118/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (239, 1670031046451, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (240, 1670031071075, NULL, NULL, '添加违章', 'UPDATED', 1, '[118,{\"amount\":0.01,\"description\":\"描述\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-9-30-46-1670031046658-image.png\"],\"title\":\"标题\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/118/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (241, 1670031154678, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (242, 1670031158879, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (243, 1670031190805, NULL, NULL, '添加违章', 'UPDATED', 1, '[118,{\"amount\":0.01,\"description\":\"违章测试说明\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-9-32-35-1670031155006-image.png\",\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-9-32-39-1670031159148-image.png\"],\"title\":\"违章测试标题\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/118/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (244, 1670060280941, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (245, 1670060281183, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (246, 1670060283612, NULL, NULL, '确认取车', 'UPDATED', 1, '[121,{\"contract\":\"2022-12-3-17-34-36-1670060076075-微信图片_20220321180857.jpg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/121/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (247, 1670060293064, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (248, 1670060293307, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (249, 1670060298565, NULL, NULL, '确认取车', 'UPDATED', 1, '[120,{\"contract\":\"2022-12-3-17-34-48-1670060088196-3c08a2344b05109e13e0a38f316cb1d.jpg\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/120/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (250, 1670061962521, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (251, 1670062279049, NULL, NULL, '确认还车', 'UPDATED', 1, '[120]', '', 'com.zhuche.server.api.v1.admin.Order.finishedOrder', '/api/v1/orders/120/status/finished');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (252, 1670062298010, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (253, 1670062300611, NULL, NULL, '添加违章', 'UPDATED', 1, '[120,{\"amount\":0.01,\"description\":\"2233\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-18-8-12-1670062092862-3e30f3e8365c4b8c2f8842f5dae1bf5.jpg\"],\"title\":\"违章\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/120/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (254, 1670062447163, NULL, NULL, '添加违章', 'UPDATED', 1, '[120,{\"amount\":0.01,\"description\":\"2233\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-18-8-12-1670062092862-3e30f3e8365c4b8c2f8842f5dae1bf5.jpg\"],\"title\":\"违章\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/120/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (255, 1670062469120, NULL, NULL, '添加违章', 'UPDATED', 1, '[120,{\"amount\":0.01,\"description\":\"2233\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-18-8-12-1670062092862-3e30f3e8365c4b8c2f8842f5dae1bf5.jpg\"],\"title\":\"违章\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/120/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (256, 1670062514171, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (257, 1670062517983, NULL, NULL, '添加违章', 'UPDATED', 1, '[120,{\"amount\":0.01,\"description\":\"5566\",\"freezeAmount\":0.0,\"images\":[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-18-11-49-1670062309001-67c830c597641a3bc54c9bacbba4ea2.jpg\"],\"title\":\"违章违章\"}]', '', 'com.zhuche.server.api.v1.admin.Violation.createViolation', '/api/v1/orders/120/violation');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (258, 1670064350012, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (259, 1670064350292, NULL, NULL, '创建token', 'CREATED', 1, '[]', '', 'com.zhuche.server.api.v1.admin.UploadToken.createToken', '/api/v1/uploadToken');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (260, 1670064354184, NULL, NULL, '确认取车', 'UPDATED', 1, '[125,{\"contract\":\"2022-12-3-18-45-50-1670064350379-image.png\"}]', '', 'com.zhuche.server.api.v1.admin.Order.confirmPickUpCarOrder', '/api/v1/orders/125/status/using');
INSERT INTO `log` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `type`, `user_id`, `params`, `description`, `class_name`, `request_path`) VALUES (261, 1670066879753, NULL, NULL, '删除订单', 'DELETED', 1, '[124]', '', 'com.zhuche.server.api.v1.admin.Order.deleteOrder', '/api/v1/orders/124');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `created_at` bigint(20) DEFAULT NULL,
                          `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `alipay_token` varchar(2000) DEFAULT NULL,
                          `alipay_trade_no` varchar(255) DEFAULT NULL,
                          `out_trade_no` varchar(255) DEFAULT NULL COMMENT '商家自定义订单号',
                          `title` varchar(255) DEFAULT NULL,
                          `amount` float DEFAULT NULL,
                          `cover` varchar(255) DEFAULT NULL,
                          `create_alipay_at` datetime(6) DEFAULT NULL,
                          `deposit` float DEFAULT NULL,
                          `end_time_stamp` bigint(20) DEFAULT NULL,
                          `handling_fee` double DEFAULT NULL,
                          `insurance_fee` double DEFAULT NULL,
                          `is_insurance` bit(1) DEFAULT NULL,
                          `pay_type` varchar(255) DEFAULT NULL,
                          `rent` double DEFAULT NULL,
                          `start_time_stamp` bigint(20) DEFAULT NULL,
                          `status` varchar(255) DEFAULT NULL,
                          `car_id` bigint(20) DEFAULT NULL,
                          `end_store_id` bigint(20) DEFAULT NULL,
                          `start_store_id` bigint(20) DEFAULT NULL,
                          `user_id` bigint(20) DEFAULT NULL,
                          `remark` varchar(255) DEFAULT NULL,
                          `waiver_handling_fee` double DEFAULT NULL,
                          `waiver_rent` double DEFAULT NULL,
                          `unfreeze_amount` double DEFAULT NULL,
                          `auth_no` varchar(255) DEFAULT NULL,
                          `out_request_no` varchar(255) DEFAULT NULL,
                          `auth_body` varchar(2000) DEFAULT NULL,
                          `freeze_type` varchar(255) DEFAULT NULL,
                          `is_unfreeze` bit(1) DEFAULT NULL,
                          `is_refund` bit(1) DEFAULT NULL,
                          `promotion_level1_user_id` bigint(20) DEFAULT NULL,
                          `promotion_level2_user_id` bigint(20) DEFAULT NULL,
                          `promotion_Level1` decimal(10,2) DEFAULT NULL,
                          `promotion_Level2` decimal(10,2) DEFAULT NULL,
                          `contract` varchar(255) DEFAULT NULL,
                          `wechat_pay_token` varchar(2550) DEFAULT NULL,
                          `wechat_transaction_id` varchar(32) DEFAULT NULL COMMENT '微信退款订单号',
                          `wechat_out_refund_no` varchar(255) DEFAULT NULL,
                          `is_delete` int(1) DEFAULT '0',
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (42, 1651587805590, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"202253222316292751000\",\"trade_no\":\"2022050322001443081449183111\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"gMBf0lIikFE4sCdZTu6c9E9auI1HFk8qSnry7X2qDMVzMM8cJLzkRJh31m1RuoCecytTJnS7UelqiRtWYYSYdX9KUPYrqZEvgpU7SusFECMyt3excXabRLUpOQh6Cx4y0/RG9xbwwBd3XCdMiN0XAFCoVIskf4K3HDnnVzBAl6TBokSylSzDXWb0oJn3Cf8ma9UWKKNZcdL81GfoYmCw0qBwJurfEWqmgK2mGwCWz6yku5hQRB9SJkxth9QK//VeO/naRVLemf6gLF5vXjRWPGCkRdGIqDz0QqPDOG19bwS4Qpl2j3hgWdYky1Kf7QowdfNU6pICh3SmK0zXNl0+Tg==\"}', '2022050322001443081449183111', '202253222316292751000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-03 22:23:16.292000', 0, 1651760479690, 0.02, 0, b'0', 'ALIPAY', 0.02, 1651587679690, 'CANCELED', 1, 2, 2, 21, '', 0.01, 0, 0.02, '2022050310002001080591863973', '202253222325592374000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E7%A7%9F%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%22202253222325592374000%22%2C%22out_request_no%22%3A%22202253222325592374000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=LgOuRkVJtvnoldcomUohqAFHCcmPwHpgXi9rFTjvUff3N%2BgJ2n%2FFiXwbUA8AAG%2FGUBMsQIMjDT4vwowEE7Ji9DnIht361usxYp51dwujZvtYsGfJN0GOvuI0ws2Y%2B1CECQzzGWRp4o4ouKpfMrq7mXx6XAja%2FrV%2FT4GzuhUJeqOrv7g%2FiusSRJQqHG2Zu%2B4aGhNtPi1t69xThc1PzKt14k4WYbVi6XEhKyj0BHI5YMEt2Xo8r%2FLf%2F0RALwDQD0WBXGxG5SKDcULNogpWvKTKwpDU5RpePIZFkDyQQXF0k7YHg5k%2BQCtcfG9EXG%2FbdawpRZPvcoh8bGG1bNNNGJ4dTg%3D%3D&sign_type=RSA2&timestamp=2022-05-03+22%3A23%3A25&version=1.0', 'ALIPAY', b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (43, 1651600609678, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"20225415649339176000\",\"trade_no\":\"2022050422001443081448880823\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"lfDrLzXoBJBme0Q8HbFc0IQgkZiTp5pqKXA4knP9rWSlkleYRS5tMX+Fbk+5udiTZU2g65MZukg9e6mpzLvhwlWUmX2RwdJLK6DgxrZG7wmouoAhFetBDz4IsGKm4DaxXpmVkf8phx580guyyM8rhLFszyPoI08tmlXGaPggWNadnaw5JhVLj/sD8NMH0IRbNCnvdht6GBW6YNtoPcdb17Uv0fXE/fuKhcIor3z5NPv3oLLs6V0LELRyHTijAso9QN+7gwev8wccVnYhLaNAGbZoQuPgjS0n+vYTZos5jTsxp+tnD+FE922nv8SVx14jep+k93/VvYXleKIANdhptQ==\"}', '2022050422001443081448880823', '20225415649339176000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-04 01:56:49.338000', 0, 1651773381365, 0.03, 0, b'0', 'ALIPAY', 0.02, 1651600581365, 'CANCELED', 1, 2, 2, 21, '', 0, 0, 0.02, '2022050410002001080592151233', '20225415649679629000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E7%A7%9F%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%2220225415649679629000%22%2C%22out_request_no%22%3A%2220225415649679629000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=H1WF7oQuBZZw4Ws6oSH6Ai0lmhct%2BmpoPN4oH%2BXWjCf9wctuLFCoqWNgVpgw1i4Nc2vy8gX%2Fs%2BAigTJb%2F3IF9lUkuekF2bn7DojGtIgYqfp7M0rt1rYQFmEvq9bHTLGY1%2BMlDlNxWBTzCYwPSXpF7FezQX%2BxdjjrImR9FJ9JuGQ6YHqr986gclGUUu7K1i7Mnp32i6P1LnS%2FtQseAVBhVAt0DCQUKU6j03kdzwM9dSnbU8wqhy3xfy%2Ffpuu3%2Bn%2FdFTKSmFlfZhKa3cB94oSmvD9iYhiiNDjlXpUfbG9plnXLbtTezl8gltPfbNvDbBWJi1d4S5tPqrVLkzk%2FQrYYqw%3D%3D&sign_type=RSA2&timestamp=2022-05-04+01%3A56%3A49&version=1.0', 'ALIPAY', b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (44, 1651603139444, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"20225423859495365000\",\"trade_no\":\"2022050422001443081449353184\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"NSFgvE5nnHtPtYh0UbOFO4uWJfYMa1fk7l7BMSnJCfZW67KvYtTCbrc1cYDt90701PhJSBTxRMqYgSmLCl8DTj+w2AvCTXivmaqMgbFE/aYtX2xussYdU3ZCtFpnbPzQQ7HovVgxOrvoQomyRAM9efqVP8yx5Jk85HDPSOXzJ9Oom+H3T0hDwS2X1+yrdD6hxAw6BML7Hx0OqZn6nE2lKjrGkZoe8o1mU4sNSg8hTJlw4Ek6w1GFGdcwrTR/e8fFvzKkla6Lt6z+oIXvqj/UNC3FgDAurLRogsj8nlfe5ZS8RLZHoQmzs2kGnocLdT19TcXsgzBkC/yDK/ihfmQSnQ==\"}', '2022050422001443081449353184', '20225423859495365000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-04 02:38:59.385000', 0, 1651774670509, 0.03, 0, b'0', 'ALIPAY', 0.02, 1651601870509, 'USING', 1, 2, 2, 21, '这是备注', 0, 0, 0.02, '2022050410002001080592082228', '202254239028221000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%22202254239028221000%22%2C%22out_request_no%22%3A%22202254239028221000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=WQYMYPsu7Bho%2BqD8utE7vNDIzuE3qcjlQ1gYhkwx6moVMmksmbTrRRWjvBesBYCzA%2BGrbVZmS%2FfWbgjSqPAvMtFrFPJiiISioTZPhBFSSYgoo2WXrT4JMIfbuLraZZoXu4BIHOe95Ta0RQoP26oGqABp10dPfjngEPEHmCXRokE8yTZFTiz9XpgjsF3fp0R8dm0RkETh6OGWp8TnJsJoqx9lwvomXqBbghMfRQvc0TfvXItXCQxfnwc2MRFTKDUvBRB8hF7URxcufZbVAJA9xDMw5%2BvQgMQPHd8uU%2FfsswSQV5Zf6r3qfgGCZn2Bxwi07sghvALuE83Cs9pRZ0EwOA%3D%3D&sign_type=RSA2&timestamp=2022-05-04+02%3A39%3A00&version=1.0', 'ALIPAY', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (46, 1651603998188, NULL, NULL, NULL, NULL, '20225425318188202000', '日产轩逸费用', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-04 02:53:18.074000', 0, 1651776760821, 0, 0, b'0', 'ALIPAY', 0, 1651603960821, 'FINISHED', 1, 2, 2, 21, '', 0.03, 0.02, 0.03, '2022050410002001080591944741', '20225425318189811000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%2220225425318189811000%22%2C%22out_request_no%22%3A%2220225425318189811000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=gLmNHXWbyvl3Eoc5Oa9VW8GTCA%2BAGYOXKYP%2B%2Fma2VuaTwNeWcyMfDMpjjDtF%2FpKLjEip8uaSyxhtO%2F03sPw%2FsM0iuzmnvpXO0p0ba406dWlrsOrX2HcFXPfhO5vXpOkhoQMOOTncNMKIuOwKo2PO%2BBsZIZL6c%2Brh8h7nnLwO0FD8ykyokUU3SisSZjt3kaSiVCCls6BZESx0C3hFSI6smMHXdCKQ46lfd5XFueKaaXSOiDaJoBIBxW%2FRa1tEgXwqs46NsQVZ0UotRRVob40szieledAa9440S58C%2FK0Voha%2BkDXuWUkTiK3r8oo494N0FQ%2FdJhxAxbeTros%2BTy9OjA%3D%3D&sign_type=RSA2&timestamp=2022-05-04+02%3A53%3A18&version=1.0', 'ALIPAY', b'0', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (47, 1651976859276, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"202258102739276392000\",\"trade_no\":\"2022050822001443081452548417\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"DIImJ01my0A8SY5r1Z27sqlTgP09ZlDIGbYmhS7wgDg7BJwfqbohSNkBD/+kWsPL0zm0w2T0uYJMnwdCfEcU2EJ+hNPxVv8ZMFpkyJFdeu5Xk59Tf1Zs9xCtXS0EGM6cXrnu4LwrFvDxagATcEJ8Q6c12+RzlFjxgAGRnYduAndpdeLU0sDBVuaKGqvkfF3DSVDaFwiNh8ld2tO33jcs2JBz+rD1vWfnUP887tA7c3XBo1NymvT5bDIQpdCBSZAC9wzAoy8vPy3bq4OFtex6Lae5lxD9IUTMVGyY5o0ZVAysxg1X72TgKJ6k6IGWOt1MuUYyEg2n4s94u76/tTs/dA==\"}', '2022050822001443081452548417', '202258102739276392000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-08 10:27:38.274000', 0, 1652127344125, 0.03, 0, b'0', 'ALIPAY', 0.02, 1651954544125, 'CREDITING', 1, 2, 2, 21, '', 0, 0, 0.02, NULL, '202258102741346733000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%22202258102741346733000%22%2C%22out_request_no%22%3A%22202258102741346733000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=o9JR9ION0UmZOsi1a%2FUnJ%2FOs3JEPX0oD9hNmTVpK5lTi4xG8QFkAK7av%2BleCrT%2FyVs47VW13Yv0RiMC%2BN3Pj8fn9L7v8TzADbvn%2BiEqynOfzP%2FRZKtV2f7LugTq2kOl6f%2B324kAR6605n5ZNCGvdyRM10sZgoCv7dMO05aeKBrtArSyV3%2B%2B7%2BIvpzkkgUsE9bzPW6B1IUsihEQ1V53mBXl9nQ9knO4EHJsFN9Ath5gvVTvBd6mIsIeScxQgMJYLsINOyWpGymz27gD6GE5eWu1QsgkpNRqPdI5FP86q%2F7FKznvwc0J6ulJy%2FE9bmxhJP2iRXtY%2Bu3UKKc1iD0gxQTw%3D%3D&sign_type=RSA2&timestamp=2022-05-08+10%3A27%3A41&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (48, 1652130016466, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"20225105016466093000\",\"trade_no\":\"2022051022001443081452846585\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"vYlQa2olsCuDN7xGGbVHE9lQU1kZ4+cdknICboCOw/TToYXlW1zpEfXvbqantHILIhxJMjF81OOOjW+b4Putx8+UFhVU49Xig20a8X/Oo73ijR04oQ7OYwkbKmbI9aRfwwH6yWBGqX26BLlHs4tLTVVSUi+zhXNMrcJgtyCv922h7AyoutnIo61D8tBA9QLegFU6EMGkt6mtctzkKY7aD7VaUNGO8AYNvyBIWyVc1MCV2UdwXtF+AKRkSAv40U2V+/+crxz/+4YjllAyEw+tt9FP1yHMLT0A9VHasGzrQTQadoY+RF6xD5WELA7mknpj7Su570vXdZdlDuYbeZdjSg==\"}', '2022051022001443081452846585', '20225105016466093000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-10 05:00:16.432000', 0, 1652302791414, 0.03, 0, b'0', 'ALIPAY', 0.02, 1652129991414, 'FINISHED', 1, 2, 2, 21, '', 0, 0, 0, '2022051010002001080595867800', '20225105016976721000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%2220225105016976721000%22%2C%22out_request_no%22%3A%2220225105016976721000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=XN1xFbtt6HmQ9AoRqBI16%2Fo1esLZ8jDxvCsQkYhC%2F%2BOonZeNoHmfRQBtidGYk2gLiYaCcQJziPCEL2dZV3tqVWgwxUUeUEbE5lJno94Ybzt2dwJ3flUVZNxtYsmM1yak%2BW%2FMl7YvTPYZo54PDvP7fxP7xaedNdZJIdMsptsvwJFHt15rjXRTen3%2BM5causPhPPywrExldPKKdOJhCNlz9B53xLaUPL3OiyBrhfOIaF6mpu6MMfb5yR86uAE2L41dIq2YkSkmPKGAe0jarxdrgOyYlSZynfj%2BhRLF4gXnDlW8Op6w1AouOtqdNH0ODCdgWtmUOjz0eqEkRyAavnqTrg%3D%3D&sign_type=RSA2&timestamp=2022-05-10+05%3A00%3A16&version=1.0', 'ALIPAY', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (49, 1652130621327, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"202251051021327256000\",\"trade_no\":\"2022051022001443081452795994\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"onQbOCKuKYm7h3n8V5eRDIU+PchhJMOYx69Qi6yc5r4xIz8B3+USKoJfrimvoVoui+hjSZN/74WaGzvaBSyZoJiwIBDLXddyIkf8NejmiYKkQU9V0fcshvOz8NN/ZvjHWCYcj4zyvvvxNWiI/PU86dmV2bKKZ+zp9fjvFJpqmPWKhNjtAiOet06GvM5d8R6s2Fn9DfRbnmLjPoOQVuhxqxcQJFVssOB2kDISlC1k2lzLRzpqcMfdnq7GJI8549BHuuRlFQEGN5jbmsLfjL6BAWhLw8hSdlRkplh1bn7RxaNF/FpHc2GM2Aj/3V0vVzkIRF0dHdF35qawvHGkS0bpkA==\"}', '2022051022001443081452795994', '202251051021327256000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-10 05:10:21.302000', 0, 1652302791414, 0.03, 0, b'0', 'ALIPAY', 0.02, 1652129991414, 'FINISHED', 1, 2, 2, 21, '', 0, 0, 0, '2022051010002001080595991571', '202251051021956467000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%22202251051021956467000%22%2C%22out_request_no%22%3A%22202251051021956467000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=mN%2FE2srO%2Fl1smUTCYDd6FGZfkjNXoh9SPAoVsC3aLanfyVmjyGQSCLMgwKhAWSC7WA02H3uuEsaBGZ1WU5Sdi0hLyICynYN2NNI0gvxqZ4uBK%2FmpwZm9Yt9i4z0vP0pbmz4RnaNPcXeoEA%2FL4v2DHMW9j2KfiiSsYA%2Fo0cwKe6TJZm3nA1e3N2dkoZfXK8b%2FVBho8yGhwmtLB8uUK8p%2FTwxgMRy0eC6WZxbGUJ4L9qMg2VYGM%2FIKE7LYN%2BLJgdwVqIHfD1QHeTcY3k%2FswBbtdu%2FW%2BJt5E5Y4AM%2BRK7V07ljdUEQPcv7Apw56uhOXz7rV9HHNy9aElb7nnr34tjLYZA%3D%3D&sign_type=RSA2&timestamp=2022-05-10+05%3A10%3A21&version=1.0', 'ALIPAY', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (50, 1652132195103, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"202251053635103960000\",\"trade_no\":\"2022051022001443081453617557\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"lv9c+t71CyZoICQ9hctfuCk5v3t9r/wnbuT/6/JrTeW809Y8lYPm/z9sABPNmNgNcR64Xs4NPzISOWP/KV1Dfam4mw9ZK4v02T75fUGZPBSXEnVkI8XTEi/niSbMK2MwvkZNUX/6v1yd7Z/6+aMCmCa7ZaJ8WLT/TvfrmZjXLbFOlnRf+9jgUkx7Pqel0XTUfmrzIGW9nw1oOEkAvlFLmC1FLhzb8ddasbVEJKuZN0jaAEdb5wdmB2gg/9GcKLQCW5nP7SJ5rRQJ1WC2UtYPoAse6mTlxfhP/fIH3sMF+WxOyZUvNFh8F5ZU6WGnSax+YjY7PbrJ+xLoG2WSpJ9Hvg==\"}', '2022051022001443081453617557', '202251053635103960000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-10 05:36:35.067000', 0, 1652302791414, 0.03, 0, b'0', 'ALIPAY', 0.02, 1652129991414, 'FINISHED', 1, 2, 2, 21, '', 0, 0, 0, '2022051010002001080595919804', '202251053635396483000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%22202251053635396483000%22%2C%22out_request_no%22%3A%22202251053635396483000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=J9vAAOPc3dxn8xUG1TNsMw1J%2FsBV%2Bimof3OikDmpY0bvVR0CtOCwa7njURe6VxXVbiZlnxfWN8viuYUqNzkPUXt2wjMRv02z%2BTUlCLpuX1YH2ocjwErZlN9T0VelyaEDvI27oKjdVL%2BaLI841TxDflz%2BlMeXveLTFcuUiOXovjIqvtB%2BxAtfL%2BKRt%2FWR0lHrAVwBuWRW25kMsYdTh6hLFgbh%2FVe2TpWN%2BektT%2FtFzPJmdGcw1iy1f4p2cGDNDURFSnM9fSdWAH0J5sWohwXvDi07DWRlYZHitOB6lh8FbmetqfndKmxDf1tLJs9ZAE2%2Bq5kSJ2V13iZHU7xNl1WTmw%3D%3D&sign_type=RSA2&timestamp=2022-05-10+05%3A36%3A35&version=1.0', 'ALIPAY', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (51, 1652133834878, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"20225106354878383000\",\"trade_no\":\"2022051022001443081453669128\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"hKG4QBUQQLB5ZBQYWNS3KotyZNFTUWat1lPvEiOyjTXQouXmtSd9Gw1DIqhF3MwsVw+9eazju6Xe3wopu3MPhe3KCdoCSCEqB8d//ZQGqhw0dYbdF2lJjD5Ox8idX7Wn2/0dtp6q7hjm0laBrsSNJ7kvDa1TyyTe5r7omHzB6zM27smylwiIJTo85ECACR8eybeB2TjNdpTNnJ1l1wSbgERJA2N9ucWgXfph+yVE0hUSMtKmYg1qqnRE4g/PJ0614ZtG4pHiEALpG2sAEbYKZ9viYw36+srzX//JfZYKbOA37siY/WFvru/17Mn6ozo0gjwX4LVeJR4Qk1A4sso3dw==\"}', '2022051022001443081453669128', '20225106354878383000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-10 06:03:54.834000', 0, 1652302791414, 0.03, 0, b'0', 'ALIPAY', 0.02, 1652129991414, 'FINISHED', 1, 2, 2, 21, '', 0, 0, 0, '2022051010002001080595758124', '20225106355451746000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%2220225106355451746000%22%2C%22out_request_no%22%3A%2220225106355451746000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=tP4Y0RRIihAbXdopkW9i3ldLp6R0zHR7VoKFIrmtUV9EDwnOrOq99Ht0NIvjO%2B5M7JcBwtiU6RRw4b6qfenaVpgPEf0coYw3ud3z8afQi1XxYhIsoEs%2BYOH%2FrzLG59Huwiax6GrQl3DGxEXbjzCYy8je7RQ%2BWooQ1IgfSsCo%2F%2B3bBupDiLEjPOFK2mPwSOrv%2Bu5pIxMn2%2BcLItXDRtU46KEt5HAcfhpp8Ys0FJjQu9SuOBI1FwFEOBu1C24nPmExsibmK%2Bo0T7x5htWNuz4r%2BzRU%2FOZkQE0lr32UPXr12u3PPREJyVlNIPoXi93NUFA1PpX73%2FoYSQEKlMgBy1tEZA%3D%3D&sign_type=RSA2&timestamp=2022-05-10+06%3A03%3A55&version=1.0', 'ALIPAY', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (52, 1652137817325, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"202251071017325152000\",\"trade_no\":\"2022051022001443081453697236\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"UZJ+aD2Gxc2cw/8cxmBrXFY3J4wn0kQ77BqnaDGTJa7PcybJI9fUaemNfRuwV+Ukw6Y0Db7MiUIY7u5ZrWJiGIoa2wdn4p6SygBZDAgHkC0sErhCAD2lXdOqGbUldsIogzmPA6zBybtrcFmik3eAXFqk5+YnHYzK9HtICM9BaN8Xo6yhnrIz0RACfsOAVcyFo5twXwGno2gFqz7C67sKL4utwv0/5sMq5FUPEzh8qMXaeTa6sIKI7KmZBITcJItIsQWPbCxdcmoZNW46kec9CnPDTE+rovBtCQ6sntEYp3Wk5LxpuJkGNY2GKuTgJC72JiRLS2YcByTVSgP9NUg1/Q==\"}', '2022051022001443081453697236', '202251071017325152000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-10 07:10:17.300000', 0, 1651967579000, 0.03, 0, b'0', 'ALIPAY', 0.02, 1651621979000, 'RETURNING', 1, 2, 2, 21, '', 0, 0, 0.02, '2022051010002001080596027862', '202251071017802554000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%22202251071017802554000%22%2C%22out_request_no%22%3A%22202251071017802554000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=uvG87ZG35EJJJV3Yh405KapeRb1TCEi6PiS2lh1cFFFe9F5RnjiFjWz5tKxbu3cwPEfTXxwW88YBro6iHFthTqjkF2%2B6ytx%2BQ86Itml9za7iO25dm1i7PKq5Mg%2FS7S3gGSd6XU4%2FzjVwAQpcBwq%2FCn5104cZc%2FovaAjujVlXIOBCWUm%2Bj%2BjixdBwRpNE9a6M%2FXWcc3XfVplOGArXA0hnG8CX0ZMKkOb9%2FsgdnGFBL8Q4OTjy7JjrStsfhmmaWqdESKtG6wT6tLlnCrxt3nif3uFEKtlHFvku0j1nh6Q70gxNl6QuOaZnfaPKgj3KPH6BTjm2mrZ87JR05T6Nc44w3Q%3D%3D&sign_type=RSA2&timestamp=2022-05-10+07%3A10%3A17&version=1.0', 'ALIPAY', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (53, 1652329104620, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022512121824658132000\",\"trade_no\":\"2022051222001443081456396412\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"WuLbT/IyVNNniJX45wjvN40QED7eMU6wTw0Um6Eu+FdYNmPXo1ul57ykU+VZRPG9XcFFp6UOBmWE1LaBl6wrbyvHEvzxicURpwgFunmTgQw1ygivdyQHgoumqx0s0rS4xg6uUKJYnb55vGVQAxsp8Att6ZHw1G93ZF9wojQ7QMsX1X2nGtfcUex4ZcrdVJPkM/ql2jiQ5nm4FdOJUIf5cTT5ueonJosEAxC2Q9irfCCyyjKroT16rbJIMa2f4gbGsW2U0CHiVdRllMzMH1IjDBsRnDaS070iqZPnvTfRnmPt8AxaxvuUHrxeesTdtciwdlv1IVSlyg1MmE5bIzYPzA==\"}', '2022051222001443081456396412', '2022512121824658132000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-12 12:18:24.584000', 0, 1652501790016, 0.03, 0, b'0', 'ALIPAY', 0.2, 1652328990016, 'USING', 1, 2, 2, 49, '', 0, 0, 0.02, '2022051210002001080597125718', '2022512121825112927000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022512121825112927000%22%2C%22out_request_no%22%3A%222022512121825112927000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=Np9BmGts%2BgYqf4GJbjEQe5VihfMhoeLJnzH2cNoPQY3L7hT0ZwwpFXAIzfB1f7tOVPw9C1J5Q1KPowjmPn2M9sG19F%2FZBKLdfND8DIBYFHvt0dLb1CthY%2Fd3b74WYfcN%2FoK5%2BEseuwUMzxterbEnKU3qGv3tFjGuHp2CVZqtVUDkRHXukU7T2ZiLAYWU%2BR6X0LMP5sNSxHW4JXUfu2YSay1WDIvmCTed48dBWmAsTkf5bon4sszEratBJZSVVtBfMwfTj%2FMq6vhjQebt5LFy4pX1ZsCQHPGurR6g5W0k08EkZz50VPl0jt%2FSE7GIFc0ylfSHIYNHcErRJqdJ3%2FoKxQ%3D%3D&sign_type=RSA2&timestamp=2022-05-12+12%3A18%3A25&version=1.0', 'ALIPAY', b'0', b'0', 21, NULL, 9.00, NULL, '2022-5-20-12-7-6-1653019626182-公开账号.jpeg', NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (54, 1652329290044, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"202251212213092230000\",\"trade_no\":\"2022051222001443081455621567\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"upGPmz2U3rsFtKfe6CtNCl5eQqlGw2yS8Ka6ykaWHqlPpOgEYPBv3fOtcdPfIH8ht7LW4are5EZU9uyOgUD8W3Lrv6m39M0dwJz2TdbzugzDwVNwZzWmSrusLF5WDm20RfJ0kYw0E6fzc3b4urfC3dnbbLaHbd7lTAyDMEJtvKG8COEmlRpZCKWQTnVC6Wr4M4zwDQaapaYQR1e+xxVZ1xqoRRW6vJYGqoCXlD4C9vSoXD7WmetiLGmv8YVlE8v8GTnLkHx2xt8vF/OQpilwBHHy0B3a6A/1Va085Ab2CRhRwgJ0j4eKIW0YtsHpOkc6m/ZXbrsddtI44lvMyMtsTA==\"}', '2022051222001443081455621567', '202251212213092230000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-12 12:21:29.982000', 0, 1652502053934, 0.03, 0, b'0', 'ALIPAY', 0.2, 1652329253934, 'FINISHED', 1, 2, 2, 50, '', 0, 0, 0.02, '2022051210002001080597243990', '2022512122130376280000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022512122130376280000%22%2C%22out_request_no%22%3A%222022512122130376280000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=KGIbUfAxbYrZJxOpEBYjR6ThPEgE3FycjHdtLzLp53LwAvieXhZLMQmlMGPw%2FM%2Bh4tPCcG%2BaMA0pacWQsGRZlaSnyy4%2FlyLv7t%2FXP6WGs4mtxOoKHitYSLPsn8Oppxc57vf2iD6XCmKfG27SJ3V2twi23L6KoZgUt3BaLkFhKiqv9qsctV95cDRxBe4de61CMouwWgKN7hneua%2F5xtuAGcVcY8aF9bdOgdip9bLo9s9rgYIuzPjhoZTU0g2KP3p74Q9VwTMOTqPAi1G2233uc9nDgUYuZlHgKfF5VVSNNwCn5wphTwI2gZMLe74%2FHXcnGD5iegwVxBms7KxUT8SyDg%3D%3D&sign_type=RSA2&timestamp=2022-05-12+12%3A21%3A30&version=1.0', 'ALIPAY', b'0', b'0', 49, 21, 9.00, 4.00, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (55, 1652415866340, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022513122426340261000\",\"trade_no\":\"2022051322001408211446365076\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"g4OQvuvbzOKNBFX7lQ4LM6xULzMMwEEmuysQzN/qXXycR7Xj0XM3wTBFyDwAs+cJNJc597MUUX+/FeiDne/mX6aZmDJt2wtboEuTW7W52h6BobG9M4jfoML87s/acNIP/lXxhORhfI02huu6tADTY0rSmYY3pSxFT+2gyHth3mZlxMT0TdbVwt/BuoUPxmH04FyTUdxBWhM3IPxf3xKB/PDrfIWtNV2DDsZr+OLj95NentasJxUrfq252Zr2nNiKiq9PsXaDU3mR82HH8L/wwNswFqNartrbphat4S4TjWAig6mSYEY3HLSFymgkjTe2VH3ZWM3oThHKS9aFB9Qngg==\"}', '2022051322001408211446365076', '2022513122426340261000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-13 12:24:26.294000', 0, 1652588459752, 0.03, 0, b'0', 'ALIPAY', 0.2, 1652415659752, 'CREDITING', 1, 2, 2, 55, '', 0, 0, 0.02, NULL, '2022513122426663505000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022513122426663505000%22%2C%22out_request_no%22%3A%222022513122426663505000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=g2ANHzRlSsueoPAMUc6PPFP8%2BsCtcP2mpVOD2clGBTGMqZKaCh6M56W7wHP2r5RXBSXsH9xsiuB4p9KRnbWtLF%2B2hf8VqsrobG%2FiEFrPFKw32S6kH3DMKP5Gv8jeHWp396XJTqkplwHT6pmdHiwr0COrNNMKYRbnFeizKzilmf95gThBtlHJLAedhm21r83%2Btp2pokrly3JOXiSgOndKsWzOj2koL1Dp27AHXCo%2FhI8%2B6rxWrQsnHiQFZ7NVeWZLvv5KkLDasIFo6YB8%2B%2B%2B3z6zIZ%2Ft5vMF0fhCQg0ccGauI4Gx6AXSttPWhOj29VKYGd64bI1kBbTRo3Kpc8dopbQ%3D%3D&sign_type=RSA2&timestamp=2022-05-13+12%3A24%3A26&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (56, 1652676502631, NULL, NULL, '305742{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022516124822631743726\",\"trade_no\":\"2022051622001405731447404750\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"OfWPTm7c8sygHuKF5DlZuWVfyNMoQpf/L12nTGkehlHFii+GaprDupbn4ie/A2kJnIrOgT3xlKQYHKlyDEOo/rmzPGZePHy/1r+P9WzbADi/K+SnxhacUkvR2Z5sBKMJsjIw1cB0cdalzBzxPYpzZ4UUHaSUhuPFLog3dxYQTS5Fy1t0I7o+ET8psJezfaiK34vJWM5ksFZH995bUkTscH/c3XXqz/PEuKDt5Y1K51uocBy6s6DFPpVCeXhBgJllKsqrOZH5zWnQPy2oThb1mAEY7hwgZ+fEIWs+grWvv+wpZZQqabAsVw9fZi7/TkAjxFswo4N+YtKsbwXODnJxIg==\"}', '2022051622001405731447404750', '2022516124822631743726', '别克商务', 285, '2022-5-16-12-40-33-1652676033507-微信图片_20220516124015.jpg', '2022-05-16 12:48:22.615000', 3000, 1652803200000, 0, 0, b'0', 'ALIPAY', 285, 1652716800000, 'CANCELED', 2, 3, 3, 58, '', 35, 65, 3000, NULL, '2022516124822886249585', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%223000.0%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022516124822886249585%22%2C%22out_request_no%22%3A%222022516124822886249585%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=Rg3iR9pHrYexTTOhminTBQegQQDQqKAtZQ5CHXkM0pDHI7w6OuR9l9AXD8ensTkuhcFwSnF3jBQIuBVb2gGeC4qvS7p%2FrkRlItV02pqv8ZacEanGqffJ0d1L7%2FUzRtfjByqeJX60bbqSsNGQNXr0Z9itRTbnEdk29GQN8WvxWYdqPCqItIf6l3jWhsnu6z9JzGJ6SS330CkKrG4qSVWFfxRKSgO%2BawT8jZ0PYSsK7S22aHQ6d5iWTFY4NXDgq%2FPtqVscwl96AYOopKGoF3RgUF8OT2D1%2BjPFRRQ5sI0qi2d8QU0hjHX784%2BdmN2dR50VNhycQJOxibtAATbd4Eb7rg%3D%3D&sign_type=RSA2&timestamp=2022-05-16+12%3A48%3A22&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (57, 1652676917728, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022516125517728854628\",\"trade_no\":\"2022051622001405731447442736\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"WJ53DC/ew0KMp6pR4wO0+fF9wmlXDcKOJmsDf+OTw7440lfLTx+iRG3GlrvTn4U/igSJ8CawTQZwK0KwIdiwC6n7qL94oE2yt626pyUnKRpYIK1sdSvNFc/PBUqLWuJO6cyhlLRQsNy4KqWGJ4EIhp6eC5gi9qt3hXc8ky3oZPi2xx1N9Uq3WSUISAQGD60UOZ0LpFEV3m2TDiMtHR54As4/ShsTzlW9FKGK/iZW9hEWp/HBVAunUceFXqJ/UAQaHnslFl8vQsF3nRqF0rebG4OOpUha/k/m9vY5K0ZUaWUp3MLMT5DeuH4hDgXnzq1Y0R48EvjbGdjkfZzpIY/oPQ==\"}', '2022051622001405731447442736', '2022516125517728854628', '别克商务', 385, '2022-5-16-12-40-33-1652676033507-微信图片_20220516124015.jpg', '2022-05-16 12:55:17.723000', 3000, 1652803200000, 35, 0, b'0', 'ALIPAY', 350, 1652716800000, 'CREDITING', 2, 3, 3, 58, '', 0, 0, 3000, NULL, '2022516125517920192750', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%223000.0%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022516125517920192750%22%2C%22out_request_no%22%3A%222022516125517920192750%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=TwysIumLizhah6LiJFnbbC%2BYY6VYF6WSUIRemichILu7HzCLFfPHjUpI2vp9rgXOrUVoVf3sVW7xyXxYScD6i82jlIwRLh7Hxpas%2B6kysH4rKQN17wxQTCs2BWFbG%2BT9drOpAPbMfxRrq0cMOKcbOehzvF1%2Fr7VriwsG7WAWCJtRX9hpKVT04gU2js8jLTL3zj0LvfoaLaYFVOXaCJPSKsZ3i4P5BHo%2FZagArmShWf%2FrJYK5WhSCUguyfUptmN%2Bljhj%2Bw5DHIazXh2Z6L0usMqrKhotXfuTjDSiNPVIcs%2BX9JU0xT0WZ%2FXFQPNg2OYZSC8dAsHv6Fr%2B7yOMIKzvhng%3D%3D&sign_type=RSA2&timestamp=2022-05-16+12%3A55%3A17&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (58, 1652677229170, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"202251613029170525369\",\"trade_no\":\"2022051622001405731447382612\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"mB1S7NlPRtEb7NKOwYcKxRFuw7s9aoByvwtJlWcW2U2aGkYdYvqT36P07Veyuo0OVWtVA5pdhI2wW/DDrIIICJMJCZukVTjN9Np3K0iujEIXyhZLhfeDSlIcF9ck8tdsra5VjiFLlu0visHuL8YIx5DjTG56J0NJrHemBp9LxYYPmeSw9hRZwh/MTvxtxmtvz67BrH4op/kGF60fVXGeWpHvV/mu1WKCRo8t5+fQ7xlW2vraCdGgN9oO7wpM3iAN27ELMK4oXOSYcJGndSV2pNig4ob6gNm7qJ8usBEWBiwde/I156WX5g7NhzNauEf+ntLIaJGcdGV7z7SPiMfdRg==\"}', '2022051622001405731447382612', '202251613029170525369', '别克商务', 385, '2022-5-16-12-40-33-1652676033507-微信图片_20220516124015.jpg', '2022-05-16 13:00:29.166000', 3, 1652803200000, 35, 0, b'0', 'ALIPAY', 350, 1652716800000, 'USING', 2, 3, 3, 58, '', 0, 0, 3, '2022051610002001730580492810', '202251613029406225119', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%223.0%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%22202251613029406225119%22%2C%22out_request_no%22%3A%22202251613029406225119%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=yIOPrdb%2FM%2BaKiYMQS5Xxfe%2BlTL1Q3Vovr2t1O9DbPqEQ5YCnYC4ZC%2FNMuEljXBkcu9HMDDToyLS%2FwD9njqgMVmU0hDv%2FZzT6pawo5zEK1yq8LdSO%2BlcW7L8nByYeo3uW9AMfDpoZVImmSeEhR5zpClGOugkX0ivKQYQah%2FIHrndcYm5NClOIy%2FdBc2wrNDA%2B1Ow0SNvSJaSmJD66f4vXqSc08ZJcKfs6%2FXshBTWLvDdWyTEwNhGsu4%2FZF4V9gFF21XEx9qvlWabfrnQhx7FTAnZCNcQGdGRp8DtehZAxZ0eWgeVvYmCos0cCqIOmHvPZx7svflMTfLCeP0qw3pM2PQ%3D%3D&sign_type=RSA2&timestamp=2022-05-16+13%3A00%3A29&version=1.0', 'ALIPAY', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (59, 1652677890751, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022516131130751984076\",\"trade_no\":\"2022051622001443081458848264\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"kaco5E1l/mm7oKHg2mU60oV6paoiQSiSB1PPFta2aa2Cltr/5Hf3uFzo56hIBFdGiHLh53CDwKWwzJxAcy3UviA04CtG2443SKtGCiLuc8wWEDRvzFH2beHJDN8nb+vBYoWC/ds/fjHTK1tpkpx5hkG9lj2XdXQS2kdwFOJ9oWuaNUYF3lc0iJ7RycBtoiaQepf2Z9O51LzFWuTQfolhkWjBTnnC0FwmWn7k2Ki9Z9AqNT0weq9NB50S+rbJzONOsKiVqaV+VgAKlaY+hdfvG3S0YyF73I8JiPlcfvA4BOmuEieEodTKjGBR1osdvPZ9kG8mUS+TNpRlW4KD2Qi52w==\"}', '2022051622001443081458848264', '2022516131130751984076', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-16 13:11:30.748000', 0, 1653711488880, 0.03, 0, b'0', 'ALIPAY', 0.2, 1652674688880, 'USING', 1, 2, 2, 21, '', 0, 0, 0.02, '2022051610002001080599488320', '2022516131131178788799', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022516131131178788799%22%2C%22out_request_no%22%3A%222022516131131178788799%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=rN2FPIo6KkmzYGqinjLwM8YqILlDirxgofrURPiShZtEg8QcaIhZ5Yo5Z0Z4sPQvUxiQg%2Bq5dnvehrhnKLaacW4z4o3zkX%2FvFuPRatWPs5ve7SZVARF4fOj4MqFnWLoQXTcpsrQnClXwkczXy%2FUdcHB2OcJkcBt%2ByK76h44wMzXIzDiTYD1HlyzKE58LZZzxNfuuV9JGPChhaeJiDw9VO1Ue%2FTI16JzvCY00FwwNhqP7uygCMo%2B%2BPStNgnUgJzz0JzyRZMldprjH6DdE5aN0rP80YIV5DgIiZYeD502eKgnwtRh98oPRpQugET4mbYp8n37q6o%2FUywb62tHw2M298g%3D%3D&sign_type=RSA2&timestamp=2022-05-16+13%3A11%3A31&version=1.0', 'ALIPAY', b'0', b'0', NULL, NULL, NULL, NULL, '2022-5-20-11-34-46-1653017686721-法人正面.jpeg', NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (60, 1652682331141, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022516142531141305742\",\"trade_no\":\"2022051622001443081458829728\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"uvYTGmP7qwBauaw0PXLSfJfLL6s5KUS8k1kp7hxkChwpjCvqn524x+Zg5NsePkcE/PtJnIy33pzLxlbXsBLRwrAV+S+74hnlCC3kOB1zEeCeL+2/zFmcwGeezoHX4qsviAakwZHceVz5xR2bo01wsGl9V/iFeeR84qpLlW2aG1J7aPtfIrq9KGTS36x03ijx3Yuv1DSma/g5qLX6dwU1rE7Bitpy4j+OVjW2fD2SN/tz1Kj0m+946v193IQ/T28TNrwpfCZybF7HGZrgKRihFtKDJb+7XkqG59CzifJYY5xASyfdQLp3J4fI5qS04rc/L+cvoLpEEC0Ik6Je4Z+niQ==\"}', '2022051622001443081458829728', '2022516142531141305742', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-16 14:25:31.137000', 0, 1652855101959, 0.03, 0, b'0', 'ALIPAY', 0.2, 1652682301959, 'CANCELED', 1, 2, 2, 21, '', 0, 0, 0.02, '2022051610002001080599484937', '2022516142531437020792', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022516142531437020792%22%2C%22out_request_no%22%3A%222022516142531437020792%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=Iryax1jAU3MfwcuhwXfHpt1uBDfZy704qjMbxmXH%2BDmcsFqaHqCJs4Sm9xJEbq8qWqZT9ByxIOB1FKGV3rHbYaordsQW%2FuQAVqww%2BiTt3NBrzwvj68c8FPBR9OtQvjqwqM55DrQ1uz5Q6RJmcG84dzRupfT%2FdQcYAyp9RWoszcWc3eYikMqkceUMmn%2FsWGomNEFg3w%2BYwQTAwjjHoXU3l04QSDmtSjCCn7iDqoHfbOAB%2FhkY3k020SxRHW2lN75g9GrNiIJj6DgvlMcQftpRrV0yDJylmqfD7yMObgA0ifrEzxnWl%2BG68Z6SBo1dqQI%2FXbJBZRsxKSuuMjVUJX2sbA%3D%3D&sign_type=RSA2&timestamp=2022-05-16+14%3A25%3A31&version=1.0', 'ALIPAY', b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (61, 1652840030427, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022518101350427759238\",\"trade_no\":\"2022051822001451691455040789\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"WUcWG4YpOV9yxjLeGBw4VsC+xQR0cc9Di8Np/nu55z02ZuD2ejhKYTfvxFhMR/C/tEpwT5H3agqFAehK3vBHTcgpJge8c5ALw4mvRcrsnaCZNv9JkrFK5xMkgx00WWW88n4QarbYkCzOdPlgFHJQ+dUWmFYAI//5ZCDRKr5duSakfi0lT/meGKovOnDO9BrQ89AECYHk1kWqdEelPHqqx6EJJ/SLrFU7/um+n6EaK5+zrrTRK1WbbN0LVxtDlC0XDHKyAya31xtSaLfYKJ/3chG8aPsxZMZWCaPaOtmbBkiRBJNKNDYaoRW6gdkUlv6G1wxD0jO3aWFxzuh75wgmvw==\"}', '2022051822001451691455040789', '2022518101350427759238', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-18 10:13:50.417000', 0, 1653012784292, 0.03, 0, b'0', 'ALIPAY', 0.2, 1652839984291, 'CREDITING', 1, 2, 2, 64, '', 0, 0, 0.02, NULL, '2022518101350641110610', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022518101350641110610%22%2C%22out_request_no%22%3A%222022518101350641110610%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=vnuEeUfKYwfno%2BCxjAq8vSpCGAuvKpXHoQcZtGNcheztqlgYIe2FK6pxA492%2FC%2BGK7LdfhdojnLNXb88BJvWmPY0raReHWTze0jd8RL%2FquvnrYweq093p0ZWmtaDDqUHU%2FGj79AmJ6Lp8kfla51M22ZF9I7a%2B7dBhiCEmutK0Wkv8NV9CpPmBhrwJ7obLvdXSaeAxh9xV%2FZZskvKTvBaWXAwDcvgfsw3rRCUd%2Fue4NyvfKb8j9oz4%2BsC5PcjvQvsS0iGDnJjcL8dXs3x6z3cVtx82ZLm9PBHB1UyW%2FM17UKz7F%2FD227wyvYiwrE%2FdoIXt3Vx4dPjPFPJgBjqP4JRCQ%3D%3D&sign_type=RSA2&timestamp=2022-05-18+10%3A13%3A50&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (62, 1653018095491, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022520114135491969000\",\"trade_no\":\"2022052022001443081403978046\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"fglRDG92JKx5tw1lXwYjRmRUjdcb7fVaT9YZgE3yDlxYZjNdtW3oIyhM+xUeP0oPrXv2DfJ7MAxxRIrVPqd5yN7tDI9Ba2c2lAQg5gfScxj2suuDLob1AZXHey+I7l7XLgBrHAFmU0SvExUgPe4Hg3P/OftcQ71Luuc7mUCGiSELnw6Z9KtdQLhUC8WB9F2CTKh2EUCwVmQdDk6HkfL8HPIFm8/uy18uJP0n8UU3aCssElTstvQrRnbnAq+po0jyHOmNx5fc6/P5KMFQ92nWBrPpLrczKrUcv/wC0RREsZLWEbdqAslZy8WsO5ITEoIRGb9VH/GOwwA1uSTNDjUIaw==\"}', '2022052022001443081403978046', '2022520114135491969000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-20 11:41:35.460000', 0, 1653190852784, 0.03, 0, b'0', 'ALIPAY', 0.2, 1653018052784, 'USING', 1, 2, 2, 21, '', 0, 0, 0.02, '2022052010002001080502074699', '2022520114135875311000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022520114135875311000%22%2C%22out_request_no%22%3A%222022520114135875311000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fdev.a1001zhuche.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=FfIvV6wZdqDFVw7z9Fk7yU5iwQy2xXSyG1kQNzPpdLogBu%2Bw48wJ%2FzxRpvFUHuQtYWvoOHnl1J2iMYlgeEI1sPqNK%2FgCsFOKVP%2FljVIABsdlg3D3UjMiyFgvCk0occ3VwOgSdiMntcbJwN2k0pP7NIjAQahwtTGDwFyQ8sR5VUsENU5CVpKPtBQxKXEEkyWER4B2FNZq8TXmNDicMVjQRuLwbipobHnIv3s4tQJKg3Dz79OtyukpydxnWVtSe5S1ms2twy5Qmi49PYN32JDA30R3vb8dnjYa5xuykqcYNDvlF8m7cXI%2Fkyr1PN%2FlTI47Glfrv8BxoCkCP40QtED6lA%3D%3D&sign_type=RSA2&timestamp=2022-05-20+11%3A41%3A35&version=1.0', 'ALIPAY', b'0', b'0', NULL, NULL, NULL, NULL, '2022-5-20-11-42-59-1653018179777-logo.png', NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (63, 1653020517174, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022520122157174494643\",\"trade_no\":\"2022052022001492081408332259\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"JSvoBxBgJueolJm108CrOSSztWyzmzmS6uVhsYsFPAMhMiLTL/5xO27B36rhdfqzizcft7McFKqBOtOzZQ3bhiFb1paLt5DPHyqy/d7AZvf3CefnnMEZ5+uF5Q1XYR74utrWLyiC92W0I0FO3K8/HIPXkPmR2v3EWP1kho3h9C0YOo4/S6n6+cYo2MUQaHQyDdBxlkK8Cgn+ZXul5TuCxJf0SUrXfqVB5vQl5ynfYJbH0Ked2aqvKl4KuPNz2rdM0OWpsD7DZwwFb37HnP+BGYxAA5eJ6V/snbhevjgcGLHaDhbQyeh8hEMVEa3oVHypYeBZKjBUIHnP9RGRq0++9Q==\"}', '2022052022001492081408332259', '2022520122157174494643', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-20 12:21:57.166000', 0, 1653193216254, 0.03, 0, b'0', 'ALIPAY', 0.2, 1653020416254, 'CREDITING', 1, 2, 2, 67, '', 0, 0, 0.02, NULL, '2022520122157457061781', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022520122157457061781%22%2C%22out_request_no%22%3A%222022520122157457061781%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.jds.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=rYB44t5GALncx5SB%2FBx0upI5IpJK%2Fp5fpYOGQhnLhFQ4eUkdaYHEXFdjdFjuc28dhaSlqTBJrPozWwI35YJkCcaXydiVU3gJTmakJdcwKr%2FwU3ILf%2FGzDy4VIfYFS%2FiBGdZq2u6aobFvNutL%2BKs2ymr2FQBZl1pcEkZNBIxqV%2FqXhIZg84ODgoD1fyJDnpSHhus9ShsIjSP0niAryHHvcH0kHGSvyr9EEYfGHrFLEf%2BnBspuNglVADRUp6DcnpZZbSmfDKij2bP4htBB%2F%2BRhmQAhvT9QVDzZEX46CNUK3Zqe%2FnF4pLn9fmbIB0BJ%2BXnWJBJFQjMfB5bo8vrh7VpOGQ%3D%3D&sign_type=RSA2&timestamp=2022-05-20+12%3A21%3A57&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (64, 1653127461942, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"202252118421943047000\",\"trade_no\":\"2022052122001443081405539166\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"kpORFllmubiNPS0aDe2xvDZgTedsdLpn9jXSjG9uLQkCu4sIInqNPAMFt0jto8IQIwtODRFPXxmmiVpPVdZZJqiCirbxzgiaVK8hAL1YwobzmWsz690zSHoV+FCxlzSLhPPavZd8PyxLHq7KdQjJTRP/kgTjAAInF2yt9TMz37rOAH4OGHYIjkk1McQ4Yn140vHxw2eHsgsKSQXIUqfRQ/rgb4gW/IE2vVxTuYjL3Had1EhP3ZhqyG0zGS91s4kukomjyompjCNFcpVxGI/u49jIQDI0D8JDTkKw7wdRRcULHSPlpcU/e899spSAH5YUDns3ucY+UcwzbqvFAC/4Pg==\"}', '2022052122001443081405539166', '202252118421943047000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-21 18:04:21.908000', 0, 1653300051147, 0.03, 0, b'0', 'ALIPAY', 0.2, 1653127251146, 'CREDITING', 1, 2, 2, 21, '', 0, 0, 0.02, NULL, '202252118422284238000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%22202252118422284238000%22%2C%22out_request_no%22%3A%22202252118422284238000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fdev.a1001zhuche.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=d8jMPrBI6Iax0f0MLsdRwyVfIuClJRQheRgJB%2BZuylXWySjAL4uxoO9pSXRz73tel7NTfKrgXnFiwlmVAk4sKAjXBTrfNpFrua321rIUzKFdlViZRza0soxaS1oC4tOODNfPN70qvQwAiMJRSoDOpZdUsfQxXuxOXJJYCziSH8a4ztIgp4GGt7COyzYr%2FMwXmhI5r2vkk3MP0OeaGCXWH7Wu%2FG%2BBLs99p2IUKplG1IsnvZmD%2FRtt3rQ%2BDyXkOGxFWMb%2FvhuiaCMuKyr8qvPCw1UaPf%2Bub3yEkZOFOGeNiD3S8EBQUT5ufgrcAfvhLiILB1kCXmP3yVtsthcsXxzFgg%3D%3D&sign_type=RSA2&timestamp=2022-05-21+18%3A04%3A22&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (65, 1653128091521, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022521181451521882000\",\"trade_no\":\"2022052122001443081405520904\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"QB15LYtoRiscKtBy5+f/WmIHvFnOxELKiNlq7HzQUqr7AZMdY/tA1Ml5o0JHz0m5VFZNyoTVmF+O5dWGd+1Oqew8KWBPGf4jrn8U+XtEpSUkcSfnNFlgCip/SG9PGJNP5PiYnmP5bpzrXT6DlIOg8/0FWbabUJW0T/VWRwJMeeKb0QOWeThWOH8ON/jS0ly57+YCQZMWkBw0vo+rGvu+m1ncjWsCDNxZxFuv56VCsANW5ds0Fzo2wZLcHx4x7uSRE3HJvBXR31Sou0FzjqfyF4Etu+sZekTWL2WPTD5VHbS270nfpdl/F5ppfF98DttFWJurHskVR6m/TQhF9FzlQA==\"}', '2022052122001443081405520904', '2022521181451521882000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-05-21 18:14:51.490000', 0, 1653300752843, 0.03, 0, b'0', 'ALIPAY', 0.2, 1653127952842, 'CREDITING', 1, 2, 2, 21, '', 0, 0, 0.02, NULL, '2022521181451873746000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022521181451873746000%22%2C%22out_request_no%22%3A%222022521181451873746000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fdev.a1001zhuche.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=OAaHxvbEYvYGvZe%2FHlkEBIZD38Nz%2B659ZnErUkhdVer3gLg1afxkKDQWDu%2BRB%2FQT6983rCWWztzwVanEV2wIzJwe9QWTQzajVIOrgQOSLSTVhcWRyFSkMpOk2%2BL90TTcT%2FCVMYNGV5u0VVXvCd9jnQiq6Wh4IM0EzdS1fwcThvRWxXBDQxUgs1ZS4qJPQBx%2FElS%2FePJ0i1uSV0hE6ZoLdAuawdoKE9VyFV3AAF0czMLJxDk3sb7%2Fd1Y5kTontTZT2F9UbF62XCxRoECZR%2BSs0eHPvUj5WBHqvyz1155dxw28%2BzCmepqeLoQ8hrJ%2B8w1I9NIGzNam9zphefVc9MvIWg%3D%3D&sign_type=RSA2&timestamp=2022-05-21+18%3A14%3A51&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (66, 1667726590201, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022116172310201753000\",\"trade_no\":\"2022110622001443081458984041\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"ngNsL2BGu36S6hZk8Pt/RuWPgjq/pSy0gUGKR0knNDDXnz4YseFCmR62Goke1FOpWq//C4VaG9iwICndLtLsYDFruTsTO5rghxm5SNGG7jkXBPrfEQufgIXUiGqJ+Xe4Tw325So6s+phVlRzbrj0Nw9dJV7Cud1ZeZ1iNjsXto3DMHfcNUmvyRBRghEfL77KSj0AV7S+rJY0nGGq54i+wEKkEbGr/Dsr9aP4TGMN1xDlP/z9XModH1Jehz7k4PJZyqtAi8wLMX7ysLhyk4Q5tQHSx0/fl4OFlQijNlxT0y/WzL86c+ir4zLZW0MhN6XSpK5l1vzhFenJ4fX2H2KoeA==\"}', '2022110622001443081458984041', '2022116172310201753000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-06 17:23:10.159000', 0, 1667897706047, 0.03, 0, b'0', 'ALIPAY', 0.2, 1667724906047, 'CREDITING', 1, 2, 2, 21, '', 0, 0, 0.02, NULL, '2022116172311691406000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022116172311691406000%22%2C%22out_request_no%22%3A%222022116172311691406000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fdev.a1001zhuche.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=ghUDtmOb%2BVfVYHcg8BSPdgVJSqlpBsmrcwADY%2BMPHdTBbtw0Zo1U8IZ0q4NjynNp5x%2FKtupJ16GqYX1DFcfhYZKp0UMMkAJ2SivH%2FeLwwy1jaWQ6YQdrlkqcEy3b%2FdOMrGDP5YsVEfLLD8w8oEJ%2Fl6F%2Fwy0umlid8bfjA%2BRponpwOtDbMVY1Tx1gFAjDLPG8ZQ0yd3NjtJEYlspA%2BAUiKrso2KkvO6xk42bPda2qKmhgGc3Co22cPPKOt8xcKDbr4KqaCfu58Ehfzufarxgu88eP6U1D0x7KjT9w1D%2FEgKdlMMlwv5ZPGoQ4ZXSu%2Bs2nnGRKZQhFR2%2BlV8M7nV9JqA%3D%3D&sign_type=RSA2&timestamp=2022-11-06+17%3A23%3A11&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (67, 1667728071606, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022116174751606263000\",\"trade_no\":\"2022110622001443081458218746\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"k7YQwgnCe/Qx8V+GWvNV1Ldu7FhvMts3SB5w9bIUylxJ7c9aauNMwLiTwpM4/XFM8i0mgXMqBD4uXXtHK/HzbzNfOYd5cbKX/ZynaxgguL4d1V4Sybcea5pQt+5yYNRvVfwBpO49vIUpB/5j9ldowmYwCo5Ik4GSmPsTf3lRybP8svOmhBeXRKZoFJY2e2vCGf/ivMhZS9OAb3YtivKqMq3vxOjTqBjmhLawmBOR/zGZmYIKwXpq/1BnHdM5tEFA4/gEE78PhUZaF6J3iwaLLo1rI9HzQqDtoenu5M4Iqh4avAJhaG7MYXfyRjSl6H5GMAE33PxTtf9K5KXWg/YMAw==\"}', '2022110622001443081458218746', '2022116174751606263000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-06 17:47:49.675000', 0, 1667900211739, 0.03, 0, b'0', 'ALIPAY', 0.2, 1667727411739, 'PAYING', 1, 2, 2, 21, '', 0, 0, 0.02, NULL, '2022116174757393983000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%222022116174757393983000%22%2C%22out_request_no%22%3A%222022116174757393983000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fdev.a1001zhuche.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=fKIse%2F401ROjuS%2BuQA%2FuGaIrvv27hWwutme0yz6ANelcDJ%2FGSefeyVB9gKdaenDUVS6QxphC3%2B7tv6%2FiH6spvzSPO3xk%2Fj9WoNo7D3mVD5HizU8uxBsyw6%2FUY8BqNSNquu%2FgJx%2FkPUeywKBeaG%2FH5LTfKPm42L7yHMp4MoUtK0AvECTmMA6Wdi%2BcoYmw9XYCsIFYQ4j7uA2NTPmcMI07Ney2brAZikAXLqZgyrXHGGxAmjx7hVM69nQb7gdRjICer2GOnkOzmM1Bbh9GcNOKE3pnJ5BeFNvRFREPRCgBHGzDiJgsvR3Yw9pooeYuWUL3thM7wBofQRl7fZwnwTMHDA%3D%3D&sign_type=RSA2&timestamp=2022-11-06+17%3A47%3A57&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (68, 1667870527082, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"2022118922782951000\",\"trade_no\":\"2022110822001443081407702060\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"UZo+dbLaMAR1J8yykbt+m/Q82hLxn/3noi7oGwSsrOGQnI/pNKH9xCGlEeo1DqWT+ujp15eNSZX/WFkRxf9RIvB7rZVC2GK71BcoLAA6kntA9y6+V7X2a2GwBaRkuLbjwVErsj4d/zMJz2MEgUi8D0AhmCB4XV/Mi1e29jQJK7Eg3FFAYDbWjT9slOG8/Gsx/BasGVpNDqF44ozthGmGL0oqdil1bu/724ADprxqLaVMX6z9OyB5ky/pDAcSR8kPp2lA9UXiAB3WcHOW6lvBZT9sgdOQOZ5WTt2aRlemOW0W8JRq8qNdy3UXCmOXVorVLgx4m4Rp0GJsG5AZPPAstA==\"}', '2022110822001443081407702060', '2022118922782951000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-08 09:22:05.877000', 0, 1668042637699, 0.03, 0, b'0', 'ALIPAY', 0.2, 1667869837699, 'PAYING', 1, 2, 2, 21, '', 0, 0, 0.02, NULL, '20221189229283650000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%2220221189229283650000%22%2C%22out_request_no%22%3A%2220221189229283650000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fdev.a1001zhuche.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=j6sOa00jU%2FqXBO6sgpgDVcfLm7xLILiBlWbvDJQr0lhvTAPTfBA7i%2BLxDyK%2FQsvhK%2BUzbdbak1hOwDIPtWuByTqUvmgN5%2Bcu6FsBPuRRi1NzZX64FX7D0OBCCZWNmrkbfp8nQEdfXVjfjvgz5tDEnfpg3kTjAQ6RxO2UzN7qTRE1hatZ5DMkU4TI7QuxK4i%2FzfnM6EfClcIOdu4golTzMEEc4fxJiVa9xcbmAxgo8PpYin9pO33Ma3AHOJ4G7kjnAdZANsblSaG%2BsshCxp125Bhzn0w28pC2JNHLJz4FdDGtB6FFcCwZdBeAbLYZ7JqHqYv8XAQ%2BgWy3bghgRa%2F6MQ%3D%3D&sign_type=RSA2&timestamp=2022-11-08+09%3A22%3A09&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (69, 1667870592885, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"202211892312885311000\",\"trade_no\":\"2022110822001443081407666396\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"DX8oieea3eksGgv29AoJU4uOhKfjGCheEIPO0hkUE5jkNdUq1xyUpznQfuOIjdjtPe7TVotcvta1gVyl/EMwuVbfojzbNgomBaHE+H6bjMyyDlSwllqlD4L1IYFVfhZ1Su5/9OhUCJp4Wb+dYn2tBAMEZA20Y38Nmx5eOKxNUJAYo1/mqLwIa+7EIUzXXCERZxAACSvQmjalllp0v4fRq4ABrD+AZjmAqtTmvFifHxgODFP6BaCU29PMVL94v04v6G1KQiBGqvbnErQPC3UxnJjBiKAgwrZgfjRljFsUevxUYjycgmgEBneVTXSb2bnDYWLq9LmC9+ZLE0/+6nsjHQ==\"}', '2022110822001443081407666396', '202211892312885311000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-08 09:23:11.135000', 0, 1668042637699, 0.03, 0, b'0', 'ALIPAY', 0.2, 1667869837699, 'PAYING', 1, 2, 2, 21, '', 0, 0, 0.02, NULL, '202211892314116521000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%22202211892314116521000%22%2C%22out_request_no%22%3A%22202211892314116521000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fdev.a1001zhuche.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=qmQ758vGgEMkEVaTk5OCG%2FGSCNVqiRN7JMibmtDVD57Itj41iEiC2d7tTyuqhc8qmaBGA7ji2OeMZwieCEvpXvr68Lve77sD9H%2Bt2XuCUAt9a4V64Ytlw38%2FJyBPHA%2BO79Kn%2FMpZto5TGfMzkOBcyfgSR9dYjHKA5SdPIfaBD62XRNHobgesm59rxx4JohAsba%2FzsmIIlR%2FfbLUQmNpsJi1rpCjis9mepegIMg6qW3ZJWgvboxzU0D8OBsEv5DYHV%2FCy%2FGtjD9HHlT7rHmkzdIk63hy3O0Qq8KFSqb9hRUVEY8bw3olhl98K8M3BfHhWZlL%2FBcpPyICrVWmpKMfeYg%3D%3D&sign_type=RSA2&timestamp=2022-11-08+09%3A23%3A14&version=1.0', NULL, b'1', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (70, 1667870824288, NULL, NULL, '{\"alipay_trade_create_response\":{\"code\":\"10000\",\"msg\":\"Success\",\"out_trade_no\":\"20221189274288161000\",\"trade_no\":\"2022110822001443081402631893\"},\"alipay_cert_sn\":\"570c961460dcc9ae00d973c2c0f503eb\",\"sign\":\"dr6LhEfX7mF2MZapvc8aDrqKxOsVTJ41exnqhO7CFVJQYXL9/PzZGX4c9KD7P6zQCOORd8yeXLt3seAnBZi7FjX5LH35Ds00keIo4OhuWA+Q1m39Wt1XigoDuUiL4jhCrJy1VcJHsXB0dBkMOk31C1CvcmrRyg0m4+e1qDdsx7W+R94m5XHqn0BaMsOniyYgO+MgIv9T4iJZQd0+hMZrU+VXjXHa7c4zqCC512bp8MeVDjeX/j6ZCyXs/sdHIaaATtZ7tY7RbqFw+7M4ay/CYSIqsmjR2oR6W+o4Pdst2fYb0oExE4RIEOFYnjp1G0Ht8qGFj1uLrVZZSbpMOtoS9g==\"}', '2022110822001443081402631893', '20221189274288161000', '日产轩逸', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-08 09:27:04.128000', 0, 1668042637699, 0.03, 0, b'0', 'ALIPAY', 0.2, 1667869837699, 'RETURNING', 1, 2, 2, 21, '', 0, 0, 0.02, NULL, '20221189275864018000', 'alipay_root_cert_sn=687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6&alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_cert_sn=55bb524e73daa4e2510071f111a3458c&app_id=2021002192682271&biz_content=%7B%22amount%22%3A%220.02%22%2C%22order_title%22%3A%22%E4%BF%9D%E8%AF%81%E9%87%91%E9%A2%84%E6%8E%88%E6%9D%83%E5%86%BB%E7%BB%93%22%2C%22out_order_no%22%3A%2220221189275864018000%22%2C%22out_request_no%22%3A%2220221189275864018000%22%2C%22pay_timeout%22%3A%2215d%22%2C%22payee_user_id%22%3A%222088241974604591%22%2C%22product_code%22%3A%22PRE_AUTH_ONLINE%22%7D&charset=UTF-8&format=json&method=alipay.fund.auth.order.app.freeze&notify_url=https%3A%2F%2Fa1001zhuche.wuchuheng.com%2Fapi%2Fv1%2FminiProgram%2FalipayNotice%2Ffreeze&sign=blQm6EnU3CeAkvyslfOYEIUxGtnt%2BZVi55xW8yg25GqyDGzGRemVZo%2FccRsqv38F4qe6MWaX90d5L6h88hlK4y867ka98roQ%2BTaljLfMm%2BdEfbUHLgBRYp%2FHGy%2B6W%2BWZbZQ1f6SQ%2B77k7%2BQobLppKsZ6NjydS%2B61MDLMkkJcr2o6VPqRRXq9fZEHJpLVAFGYpXZkA5PkC8%2FvI6RBzUxktw7IiPhB8B5eO4%2FB912oPjudpn%2FAdVJeo2aaDPsn5MvEpGqy0Rz7648WTsstTODW4PGOMMtI%2BoGkKrDS%2BPZn30HOqUOSisWTc5N3ZPErRRYSdBgOZDft1Kpp0g9X%2BIZZ2w%3D%3D&sign_type=RSA2&timestamp=2022-11-08+09%3A27%3A05&version=1.0', NULL, b'1', b'0', NULL, NULL, NULL, NULL, '2022-11-8-9-34-59-1667871299834-取车合同.png', NULL, NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (105, 1669404897968, NULL, NULL, NULL, NULL, '2022112633457967661000', '日产轩逸费用', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-26 03:34:57.718000', 0, 1669577674692, 0.03, 0, b'0', 'WECHAT', 0.2, 1669404874692, 'USING', 1, 2, 2, 119, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, '2022-12-2-8-31-26-1669941086845-logo.jpeg', '{ \"timeStamp\" : \"1669404898\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx260334584585801fcefcb5f1960b5f0000\", \"nonceStr\": \"rklmK4gkwvmVwFoJ\", \"paySign\": \"Cg72AL1wPJKO2eNgBQvRWQVDFtZRK5+EHTdQvhiGubyKULyrtKpr/61M6iCyy2iUbyyVHhCn6K4fzDzbgNdEg6A/eEbSyZJcVx8HCxjIQI8/PEuYSV4R8z9TvePdShNMljhWaxy1undWQ/CGmDaqZLAWEI8rvkdAgUATSgiZStEy4e2cajTsEmiH6DZ0qGJMFjMSJsmFtd7QDsVaRydRpuj713X4wnR/bZBm2yTJ0APpgChaqwZLU6+9tGb2KrE7Ym+gaciehlkdHvYKsxJJzSVaDCmNu+TreduDp3Ryten1sIaHqUQS7FYkOkWn9IQH9NvkEQJbf2irzD8qbSl2SQ==\" }', NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (106, 1669405311401, NULL, NULL, NULL, NULL, '2022112634151400956000', '日产轩逸费用', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-26 03:41:51.169000', 0, 1669578090128, 0.03, 0, b'0', 'WECHAT', 0.2, 1669405290128, 'CANCELED', 1, 2, 2, 119, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, '{ \"timeStamp\" : \"1669405312\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx26034151876578df70984a3e82bda10000\", \"nonceStr\": \"TxCcaEBV7BV51Wrk\", \"paySign\": \"UUSz91TAw3/7WwdH4TEjpUtPhPw/jvP47iCbo2fcseo9ErL71tOEUzIEj7J3JzClGdeILzG5rSlHnVoCrxu8iTVeK2+MAcryLVV7CRU2eDG2rX3rJc/DTKW5YIo5Oh0B5xIeb9js1VUyt34kQh90A1Sphpd+qHTlzI3pU9KGfPElq0ekj+3LghIMjyK7/p3f/ShdgYHA5L0PG0wZTU2nCEmN6yItn3V5onDFhI7zIrSCYir0LTp4Ttm6MdwSp0FVNDQhU9DOxbzBD1aY8sErZ8PHTmmr/tmBS//7Z9TCkji7z+Y5H5V6k7SV7gMTfdGVlArmI5eIUDNLLlKAYb0qZQ==\" }', NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (107, 1669409153521, NULL, NULL, NULL, NULL, '2022112644553520919000', '日产轩逸费用', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-26 04:45:53.272000', 0, 1669581861391, 0.03, 0, b'0', 'WECHAT', 0.2, 1669409061391, 'PAYING', 1, 2, 2, 119, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, '{ \"timeStamp\" : \"1669409198\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx26044554033711fb802a6115b6da780000\", \"nonceStr\": \"Ahsp5WphtWxxA2JC\", \"paySign\": \"nOgLCiBm+lzTkfYOeC7abuZdlXTwBIHDEFD93JSy6nCBpwGldkHrCrK450Kv3Ox59EvyXRL6SaB2D+0cbUd+RvDEpXnfQAD2jZCwU18OoJis5udDeBZMxULh9PH2/8PwOXtFbwF3JAILujMn76JNLyMVeuL/kxJEeDh6KYFpg/YlEmN0lMObB3Dbv/vqElzpqsYrlpvHbUJQ0AWRUe9OI9F4VI4zjAT498TpQvgHMiq4i5seYdxURQiS7bIrtB5VPWpQEHf9/s9l6V+1pcUYSPILmkaT/+bod/ohS0Q3zy3A+d1QHYWjNXwjoapFKd2t3o4zVrmS+Gybj/lMj32qAA==\" }', NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (108, 1669410010602, NULL, NULL, NULL, NULL, '202211265010601464000', '日产轩逸费用', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-26 05:00:10.240000', 0, 1669582768866, 0.03, 0, b'0', 'WECHAT', 0.2, 1669409968866, 'USING', 1, 2, 2, 119, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, '2022-12-2-8-4-11-1669939451870-logo.jpeg', '{ \"timeStamp\" : \"1669410011\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx260500111603014c0846d76b32aa270000\", \"nonceStr\": \"EyAzFecrvWx5WWT1\", \"paySign\": \"CMPuGw+kr1QQRe/6mg3L5kwQzIz+C1yQEd11IoqaT/PjT4RC/cTrq2LX5YhitMEPRSkYaBinzv+yCo/T3T0WADiq4WIn1whclSmrZhxpb6UHRlZTikV0Qsn4zKtTOXsCHusa2zmAS3DV1Yf3vaIXsybaJ+yCOeutWpVavp0D5/MWf40L+/2tmRvJAkieVT1NpGRi/Hcw9LUuSM75yJ2vp9FaNtf1cgBk66ALk/iRENco3EcVToYJRWuMoJHMppXmdeJadpj2RYyMoF3st0GeGHlwkGlkQ58bXI14P6syprSGxdkZy0HlFtwPsMajBtIA+3zVx7wTl8CSf8Tjp1T9qQ==\" }', '4200001683202211261407072552', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (109, 1669483992884, NULL, NULL, NULL, NULL, '2022112713312883224000', '日产轩逸费用', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-27 01:33:12.614000', 0, 1669656775803, 0.03, 0, b'0', 'WECHAT', 0.2, 1669483975803, 'CANCELED', 1, 2, 2, 119, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, '{ \"timeStamp\" : \"1669483998\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx27013318512921d551effbcd3ae41d0000\", \"nonceStr\": \"7xyCorijJdLh1fq5\", \"paySign\": \"LkiMkSxN+NbnARh+kwRcuT2N6HqSi2iMR21VH4rs3zGC7uUiJ4gXiyYzAze+msy+nbKzNr03nz2SPF6G7QddNNKKDsBjsbknSG73fexNJVH+IEnRvCHtGasdC7klAGolhxldOpH0oYjWVYRIycpoxLtJh67sCaED8jqNTu2yN1XiAT6fOIYA08POVTsXgwSzg4pZ59xxvUR4T1GhIAK1uoaBJevWpK2oQzMX6nYc42SQqslObeJNlu1+U2TV4TScqLQOQKRBJ7ExfSZjoh/o67A7dNdLW3va9oSl/5/9vCE5E5r2bHAgBDTmCbIDIWY0R1sBOU44+gEunYOC4WuNjg==\" }', '4200001694202211271698810183', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (110, 1669487088291, NULL, NULL, NULL, NULL, '2022112722448290595000', '日产轩逸费用', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-27 02:24:48.002000', 0, 1669656888183, 0.03, 0, b'0', 'WECHAT', 0.2, 1669484088183, 'CANCELED', 1, 2, 2, 119, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, '{ \"timeStamp\" : \"1669487089\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx27022448823179748d47a0e28403ac0000\", \"nonceStr\": \"Uscx0HFyAe3cBr1y\", \"paySign\": \"Rkos0sulOOgfLxfCwNjth8gyUOuXBPkWjzvFGHrLjvk/IIS9nvy9aoidOZeSMriv1zGV/pzXXbqork54LOlTDYAJvhAfYHkZ910CVyZ2qKwnG/UeEyxH0XwvfjgCZFi/7f3FcL/vLqAfWSkW7COqkc/SgjV/6rSd7mmQsZw2raxV18ITmPvlQ2RiUkggWhyTSFo2BIdZJU9cJG2Uzn3j1IURhsTKRZ9/8A5U5GLT01EJP/sCrIeJv6wLaOtJLJ6CCmxYjgDWFyRifNLJ+6jT2o1vqmVBtyWamAi75reLLa2aOJ9qftV9Nf2Okn18/xjoRjfx+m7WslOivmmD+xFODg==\" }', '4200001694202211279185321731', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (111, 1669487367107, NULL, NULL, NULL, NULL, '2022112722927105707000', '日产轩逸费用', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-27 02:29:26.824000', 0, 1669656888183, 0.03, 0, b'0', 'WECHAT', 0.2, 1669484088183, 'CANCELED', 1, 2, 2, 119, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, '{ \"timeStamp\" : \"1669487370\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx27022930797706931c785e953526e00000\", \"nonceStr\": \"6dgeA1PjCzYWVDCi\", \"paySign\": \"dghQLDBFGt/ioFuOVmUBmGIIBMh39+R+pBobfq+ECeNxo86xCnFbx1rFRqNGbZbxN/vRUJMOwohZkLs5i9yazfuW8FReGzT16UFy/l6u3Tp653DEEnQXt/qFdL7QWAV1DLRAZPxX3BYklRUqcOOcRUhbwZEJwFznDBG/w2m57RFtclDvcVqfHwMd8vsygjJVx8/zebZujmKX1Jm2Sut1IqRdYVaLMekvZCg47rLBNvXPJlW4SXHL/837F0RlLr02fCdlH5gDJFEOopfrhTh1hpi3bVF/sE8nvSOWcrN2ZoV5u9VXsdXbnsB0I0Nd9d8byIedWvvFN8AABa5eRRA8SQ==\" }', '4200001616202211271231459316', '1669487396167', 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (112, 1669487608784, NULL, NULL, NULL, NULL, '2022112723328784204000', '日产轩逸费用', 0, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-11-27 02:33:28.530000', 0, 1669770385000, 0.03, 0, b'0', 'WECHAT', 0.2, 1669251985000, 'FINISHED', 1, 2, 2, 119, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, '2022-11-27-6-47-6-1669502826368-logo.png', '{ \"timeStamp\" : \"1669487609\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx27023329277377a290ff03fdb4aeb50000\", \"nonceStr\": \"g26etdQ2nksZuHSY\", \"paySign\": \"ZyOcqBDxA7uBYLDZiVj1/+TEvt/2p7RnIcb1YeTymfBNwSNsIRHNg7tOsLlrM2Q9IL/dt7+E8BqBY8/sXggm8xakgCngvm3wqtmdtzX7PqRV8c/eDUBPSBA9pI9lPEitMWtgyXYBB1bBZWSwozNfJCGh/GrubhMuXCb6Uwjn+cIyJxl5bYxfdjP6BopxhqA6FlMJzmU/dlfnxaso9CNgkMrf4hsyAJdNPXJV3NghBHZA36Q6ACL2jzPcMSispfJH87BmFH5jJUMWEgCb+UTIYlQ+RvwA0lAgyka+JvcI42pkVP3qeq6EbZceV3IrXsdzow1CeqkB6t7f/NkXUmtkEA==\" }', '4200001691202211274907535204', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (113, 1669871947800, NULL, NULL, NULL, NULL, '202212113197796912000', '日产轩逸费用', 23, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-01 13:19:07.548000', 0, 1670043588930, 0.03, 0.08, b'1', 'WECHAT', 0.2, 1669870788930, 'FINISHED', 1, 2, 2, 132, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, '2022-12-1-13-33-14-1669872794306-微信图片_20221130171854.jpg', '{ \"timeStamp\" : \"1669871948\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx0113190834892310006791c50af50a0000\", \"nonceStr\": \"1o2Xfh6saJtaC8yQ\", \"paySign\": \"PgDM9aJjmvN9qkwsrGAnJ6YtTEQKz95XS0geaO4qywDcus18f9f6okOjYrD8rzJyw806+j0fOIxBqOn7hKE16uQ4eHDs0C8YfhMOe3/Rd/TedBfPq0sj4QNnvL4xk7zms70FsqKAfYDjKMzHQvjqxxNP7S3y4dEn5TN7hp535nJT58DmxLhTWOzIXAO2JffC5fS+sIl6TNhzm5ZoJK0FZvEVjtzZH9sCpg0TA/hHSU2aimmvIVRCn47bJ1ITCuFcmTCVK4CALrddoslmsBQF4AZLRndgMgDtplH+vJKt59kV6k9t4X1xs0NnkeG6LMjJrveK67pE1rM1lHcvQxaahw==\" }', '4200001704202212014437725922', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (114, 1669871949901, NULL, NULL, NULL, NULL, '202212113199901588000', '日产轩逸费用', 23, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-01 13:19:09.654000', 0, 1670043588930, 0.03, 0.08, b'1', 'WECHAT', 0.2, 1669870788930, 'PAYING', 1, 2, 2, 132, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, '{ \"timeStamp\" : \"1669871950\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx01131910272710adf51a292f8db0c20000\", \"nonceStr\": \"ya2mqhJzv0K4a0H2\", \"paySign\": \"GebqlHEg38NqrUfSE6TiZZgxQA5+K8kizkTRfYlO7FgYHXgHmnXTAAcjh+tQLPh3GgiNRDRpJuSrSzfq1NDpcKKxLlRFyGuOl8RpuNYwEhTd3EWoYLynGgDbznKaiZOtvBT1KgcwiVar1juTDUitcfhny9hkFSMka+o+MHwRG9vIPzU1YMiVuzz6khclqIIU6YTxglBY+KQ2/3p5OhJ4paPev94XUdrKBVl37H0+3ZuE2hqwqSg3444q9CS0QZ0YVxG+3Go7CRkjkKR6o9jZ/yR6b8+XL+9MlN4QdLKUc4XtxC2SHdPaNfSNNNF7FQ1q7gMsAPh3dO219tyMTnKtHw==\" }', NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (115, 1669930707517, NULL, NULL, NULL, NULL, '202212253827513613000', '皮卡费用', 40, '2022-12-1-15-8-6-1669878486006-2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-02 05:38:27.199000', 0, 1670051331415, 0.2, 0, b'0', 'WECHAT', 0.2, 1669878531415, 'PAYING', 4, 2, 2, 127, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', 126, NULL, 1.00, NULL, NULL, '{ \"timeStamp\" : \"1669930708\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx02053828252340c9595574606d69040000\", \"nonceStr\": \"uumDG0mZjymRvEPf\", \"paySign\": \"Ng0hIE6+nooJXQyZvm3SJ8RFNzSjFNgrP9E0BRkjOqFyhfc+48IgPK6TyKAaOX6LNepbxkh+q2q/0O0mq37pEb26VaYlCRfFJfNgKBzU5vUIWYq9Ze0WVnyzCcoLyQNyCoFnHXRgRGrXveXmC5RRu0XCV2cNeVwEhxM/KbIEZ1tYGCK55lMSs7wO59oHcC/Ql7npmB0SqIvwtQxpuWbbjnxmoT/YWug+xI34u1HasrvAkCGSbslqcuTJ7+8JEmCdkJc6X/muMeRCzaKqZXCAVBfFPTVWvNw48cTAebxHslcOjVhiiJlE6HNUVaYU1imeUViEBmQpdeRnrJ1x3d00Zg==\" }', NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (116, 1669930916007, NULL, NULL, NULL, NULL, '2022122541566995000', '皮卡费用', 40, '2022-12-1-15-8-6-1669878486006-2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-02 05:41:55.692000', 0, 1670051331415, 0.2, 0, b'0', 'WECHAT', 0.2, 1669878531415, 'CAR_PICKUP_IN_PROGRESS', 4, 2, 2, 127, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', 126, NULL, 1.00, NULL, '2022-12-2-8-43-17-1669941797269-logo.jpeg', '{ \"timeStamp\" : \"1669930917\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx02054156974875d33a99b9d10e3e190000\", \"nonceStr\": \"QHkApjkA2YLZ7dWN\", \"paySign\": \"ePJYtQ9P7BNEMXASUViEgThoq10L4mZK0Ig6+HG6GKGtSWpVaS3ww3nqcb3JMhU+gE6X1EZNP/lGkTccPPUSoP9+EtFeykxjoiuweSmUVi1T6HNkXX+RWa021N7dUX9yuzlsSg6gTGwG8z5VfzJx8Fl8yFrIBpKQmry4Q5hYbwk8V4aKf7bCdZxg1lLf5f2xDUjMgwHiI1ybIPBvOCmkdQ/40kN2JOeMD8iV+UHxQPobmRctX5Bo1jUB/lPSASJPKUS/hH5Mh5r19x3lKzF3vVaCqPFMUeAwnfnUGzouAE955UP8HsYNsq94aHyRRvnXdedJy9c2o8S+sHnZR3c5FQ==\" }', '4200001701202212025651816266', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (117, 1669932069338, NULL, NULL, NULL, NULL, '2022122619337216000', '皮卡费用', 0, '2022-12-1-15-8-6-1669878486006-2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-02 06:01:08.833000', 0, 1670137731415, 0.2, 0, b'0', 'WECHAT', 0.2, 1669878531415, 'USING', 4, 2, 2, 127, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', 126, NULL, 1.00, NULL, '2022-12-2-8-58-17-1669942697063-公开账号.jpeg', '{ \"timeStamp\" : \"1669932070\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx02060110077104c7eaaf1ddd8fea0c0000\", \"nonceStr\": \"fZk3mrg8WfDAbV6T\", \"paySign\": \"NHHrRtOr4KGZixxKzLrCwwUqYL6dS2GzEbojoHXVnCs0gMrTYVpKem159eGi4ovFmkfvcgb6Aowh6mzxY3nf8gOFBc6pnfuug+DZ7f2bhfjaVLf4XK8o7zAp/VstczHY2wXTToZI5qY5QmotWPdBAj0+6PDWxSeG4T4MbqcT4P6PuA8ZUxdA3cVWbedaJJNcodPqCHeTZnkr+aEJUDNc95zGyNUUvLtXslqkOhe8XLIJBKgJfB8ufguneWLfho4qJDiQCMBoqGV7kM88q6n1rw7kv0IL+hbJODINT6utp4+l6F54TiyUqgCpSWe3BQk8mm4dGBeGpORSjW2Ot6nrlQ==\" }', '4200001686202212026502878270', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (118, 1669932241098, NULL, NULL, NULL, NULL, '202212264198398000', '皮卡费用', 0.4, '2022-12-1-15-8-6-1669878486006-2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-02 06:04:00.814000', 0.3, 1670051331415, 0.2, 0, b'0', 'WECHAT', 0.2, 1669878531415, 'FINISHED', 4, 2, 2, 127, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', 126, NULL, 1.00, NULL, '2022-12-2-8-45-7-1669941907294-logo.jpeg', '{ \"timeStamp\" : \"1669932241\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx02060401661546937136aeedcc1b2f0000\", \"nonceStr\": \"PIy0VPqGFTMaxoUY\", \"paySign\": \"QCmevkEEKKAYV5R6WKmtQyQBmScxsssxGiVujXYeIqQ9J6wuyjUq5s2KFOQIXQMXOBn0NOd1Prq1xwTanOO6yEuiYo/mI6kV7DdOrWq0hKjWyeFNef5H53LayBZjvKeBgjDs3fF2iHfZ3CcRW5ZDo2ne6OqIf9T/+O54yZ/usAbEKDE3kghUDnhlkGnRfcmlop8N4oEemn3Wx8KdUGIKMGBAY46jrsGVWmG0Cjhk7TgKS3wVGM5WqkyWOVOKIepHz6Cq/LTbmrozRnromNS3R9hZNK1zf18/IyRSs3dNCeWxWYrrrmEuMkDU2Iixy3FwDy7BMVI7ZDd0obnh39/y8w==\" }', '4200001685202212023755846846', NULL, 1);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (119, 1670026987297, NULL, NULL, NULL, NULL, '20221238237296248000', '日产轩逸费用', 0.23, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-03 08:23:06.975000', 0.02, 1670286423135, 0.03, 0, b'0', 'WECHAT', 0.2, 1669940823135, 'USING', 1, 2, 2, 127, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', 126, NULL, 1.00, NULL, '2022-12-3-8-33-9-1670027589145-logo.jpeg', '{ \"timeStamp\" : \"1670026988\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx0308230801484287f31fb3878ea9e90000\", \"nonceStr\": \"IrBKBdqp4IP02bcO\", \"paySign\": \"IcSMbqK3kkqn6Orf/CdofFOpvHuQExCrYj9jArsoL5ry6p7awcOKLDdI4EXSojauO8Dq0yPHF4RcdUqmBXb4mDaE+EtoSfiHhH8cCxalP7IB7CP+TeYiM+f28J1EOlA5YKjCs4xdH8TVWsq9d8kgtrT9OWArXQPLQlHZsCBjw4KC+wMxdbsa3BVKYCu4N1ZmfOPBixooFGe0uPqcwC56ll8YJPH5wr29xbAFcbdxyQ3IqToIjUmbcRd0V4qFNftFdJ0ywBtnDqK6btWyxY5lnQV3fQLtcu1BaY4M16nt7phqq0rlNREwKRowNy6SBIG90Np1mscdYcZPXP8mABJxiw==\" }', '4200001700202212036041089809', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (120, 1670060191709, NULL, NULL, NULL, NULL, '2022123173631699399000', '皮卡费用', 0.4, '2022-12-1-15-8-6-1669878486006-2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-03 17:36:30.660000', 0.3, 1670232936062, 0.2, 0.02, b'1', 'WECHAT', 0.2, 1670060136062, 'FINISHED', 4, 2, 2, 132, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, '2022-12-3-17-34-48-1670060088196-3c08a2344b05109e13e0a38f316cb1d.jpg', '{ \"timeStamp\" : \"1670060192\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx031736329436790ddc54dd3c8b78320000\", \"nonceStr\": \"jpcgaKUpc8G6kweM\", \"paySign\": \"CZogX5AGxszdZw4od/S8Mv61uj+3LH3mDLJ20V9X9nXIIulweIbEKFfZjK5fV0MnAmBaT6eEqYE/+S5QHkmXKyY8OxSkVQT9cm/BHdaGQN92LJdriEHZBdECtshpJ1TFozxeNSqosG6BRPUph0vujNRRJBL4n1ovInRGs2xxfwcH3Y11z4y+URn6Nmv7VD15fvEXhscJOpQ6GA724EMOwB1BRGNyL8X8zMg+sz1tZpEFU4cqWUeg6k6Qxozs7i76Myj/AqBXOgYdZUbcSKvKfN+/967Kro6Cv7ubKd3dlsFJnoJhcX5aQm8LLyPI7ycShQC0p6HLC4y8VtX4MMLQgQ==\" }', '4200001686202212039674407826', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (121, 1670060229626, NULL, NULL, NULL, NULL, '202212317379626073000', '日产轩逸费用', 0.23, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-03 17:37:09.243000', 0.02, 1670319336062, 0.03, 0.08, b'1', 'WECHAT', 0.2, 1670060136062, 'USING', 1, 2, 2, 132, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, '2022-12-3-17-34-36-1670060076075-微信图片_20220321180857.jpg', '{ \"timeStamp\" : \"1670060230\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx0317371017519865a638f24415e71e0000\", \"nonceStr\": \"ifoLwXmeA2tPuVtE\", \"paySign\": \"H6Y3zsx6emiSb/GslXXZGnlXylegxhTDFsU/fY0o71/cDTjypXlPaA8/72wyYvrwikF9TEbAnQKwxyW3+kFN+WUyDWAKuG8SgiFsH74y5hvi9fpsga0MZsQwhVBjiJs0j1F0KFgnzZANDjMx+Q2EFvEJl02c2IZBWRHzdJD9O1m06z/jvtlem6Co3FyZ2kynDCTzEjqgSfdVlUcY1nhTsh223RrUaRVylnsTxcfQrG/rgFHYCROrv5qpR1N5NuMzSfPjwwRZFQv4a6ZMOQK3hGHtFEdyu3zJcZJrqEjAOjHMw+J8Aty4wFGIl6aG0geVhdOt/9KhSN1qzDoeFYbkTQ==\" }', '4200001694202212032922554169', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (122, 1670063808372, NULL, NULL, NULL, NULL, '2022123183648371757000', '日产轩逸费用', 0.23, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-03 18:36:48.079000', 0.02, 1670234084393, 0.03, 0.08, b'1', 'WECHAT', 0.2, 1670061284393, 'CAR_PICKUP_IN_PROGRESS', 1, 2, 2, 127, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', 126, NULL, 1.00, NULL, NULL, '{ \"timeStamp\" : \"1670063809\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx03183649227456ca80e4461e2ec6140000\", \"nonceStr\": \"RNKvc3AhvY4OEuad\", \"paySign\": \"SShX90WWE5YUxMsGpCU38ZETFsBgXoc1bCuNNUjfQR52jnaruQbI/Rai9b+23VouCwMhpOpbf9SXHcVgbT3x6NhIHm3J2ZFLenatvojk7joQSnU4ioIBAhbvqqIUZ7xGwRSRtT+5KnNChZ7jXz2a83rY7h1Ok50LbWgsWlO1O5HXNGM6wm4iMHG4m4E0FQii6h89XUu+XRz+P7pBb8L2I3nOdP8L1U2B5da3Ve8nAfjvKRAVBFZnw3UfQHS6FOTWY5QTM2bycLlXq5OlFEqdDu7FqJEBukf9/BBWEAr0WXM8hmG8PwQAdmMa3Zq2DMV30cbb7+o4CmZZEuKPTJ9aag==\" }', '4200001686202212039496304977', NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (123, 1670064068762, NULL, NULL, NULL, NULL, '202212318418761848000', '日产轩逸费用', 0.23, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-03 18:41:08.371000', 0.02, 1670234084393, 0.03, 0.08, b'1', 'WECHAT', 0.2, 1670061284393, 'PAYING', 1, 2, 2, 127, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', 126, NULL, 1.00, NULL, NULL, '{ \"timeStamp\" : \"1670064069\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx03184109711703d030a56493963a420000\", \"nonceStr\": \"WnYfcGV4uMPvlsQG\", \"paySign\": \"K7of/1OeBNemP0fEHQSAALKEJH9FeWreKAoIc5jpHKsx3YF3DbDVq4q/oZKcuVB1smql39hh+UYY+uWCK/LxqEGAt8nY6FSxpCxGNR3EC2W6Dxem3pSHS7X5QzE6/x3rrCd6+Afc+4f+rjpp6V8qNdUDBTCUKeI3DoN+ukwXvCoazk16Iz8m5tKqWXoflQBz98d2K7V+vBZtFkjXC85dPstw1OQzdA3iudjhdkyuPfjwXz2at3PddLvkQU7oP1mWzubhs+ys9a2GIv0dZjNWuLRJFVDF2y2eEBkW4J/s5EPqAL85m2Q/zpp0hXSq+GvO9e+LlhQl/L2crssdJEv49A==\" }', NULL, NULL, 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (124, 1670064166994, '2022-12-03 19:28:00', NULL, NULL, NULL, '2022123184246993386000', '日产轩逸费用', 0.23, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-03 18:42:24.950000', 0.02, 1670234084393, 0.03, 0.08, b'1', 'WECHAT', 0.2, 1670061284393, 'CANCELED', 1, 2, 2, 127, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'1', 126, NULL, 1.00, NULL, NULL, '{ \"timeStamp\" : \"1670064167\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx03184247748000a2d1116d123c6dae0000\", \"nonceStr\": \"2hxTVe78Q0otqY6m\", \"paySign\": \"FMV05r2yY+UdL1CuUH7qfVzqKw/fJXUc4QYF7tjH/F1R5GJ3FtEZhw5K2ubAmixEmoqTN8U6vVDnXd8sripp/64rOGtwoHm6I07f0JTZTK9InBN1XO5Upf0W3TTS5OkR+urInqIQNZ1NzYjioe76+1gbWR/noRLupcRpk2Dhq2Ysu/25zP05s05hzGymthdEufsddUAAmRFNTVA1UzwJGuR7xqj2hlwOaL/PEOrZYA/MXupU4BfkT5Ts4WWw+3zKUWkQZJVWt+BLbNEBeMcWxwKFG+BPPdGzKDvJlrongMX0xsRMP66MS2W8LnA1MtqIdsHzJUHrsvBxIWH0sq4bqQ==\" }', '4200001713202212034271662336', '1670066538131', 0);
INSERT INTO `orders` (`id`, `created_at`, `deleted_at`, `updated_at`, `alipay_token`, `alipay_trade_no`, `out_trade_no`, `title`, `amount`, `cover`, `create_alipay_at`, `deposit`, `end_time_stamp`, `handling_fee`, `insurance_fee`, `is_insurance`, `pay_type`, `rent`, `start_time_stamp`, `status`, `car_id`, `end_store_id`, `start_store_id`, `user_id`, `remark`, `waiver_handling_fee`, `waiver_rent`, `unfreeze_amount`, `auth_no`, `out_request_no`, `auth_body`, `freeze_type`, `is_unfreeze`, `is_refund`, `promotion_level1_user_id`, `promotion_level2_user_id`, `promotion_Level1`, `promotion_Level2`, `contract`, `wechat_pay_token`, `wechat_transaction_id`, `wechat_out_refund_no`, `is_delete`) VALUES (125, 1670064314804, NULL, NULL, NULL, NULL, '2022123184514803950000', '日产轩逸费用', 0.31, '2022-4-25-23-35-14-1650900914689-cover.jpg', '2022-12-03 18:45:05.421000', 0.02, 1670406884393, 0.03, 0.08, b'1', 'WECHAT', 0.2, 1670061284393, 'USING', 1, 2, 2, 127, '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, b'0', 126, NULL, 1.00, NULL, '2022-12-3-18-45-50-1670064350379-image.png', '{ \"timeStamp\" : \"1670064315\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx031845155781219d5f31ed26991e7a0000\", \"nonceStr\": \"SicnVAM8Gn0CnfpM\", \"paySign\": \"gj2gKDMmEUSLtdcx9zBIk8owMDDJdZNIzW/0qIiQMNoCy0XANFKRp6O1BxZcQFjxXtL8IsNoQkzze66iMnyFAax120j2DAICDjRvsQZ304ZtgIcvT0rHMfRW9leQMDKJFj5ClzfoZjF5V3z9/sYauRjXtJ3MA0kV9SQ0dWiTEZytjcUo0FA1bvlvd4kv5+0PPDjDyrcqYruywuVcNmRkB1thVdHHgkfQ8OsFrpQ37AigE5SvImvgFmPqNWrVeMbNSFeY6UTLqlnQFac2svtpTN2yO6R4os7JFQestVMLPdDlBGcvYYxhqXMHOimW9PX/7d2NeHZQGbFbPdmMfL9Fxw==\" }', '4200001693202212036938205085', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for pickup_guid
-- ----------------------------
DROP TABLE IF EXISTS `pickup_guid`;
CREATE TABLE `pickup_guid` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `created_at` bigint(20) DEFAULT NULL,
                               `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `img_key` varchar(255) DEFAULT NULL,
                               `title` varchar(255) DEFAULT NULL,
                               `store_id` bigint(20) DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pickup_guid
-- ----------------------------
BEGIN;
INSERT INTO `pickup_guid` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `title`, `store_id`) VALUES (1, NULL, NULL, NULL, '2022-3-17-17-40-1-1647510001605-806d6cd71f7141e9b2d8e1d1c8d3140c.jpg', '取车指引图1标题', 1);
INSERT INTO `pickup_guid` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `title`, `store_id`) VALUES (2, NULL, NULL, NULL, '2022-3-17-17-41-45-1647510105072-806d6cd71f7141e9b2d8e1d1c8d3140c.jpg', '取车指引图1标题', 2);
COMMIT;

-- ----------------------------
-- Table structure for promotional_poster
-- ----------------------------
DROP TABLE IF EXISTS `promotional_poster`;
CREATE TABLE `promotional_poster` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                      `created_at` bigint(20) DEFAULT NULL,
                                      `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                      `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                      `url` varchar(255) DEFAULT NULL,
                                      `size` decimal(10,2) DEFAULT NULL,
                                      `position_x` decimal(10,2) DEFAULT NULL,
                                      `position_y` decimal(10,2) DEFAULT NULL,
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promotional_poster
-- ----------------------------
BEGIN;
INSERT INTO `promotional_poster` (`id`, `created_at`, `deleted_at`, `updated_at`, `url`, `size`, `position_x`, `position_y`) VALUES (68, 1652223270376, NULL, NULL, 'https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-11-6-53-2-1652223182157-poster2.jpeg', 2.00, 45.00, 400.00);
INSERT INTO `promotional_poster` (`id`, `created_at`, `deleted_at`, `updated_at`, `url`, `size`, `position_x`, `position_y`) VALUES (69, NULL, '2022-05-10 23:55:30', NULL, '2022-5-11-7-44-31-1652226271743-poster1.jpeg', 1.20, 9.70, 430.00);
INSERT INTO `promotional_poster` (`id`, `created_at`, `deleted_at`, `updated_at`, `url`, `size`, `position_x`, `position_y`) VALUES (70, NULL, NULL, NULL, 'https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-11-7-23-10-1652224990477-poster1.jpeg', 1.50, 21.00, 430.00);
COMMIT;

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
                            `code` varchar(255) NOT NULL,
                            `name` varchar(255) DEFAULT NULL,
                            PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
BEGIN;
INSERT INTO `province` (`code`, `name`) VALUES ('11', '北京市');
INSERT INTO `province` (`code`, `name`) VALUES ('12', '天津市');
INSERT INTO `province` (`code`, `name`) VALUES ('13', '河北省');
INSERT INTO `province` (`code`, `name`) VALUES ('14', '山西省');
INSERT INTO `province` (`code`, `name`) VALUES ('15', '内蒙古自治区');
INSERT INTO `province` (`code`, `name`) VALUES ('21', '辽宁省');
INSERT INTO `province` (`code`, `name`) VALUES ('22', '吉林省');
INSERT INTO `province` (`code`, `name`) VALUES ('23', '黑龙江省');
INSERT INTO `province` (`code`, `name`) VALUES ('31', '上海市');
INSERT INTO `province` (`code`, `name`) VALUES ('32', '江苏省');
INSERT INTO `province` (`code`, `name`) VALUES ('33', '浙江省');
INSERT INTO `province` (`code`, `name`) VALUES ('34', '安徽省');
INSERT INTO `province` (`code`, `name`) VALUES ('35', '福建省');
INSERT INTO `province` (`code`, `name`) VALUES ('36', '江西省');
INSERT INTO `province` (`code`, `name`) VALUES ('37', '山东省');
INSERT INTO `province` (`code`, `name`) VALUES ('41', '河南省');
INSERT INTO `province` (`code`, `name`) VALUES ('42', '湖北省');
INSERT INTO `province` (`code`, `name`) VALUES ('43', '湖南省');
INSERT INTO `province` (`code`, `name`) VALUES ('44', '广东省');
INSERT INTO `province` (`code`, `name`) VALUES ('45', '广西壮族自治区');
INSERT INTO `province` (`code`, `name`) VALUES ('46', '海南省');
INSERT INTO `province` (`code`, `name`) VALUES ('50', '重庆市');
INSERT INTO `province` (`code`, `name`) VALUES ('51', '四川省');
INSERT INTO `province` (`code`, `name`) VALUES ('52', '贵州省');
INSERT INTO `province` (`code`, `name`) VALUES ('53', '云南省');
INSERT INTO `province` (`code`, `name`) VALUES ('54', '西藏自治区');
INSERT INTO `province` (`code`, `name`) VALUES ('61', '陕西省');
INSERT INTO `province` (`code`, `name`) VALUES ('62', '甘肃省');
INSERT INTO `province` (`code`, `name`) VALUES ('63', '青海省');
INSERT INTO `province` (`code`, `name`) VALUES ('64', '宁夏回族自治区');
INSERT INTO `province` (`code`, `name`) VALUES ('65', '新疆维吾尔自治区');
COMMIT;

-- ----------------------------
-- Table structure for renewal_order
-- ----------------------------
DROP TABLE IF EXISTS `renewal_order`;
CREATE TABLE `renewal_order` (
                                 `id` int(11) NOT NULL AUTO_INCREMENT,
                                 `pay_type` varchar(20) DEFAULT NULL COMMENT '支付方式',
                                 `out_trade_no` varchar(255) DEFAULT NULL COMMENT '订单号',
                                 `days` int(8) DEFAULT NULL COMMENT '续期时长',
                                 `pay_token` varchar(2550) DEFAULT NULL COMMENT '支付信息',
                                 `is_ok` int(11) DEFAULT NULL COMMENT '是否支付',
                                 `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                 `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                 `created_at` bigint(20) DEFAULT NULL,
                                 `order_id` int(11) DEFAULT NULL COMMENT '订单id',
                                 `total` int(11) DEFAULT NULL COMMENT '费用',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='续费订单\n';

-- ----------------------------
-- Records of renewal_order
-- ----------------------------
BEGIN;
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (1, '1', '202211277658220087000', 1, '{ \"timeStamp\" : \"1669504018\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx27070658701163818cbaf6c1be2a3c0000\", \"nonceStr\": \"Pg7ZNWg2rlzZ63ZG\", \"paySign\": \"Ed6GyLtpXFx5PfRyeQBIbSbYnrAadZTQ92YDER8ka5XufRtbezL4M4HdrdLLcPap0b4NOBEfKypP8KcBk9ShgyZKVDvzg+yb6aDqUrpcoXQ6mM61rk8fyyplEPMSy5dcUkS2doNJ0KHmh6/M0C/tpd4nFeK+IA8UGRVQuF/HFCO2urLHLBr5UrmFZsN7y2QFx/DSoSgypA0BSsaosN5T3/liJIdbyjBnfopltMsGKNp5skxBKEUUxTiPIMRx8gc7ateqjXVBzDerYdjoEO3ytQhTGzM5FrlpXA9F5CYDtUBk/nByJE6xuOjjWTpz4BHXzk6hgarbTRnPwnVEM2v5kQ==\" }', 1, NULL, NULL, NULL, 112, 10);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (2, '1', '2022112772234921148000', 1, '{ \"timeStamp\" : \"1669504955\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx27072235593731b8b0d852d8473ec00000\", \"nonceStr\": \"ZGZ2amXbhihYRAzK\", \"paySign\": \"gE93aof4hJIcvsVN6K553yYuc/Knk9DZ269TbwI4eHkNfUrAK7/jPp3fOKwMqsPaBH/fYE8TC2dUlX7UZZa/XSilSCfSgJcY+jIw+XNEyTnM7gcIOnoNQfj7dvPu/ZZBMgaHtrm4T6WLGtlRGn5Xasva7m4Bsk5fIo7ipNOGcgYnwIqWd01CKt21Yc+3yjcYoRd04PM0dKUa/rcOIPf0juKsMdDHE+eY/VR6g3oB0QhKCmaJr8npzTyj7DrI9gKJDjfucufo3FOFrU3MrAhourt6WzNhCE/az08E/84wrACTkMlZ6NLKOKBCPcvN8MO1vy+sui/UaLTph8EN+Sf+VQ==\" }', 1, NULL, NULL, NULL, 112, 10);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (3, '1', '2022112792833102153000', 1, '{ \"timeStamp\" : \"1669512513\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx27092833595314f794b00be33f830d0000\", \"nonceStr\": \"Ei5WLcaBeBH8cqDo\", \"paySign\": \"TgmMutc3gTl+L0pK0s3wOvsLZxZjHU1rZwctgSnZarW8HYNB74KVr+iHW+zkSToclG8KMB7VBnGwjzklmUyrmcZGanu6zeEavLSiIIm4/Me9Rq0CgDOcbZPJp69WKRwD8kbzZoBp1H94n+HYaGavkli1DrO1+9XldYOBpEN7d5DwIdNZ4nJjb2s+aBnx0ENpJj1i/t34jdTkPE8OrS5+dUrh+ISfsHm6Ye7ESrhM+buwHLBu+HGcDuLNutgM76CEMjNAk4UPsI06gycRWT92n5enpLExho/fMzCv2hwiFREvtUw/QN9CuOlzfAW2Jk9d/s8xdiV7SyHF3HIdETGYVw==\" }', 1, NULL, NULL, NULL, 112, 10);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (4, '1', '202212173841126688000', 3, '{ \"timeStamp\" : \"1669851521\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx010738416092785cf4e4a7735f77920000\", \"nonceStr\": \"syjYFhj4zNjDpkGL\", \"paySign\": \"Ckwckh7r1oxCsP4C3nxnRNLP5LVG0KvlRzTUu01IQdafyKc17eHFN/bahZ+xXXBUDlWTWwV85v/oDTByb2cfwk7Qxk/WW1BqMeO6MVUoLHzDziZEvdjcTwz2WFIlOsL39oRRsUDEU0mS4wr3409y6ffjhCbK7OdUVd1GBfRipg22HSwZWiTmFzU1XSwQ7eMzVVko7p+Jt0FPHyLqUmG+iPa9r+DjIHgn5AaAkRgDTlN0uENoSxysEnsvuR4F48PXdVpoTr+x7xTAxFfow+LWcqUrrsRBIXGyDCDSWCmYunfMkalmdd41UAjrzO4hXx/5dExxgnpgrNwDyiqN9thldg==\" }', 1, NULL, NULL, NULL, 112, 30);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (5, '1', '2022121133725793197000', 1, '{ \"timeStamp\" : \"1669873046\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx01133726291012f27b41b74f15b0600000\", \"nonceStr\": \"ifDiStWyunU0rJq4\", \"paySign\": \"OEEOdrctFwEW2andwfqq5U1gdX96sZOayQvHvmRS1Npcls8p1LwQyetggpleRQabp1/5qHDiWJYbN25kSVASvqnEHFQEFj+rxbaCjjayT1JiA8pVbwU9GlXU/A5LPQPTJEXDtk+JuFWUKuh2vBgY3Eyros2CmgtCHbM2nPHlPYfzxXqsirbGkMm53VjWtg/KOu+d5MfsLnmx1qt2SlEItqkevxEyI2DIErfeSrxJF9qGksQAW2kr4Ss2e0tviYS1MZgEmPzvuP8i4IP8DxTfuNachqb+d5r1dJWr8FZLVw7J42WhjQPLMtCMCYgSR4JOsCC5smyL2WlRkdYWxae45w==\" }', 0, NULL, NULL, NULL, 113, 10);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (6, '1', '202212383355293961000', 1, '{ \"timeStamp\" : \"1670027636\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx03083355971248265865586bd568880000\", \"nonceStr\": \"KZIaBvQnCM2IAVzy\", \"paySign\": \"U383v37pjMo+gY+GGPWjNSF0V1fInyL7rlAk4iFA5CNod7H4ckLSuoiA5hDbgW0lOYhQjzFVzQagoPzj9u2UcXbvOKT1iFzOgRbzKt9N0cwp3V5x1bv+d/DzOwlCceekYpt0x1gCKSnAnv8VVKeqFYgJ91nm29Tha7NpjoNd6IhLoXsA6q2AGgAE57BpETpjTMHUPd84RyeoTKm0nrTxB2NQUx2wxXsaYhYreRAs7pYK+SQMWokLLX2Q7Ilvc1gxoIDlr1wuabKobhKFC5DxHlqVVMMoz9as3zt/igmuEl2yRWRiRmtu4hffheWzF6plGK9mmlY1/F+nf84nhSGK8w==\" }', 0, NULL, NULL, NULL, 119, 10);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (7, '1', '2022123836107003000', 1, '{ \"timeStamp\" : \"1670027770\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx030836104828898bc10e551676b9540000\", \"nonceStr\": \"6dhXy5NISDmDyFJc\", \"paySign\": \"WVHLhjP8/TASdm+tK6TV2wzf59huJq1MteuBHIJca9wp2y0GmRQmrzhrwgq7ntpcWXGe48IaFp+/xssyWVFzdDs49YS02cU1lfwijbyRSJcmwoyE/UCr2BeA1Msh4OeCKpSUINqGpRe8inDnoaMUwzo/dKvufijkyiJVljAUsr2UiEWCxgit7X3KlAna58rrlMP9WplzcSF9Vvvld7oXN/MsZf4qgCRQBYqwrWyIdtGvS6xuySFP1akTbNiO6nHWX0N7rw5HyqVUOe+WBO/C5360x3cgMjZLRMwpZe9Ft71LoPy2M4zvya5ZMhKOCvUBrcrSrOHNiCZ/86iLohIB4A==\" }', 1, NULL, NULL, NULL, 119, 10);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (8, '1', '20221238411740727000', 1, '{ \"timeStamp\" : \"1670028077\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx030841176121254941e3a26818e32e0000\", \"nonceStr\": \"caTLEK645DgrSpB0\", \"paySign\": \"fCt4x6GUfCBSbYcj63gIjxGPmXArX4KBu0HIKcoVJ2xlMujMc3BoAyYWlD0b2RfQqgBLvVv32+jzQC+EGoxOSq+4g7HRcCMFOHl51o5r1iyehm4EcGhBYs9lzj6MvC0cWRNISWc3gBzQS2F2kRWNd3oU4lsv3MGE0Ei6skDZ+WpevyuJm6KKsBfM3S/0e7QLU5/LXA4RLLB9pjLRFIEJ3PZRSvvqH0AsHXnQ2AYGgkhZWtPs6ihEtOrkkCaOFTh/rSk8FrhT56xBV09SCqk0vZJ3A2zWENxgwVYwOqdRUbovgT0m+WKWty1p2hB7AXHbWttS/CPrSLai9upJwSyMKw==\" }', 1, NULL, NULL, NULL, 119, 10);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (9, '1', '2022123173939232516000', 1, '{ \"timeStamp\" : \"1670060380\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx0317394079941483013cfb0a5433840000\", \"nonceStr\": \"XoM0RJcqJuZFDMid\", \"paySign\": \"cP+to4ZY1u4K5pFaZ8ODLnBz1Dj8FxfEzyFoThCI33eTTnyzFyjKWnFfin2rp7h/1N7iql1Zfdg8ztzgzdUqn9EVQXs2x7O7Laho9jnsizHm1BnPvlkFnqty4VSJfQAuAewIM2OBOK4AVJpt6PiBMmnCutw95A8O+lgp+pY7ZO6c/k0Ks9S08qz8UMcp+BUv73EIgNTO09ykN9t7U83osxnvaBFp1KAzNuZarhgy/XGQUl9iV11xAhNldtqM0en3bgpyE5GvqqBiS/NGWYGAtEOmiQc1+8vnpCcPZ8yn6dJIEH5Y1vnVA6C9QWDW22UGPBQwwXujfY7mjv7RbMG25g==\" }', 1, NULL, NULL, NULL, 121, 10);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (10, '1', '2022123185439619516000', 2, '{ \"timeStamp\" : \"1670064881\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx03185441345342e54ec5ae9cdb42460000\", \"nonceStr\": \"gRsyJ2Qms2saAf5g\", \"paySign\": \"blaQDSI7fSqgE4UnXsujX352ZWAvOQhEaNGLsi07BFofb5Gq61gaWrSSQawK+Dnbfj4veE6ZYPEueYW0Ck+yLSLOFPzWAEu9/v5rUolqcj2sc3M0gE7QHgm1uEXwX7hjsc3REv42+NrTvWlUdpHKh3oMPejxsOnN7Hwwk4/Lw2vRYax27SqDoIeXpNHXnR5BnaAUMxsYSQuOjnWUXtcMv8TFYcpMZQ3vz+LxNcDN9bslqvllmNPOra5a4EYvcWVXaY2rzAPDSV/1mAlG9lsT9OeoifCgcZLibxervGiekXA7OMIW64RJ6a1gkKlmTHVcgMJPKoQsHhcJuBqxBrtyhw==\" }', 0, NULL, NULL, NULL, 125, 27);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (11, '1', '2022123185733282262000', 2, '{ \"timeStamp\" : \"1670065076\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx03185756135353cb6c69a13309dad70000\", \"nonceStr\": \"1jDUZNM6ld1QMhWz\", \"paySign\": \"F33dSEWibPjlJM4JiL9e0wWSSEbtERhS51tK2URLJEiS+zkCCOLsEqgnKwacN98s7TbsX+c90u81JndhkEOY/qFDJ0NI6hzprZQcR97ng4cxlSHdiYzM+LHQw66UW7KO2zrc6n4uxBcoGt/4t+6SjeFubDMB++ZX/mEwKgEbjjr6wR9u8XDmv54ukDbqr1oZzD3iqnY2J0+0/2MMJSVxQNxjKDIlKlKFSKiz//UoBEjKUYjG6bINCSspHdAchpmVE2UDEaPNkrjpLfcZBuV6EJHAdDXu/jboiXXIpPpc+UIZMg7hE6jWrtZyepdENNQfy7oiE9mXdf5Zz152sLLPMg==\" }', 0, NULL, NULL, NULL, 125, 27);
INSERT INTO `renewal_order` (`id`, `pay_type`, `out_trade_no`, `days`, `pay_token`, `is_ok`, `updated_at`, `deleted_at`, `created_at`, `order_id`, `total`) VALUES (12, '1', '202212319453115682000', 2, '{ \"timeStamp\" : \"1670065501\", \"signType\" : \"RSA\", \"package\" : \"prepay_id=wx031905009144775add05604a81b1e10000\", \"nonceStr\": \"qWdOWXCGEPtSXn2z\", \"paySign\": \"WkAfkqJdqKFAGfnVCpciPZGd7lcEOAJHLmfZwLA65gI4N16e5mFyHfFadWjx5H2x1hjgrSN+WqVZ6xoHjuZGl4BMT3nEm3YpxePiYUjf6LB5fDBOPjqyRKVudcJKvm7tQnf+cA3+rp95fJuf41x+NrW2PpLpyGJsoE0+iaN4H6WWyll9IcQQ+HcjgVWoO/bqB3G1YIzHMg5u6QDMPTRUJtdoWWVyr8hcYA4nBOG7AHLMtSS0Aq0HfCVw5GWLdvFREq7EMipgghiQwcj8njxrPr6BgNHMfU2m8F854x8UfWXn3VEO4IFikj+QPu8Ona5HNI2xdJru9HFc70G1VlqzMg==\" }', 1, NULL, NULL, NULL, 125, 28);
COMMIT;

-- ----------------------------
-- Table structure for return_guid
-- ----------------------------
DROP TABLE IF EXISTS `return_guid`;
CREATE TABLE `return_guid` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `created_at` bigint(20) DEFAULT NULL,
                               `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `img_key` varchar(255) DEFAULT NULL,
                               `title` varchar(255) DEFAULT NULL,
                               `store_id` bigint(20) DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_guid
-- ----------------------------
BEGIN;
INSERT INTO `return_guid` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `title`, `store_id`) VALUES (1, NULL, NULL, NULL, '2022-3-17-17-40-7-1647510007680-85882bc629a74de2a76e480a112f2108.jpg', '还车指引图1标题', 1);
INSERT INTO `return_guid` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `title`, `store_id`) VALUES (2, NULL, NULL, NULL, '2022-3-17-17-40-22-1647510022949-dc20ea7c29cb4dc2872bfce0905e39fa.jpg', '还车指引图2标题', 1);
INSERT INTO `return_guid` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `title`, `store_id`) VALUES (3, NULL, NULL, NULL, '2022-3-17-17-41-53-1647510113946-85882bc629a74de2a76e480a112f2108.jpg', '还车指引图1标题', 2);
INSERT INTO `return_guid` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `title`, `store_id`) VALUES (4, NULL, NULL, NULL, '2022-3-17-17-42-6-1647510126282-dc20ea7c29cb4dc2872bfce0905e39fa.jpg', '还车指引图2标题', 2);
COMMIT;

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
                         `id` bigint(20) NOT NULL AUTO_INCREMENT,
                         `created_at` bigint(20) DEFAULT NULL,
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
                         `admin_id` bigint(20) DEFAULT NULL,
                         `area_code` varchar(255) DEFAULT NULL,
                         `city_code` varchar(255) DEFAULT NULL,
                         `province_code` varchar(255) DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------
BEGIN;
INSERT INTO `store` (`id`, `created_at`, `deleted_at`, `updated_at`, `address`, `end_at`, `is_airport`, `is_enable`, `is_self_service`, `is_station`, `lat`, `lng`, `mark`, `name`, `service_phone`, `star_at`, `admin_id`, `area_code`, `city_code`, `province_code`) VALUES (1, NULL, NULL, NULL, '三亚湾路168号,近海虹路', '23:59', b'1', b'1', b'1', b'1', 18.2867, 109.446, '站内取还', '三亚店', '13427969604', '00:00', NULL, '460204', '4602', '46');
INSERT INTO `store` (`id`, `created_at`, `deleted_at`, `updated_at`, `address`, `end_at`, `is_airport`, `is_enable`, `is_self_service`, `is_station`, `lat`, `lng`, `mark`, `name`, `service_phone`, `star_at`, `admin_id`, `area_code`, `city_code`, `province_code`) VALUES (2, NULL, NULL, NULL, '天山一路壹方天第东北侧约90米', '23:59', b'1', b'1', b'1', b'1', 22.7679, 114.442, '', '惠阳店', '13427969604', '00:00', NULL, '441303', '4413', '44');
INSERT INTO `store` (`id`, `created_at`, `deleted_at`, `updated_at`, `address`, `end_at`, `is_airport`, `is_enable`, `is_self_service`, `is_station`, `lat`, `lng`, `mark`, `name`, `service_phone`, `star_at`, `admin_id`, `area_code`, `city_code`, `province_code`) VALUES (3, NULL, NULL, NULL, '凤翔西路24号', '23:59', b'0', b'1', b'0', b'1', 19.9873, 110.346, '', '车租婆租车东站店', '15308987118', '00:00', NULL, '460107', '4601', '46');
COMMIT;

-- ----------------------------
-- Table structure for store_banner
-- ----------------------------
DROP TABLE IF EXISTS `store_banner`;
CREATE TABLE `store_banner` (
                                `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                `created_at` bigint(20) DEFAULT NULL,
                                `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                `img_key` varchar(255) DEFAULT NULL,
                                `store_id` bigint(20) DEFAULT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store_banner
-- ----------------------------
BEGIN;
INSERT INTO `store_banner` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `store_id`) VALUES (1, NULL, NULL, NULL, '2022-3-17-17-39-12-1647509952912-231_3.jpg', 1);
INSERT INTO `store_banner` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `store_id`) VALUES (2, NULL, NULL, NULL, '2022-3-17-17-39-17-1647509957087-231_4.jpg', 1);
INSERT INTO `store_banner` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `store_id`) VALUES (3, NULL, NULL, NULL, '2022-3-17-17-41-12-1647510072337-231_3.jpg', 2);
INSERT INTO `store_banner` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `store_id`) VALUES (4, NULL, NULL, NULL, '2022-3-17-17-41-15-1647510075296-231_4.jpg', 2);
INSERT INTO `store_banner` (`id`, `created_at`, `deleted_at`, `updated_at`, `img_key`, `store_id`) VALUES (5, NULL, NULL, NULL, '2022-5-16-12-6-18-1652673978270-微信图片_20220516120606.jpg', 3);
COMMIT;

-- ----------------------------
-- Table structure for store_car_config
-- ----------------------------
DROP TABLE IF EXISTS `store_car_config`;
CREATE TABLE `store_car_config` (
                                    `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                    `created_at` bigint(20) DEFAULT NULL,
                                    `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                    `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                    `name` varchar(255) DEFAULT NULL,
                                    `store_id` bigint(20) DEFAULT NULL,
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store_car_config
-- ----------------------------
BEGIN;
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (1, NULL, NULL, NULL, '倒车雷达', 1);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (2, NULL, NULL, NULL, '倒车影像', 1);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (3, NULL, NULL, NULL, '雪地胎', 1);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (4, NULL, NULL, NULL, '行车记录仪', 1);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (5, NULL, NULL, NULL, '倒车雷达', 2);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (6, NULL, NULL, NULL, '倒车影像', 2);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (7, NULL, NULL, NULL, '雪地胎', 2);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (8, NULL, NULL, NULL, '行车记录仪', 2);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (9, NULL, NULL, NULL, '倒车雷达', 3);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (10, NULL, NULL, NULL, '倒车影像', 3);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (11, NULL, NULL, NULL, '雪地胎', 3);
INSERT INTO `store_car_config` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `store_id`) VALUES (12, NULL, NULL, NULL, '行车记录仪', 3);
COMMIT;

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `created_at` bigint(20) DEFAULT NULL,
                               `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `title` varchar(255) DEFAULT NULL,
                               `amount` int(11) DEFAULT NULL,
                               `user_id` bigint(20) DEFAULT NULL,
                               `pay_type` varchar(255) DEFAULT NULL,
                               `out_trade_no` varbinary(255) DEFAULT NULL,
                               `trade_no` varbinary(255) DEFAULT NULL,
                               `balance` int(11) DEFAULT NULL COMMENT '余额分',
                               `status` varchar(255) DEFAULT NULL,
                               `failed_reason` varchar(255) DEFAULT NULL,
                               `is_with_draw` bit(1) DEFAULT NULL,
                               `remark` varchar(255) DEFAULT NULL,
                               `out_biz_no` varchar(255) DEFAULT NULL,
                               `transaction_type` varchar(255) DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transaction
-- ----------------------------
BEGIN;
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (93, 1651427073448, NULL, NULL, '支付宝充值', 0, 21, 'ALIPAY', 0x32303232353231343438373734353638303030, 0x32303232303530323232303031343433303831343436393732363231, 0, 'FINISHED', NULL, b'0', NULL, NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (94, 1651434072094, NULL, NULL, '支付宝充值', 0, 21, 'ALIPAY', 0x3230323235323334303236363535333431303030, 0x32303232303530323232303031343433303831343437353836373137, 0, 'FINISHED', NULL, b'0', NULL, NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (95, NULL, NULL, NULL, '余额提现申请', 0, 21, 'ALIPAY', NULL, NULL, 0, 'FINISHED', NULL, b'1', 'remark', '20225334514637898000', NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (96, NULL, NULL, NULL, '余额提现申请', 0, 21, 'ALIPAY', NULL, NULL, 0, 'FAILED', '我不想给钱了', b'1', '我要提现', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (97, NULL, NULL, NULL, '余额提现申请', 0, 21, 'ALIPAY', NULL, NULL, 0, 'FINISHED', NULL, b'1', '我要提现', '20225334456412403000', NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (98, NULL, NULL, NULL, '余额提现申请', 0, 21, 'ALIPAY', NULL, NULL, 0, 'FINISHED', NULL, b'1', '给我提现吧', '20225334450117921000', NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (99, 1651495443331, NULL, NULL, '余额提现申请', 0, 21, 'ALIPAY', NULL, NULL, 0, 'FINISHED', NULL, b'1', '我要提现', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (100, NULL, NULL, NULL, '日产轩逸-用车超时费用', 1, 21, 'ALIPAY', 0x323032323531303130383438353737373635303030, 0x32303232303531303232303031343433303831343534313439363132, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (101, NULL, NULL, NULL, '日产轩逸-用车超时费用', 1, 21, 'ALIPAY', 0x323032323531303935353137373936323236303030, 0x32303232303531303232303031343433303831343532373936303436, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (102, NULL, NULL, NULL, '日产轩逸-用车超时费用', 1, 21, 'ALIPAY', 0x323032323531303935363332343934393639303030, 0x32303232303531303232303031343433303831343533373535383538, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (103, NULL, NULL, NULL, '日产轩逸-用车超时费用', 1, 21, 'ALIPAY', 0x323032323531303130373236323232383032303030, 0x32303232303531303232303031343433303831343533333630303130, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (104, NULL, NULL, NULL, '日产轩逸-用车超时费用', 1, 21, 'ALIPAY', 0x32303232353130313031343330313831373639303030, 0x32303232303531303232303031343433303831343534333539323633, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (105, NULL, NULL, NULL, '日产轩逸-用车超时费用', 1, 21, 'ALIPAY', 0x3230323235313031303136333239303735303030, 0x32303232303531303232303031343433303831343534333033313530, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (106, NULL, NULL, NULL, '日产轩逸-用车超时费用', 1, 21, 'ALIPAY', 0x323032323531303130313539383636363939303030, 0x32303232303531303232303031343433303831343532383631383438, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (107, NULL, NULL, NULL, '日产轩逸-用车超时费用', 1, 21, 'ALIPAY', 0x323032323531303130313539383636363939303030, 0x32303232303531303232303031343433303831343532383631383438, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (108, NULL, NULL, NULL, '日产轩逸-用车超时费用', 0, 21, 'ALIPAY', 0x32303232353130313031363133343735303137303030, 0x32303232303531303232303031343433303831343534333339373534, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (109, NULL, NULL, NULL, '日产轩逸-用车超时费用', 0, 21, 'ALIPAY', 0x323032323531303130333139353637383737303030, 0x32303232303531303232303031343433303831343533363035333335, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (110, NULL, NULL, NULL, '日产轩逸-用车超时费用', 0, 21, 'ALIPAY', 0x323032323531303935333534353637313339303030, 0x32303232303531303232303031343433303831343533373230353230, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (111, NULL, NULL, NULL, '日产轩逸-用车超时费用', 0, 21, 'ALIPAY', 0x32303232353130313032313533323737313136303030, 0x32303232303531303232303031343433303831343534333232363830, 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (112, NULL, NULL, NULL, '订单一级反佣', 0, 49, 'ALIPAY', '', '', 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (113, NULL, NULL, NULL, '订单二级反佣', 0, 21, 'ALIPAY', '', '', 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (114, NULL, NULL, NULL, '订单一级反佣', 0, 49, 'ALIPAY', '', '', 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (115, NULL, NULL, NULL, '订单二级反佣', 0, 21, 'ALIPAY', '', '', 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (116, 1652389116130, NULL, NULL, '余额提现申请', 0, 21, 'ALIPAY', NULL, NULL, 0, 'PROCESSING', NULL, b'1', '11111123123', NULL, 'COMMISSION');
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (117, 1652389201936, NULL, NULL, '余额提现申请', 0, 21, 'ALIPAY', NULL, NULL, 0, 'FINISHED', NULL, b'1', '123123', '2022513563934300000', 'COMMISSION');
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (118, 1652389468494, NULL, NULL, '余额提现申请', 0, 21, 'ALIPAY', NULL, NULL, 0, 'FAILED', '我不想给', b'1', '0.1', NULL, 'COMMISSION');
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (119, 1652411929693, NULL, NULL, '支付宝充值', 0, 21, 'ALIPAY', 0x323032323531333131313838373635313135303030, 0x32303232303531333232303031343433303831343536333932393833, 1, 'FINISHED', NULL, b'0', NULL, NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (124, 1652928917368, NULL, NULL, '日产轩逸-租车续费', 0, 21, 'ALIPAY', 0x32303232353139313035343430313536373036303030, 0x32303232303531393232303031343433303831343032313934373134, 1, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (125, 1652928988636, NULL, NULL, '日产轩逸-租车续费(1)', 0, 21, 'ALIPAY', 0x32303232353139313035363139343430393232303030, 0x32303232303531393232303031343433303831343032363135323239, 1, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (126, 1652929035737, NULL, NULL, '日产轩逸-租车续费(2天)', 0, 21, 'ALIPAY', 0x323032323531393130353736393436383938303030, 0x32303232303531393232303031343433303831343032343731363035, 1, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (127, 1669505113683, NULL, NULL, '续租', 0, 119, 'WECHAT', 0x32303232313132373732323334393231313438303030, '', 0, 'FINISHED', NULL, b'0', '0', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (128, 1669509778216, NULL, NULL, '续租', 0, 119, 'WECHAT', 0x323032323131323737363538323230303837303030, '', 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (129, 1669512566899, NULL, NULL, '过期费用补交', 0, 119, 'WECHAT', 0x32303232313132373932383333313032313533303030, '', 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (130, 1669771905149, NULL, NULL, '余额提现申请', -1, 119, 'ALIPAY', NULL, NULL, 9900, 'PROCESSING', NULL, b'1', '微信提现测试', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (131, 1669772266775, NULL, NULL, '余额提现申请', -1, 119, 'ALIPAY', NULL, NULL, 9800, 'PROCESSING', NULL, b'1', '微信提现测试', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (132, 1669772543605, NULL, NULL, '余额提现申请', -1, 119, 'WECHAT', NULL, NULL, 9700, 'FAILED', '我不想给钱了', b'1', '微信提现测试', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (133, 1669851578830, NULL, NULL, '过期费用补交', 0, 119, 'WECHAT', 0x323032323132313733383431313236363838303030, '', 9800, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (134, NULL, NULL, NULL, '订单一级反佣', 0, 126, 'ALIPAY', '', '', 0, 'FINISHED', NULL, b'0', '', NULL, 'COMMISSION');
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (135, NULL, NULL, NULL, '订单一级反佣', 0, 126, 'ALIPAY', '', '', 40, 'FINISHED', NULL, b'0', '', NULL, 'COMMISSION');
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (136, NULL, NULL, NULL, '订单一级反佣', 0, 126, 'ALIPAY', '', '', 40, 'FINISHED', NULL, b'0', '', NULL, 'COMMISSION');
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (137, 1670028096215, NULL, NULL, '续租', 0, 127, 'WECHAT', 0x3230323231323338343131373430373237303030, '', 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (138, 1670028633700, NULL, NULL, '续租', 0, 127, 'WECHAT', 0x32303232313233383336313037303033303030, '', 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (139, 1670060389824, NULL, NULL, '续租', 0, 132, 'WECHAT', 0x32303232313233313733393339323332353136303030, '', 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
INSERT INTO `transaction` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `amount`, `user_id`, `pay_type`, `out_trade_no`, `trade_no`, `balance`, `status`, `failed_reason`, `is_with_draw`, `remark`, `out_biz_no`, `transaction_type`) VALUES (140, 1670065513846, NULL, NULL, '续租', 0, 127, 'WECHAT', 0x323032323132333139343533313135363832303030, '', 0, 'FINISHED', NULL, b'0', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
                        `id` bigint(20) NOT NULL AUTO_INCREMENT,
                        `created_at` bigint(20) DEFAULT NULL,
                        `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                        `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                        `is_enabled` bit(1) DEFAULT NULL,
                        `password` varchar(255) DEFAULT NULL,
                        `username` varchar(255) DEFAULT NULL,
                        `alipay_account_id` bigint(20) DEFAULT NULL,
                        `store_id` bigint(20) DEFAULT NULL,
                        `balance` double DEFAULT '0' COMMENT '余额: 分',
                        `alipay_qr` varchar(255) DEFAULT NULL,
                        `commission` decimal(10,2) DEFAULT NULL COMMENT '佣金: 分',
                        `withdrawn_commission` decimal(10,2) DEFAULT NULL,
                        `withdrawal_in_progress_commission` decimal(10,2) DEFAULT NULL,
                        `p_id` bigint(20) DEFAULT NULL,
                        `id_car_frontal` varchar(255) DEFAULT NULL,
                        `id_car_back` varchar(255) DEFAULT NULL,
                        `driver_license` varchar(255) DEFAULT NULL,
                        `wechat_account_id` bigint(20) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (1, 1647430070000, NULL, '2022-03-16 19:27:50', b'1', 'C+jNtUcwGcqNhaklKgaDX0Y5QvK3NsBIt9F06kNjLwg=', 'admin', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (3, NULL, NULL, NULL, b'1', 'C+jNtUcwGcqNhaklKgaDX0Y5QvK3NsBIt9F06kNjLwg=', '三亚店', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (4, NULL, NULL, NULL, b'1', 'C+jNtUcwGcqNhaklKgaDX0Y5QvK3NsBIt9F06kNjLwg=', '惠阳店', NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (21, NULL, NULL, NULL, b'1', NULL, NULL, 19, NULL, 0, 'https://mass.alipay.com/wsdk/img?fileid=A*MSs1Q7zqUjIAAAAAAAAAAAAAAQAAAQ&bz=am_afts_openhome&zoom=227w_277h', 1.00, 0.10, 0.10, NULL, '1653116495022', '1653116476412', '1653128080935', NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (22, NULL, NULL, NULL, b'1', NULL, NULL, 20, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (24, NULL, NULL, NULL, b'1', NULL, NULL, 22, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (25, NULL, NULL, NULL, b'1', NULL, NULL, 23, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (26, NULL, NULL, NULL, b'1', NULL, NULL, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (27, NULL, NULL, NULL, b'1', NULL, NULL, 25, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (28, NULL, NULL, NULL, b'1', NULL, NULL, 26, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (29, NULL, NULL, NULL, b'1', NULL, NULL, 27, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (30, NULL, NULL, NULL, b'1', NULL, NULL, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (31, NULL, NULL, NULL, b'1', NULL, NULL, 29, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (32, NULL, NULL, NULL, b'1', NULL, NULL, 30, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (33, NULL, NULL, NULL, b'1', NULL, NULL, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (34, NULL, NULL, NULL, b'1', NULL, NULL, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (35, NULL, NULL, NULL, b'1', NULL, NULL, 33, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (36, NULL, NULL, NULL, b'1', NULL, NULL, 34, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (37, NULL, NULL, NULL, b'1', NULL, NULL, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (38, NULL, NULL, NULL, b'1', NULL, NULL, 36, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (39, NULL, NULL, NULL, b'1', NULL, NULL, 37, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (40, NULL, NULL, NULL, b'1', NULL, NULL, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (41, NULL, NULL, NULL, b'1', NULL, NULL, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (42, NULL, NULL, NULL, b'1', NULL, NULL, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (43, NULL, NULL, NULL, b'1', NULL, NULL, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (44, NULL, NULL, NULL, b'1', NULL, NULL, 42, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (45, NULL, NULL, NULL, b'1', NULL, NULL, 43, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (46, NULL, NULL, NULL, b'1', NULL, NULL, 44, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (47, NULL, NULL, NULL, b'1', NULL, NULL, 45, NULL, 0, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (48, NULL, NULL, NULL, b'1', NULL, NULL, 46, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (49, NULL, NULL, NULL, b'1', NULL, NULL, 47, NULL, 0, 'https://mass.alipay.com/wsdk/img?fileid=A*zXj-ToJPNdoAAAAAAAAAAAAAAQAAAQ&bz=am_afts_openhome&zoom=227w_277h', 0.00, NULL, NULL, 21, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (50, NULL, NULL, NULL, b'1', NULL, NULL, 48, NULL, 0, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (51, NULL, NULL, NULL, b'1', NULL, NULL, 49, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (52, NULL, NULL, NULL, b'1', NULL, NULL, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (53, NULL, NULL, NULL, b'1', NULL, NULL, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (54, NULL, NULL, NULL, b'1', NULL, NULL, 52, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (55, NULL, NULL, NULL, b'1', NULL, NULL, 53, NULL, 0, 'https://mass.alipay.com/wsdk/img?fileid=A*15tMToBfv6kAAAAAAAAAAAAAAQAAAQ&bz=am_afts_openhome&zoom=227w_277h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (56, NULL, NULL, NULL, b'1', NULL, NULL, 54, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (57, NULL, NULL, NULL, b'1', NULL, NULL, 55, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (58, NULL, NULL, NULL, b'1', NULL, NULL, 56, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (59, NULL, NULL, NULL, b'1', 'C+jNtUcwGcqNhaklKgaDX0Y5QvK3NsBIt9F06kNjLwg=', 'chezupo', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (60, NULL, NULL, NULL, b'1', NULL, NULL, 57, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (61, NULL, NULL, NULL, b'1', NULL, NULL, 58, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (62, NULL, NULL, NULL, b'1', NULL, NULL, 59, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (63, NULL, NULL, NULL, b'1', NULL, NULL, 60, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (64, NULL, NULL, NULL, b'1', NULL, NULL, 61, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (65, NULL, NULL, NULL, b'1', NULL, NULL, 62, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (66, NULL, NULL, NULL, b'1', NULL, NULL, 63, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (67, NULL, NULL, NULL, b'1', NULL, NULL, 64, NULL, 0, 'https://mass.alipay.com/wsdk/img?fileid=A*x68eS6An-BMAAAAAAAAAAAAAAQAAAQ&bz=am_afts_openhome&zoom=227w_277h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (68, NULL, NULL, NULL, b'1', NULL, NULL, 65, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (69, NULL, NULL, NULL, b'1', NULL, NULL, 66, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (70, NULL, NULL, NULL, b'1', NULL, NULL, 67, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (71, NULL, NULL, NULL, b'1', NULL, NULL, 68, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (72, NULL, NULL, NULL, b'1', NULL, NULL, 69, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (73, NULL, NULL, NULL, b'1', NULL, NULL, 70, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (74, NULL, NULL, NULL, b'1', NULL, NULL, 71, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (75, NULL, NULL, NULL, b'1', NULL, NULL, 72, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (76, NULL, NULL, NULL, b'1', NULL, NULL, 73, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (77, NULL, NULL, NULL, b'1', NULL, NULL, 74, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (78, NULL, NULL, NULL, b'1', NULL, NULL, 75, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (79, NULL, NULL, NULL, b'1', NULL, NULL, 76, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (80, NULL, NULL, NULL, b'1', NULL, NULL, 77, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (81, NULL, NULL, NULL, b'1', NULL, NULL, 78, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (82, NULL, NULL, NULL, b'1', NULL, NULL, 79, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (83, NULL, NULL, NULL, b'1', NULL, NULL, 80, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (84, NULL, NULL, NULL, b'1', NULL, NULL, 81, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (85, NULL, NULL, NULL, b'1', NULL, NULL, 82, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (86, NULL, NULL, NULL, b'1', NULL, NULL, 83, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (87, NULL, NULL, NULL, b'1', NULL, NULL, 84, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (88, NULL, NULL, NULL, b'1', NULL, NULL, 85, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (89, NULL, NULL, NULL, b'1', NULL, NULL, 86, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (90, NULL, NULL, NULL, b'1', NULL, NULL, 87, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (91, NULL, NULL, NULL, b'1', NULL, NULL, 88, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (92, NULL, NULL, NULL, b'1', NULL, NULL, 89, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (93, NULL, NULL, NULL, b'1', NULL, NULL, 90, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (94, NULL, NULL, NULL, b'1', NULL, NULL, 91, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (95, NULL, NULL, NULL, b'1', NULL, NULL, 92, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (96, NULL, NULL, NULL, b'1', NULL, NULL, 93, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (97, NULL, NULL, NULL, b'1', NULL, NULL, 94, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (98, NULL, NULL, NULL, b'1', NULL, NULL, 95, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (99, NULL, NULL, NULL, b'1', NULL, NULL, 96, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (100, NULL, NULL, NULL, b'1', NULL, NULL, 97, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (101, NULL, NULL, NULL, b'1', NULL, NULL, 98, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (102, NULL, NULL, NULL, b'1', NULL, NULL, 99, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (103, NULL, NULL, NULL, b'1', NULL, NULL, 100, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (104, NULL, NULL, NULL, b'1', NULL, NULL, 101, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (105, NULL, NULL, NULL, b'1', NULL, NULL, 102, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (106, NULL, NULL, NULL, b'1', NULL, NULL, 103, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (107, NULL, NULL, NULL, b'1', NULL, NULL, 104, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (119, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, 98, 'https://mass.alipay.com/wsdk/img?fileid=A*nILXTqFjKycAAAAAAAAAAAAAAQAAAQ&bz=am_afts_openhome&zoom=227w_277h', NULL, NULL, NULL, NULL, '1668161586065', '1668161580500', '1668161589350', 116);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (120, NULL, NULL, NULL, b'1', NULL, NULL, 105, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (121, NULL, NULL, NULL, b'1', NULL, NULL, 106, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (122, NULL, NULL, NULL, b'1', NULL, NULL, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (123, NULL, NULL, NULL, b'1', NULL, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (124, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 118);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (125, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 119);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (126, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, 0.40800000000000003, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 120);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (127, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 126, '1669930684179', '1669930696156', '1669930639900', 121);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (128, NULL, NULL, NULL, b'1', NULL, NULL, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (129, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 122);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (130, NULL, NULL, NULL, b'1', NULL, NULL, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (131, NULL, NULL, NULL, b'1', NULL, NULL, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (132, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1669871917595', '1669871908372', '1669871938353', 123);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (133, NULL, NULL, NULL, b'1', NULL, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (134, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 124);
INSERT INTO `user` (`id`, `created_at`, `deleted_at`, `updated_at`, `is_enabled`, `password`, `username`, `alipay_account_id`, `store_id`, `balance`, `alipay_qr`, `commission`, `withdrawn_commission`, `withdrawal_in_progress_commission`, `p_id`, `id_car_frontal`, `id_car_back`, `driver_license`, `wechat_account_id`) VALUES (135, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125);
COMMIT;

-- ----------------------------
-- Table structure for user_contact
-- ----------------------------
DROP TABLE IF EXISTS `user_contact`;
CREATE TABLE `user_contact` (
                                `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                `created_at` bigint(20) DEFAULT NULL,
                                `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                `name` varchar(255) DEFAULT NULL,
                                `phone` varchar(255) DEFAULT NULL,
                                `relation` varchar(255) DEFAULT NULL,
                                `user_id` bigint(20) DEFAULT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_contact
-- ----------------------------
BEGIN;
INSERT INTO `user_contact` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `phone`, `relation`, `user_id`) VALUES (1, NULL, '2022-04-28 06:00:32', NULL, 'hello', 'phone2', 'relation2', 21);
INSERT INTO `user_contact` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `phone`, `relation`, `user_id`) VALUES (63, NULL, '2022-04-28 06:02:34', NULL, '13123', '123123', '123123', 21);
INSERT INTO `user_contact` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `phone`, `relation`, `user_id`) VALUES (64, NULL, '2022-04-28 06:02:03', NULL, '1312', '123123', '123123', 21);
INSERT INTO `user_contact` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `phone`, `relation`, `user_id`) VALUES (65, NULL, '2022-04-28 06:00:56', NULL, '12312', '12312', '12323', 21);
INSERT INTO `user_contact` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `phone`, `relation`, `user_id`) VALUES (66, NULL, '2022-04-28 06:05:39', NULL, '姓名', '13425678956', '123', 21);
INSERT INTO `user_contact` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `phone`, `relation`, `user_id`) VALUES (67, NULL, '2022-04-28 06:09:57', NULL, '12312', '12312', '123123', 21);
INSERT INTO `user_contact` (`id`, `created_at`, `deleted_at`, `updated_at`, `name`, `phone`, `relation`, `user_id`) VALUES (68, NULL, '2022-04-28 08:24:01', NULL, '465645545', '545454', '526554', 21);
COMMIT;

-- ----------------------------
-- Table structure for user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `user_coupon`;
CREATE TABLE `user_coupon` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `created_at` bigint(20) DEFAULT NULL,
                               `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `expired` bigint(20) DEFAULT NULL,
                               `user_id` int(11) DEFAULT NULL,
                               `coupon_id` int(11) DEFAULT NULL,
                               `title` varchar(255) DEFAULT NULL,
                               `content` text,
                               `amount` float DEFAULT NULL,
                               `meet_amount` float DEFAULT NULL,
                               `is_with_holiday` int(11) DEFAULT NULL,
                               `is_with_rent` int(11) DEFAULT NULL,
                               `is_with_service_amount` int(11) DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_coupon
-- ----------------------------
BEGIN;
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (285, 1650899551682, NULL, NULL, 60, 21, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (286, 1650903121630, '2022-04-28 08:22:45', NULL, 5, 21, 41, '满0.02减0.01元优惠券', '<p>faf</p>', 0.01, 0.02, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (287, 1651015696677, NULL, NULL, 60, 22, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (289, 1651036744314, NULL, NULL, 60, 24, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (290, 1651038083929, NULL, NULL, 60, 25, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (291, 1651038180402, NULL, NULL, 60, 26, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (292, 1651039194869, NULL, NULL, 60, 27, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (293, 1651039799084, NULL, NULL, 60, 28, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (294, 1651040049956, NULL, NULL, 60, 29, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (295, 1651134409565, '2022-05-03 18:46:56', NULL, 60, 21, 3, '普卡生日优惠', '<h3 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h3><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">1 .生日优惠券使用有效期为生日之日起60天有 效； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">2 .仅对车辆租赁费及门店服务费部分进行减免， 其他费用正常收取； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">3 .一年内仅可享受一次生日优惠，不可与其他优 惠同享，租期包含任意法定节假日（含公休及调 休）及前一天不能使用； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">4 .仅限一嗨国内自驾业务使用。</span></span></span></p><p></p>', 50, 0, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (296, 1651134409565, '2022-05-03 14:01:18', NULL, 5, 21, 41, '满0.02减0.01元优惠券', '<p>faf</p>', 0.01, 0.02, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (297, 1651138114480, NULL, NULL, 60, 30, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (298, 1651138127973, NULL, NULL, 60, 31, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (299, 1651155014736, NULL, NULL, 60, 32, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (300, 1651219514124, NULL, NULL, 60, 33, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (301, 1651391079331, NULL, NULL, 60, 34, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (302, 1651391222068, NULL, NULL, 60, 35, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (303, 1651392048580, NULL, NULL, 60, 36, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (304, 1651392191322, NULL, NULL, 60, 37, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (305, 1651396960134, NULL, NULL, 60, 38, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (306, 1651586644089, '2022-05-03 14:09:29', NULL, 5, 21, 41, '满0.02减0.01元优惠券', '<p>faf</p>', 0.01, 0.02, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (307, 1651587050138, '2022-05-03 14:11:15', NULL, 5, 21, 41, '满0.02减0.01元优惠券', '<p>faf</p>', 0.01, 0.02, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (308, 1651587106573, '2022-05-03 14:12:28', NULL, 5, 21, 41, '满0.02减0.01元优惠券', '<p>faf</p>', 0.01, 0.02, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (309, 1651587204010, '2022-05-03 14:15:49', NULL, 5, 21, 41, '满0.02减0.01元优惠券', '<p>faf</p>', 0.01, 0.02, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (310, 1651587350316, '2022-05-03 14:19:03', NULL, 5, 21, 41, '满0.02减0.01元优惠券', '<p>faf</p>', 0.01, 0.02, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (311, 1651587668739, '2022-05-03 14:23:32', NULL, 5, 21, 41, '满0.02减0.01元优惠券', '<p>faf</p>', 0.01, 0.02, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (312, 1651603956175, '2022-05-03 18:53:18', NULL, 60, 21, 3, '普卡生日优惠', '<h3 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h3><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">1 .生日优惠券使用有效期为生日之日起60天有 效； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">2 .仅对车辆租赁费及门店服务费部分进行减免， 其他费用正常收取； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">3 .一年内仅可享受一次生日优惠，不可与其他优 惠同享，租期包含任意法定节假日（含公休及调 休）及前一天不能使用； </span></span></span></p><p><span style=\"font-size:12px\"><span style=\"line-height:2\"><span style=\"color:#999999\">4 .仅限一嗨国内自驾业务使用。</span></span></span></p><p></p>', 50, 0, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (313, 1651715264566, NULL, NULL, 60, 39, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (314, 1651898321204, NULL, NULL, 60, 40, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (315, 1652132328462, NULL, NULL, 60, 41, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (316, 1652161206317, NULL, NULL, 60, 42, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (317, 1652264949295, NULL, NULL, 60, 43, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (318, 1652310150434, NULL, NULL, 60, 44, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (319, 1652324083547, NULL, NULL, 60, 45, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (320, 1652324770257, NULL, NULL, 60, 46, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (321, 1652324885244, NULL, NULL, 60, 47, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (322, 1652326318783, NULL, NULL, 60, 48, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (323, 1652326355148, NULL, NULL, 60, 49, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (324, 1652329254858, NULL, NULL, 60, 50, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (325, 1652401860313, NULL, NULL, 60, 51, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (326, 1652403575133, NULL, NULL, 60, 52, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (327, 1652413502084, NULL, NULL, 60, 53, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (328, 1652414587422, NULL, NULL, 60, 54, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (329, 1652415662864, NULL, NULL, 60, 55, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (330, 1652421609337, NULL, NULL, 60, 56, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (331, 1652662446612, NULL, NULL, 60, 57, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (332, 1652667274619, '2022-05-16 12:48:22', NULL, 60, 58, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (333, 1652788262996, NULL, NULL, 60, 60, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (334, 1652832603964, NULL, NULL, 60, 61, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (335, 1652833255477, NULL, NULL, 60, 62, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (336, 1652833289041, NULL, NULL, 60, 63, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (337, 1652839986328, NULL, NULL, 60, 64, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (338, 1652866508894, NULL, NULL, 60, 65, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (339, 1652928655048, NULL, NULL, 60, 66, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (340, 1653020420799, NULL, NULL, 60, 67, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (341, 1653023152856, NULL, NULL, 60, 68, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (342, 1653028908112, NULL, NULL, 60, 69, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (343, 1653132290264, NULL, NULL, 60, 70, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (344, 1653228765609, NULL, NULL, 60, 71, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (345, 1653460356818, NULL, NULL, 60, 72, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (346, 1654136320744, NULL, NULL, 60, 73, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (347, 1654570566296, NULL, NULL, 60, 74, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (348, 1654613827300, NULL, NULL, 60, 75, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (349, 1654841190882, NULL, NULL, 60, 76, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (350, 1655102092154, NULL, NULL, 60, 77, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (351, 1656676562137, NULL, NULL, 60, 78, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (352, 1656754028321, NULL, NULL, 60, 79, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (353, 1656924264788, NULL, NULL, 60, 80, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (354, 1657354856186, NULL, NULL, 60, 81, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (355, 1657428962174, NULL, NULL, 60, 82, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (356, 1657518576146, NULL, NULL, 60, 83, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (357, 1657899035495, NULL, NULL, 60, 84, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (358, 1657899313343, NULL, NULL, 60, 85, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (359, 1658029524455, NULL, NULL, 60, 86, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (360, 1658168863016, NULL, NULL, 60, 87, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (361, 1659182161160, NULL, NULL, 60, 88, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (362, 1659271826528, NULL, NULL, 60, 89, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (363, 1659535574781, NULL, NULL, 60, 90, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (364, 1659535836779, NULL, NULL, 60, 91, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (365, 1659698056014, NULL, NULL, 60, 92, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (366, 1659944220974, NULL, NULL, 60, 93, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (367, 1660216637635, NULL, NULL, 60, 94, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (368, 1660223360035, NULL, NULL, 60, 95, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (369, 1662839661824, NULL, NULL, 60, 96, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (370, 1663042624571, NULL, NULL, 60, 97, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (371, 1664068663015, NULL, NULL, 60, 98, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (372, 1665498336492, NULL, NULL, 60, 99, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (373, 1665984172796, NULL, NULL, 60, 100, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (374, 1666096651289, NULL, NULL, 60, 101, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (375, 1666785274081, NULL, NULL, 60, 102, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (376, 1666932854581, NULL, NULL, 60, 103, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (377, 1667274902147, NULL, NULL, 60, 104, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (378, 1667287210802, NULL, NULL, 60, 105, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (379, 1667648521172, NULL, NULL, 60, 106, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (380, 1667866021938, NULL, NULL, 60, 107, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (392, 1667899037681, NULL, NULL, 60, 119, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (393, 1669259203717, NULL, NULL, 60, 120, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (394, 1669385090136, NULL, NULL, 60, 121, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (395, 1669855017005, NULL, NULL, 60, 122, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (396, 1669858337196, NULL, NULL, 60, 123, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (397, 1669860008274, NULL, NULL, 60, 124, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (398, 1669860008271, NULL, NULL, 60, 125, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (399, 1669862021681, NULL, NULL, 60, 126, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (400, 1669862305298, NULL, NULL, 60, 127, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (401, 1669863026705, NULL, NULL, 60, 128, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (402, 1669866060450, NULL, NULL, 60, 129, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (403, 1669866988326, NULL, NULL, 60, 130, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (404, 1669869717559, NULL, NULL, 60, 131, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (405, 1669870791932, NULL, NULL, 60, 132, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (406, 1669873829159, NULL, NULL, 60, 133, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (407, 1670049253554, NULL, NULL, 60, 134, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
INSERT INTO `user_coupon` (`id`, `created_at`, `deleted_at`, `updated_at`, `expired`, `user_id`, `coupon_id`, `title`, `content`, `amount`, `meet_amount`, `is_with_holiday`, `is_with_rent`, `is_with_service_amount`) VALUES (408, 1670065946644, NULL, NULL, 60, 135, 1, '新用户满200减100优惠券', '<h2 style=\"text-align:center;\"><span style=\"color:#07a9fe\">使用规则</span></h2><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\"> 1、新用户注册后，首次租车租期满2天及以上 可参加该活动，订单第一天车辆租赁费及门店 服务费低于100元的减免第一天车辆租赁费及 门店服务费费用，订单第一天车辆租赁费及门 店服务费高于100元的最高抵扣车辆租赁费及 门店服务费100元，其他费用正常收取； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">2、不可重复使用，限新用户本人使用，不与租车其他优惠活动并用，仅限租车国 内自驾业务使用； </span></span></span></p><p><span style=\"line-height:2\"><span style=\"font-size:12px\"><span style=\"color:#999999\">3、新用户指同一账户在车租婆从未有过成功订单(已验证状态的订单)的用户，同一身份证下通过任意手机号注册的账户均属于同一账户。  </span></span></span></p>', 100, 200, 0, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
                              `user_id` bigint(20) NOT NULL,
                              `roles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
BEGIN;
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (1, 'ROLE_ADMIN');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (2, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (3, 'ROLE_BUSINESS');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (4, 'ROLE_BUSINESS');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (21, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (22, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (23, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (24, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (25, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (26, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (27, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (28, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (29, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (30, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (31, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (32, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (33, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (34, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (35, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (36, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (37, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (38, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (39, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (40, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (41, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (42, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (43, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (44, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (45, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (46, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (47, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (48, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (49, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (50, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (51, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (52, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (53, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (54, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (55, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (56, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (57, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (58, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (59, 'ROLE_BUSINESS');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (60, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (61, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (62, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (63, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (64, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (65, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (66, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (67, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (68, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (69, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (70, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (71, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (72, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (73, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (74, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (75, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (76, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (77, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (78, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (79, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (80, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (81, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (82, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (83, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (84, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (85, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (86, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (87, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (88, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (89, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (90, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (91, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (92, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (93, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (94, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (95, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (96, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (97, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (98, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (99, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (100, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (101, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (102, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (103, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (104, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (105, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (106, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (107, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (120, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (121, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (119, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (119, 'ROLE_PROMOTER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (122, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (123, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (125, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (124, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (126, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (127, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (128, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (129, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (130, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (131, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (132, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (133, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (134, 'ROLE_USER');
INSERT INTO `user_roles` (`user_id`, `roles`) VALUES (135, 'ROLE_USER');
COMMIT;

-- ----------------------------
-- Table structure for violation
-- ----------------------------
DROP TABLE IF EXISTS `violation`;
CREATE TABLE `violation` (
                             `id` bigint(20) NOT NULL AUTO_INCREMENT,
                             `created_at` bigint(20) DEFAULT NULL,
                             `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                             `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                             `title` varchar(255) DEFAULT NULL,
                             `description` text,
                             `images` text,
                             `amount` double DEFAULT NULL,
                             `freeze_amount` double DEFAULT NULL,
                             `user_id` bigint(20) DEFAULT NULL,
                             `order_id` bigint(20) DEFAULT NULL,
                             `alipay_out_trade_no` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of violation
-- ----------------------------
BEGIN;
INSERT INTO `violation` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `description`, `images`, `amount`, `freeze_amount`, `user_id`, `order_id`, `alipay_out_trade_no`) VALUES (67, 1652133949149, NULL, NULL, '1313', 'fasfas', '[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-10-6-5-48-1652133948100-logo.png\"]', 0.01, 0.01, 21, 51, '20225106549149650000');
INSERT INTO `violation` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `description`, `images`, `amount`, `freeze_amount`, `user_id`, `order_id`, `alipay_out_trade_no`) VALUES (68, 1652133954995, NULL, NULL, '1313', 'fasfas', '[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-5-10-6-5-48-1652133948100-logo.png\"]', 0.01, 0, 21, 51, '20225106554995441000');
INSERT INTO `violation` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `description`, `images`, `amount`, `freeze_amount`, `user_id`, `order_id`, `alipay_out_trade_no`) VALUES (69, 1670030629549, NULL, NULL, '违章测试标题', '违章测试描述', '[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-9-30-46-1670031046658-image.png\"]', 0.3, 0, 127, 118, '202212392349549110000');
INSERT INTO `violation` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `description`, `images`, `amount`, `freeze_amount`, `user_id`, `order_id`, `alipay_out_trade_no`) VALUES (70, 1670030835375, NULL, NULL, '1', '2', '[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-9-30-46-1670031046658-image.png\"]', 0.1, 0, 127, 118, '202212392715375043000');
INSERT INTO `violation` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `description`, `images`, `amount`, `freeze_amount`, `user_id`, `order_id`, `alipay_out_trade_no`) VALUES (71, 1670031070907, NULL, NULL, '标题', '描述', '[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-9-30-46-1670031046658-image.png\"]', 0.01, 0, 127, 118, '202212393110906616000');
INSERT INTO `violation` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `description`, `images`, `amount`, `freeze_amount`, `user_id`, `order_id`, `alipay_out_trade_no`) VALUES (72, 1670031190678, NULL, NULL, '违章测试标题', '违章测试说明', '[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-9-32-35-1670031155006-image.png\",\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-9-32-39-1670031159148-image.png\"]', 0.01, 0, 127, 118, '202212393310678597000');
INSERT INTO `violation` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `description`, `images`, `amount`, `freeze_amount`, `user_id`, `order_id`, `alipay_out_trade_no`) VALUES (73, 1670062300500, NULL, NULL, '违章', '2233', '[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-18-8-12-1670062092862-3e30f3e8365c4b8c2f8842f5dae1bf5.jpg\"]', 0.01, 0, 132, 120, '2022123181140500227000');
INSERT INTO `violation` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `description`, `images`, `amount`, `freeze_amount`, `user_id`, `order_id`, `alipay_out_trade_no`) VALUES (74, 1670062446999, NULL, NULL, '违章', '2233', '[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-18-8-12-1670062092862-3e30f3e8365c4b8c2f8842f5dae1bf5.jpg\"]', 0.01, 0, 132, 120, '202212318146999703000');
INSERT INTO `violation` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `description`, `images`, `amount`, `freeze_amount`, `user_id`, `order_id`, `alipay_out_trade_no`) VALUES (75, 1670062469028, NULL, NULL, '违章', '2233', '[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-18-8-12-1670062092862-3e30f3e8365c4b8c2f8842f5dae1bf5.jpg\"]', 0.01, 0, 132, 120, '202212318142928572000');
INSERT INTO `violation` (`id`, `created_at`, `deleted_at`, `updated_at`, `title`, `description`, `images`, `amount`, `freeze_amount`, `user_id`, `order_id`, `alipay_out_trade_no`) VALUES (76, 1670062517886, NULL, NULL, '违章违章', '5566', '[\"https://zhuche-a1001.qiniu.wuchuheng.com/2022-12-3-18-11-49-1670062309001-67c830c597641a3bc54c9bacbba4ea2.jpg\"]', 0.01, 0, 132, 120, '2022123181517886483000');
COMMIT;

-- ----------------------------
-- Table structure for wechat_account
-- ----------------------------
DROP TABLE IF EXISTS `wechat_account`;
CREATE TABLE `wechat_account` (
                                  `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                  `created_at` bigint(20) DEFAULT NULL,
                                  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                  `avatar` varchar(255) DEFAULT NULL,
                                  `city` varchar(255) DEFAULT NULL,
                                  `code` varchar(255) DEFAULT NULL,
                                  `country_code` varchar(255) DEFAULT NULL,
                                  `gender` varchar(255) DEFAULT NULL,
                                  `nick_name` varchar(255) DEFAULT NULL,
                                  `phone` varchar(255) DEFAULT NULL,
                                  `province` varchar(255) DEFAULT NULL,
                                  `user_id` varchar(255) DEFAULT NULL,
                                  `is_authorize_base_info` int(11) DEFAULT NULL,
                                  `open_id` varchar(255) DEFAULT NULL,
                                  `session_key` varchar(255) DEFAULT NULL,
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_account
-- ----------------------------
BEGIN;
INSERT INTO `wechat_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `avatar`, `city`, `code`, `country_code`, `gender`, `nick_name`, `phone`, `province`, `user_id`, `is_authorize_base_info`, `open_id`, `session_key`) VALUES (116, NULL, NULL, NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '', '', '', '0', '微信用户', '13427969604', '', NULL, 1, 'o91vt5U9XdnojT2gMdAjEgI6Q-yA1', 'VLtdWqDaiV6OxZh9kmHkqw==');
INSERT INTO `wechat_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `avatar`, `city`, `code`, `country_code`, `gender`, `nick_name`, `phone`, `province`, `user_id`, `is_authorize_base_info`, `open_id`, `session_key`) VALUES (118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'o91vt5WfEWW__Dc8dcsKYNTX5EK4', 'UygRVkjSElppwslAjIiuuw==');
INSERT INTO `wechat_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `avatar`, `city`, `code`, `country_code`, `gender`, `nick_name`, `phone`, `province`, `user_id`, `is_authorize_base_info`, `open_id`, `session_key`) VALUES (119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'o91vt5R9CexnhflSWQUJ83jV0otM', 'cmjuUkXsNq3C7oOyj8iTkw==');
INSERT INTO `wechat_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `avatar`, `city`, `code`, `country_code`, `gender`, `nick_name`, `phone`, `province`, `user_id`, `is_authorize_base_info`, `open_id`, `session_key`) VALUES (120, NULL, NULL, NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '', '', '', '0', '微信用户', NULL, '', NULL, 1, 'o91vt5U9XdnojT2gMdAjEgI6Q-yA2', '+tnjbhzM+0W9zDXibh5iZQ==');
INSERT INTO `wechat_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `avatar`, `city`, `code`, `country_code`, `gender`, `nick_name`, `phone`, `province`, `user_id`, `is_authorize_base_info`, `open_id`, `session_key`) VALUES (121, NULL, NULL, NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '', '', '', '0', '微信用户', '13427969604', '', NULL, 1, 'o91vt5U9XdnojT2gMdAjEgI6Q-yA', '0boNFwYlRkPpE75AkoH6/g==');
INSERT INTO `wechat_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `avatar`, `city`, `code`, `country_code`, `gender`, `nick_name`, `phone`, `province`, `user_id`, `is_authorize_base_info`, `open_id`, `session_key`) VALUES (122, NULL, NULL, NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '', '', '', '0', '微信用户', NULL, '', NULL, 1, 'o91vt5WPukZGZ-58Iop30PW2LNxU', '0uO3djgmQUJn+L1+14FsoQ==');
INSERT INTO `wechat_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `avatar`, `city`, `code`, `country_code`, `gender`, `nick_name`, `phone`, `province`, `user_id`, `is_authorize_base_info`, `open_id`, `session_key`) VALUES (123, NULL, NULL, NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '', '', '', '0', '微信用户', '15308987118', '', NULL, 1, 'o91vt5ZDv0uA3-0Ym7pH8GDahspw', 'mHfFcU4L18e2ZrMX0P63fQ==');
INSERT INTO `wechat_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `avatar`, `city`, `code`, `country_code`, `gender`, `nick_name`, `phone`, `province`, `user_id`, `is_authorize_base_info`, `open_id`, `session_key`) VALUES (124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'o91vt5SuWHaEn2nHZLkNuDEiWhQI', 'm6xe2IYVPlAEqAk3NehDoQ==');
INSERT INTO `wechat_account` (`id`, `created_at`, `deleted_at`, `updated_at`, `avatar`, `city`, `code`, `country_code`, `gender`, `nick_name`, `phone`, `province`, `user_id`, `is_authorize_base_info`, `open_id`, `session_key`) VALUES (125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'o91vt5S0gpVdeYDLroAr9oR0Bjwc', '51l8C27Hl9oG9e0ezIImQw==');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
