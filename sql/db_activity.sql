CREATE DATABASE IF NOT EXISTS `awzsu_activity` DEFAULT CHARACTER SET utf8;

USE `awzsu_activity`;

DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '活动名称',
  `content` longtext DEFAULT NULL COMMENT '详细介绍',
  `image` varchar(255) DEFAULT NULL COMMENT '活动图片',
  `holdingtime` varchar(255) DEFAULT NULL COMMENT '举办时间',
  `address` varchar(255) DEFAULT NULL COMMENT '举办地点',
  `enrolltime` datetime DEFAULT NULL COMMENT '报名截止时间',
  `contactname` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contactphone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `contactemail` varchar(255) DEFAULT NULL COMMENT '联系email',
  `state` varchar(1) DEFAULT NULL COMMENT '显示状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动';

INSERT INTO `awzsu_activity`.`tb_activity` VALUES ('1', 'Java叶檀会','程序员的盛宴','https://img-bss.csdnimg.cn/201911050354284503.jpg', '2020-03-16 11:11:23', '北京市','2020-03-16 22:11:23', '小明','13784561234','14567576@qq.com', '1');

CREATE TABLE `tb_activity_user` (
  `activityid` varchar(255) NOT NULL COMMENT 'activityid',
  `userid` varchar(255) NOT NULL COMMENT 'userid',
  PRIMARY KEY (`activityid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动_用户';