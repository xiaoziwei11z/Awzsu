CREATE DATABASE IF NOT EXISTS `awzsu_user` DEFAULT CHARACTER SET utf8;

USE `awzsu_user`;

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` varchar(255) NOT NULL COMMENT 'ID',
  `roleid` varchar(255) DEFAULT NULL COMMENT '角色id',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `image` varchar(255) DEFAULT NULL COMMENT '头像',
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `detail` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `address` varchar(255) DEFAULT NULL COMMENT '所在地',
  `school` varchar(255) DEFAULT NULL COMMENT '毕业院校',
  `company` varchar(255) DEFAULT NULL COMMENT '公司组织',
  `site` varchar(255) DEFAULT NULL COMMENT '个人网站',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `follows` int(20) DEFAULT NULL COMMENT '关注数',
  `fans` int(20) DEFAULT NULL COMMENT '粉丝数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO `tb_user` VALUES ('1','1', '15513457896', '123', 'https://img-bss.csdnimg.cn/202003131744544430.jpg','张三','我是张三啊', '男', '1988-01-08','山东省','超级大学','超级公司','www.baidu.com','2020-03-23 15:39:19','2020-03-23 15:40:19',0,0);

DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` varchar(255) NOT NULL COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

INSERT INTO `tb_role` VALUES ('1','普通用户');
INSERT INTO `tb_role` VALUES ('2','管理员');
INSERT INTO `tb_role` VALUES ('3','超级管理员');

DROP TABLE IF EXISTS `tb_permission`;
CREATE TABLE `tb_permission` (
  `id` varchar(255) NOT NULL COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限';

INSERT INTO `tb_permission` VALUES ('1','门户操作');
INSERT INTO `tb_permission` VALUES ('2','后台基本操作');
INSERT INTO `tb_permission` VALUES ('3','更改用户信息');

DROP TABLE IF EXISTS `tb_role_permission`;
CREATE TABLE `tb_role_permission` (
  `roleid` varchar(255) NOT NULL COMMENT '角色id',
  `permissionid` varchar(255) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`roleid`,`permissionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色_权限';

INSERT INTO `tb_role_permission` VALUES ('1','1');
INSERT INTO `tb_role_permission` VALUES ('2','2');
INSERT INTO `tb_role_permission` VALUES ('3','2');
INSERT INTO `tb_role_permission` VALUES ('3','3');

DROP TABLE IF EXISTS `tb_follow`;
CREATE TABLE `tb_follow` (
  `userid` varchar(255) NOT NULL COMMENT '用户ID',
  `followid` varchar(255) NOT NULL COMMENT '关注ID',
  `islike` varchar(1) DEFAULT NULL COMMENT '1关注或0不喜欢',
  PRIMARY KEY (`userid`,`followid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tb_friends`;
CREATE TABLE `tb_friends` (
  `id` varchar(255) NOT NULL COMMENT 'ID',
  `userid` varchar(255) DEFAULT NULL COMMENT '用户id',
  `topic` varchar(255) DEFAULT NULL COMMENT '交友主题',
  `image` varchar(255) DEFAULT NULL COMMENT '头像',
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `age` datetime DEFAULT NULL COMMENT '年龄',
  `address` varchar(255) DEFAULT NULL COMMENT '所在地',
  `company` varchar(255) DEFAULT NULL COMMENT '公司组织',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交友';
