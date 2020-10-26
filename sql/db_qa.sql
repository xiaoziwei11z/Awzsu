CREATE DATABASE IF NOT EXISTS `awzsu_qa` DEFAULT CHARACTER SET utf8;

USE `awzsu_qa`;

DROP TABLE IF EXISTS `tb_question`;
CREATE TABLE `tb_question` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `labelid` varchar(255) DEFAULT NULL COMMENT '标签id',
  `userid` varchar(255) DEFAULT NULL COMMENT '发布人id',
  `username` varchar(255) DEFAULT NULL COMMENT '发布人昵称',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` longtext DEFAULT NULL COMMENT '内容',
  `visits` int(20) DEFAULT NULL COMMENT '浏览量',
  `replys` int(20) DEFAULT NULL COMMENT '回答数',
  `createtime` datetime DEFAULT NULL COMMENT '发表日期',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `replyname` varchar(255) DEFAULT NULL COMMENT '最新回答人',
  `replytime` datetime DEFAULT NULL COMMENT '最新回答时间',
  `state` varchar(1) DEFAULT NULL COMMENT '解决状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问题';

DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE `tb_reply` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `questionid` varchar(255) DEFAULT NULL COMMENT '问题id',
  `userid` varchar(255) DEFAULT NULL COMMENT '回答人id',
  `username` varchar(255) DEFAULT NULL COMMENT '回答人昵称',
  `content` longtext DEFAULT NULL COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '发表日期',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='回答';

CREATE TABLE `tb_question_user` (
  `questionid` varchar(255) NOT NULL COMMENT 'questionid',
  `userid` varchar(255) NOT NULL COMMENT 'userid',
  PRIMARY KEY (`questionid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问题_用户';