CREATE DATABASE IF NOT EXISTS `awzsu_article` DEFAULT CHARACTER SET utf8;

USE `awzsu_article`;

DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `id` varchar(255) NOT NULL COMMENT '文章id',
  `labelid` varchar(255) DEFAULT NULL COMMENT '所属标签id',
  `userid` varchar(255) DEFAULT NULL COMMENT '发表用户id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '文章正文',
  `createtime` datetime DEFAULT NULL COMMENT '发表日期',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `visits` int(20) DEFAULT NULL COMMENT '浏览量',
  `thumbups` int(20) DEFAULT NULL COMMENT '点赞数',
  `comments` int(20) DEFAULT NULL COMMENT '评论数',
  `state` varchar(1) DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章';

INSERT INTO `awzsu_article`.`tb_article` (`id`, `labelid`, `userid`, `title`, `content`, `createtime`, `updatetime`, `visits`, `thumbups`, `comments`, `state`) VALUES ('1', '1', '1', 'Java百科全书', '测试数据1', '2020-03-15 14:39:32', '2020-03-15 14:41:32', '0', '0', '0', '1');
INSERT INTO `awzsu_article`.`tb_article` (`id`, `labelid`, `userid`, `title`, `content`, `createtime`, `updatetime`, `visits`, `thumbups`, `comments`, `state`) VALUES ('2', '2', '1', 'PHP应用大全', '测试数据2', '2020-03-15 14:39:35', '2020-03-15 14:41:35', '0', '0', '0', '1');
INSERT INTO `awzsu_article`.`tb_article` (`id`, `labelid`, `userid`, `title`, `content`, `createtime`, `updatetime`, `visits`, `thumbups`, `comments`, `state`) VALUES ('3', '1', '1', '测试标题3', '测试数据3', '2020-03-15 14:39:37', '2020-03-15 14:41:37', '0', '0', '0', '1');

CREATE TABLE `tb_article_user` (
  `articleid` varchar(255) NOT NULL COMMENT 'articleid',
  `userid` varchar(255) NOT NULL COMMENT 'userid',
  `followtime` datetime DEFAULT NULL COMMENT '收藏日期',
  PRIMARY KEY (`articleid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章_用户';