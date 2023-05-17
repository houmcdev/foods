/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : foods

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 11/04/2023 14:13:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1677930448537 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` VALUES (1, '2022-03-25 14:13:46', 11, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2022-03-25 14:13:46', 12, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2022-03-25 14:13:46', 13, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2022-03-25 14:13:46', 14, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2022-03-25 14:13:46', 15, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2022-03-25 14:13:46', 16, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (1677930448536, '2023-03-04 19:47:28', 21, '淮师18#606-4', '123', '18373737373', '是');
COMMIT;

-- ----------------------------
-- Table structure for caipinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `caipinfenlei`;
CREATE TABLE `caipinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinfenlei` (`caipinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1681047293178 DEFAULT CHARSET=utf8mb3 COMMENT='菜品分类';

-- ----------------------------
-- Records of caipinfenlei
-- ----------------------------
BEGIN;
INSERT INTO `caipinfenlei` VALUES (31, '2022-03-25 14:13:46', '湘菜');
INSERT INTO `caipinfenlei` VALUES (32, '2022-03-25 14:13:46', '川菜');
INSERT INTO `caipinfenlei` VALUES (33, '2022-03-25 14:13:46', '粤菜');
INSERT INTO `caipinfenlei` VALUES (1681046775295, '2023-04-09 21:26:14', '鲁菜');
INSERT INTO `caipinfenlei` VALUES (1681047203358, '2023-04-09 21:33:22', '包子');
INSERT INTO `caipinfenlei` VALUES (1681047212351, '2023-04-09 21:33:32', '粥');
INSERT INTO `caipinfenlei` VALUES (1681047269218, '2023-04-09 21:34:28', '奶茶');
INSERT INTO `caipinfenlei` VALUES (1681047280589, '2023-04-09 21:34:39', '炸鸡');
INSERT INTO `caipinfenlei` VALUES (1681047293177, '2023-04-09 21:34:52', '汉堡');
COMMIT;

-- ----------------------------
-- Table structure for caipinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `caipinxinxi`;
CREATE TABLE `caipinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  `caipintupian` varchar(200) DEFAULT NULL COMMENT '菜品图片',
  `caipinkouwei` varchar(200) DEFAULT NULL COMMENT '菜品口味',
  `caipintese` varchar(200) DEFAULT NULL COMMENT '菜品特色',
  `caipinxiangqing` longtext COMMENT '菜品详情',
  `caipinyueshou` int DEFAULT NULL COMMENT '菜品月售',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `price` float DEFAULT NULL COMMENT '价格',
  `onelimittimes` int DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int DEFAULT '-1' COMMENT '库存',
  `clicknum` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681049887961 DEFAULT CHARSET=utf8mb3 COMMENT='菜品信息';

-- ----------------------------
-- Records of caipinxinxi
-- ----------------------------
BEGIN;
INSERT INTO `caipinxinxi` VALUES (1681046113996, '2023-04-09 21:15:13', '鱼香肉丝', '川菜', 'upload/1681046076550.jpg', '香辣酸甜具备', '\"鱼香\"并没有鱼，是由泡辣椒、盐、酱油、白糖、姜末、蒜末、葱颗调制而成。', '<p>鱼香肉丝是四川比较有名的川菜，全国各地大小川菜馆几乎都有这道菜，鱼香肉丝的口味是香辣酸甜具备，采用纯瘦猪里脊肉，里面的配菜根据不同的地区可选择胡萝卜，黑木耳，青椒，红椒，笋丝等。在四川鱼香是一种做法，\"鱼香\"并没有鱼，是由泡辣椒、盐、酱油、白糖、姜末、蒜末、葱颗调制而成。除了鱼香肉丝，鱼香茄子也是用同样的方法制作，口味是一样的。</p>', 50, '111', '川菜馆', '12589651456', '高校食堂一楼111号门店', '2023-04-11 11:47:12', 19, 200, 199, 0);
INSERT INTO `caipinxinxi` VALUES (1681046180555, '2023-04-09 21:16:20', '宫保鸡丁', '川菜', 'upload/1681046128676.jpg', '入口麻辣，酸甜开胃', '宫保鸡丁入口之后，舌尖先感觉浅辣和微麻，而后舌根一股甜意，咀嚼时又会有些酸酸的感觉。', '<p>宫保鸡丁也是各大川菜馆的特色菜，四川十大经典名菜之一。宫保鸡丁虽然名气很大，但是它并不属于纯川菜，它是川菜和鲁菜的结合，是在鲁菜的酱爆鸡丁中加以花椒和辣椒，改良之后集麻辣酸甜为一体，鸡丁鲜嫩，入口麻辣，酸甜开胃。宫保鸡丁入口之后，舌尖先感觉浅辣和微麻，而后舌根一股甜意，咀嚼时又会有些\"酸酸\"的感觉，麻辣酸甜包裹着鸡丁、葱段、花生米，使人欲罢不能&nbsp;。</p>', 41, '111', '川菜馆', '12589651456', '高校食堂一楼111号门店', '2023-04-11 13:58:28', 25, 123, 122, 2);
INSERT INTO `caipinxinxi` VALUES (1681046239266, '2023-04-09 21:17:18', '水煮牛肉', '川菜', 'upload/1681046235996.jpg', '麻辣鲜香', '水煮牛肉集麻、辣、鲜、香为一体，牛肉鲜嫩不老，麻辣入味。', '<p>水煮牛肉最初的做法比较讲究，是用纯瘦的黄牛肉，切成一寸五分长、八分宽、一分厚的薄片，用盐、酱油、醪糟汁、湿淀粉拌匀腌制。油锅中放郫县豆瓣、干辣椒炒成棕黄色，再下花椒、葱段、莴笋片炒香，加肉汤烧开，将牛肉片下锅，煮至肉片伸展，外表发亮，盛入盆中，摆上花椒和辣椒，淋入热油爆香，即可食用。水煮牛肉集麻、辣、鲜、香为一体，牛肉鲜嫩不老，麻辣入味。很多地方的川菜馆为了节约成本，用猪肉替代牛肉，也就是现在人们所熟知的水煮肉片。虽然做法相同，但是水煮牛肉口感比水煮肉片要好一些。</p>', 57, '111', '川菜馆', '12589651456', '高校食堂一楼111号门店', '2023-04-11 11:36:45', 32, 150, 149, 0);
INSERT INTO `caipinxinxi` VALUES (1681046387180, '2023-04-09 21:19:46', '辣椒炒肉', '湘菜', 'upload/1681046330843.jpg', '香辣', '肉质软嫩有肉香', '<p>辣椒炒肉是湖南地区一道非常具有代表性的湘菜菜品，这道菜的做法非常的简单，而且也十分的日常，只需要将五花肉用料酒腌好，然后将辣椒切成细条状，用锅去煸炒，然后起锅放油将五花肉和辣椒一起炒即可。</p>', 48, '222', '湘菜馆', '15698745689', '高校食堂一楼222号门店', NULL, 18, 233, 233, 0);
INSERT INTO `caipinxinxi` VALUES (1681046452260, '2023-04-09 21:20:51', '剁椒鱼头', '湘菜', 'upload/1681046399925.jpg', '咸鲜微辣', '通常以鳙鱼鱼头、剁椒为主料，配以豉油、姜、葱、蒜等辅料蒸制而成。菜品色泽红亮、味浓、肉质细嫩。肥而不腻、口感软糯、鲜辣适口。', '<p>剁椒鱼头是湖南省的传统名菜，属于湘菜系。据传，起源和清代文人黄宗宪有关。</p>', 99, '222', '湘菜馆', '15698745689', '高校食堂一楼222号门店', '2023-04-09 23:27:18', 26, 46, 45, 0);
INSERT INTO `caipinxinxi` VALUES (1681046505357, '2023-04-09 21:21:45', '湘西外婆菜', '湘菜', 'upload/1681046456681.jpg', '香辣，酸，咸', '外婆菜一般选用梅干菜、萝卜、豇豆等，充分晒干水分后，切碎再揉搓至柔软一些后，以民间特有的制作方法，放入坛内腌制而成的。', '<p>湘西外婆菜是湖南地区一道比较常见的的湘菜菜品，外婆菜当中的原料可以选用马齿苋、萝卜丁、大叶青菜和湘西土菜，将其制作成碎丁，然后加入辣椒和肉末一起煸炒，非常适合下饭。</p>', 42, '222', '湘菜馆', '15698745689', '高校食堂一楼222号门店', NULL, 15, 156, 156, 0);
INSERT INTO `caipinxinxi` VALUES (1681046620169, '2023-04-09 21:23:39', '广东脆皮烧鹅', '粤菜', 'upload/1681046579227.jpg', '色泽呈金红色，外酥里嫩', '烤好的烧鹅，色泽呈金红色，外酥里嫩，通常还会蘸上酸梅酱一起食用，口感肥而不腻，肉香味十足。', '<p>脆皮烧鹅，是粤菜中的一道经典名菜，以整只鹅去翅、去头后烤制而成。烧鹅的做法，最早源自烤鸭。</p>', 45, '333', '粤菜馆', '19815694589', '高校食堂一楼333号门店', '2023-04-11 13:58:36', 32, 122, 122, 1);
INSERT INTO `caipinxinxi` VALUES (1681046669666, '2023-04-09 21:24:29', '广州文昌鸡', '粤菜', 'upload/1681046630246.jpg', '肉质又滑又嫩，口感香而不腻', '吃鸡肉的时候，还会配上多种调料调配而成的蘸料，肉质又滑又嫩，口感香而不腻，让人回味无穷。', '<p>在制作广州文昌鸡时，选用的一定要是来自海南文昌地区的文昌鸡，并且要经过多道烹饪工序，慢火浸煮而成。装盘的时候，鸡会被斩成条状，摆盘上也要有造型感。</p>', 63, '333', '粤菜馆', '19815694589', '高校食堂一楼333号门店', NULL, 29, 163, 163, 0);
INSERT INTO `caipinxinxi` VALUES (1681046723512, '2023-04-09 21:25:22', '白切鸡', '粤菜', 'upload/1681046676061.jpg', '肉质滑嫩爽口', '在烹制白切鸡时，要将整只鸡下入锅中煮至刚刚断生为佳，过程中不加任何调料。待食用时，会斩成小块盛盘上桌，同时还会佐以用蒜泥、姜蓉、葱段、生抽等调制而成的酱汁。白切鸡的做法，可以充分凸显出鸡肉的原汁原味，吃起来也是别有一番风味。', '<p>白切鸡，又叫白斩鸡，菜名里着重体现的，是鸡的做法。其实在我国南方很多地区的特色菜中，都有白切鸡这道菜，只是广东地区的白切鸡相对要更出名一些。广东白切鸡用的鸡，多为三黄鸡或清平鸡，肉质滑嫩可口。</p>', 16, '333', '粤菜馆', '19815694589', '高校食堂一楼333号门店', '2023-04-09 23:22:46', 22, 50, 50, 0);
INSERT INTO `caipinxinxi` VALUES (1681048104583, '2023-04-09 21:48:23', ' 糖醋鲤鱼', '鲁菜', 'upload/1681048059944.jpg', '酸甜又带着咸味', '糖醋鲤鱼口味酸甜又带着咸味，鱼肉带着一丝的鲜嫩，外酥里嫩的感觉，尤其能衬托鱼肉的鲜美。', '<p>虽说山东靠海，但最后一道鱼，大多数还是以鲤鱼为主！而鲤鱼在鲁菜中最经典的做法就是糖醋鲤鱼！这道菜需要先把鲤鱼炸定型，最后再淋上芡汁，要求端上桌后，鲤鱼无需支撑，也能达到跃龙门的姿态！</p>', 26, '444', '鲁菜馆', '15698741526', '高校食堂一楼444号门店', NULL, 23, 200, 200, 0);
INSERT INTO `caipinxinxi` VALUES (1681048157168, '2023-04-09 21:49:16', '油爆双脆', '鲁菜', 'upload/1681048110739.jpg', '脆嫩滑润，清鲜爽口', '色、香、味、形兼备', '<p>这道菜是鲁菜中比较难做的一道菜，非常考究厨师对于火候掌控的能力！可以说，少一秒则不熟，多一秒则口感老！</p>', 12, '444', '鲁菜馆', '15698741526', '高校食堂一楼444号门店', NULL, 21, 33, 33, 0);
INSERT INTO `caipinxinxi` VALUES (1681048206105, '2023-04-09 21:50:05', '拔丝山药', '鲁菜', 'upload/1681048164105.jpg', '甜，软', '将白糖融化烧至糖色成深黄时，放入炸好的山药块，快速颠勺，让山药均匀的裹上糖液，装盘后，要趁热吃，并且吃的时候，要配上一碗凉白开，每吃之前先蘸一下筷子，再夹山药！这样才不会粘住筷子！', '<p>对于喜欢吃甜食的朋友，来山东一定要尝尝拔丝的菜品，比如：拔丝苹果、拔丝香蕉、拔丝葡萄等等，最具有代表性的就是拔丝山药！</p>', 15, '444', '鲁菜馆', '15698741526', '高校食堂一楼444号门店', NULL, 19, 45, 45, 0);
INSERT INTO `caipinxinxi` VALUES (1681048481188, '2023-04-09 21:54:41', '白菜包', '包子', 'upload/1681048289166.jpg', '清香，甘甜', '白菜脆嫩爽口', '<p>&nbsp;“潮汕白菜包”这一新派潮菜，是在传统潮菜“寸金白菜”、“绣球白菜”的基础上加以改进而创新出来的，它既有传统潮菜风味特点，在用料、口味、造型等方面又有新意。</p>', 56, '555', '粥全粥到', '19815462589', '高校食堂一楼555号门店', NULL, 3, 50, 50, 0);
INSERT INTO `caipinxinxi` VALUES (1681048604510, '2023-04-09 21:56:43', '玉米猪肉包', '包子', 'upload/1681048501477.jpg', '咸鲜', '肉香味浓', '<p>玉米猪肉包，咸鲜口味，肉香味浓。将玉米和到面皮当中，不光味美，且更有利于健康。</p>', 63, '555', '粥全粥到', '19815462589', '高校食堂一楼555号门店', NULL, 5, 33, 33, 0);
INSERT INTO `caipinxinxi` VALUES (1681048734457, '2023-04-09 21:58:54', '小米南瓜粥', '粥', 'upload/1681048619024.png', '香甜', '低热量，养胃', '<p>小米南瓜粥是一种低热量，养胃的主食，主要制作原料有：小米、南瓜、冰糖等等。南瓜中富含维生素和果胶，能有效清除身体毒素和其他有害物质。小米十分养胃，两者搭配起来食用营养更均衡，更养胃。</p>', 45, '555', '粥全粥到', '19815462589', '高校食堂一楼555号门店', NULL, 4, 62, 62, 0);
INSERT INTO `caipinxinxi` VALUES (1681048894497, '2023-04-09 22:01:33', '青菜包', '包子', 'upload/1681048758185.jpg', '香嫩', '皮薄馅多', '<p>特色早餐青菜包，皮薄馅大，口感香嫩无比，做法简单更健康。而且越吃越馋，你肯定会非常喜欢的。</p>', 66, '555', '粥全粥到', '19815462589', '高校食堂一楼555号门店', NULL, 3, 66, 66, 0);
INSERT INTO `caipinxinxi` VALUES (1681049015921, '2023-04-09 22:03:35', '血糯米粥', '粥', 'upload/1681048913690.png', '软糯香甜', '富含营养', '<p>沂蒙山血糯米! 外表带着紫红色种皮,煮熟后, 闻起来香喷喷,吃起来十分有糯性!&nbsp;</p>', 36, '555', '粥全粥到', '19815462589', '高校食堂一楼555号门店', NULL, 5, 36, 36, 0);
INSERT INTO `caipinxinxi` VALUES (1681049201576, '2023-04-09 22:06:41', '禾落烧仙草', '奶茶', 'upload/1681049083455.png', '清爽可口', '清热解暑，解热利尿', '<p>点一杯禾落烧仙草，口感清香醇厚，独特的味道令人回味无穷。</p>', 63, '666', '甜蜜蜜', '13823888881', '高校食堂一楼666号门店', '2023-04-11 11:47:24', 16, 50, 49, 0);
INSERT INTO `caipinxinxi` VALUES (1681049283181, '2023-04-09 22:08:02', '芋圆奶茶', '奶茶', 'upload/1681049220992.png', '奶香浓郁', '满口留香的港式奶茶芋圆，奶香浓郁，茶味悠长。', '<p>满口留香的港式奶茶芋圆，奶香浓郁，茶味悠长。入口如丝般顺滑。加了黑白淡奶的口感绵延细密，在家做简单方便，天气微冷的初秋，来一份这样的甜品吧。</p><p><br></p>', 34, '666', '甜蜜蜜', '13823888881', '高校食堂一楼666号门店', '2023-04-11 14:07:28', 12, 66, 66, 9);
INSERT INTO `caipinxinxi` VALUES (1681049432150, '2023-04-09 22:10:31', '珍珠奶茶', '奶茶', 'upload/1681049428807.jpg', '香甜', '珍珠Q弹，奶茶香甜', '<p>珍珠奶茶是台湾“泡沫红茶”文化中的一种，虽然只是在奶茶中加入木薯粉圆，但却成为台湾最具代表性的饮料与小吃之一。</p>', 55, '666', '甜蜜蜜', '13823888881', '高校食堂一楼666号门店', '2023-04-11 11:45:23', 10, 33, 33, 0);
INSERT INTO `caipinxinxi` VALUES (1681049639170, '2023-04-09 22:13:58', '劲脆鸡排堡', '汉堡', 'upload/1681049473043.png', '香辣', '辣味纯正清爽', '<p>诱人的香辣气味，辣味纯正清爽，引人食欲；能非常好的衬托出鸡肉的香味，辣度偏低，可接受度广，辣味在口中持续时间较长。</p>', 56, '777', '萌鸡队长', '15996548123', '高校食堂一楼777号门店', '2023-04-11 13:58:31', 23, 22, 22, 1);
INSERT INTO `caipinxinxi` VALUES (1681049763560, '2023-04-09 22:16:02', '双重芝士牛肉堡', '汉堡', 'upload/1681049643699.png', '酸甜', '爽口多汁，酸甜可口', '<p>吃起来的牛堡能感受到三重口感：爽口多汁，酸甜可口，香味浓郁。</p>', 36, '777', '萌鸡队长', '15996548123', '高校食堂一楼777号门店', NULL, 38, 20, 20, 0);
INSERT INTO `caipinxinxi` VALUES (1681049887960, '2023-04-09 22:18:07', '韩式无骨炸鸡', '炸鸡', 'upload/1681049933703.jpg', '外酥里嫩', '外脆里嫩还爆汁', '<p>韩式炸鸡，香漫满屋。</p>', 56, '777', '萌鸡队长', '15996548123', '高校食堂一楼777号门店', '2023-04-11 14:07:33', 30, 36, 36, 6);
COMMIT;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'caipinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
BEGIN;
INSERT INTO `config` VALUES (1, '轮播1', 'upload/1681036788814.jpg');
INSERT INTO `config` VALUES (2, '轮播2', 'upload/1677999950151.jpg');
INSERT INTO `config` VALUES (3, '轮播3', 'upload/picture3.jpg');
COMMIT;

-- ----------------------------
-- Table structure for discusscaipinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusscaipinxinxi`;
CREATE TABLE `discusscaipinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `orderid` varchar(50) DEFAULT NULL,
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681055114230 DEFAULT CHARSET=utf8mb3 COMMENT='菜品信息评论表';

-- ----------------------------
-- Records of discusscaipinxinxi
-- ----------------------------
BEGIN;
INSERT INTO `discusscaipinxinxi` VALUES (1681055114229, '2023-04-09 23:45:13', 1681046239266, '20234923204060125550', 21, '123', '下次还来', NULL);
COMMIT;

-- ----------------------------
-- Table structure for liuyanbeizhu
-- ----------------------------
DROP TABLE IF EXISTS `liuyanbeizhu`;
CREATE TABLE `liuyanbeizhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipintupian` varchar(200) DEFAULT NULL COMMENT '菜品图片',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `liuyanneirong` varchar(200) DEFAULT NULL COMMENT '留言内容',
  `liuyanshijian` datetime DEFAULT NULL COMMENT '留言时间',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681053763466 DEFAULT CHARSET=utf8mb3 COMMENT='留言备注';

-- ----------------------------
-- Records of liuyanbeizhu
-- ----------------------------
BEGIN;
INSERT INTO `liuyanbeizhu` VALUES (1681053763465, '2023-04-09 23:22:43', 'upload/1681046676061.jpg', '白切鸡', '半小时能到吗', '2023-04-09 23:21:56', '333', '123', '13823888881', '是', '可以的');
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3 COMMENT='公告资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` VALUES (101, '2022-03-25 14:13:46', '新品上新，快来尝尝呀！', '色泽棕红油亮,质地酥软,麻辣味浓。咸鲜醇香,略带回甜。', 'upload/news_picture1.jpg', '<p>辣子鸡是一道经典的传统名肴,因缘于重庆歌乐山而得名。此菜成菜色泽棕红油亮,质地酥软,麻辣味浓。咸鲜醇香,略带回甜。</p>');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'caipinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1681177591794 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES (1681053489713, '2023-04-09 23:18:08', '2023492318891929007', 'caipinxinxi', 21, 1681046452260, '剁椒鱼头', 'upload/1681046399925.jpg', 1, 26, 26, 26, 26, 1, '已退款', '淮师18#606-4', '18373737373', '123', NULL, '222', '湘菜');
INSERT INTO `orders` VALUES (1681053640822, '2023-04-09 23:20:40', '20234923204060125550', 'caipinxinxi', 21, 1681046239266, '水煮牛肉', 'upload/1681046235996.jpg', 1, 32, 32, 32, 32, 1, '已送达', '淮师18#606-4', '18373737373', '123', NULL, '111', '川菜');
INSERT INTO `orders` VALUES (1681125713193, '2023-04-10 19:21:52', '202341019215283370601', 'caipinxinxi', 21, 1681046113996, '鱼香肉丝', 'upload/1681046076550.jpg', 1, 19, 19, 19, 19, 1, '配送中', '淮师18#606-4', '18373737373', '123', NULL, '111', '川菜');
INSERT INTO `orders` VALUES (1681177591793, '2023-04-11 09:46:31', '20234119463132005159', 'caipinxinxi', 21, 1681049201576, '禾落烧仙草', 'upload/1681049083455.png', 1, 16, 16, 16, 16, 1, '配送中', '淮师18#606-4', '18373737373', '123', NULL, '666', '奶茶');
COMMIT;

-- ----------------------------
-- Table structure for peisongdan
-- ----------------------------
DROP TABLE IF EXISTS `peisongdan`;
CREATE TABLE `peisongdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `peisongdizhi` varchar(200) DEFAULT NULL COMMENT '配送地址',
  `peisongzhuangtai` varchar(200) DEFAULT '已接单' COMMENT '配送状态',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `peisongzhanghao` varchar(200) DEFAULT NULL COMMENT '配送账号',
  `peisongxingming` varchar(200) DEFAULT NULL COMMENT '配送姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qudanshijian` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '取单时间',
  `shangjiabianhao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681180231374 DEFAULT CHARSET=utf8mb3 COMMENT='配送接单';

-- ----------------------------
-- Records of peisongdan
-- ----------------------------
BEGIN;
INSERT INTO `peisongdan` VALUES (1681054699412, '2023-04-09 23:38:19', '20234923204060125550', '水煮牛肉', 'upload/1681046235996.jpg', '淮师18#606-4', '配送中', '123', '18373737373', '999', 'Nancy', '19815694452', '2023-04-09 23:38:19', '111');
INSERT INTO `peisongdan` VALUES (1681125852598, '2023-04-10 19:24:11', '202341019215283370601', '鱼香肉丝', 'upload/1681046076550.jpg', '淮师18#606-4', '配送中', '123', '18373737373', '999', 'Nancy', '19815694452', '2023-04-10 19:24:11', '111');
INSERT INTO `peisongdan` VALUES (1681180231373, '2023-04-11 10:30:30', '20234119463132005159', '禾落烧仙草', 'upload/1681049083455.png', '淮师18#606-4', '配送中', '123', '18373737373', '999', 'Nancy', '19815694452', '2023-04-11 10:30:30', '666');
COMMIT;

-- ----------------------------
-- Table structure for peisongyuan
-- ----------------------------
DROP TABLE IF EXISTS `peisongyuan`;
CREATE TABLE `peisongyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peisongzhanghao` varchar(200) DEFAULT NULL COMMENT '配送账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `peisongxingming` varchar(200) DEFAULT NULL COMMENT '配送姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `peisongzhanghao` (`peisongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1681054676378 DEFAULT CHARSET=utf8mb3 COMMENT='配送员';

-- ----------------------------
-- Records of peisongyuan
-- ----------------------------
BEGIN;
INSERT INTO `peisongyuan` VALUES (1681054676377, '2023-04-09 23:37:56', '999', '999', 'Nancy', 'upload/1681187290699.jpg', '男', '19815694452', '321322255564895233');
COMMIT;

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiabianhao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiabianhao` (`shangjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1681047642276 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

-- ----------------------------
-- Records of shangjia
-- ----------------------------
BEGIN;
INSERT INTO `shangjia` VALUES (11, '2022-03-25 14:13:46', '666', '666', '甜蜜蜜', 'upload/1681049042657.png', '13823888881', '高校食堂一楼666号门店', '奶茶', '是', '', 100);
INSERT INTO `shangjia` VALUES (1681045206056, '2023-04-09 21:00:06', '111', '111', '川菜馆', 'upload/1681046031842.jpg', '12589651456', '高校食堂一楼111号门店', '川菜', '是', NULL, 0);
INSERT INTO `shangjia` VALUES (1681045252806, '2023-04-09 21:00:52', '222', '222', '湘菜馆', 'upload/1681046316702.jpg', '15698745689', '高校食堂一楼222号门店', '湘菜', '是', NULL, 0);
INSERT INTO `shangjia` VALUES (1681045289569, '2023-04-09 21:01:29', '333', '333', '粤菜馆', 'upload/1681046567612.jpg', '19815694589', '高校食堂一楼333号门店', '粤菜', '是', NULL, 0);
INSERT INTO `shangjia` VALUES (1681047500164, '2023-04-09 21:38:20', '444', '444', '鲁菜馆', 'upload/1681047915285.jpg', '15698741526', '高校食堂一楼444号门店', '鲁菜', '是', NULL, 0);
INSERT INTO `shangjia` VALUES (1681047565630, '2023-04-09 21:39:25', '555', '555', '粥全粥到', 'upload/1681048259564.jpg', '19815462589', '高校食堂一楼555号门店', '包子，粥', '是', NULL, 0);
INSERT INTO `shangjia` VALUES (1681047642275, '2023-04-09 21:40:42', '777', '777', '萌鸡队长', 'upload/1681049458442.png', '15996548123', '高校食堂一楼777号门店', '炸鸡，汉堡', '是', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681193233053 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
BEGIN;
INSERT INTO `token` VALUES (6, 21, '123', 'yonghu', '用户', '7vwj3kt9hwph5q9vsi3gzsimzb6xex62', '2023-04-09 19:44:40', '2023-04-11 14:58:25');
INSERT INTO `token` VALUES (7, 11, '666', 'shangjia', '商家', 'hjc58ds58u5omvdhoobkblgg9k1v1pgl', '2023-04-09 20:04:49', '2023-04-11 11:23:40');
INSERT INTO `token` VALUES (8, 1, 'admin', 'users', '管理员', 'xjt9olxuc3n2bdy09l434vg4vgnej5fm', '2023-04-09 20:21:08', '2023-04-11 12:26:50');
INSERT INTO `token` VALUES (9, 21, '111', 'peisongyuan', '配送员', 'psjtm3e0t9v5wr2c06p6krnco9yiv7a3', '2023-04-09 20:36:40', '2023-04-10 00:34:01');
INSERT INTO `token` VALUES (10, 1681045206056, '111', 'shangjia', '商家', '6qmvttejvmyypu0hfih4r8g2tyy9sfi2', '2023-04-09 21:02:16', '2023-04-11 12:34:20');
INSERT INTO `token` VALUES (11, 1681045252806, '222', 'shangjia', '商家', 'idrxyo8fg8v5orrsr1xb9mvjx5jaqkf1', '2023-04-09 21:18:23', '2023-04-11 12:36:02');
INSERT INTO `token` VALUES (12, 1681045289569, '333', 'shangjia', '商家', '13af83oeku4j1k4lxm26f4vds581f5ta', '2023-04-09 21:22:37', '2023-04-10 00:24:05');
INSERT INTO `token` VALUES (13, 1681047500164, '444', 'shangjia', '商家', '52p7v80xkoealz71awelycg5c22fq05q', '2023-04-09 21:42:18', '2023-04-09 22:42:18');
INSERT INTO `token` VALUES (14, 1681047565630, '555', 'shangjia', '商家', 'lnb3kqerskrzsqkctzmgrqeyr1ht0teb', '2023-04-09 21:50:30', '2023-04-09 22:50:31');
INSERT INTO `token` VALUES (15, 1681047642275, '777', 'shangjia', '商家', '34k9l3bahjiazf5zvn2qvf1icyscx9cw', '2023-04-09 22:10:45', '2023-04-09 23:10:46');
INSERT INTO `token` VALUES (16, 1681054676377, '999', 'peisongyuan', '配送员', 'ribtxla0z8a9uhezbtbdecl06u6i9h98', '2023-04-09 23:38:04', '2023-04-11 13:27:54');
INSERT INTO `token` VALUES (17, 1681183991983, '456', 'yonghu', '用户', 'aggd555ngtwghop9k7pjq1dz2mt92d0g', '2023-04-11 11:33:19', '2023-04-11 12:44:18');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2022-03-25 14:13:46');
COMMIT;

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1681183991984 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
BEGIN;
INSERT INTO `yonghu` VALUES (21, '2022-03-25 14:13:46', '123', '123', 'Lucy', '女', 'upload/1681053344347.jpg', '13823888881', 82);
INSERT INTO `yonghu` VALUES (1681183991983, '2023-04-11 11:33:11', '456', '456', 'MM', NULL, NULL, '13815263256', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
