/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t124`;
CREATE DATABASE IF NOT EXISTS `t124` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t124`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot4j9k2/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot4j9k2/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot4j9k2/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'xi3oo4i7n0rsemk362s09obxoa4zihyq', '2024-04-07 03:23:21', '2024-04-07 04:25:24'),
	(2, 11, '用户1', 'yonghu', '用户', 'hsqq4yol9julixnkm108mnlnb3j8os2x', '2024-04-07 03:26:15', '2024-04-07 04:26:16');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-11 01:16:58');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `xingbie`, `touxiang`, `shouji`, `youxiang`, `shenfenzheng`, `sfsh`, `shhf`) VALUES
	(11, '2021-05-11 01:16:58', '用户1', '123456', '姓名1', '男', 'http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang1.jpg', '13823888881', '773890001@qq.com', '440300199101010001', '是', ''),
	(12, '2021-05-11 01:16:58', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang2.jpg', '13823888882', '773890002@qq.com', '440300199202020002', '是', ''),
	(13, '2021-05-11 01:16:58', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang3.jpg', '13823888883', '773890003@qq.com', '440300199303030003', '是', ''),
	(14, '2021-05-11 01:16:58', '用户4', '123456', '姓名4', '男', 'http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang4.jpg', '13823888884', '773890004@qq.com', '440300199404040004', '是', ''),
	(15, '2021-05-11 01:16:58', '用户5', '123456', '姓名5', '男', 'http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang5.jpg', '13823888885', '773890005@qq.com', '440300199505050005', '是', ''),
	(16, '2021-05-11 01:16:58', '用户6', '123456', '姓名6', '男', 'http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang6.jpg', '13823888886', '773890006@qq.com', '440300199606060006', '是', '');

DROP TABLE IF EXISTS `zichanfenlei`;
CREATE TABLE IF NOT EXISTS `zichanfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanfenlei` varchar(200) NOT NULL COMMENT '资产分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zichanfenlei` (`zichanfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='资产分类';

DELETE FROM `zichanfenlei`;
INSERT INTO `zichanfenlei` (`id`, `addtime`, `zichanfenlei`) VALUES
	(21, '2021-05-11 01:16:58', '资产分类1'),
	(22, '2021-05-11 01:16:58', '资产分类2'),
	(23, '2021-05-11 01:16:58', '资产分类3'),
	(24, '2021-05-11 01:16:58', '资产分类4'),
	(25, '2021-05-11 01:16:58', '资产分类5'),
	(26, '2021-05-11 01:16:58', '资产分类6');

DROP TABLE IF EXISTS `zichanguihai`;
CREATE TABLE IF NOT EXISTS `zichanguihai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianhao` varchar(200) DEFAULT NULL COMMENT '资产编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `zichantupian` varchar(200) DEFAULT NULL COMMENT '资产图片',
  `shuliang` int NOT NULL COMMENT '数量',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `guihaibeizhu` varchar(200) DEFAULT NULL COMMENT '归还备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='资产归还';

DELETE FROM `zichanguihai`;
INSERT INTO `zichanguihai` (`id`, `addtime`, `zichanbianhao`, `shebeimingcheng`, `zichanfenlei`, `zichantupian`, `shuliang`, `guihairiqi`, `guihaibeizhu`, `yonghuming`, `xingming`, `shouji`, `shenfenzheng`, `sfsh`, `shhf`) VALUES
	(51, '2021-05-11 01:16:58', '资产编号1', '设备名称1', '资产分类1', 'http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian1.jpg', 1, '2021-05-11', '归还备注1', '用户名1', '姓名1', '13823888881', '440300199101010001', '是', ''),
	(52, '2021-05-11 01:16:58', '资产编号2', '设备名称2', '资产分类2', 'http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian2.jpg', 2, '2021-05-11', '归还备注2', '用户名2', '姓名2', '13823888882', '440300199202020002', '是', ''),
	(53, '2021-05-11 01:16:58', '资产编号3', '设备名称3', '资产分类3', 'http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian3.jpg', 3, '2021-05-11', '归还备注3', '用户名3', '姓名3', '13823888883', '440300199303030003', '是', ''),
	(54, '2021-05-11 01:16:58', '资产编号4', '设备名称4', '资产分类4', 'http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian4.jpg', 4, '2021-05-11', '归还备注4', '用户名4', '姓名4', '13823888884', '440300199404040004', '是', ''),
	(55, '2021-05-11 01:16:58', '资产编号5', '设备名称5', '资产分类5', 'http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian5.jpg', 5, '2021-05-11', '归还备注5', '用户名5', '姓名5', '13823888885', '440300199505050005', '是', ''),
	(56, '2021-05-11 01:16:58', '资产编号6', '设备名称6', '资产分类6', 'http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian6.jpg', 6, '2021-05-11', '归还备注6', '用户名6', '姓名6', '13823888886', '440300199606060006', '是', '');

DROP TABLE IF EXISTS `zichanjiechu`;
CREATE TABLE IF NOT EXISTS `zichanjiechu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianhao` varchar(200) DEFAULT NULL COMMENT '资产编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `zichantupian` varchar(200) DEFAULT NULL COMMENT '资产图片',
  `shuliang` int NOT NULL COMMENT '数量',
  `jiechuriqi` date DEFAULT NULL COMMENT '借出日期',
  `jiechubeizhu` varchar(200) DEFAULT NULL COMMENT '借出备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='资产借出';

DELETE FROM `zichanjiechu`;
INSERT INTO `zichanjiechu` (`id`, `addtime`, `zichanbianhao`, `shebeimingcheng`, `zichanfenlei`, `zichantupian`, `shuliang`, `jiechuriqi`, `jiechubeizhu`, `yonghuming`, `xingming`, `shouji`, `shenfenzheng`, `sfsh`, `shhf`) VALUES
	(41, '2021-05-11 01:16:58', '资产编号1', '设备名称1', '资产分类1', 'http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian1.jpg', 1, '2021-05-11', '借出备注1', '用户名1', '姓名1', '13823888881', '440300199101010001', '是', ''),
	(42, '2021-05-11 01:16:58', '资产编号2', '设备名称2', '资产分类2', 'http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian2.jpg', 2, '2021-05-11', '借出备注2', '用户名2', '姓名2', '13823888882', '440300199202020002', '是', ''),
	(43, '2021-05-11 01:16:58', '资产编号3', '设备名称3', '资产分类3', 'http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian3.jpg', 3, '2021-05-11', '借出备注3', '用户名3', '姓名3', '13823888883', '440300199303030003', '是', ''),
	(44, '2021-05-11 01:16:58', '资产编号4', '设备名称4', '资产分类4', 'http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian4.jpg', 4, '2021-05-11', '借出备注4', '用户名4', '姓名4', '13823888884', '440300199404040004', '是', ''),
	(45, '2021-05-11 01:16:58', '资产编号5', '设备名称5', '资产分类5', 'http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian5.jpg', 5, '2021-05-11', '借出备注5', '用户名5', '姓名5', '13823888885', '440300199505050005', '是', ''),
	(46, '2021-05-11 01:16:58', '资产编号6', '设备名称6', '资产分类6', 'http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian6.jpg', 6, '2021-05-11', '借出备注6', '用户名6', '姓名6', '13823888886', '440300199606060006', '是', '');

DROP TABLE IF EXISTS `zichanweixiu`;
CREATE TABLE IF NOT EXISTS `zichanweixiu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianhao` varchar(200) NOT NULL COMMENT '资产编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `weixiushuliang` int NOT NULL COMMENT '维修数量',
  `weixiushuoming` longtext COMMENT '维修说明',
  `weixiujindu` varchar(200) NOT NULL COMMENT '维修进度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='资产维修';

DELETE FROM `zichanweixiu`;
INSERT INTO `zichanweixiu` (`id`, `addtime`, `zichanbianhao`, `shebeimingcheng`, `zichanfenlei`, `shuliang`, `weixiushuliang`, `weixiushuoming`, `weixiujindu`) VALUES
	(61, '2021-05-11 01:16:58', '资产编号1', '设备名称1', '资产分类1', 1, 1, '维修说明1', '维修中'),
	(62, '2021-05-11 01:16:58', '资产编号2', '设备名称2', '资产分类2', 2, 2, '维修说明2', '维修中'),
	(63, '2021-05-11 01:16:58', '资产编号3', '设备名称3', '资产分类3', 3, 3, '维修说明3', '维修中'),
	(64, '2021-05-11 01:16:58', '资产编号4', '设备名称4', '资产分类4', 4, 4, '维修说明4', '维修中'),
	(65, '2021-05-11 01:16:58', '资产编号5', '设备名称5', '资产分类5', 5, 5, '维修说明5', '维修中'),
	(66, '2021-05-11 01:16:58', '资产编号6', '设备名称6', '资产分类6', 6, 6, '维修说明6', '维修中');

DROP TABLE IF EXISTS `zichanxinxi`;
CREATE TABLE IF NOT EXISTS `zichanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianhao` varchar(200) NOT NULL COMMENT '资产编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `zichanfenlei` varchar(200) NOT NULL COMMENT '资产分类',
  `zichantupian` varchar(200) DEFAULT NULL COMMENT '资产图片',
  `shuliang` int NOT NULL COMMENT '数量',
  `beizhushuoming` varchar(200) DEFAULT NULL COMMENT '备注说明',
  `dangqianweizhi` varchar(200) DEFAULT NULL COMMENT '当前位置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zichanbianhao` (`zichanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='资产信息';

DELETE FROM `zichanxinxi`;
INSERT INTO `zichanxinxi` (`id`, `addtime`, `zichanbianhao`, `shebeimingcheng`, `zichanfenlei`, `zichantupian`, `shuliang`, `beizhushuoming`, `dangqianweizhi`) VALUES
	(31, '2021-05-11 01:16:58', '资产编号1', '设备名称1', '资产分类1', 'http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian1.jpg', 1, '备注说明1', '当前位置1'),
	(32, '2021-05-11 01:16:58', '资产编号2', '设备名称2', '资产分类2', 'http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian2.jpg', 2, '备注说明2', '当前位置2'),
	(33, '2021-05-11 01:16:58', '资产编号3', '设备名称3', '资产分类3', 'http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian3.jpg', 3, '备注说明3', '当前位置3'),
	(34, '2021-05-11 01:16:58', '资产编号4', '设备名称4', '资产分类4', 'http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian4.jpg', 4, '备注说明4', '当前位置4'),
	(35, '2021-05-11 01:16:58', '资产编号5', '设备名称5', '资产分类5', 'http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian5.jpg', 5, '备注说明5', '当前位置5'),
	(36, '2021-05-11 01:16:58', '资产编号6', '设备名称6', '资产分类6', 'http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian6.jpg', 6, '备注说明6', '当前位置6');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
