CREATE DATABASE IF NOT EXISTS `awzsu_label` DEFAULT CHARACTER SET utf8;

USE `awzsu_label`;

DROP TABLE IF EXISTS `tb_label`;
CREATE TABLE `tb_label` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `labelname` varchar(255) DEFAULT NULL COMMENT '标签名称',
  `createtime` datetime DEFAULT NULL COMMENT '发表日期',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `fans` bigint DEFAULT NULL COMMENT '粉丝数',
  `state` varchar(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签';

INSERT INTO `awzsu_label`.`tb_label` (`id`, `labelname`, `createtime`, `updatetime`, `fans`, `state`) VALUES ('1', 'Java', '2020-03-16 11:11:23', '2020-03-16 11:11:24', '0', '1');
INSERT INTO `awzsu_label`.`tb_label` (`id`, `labelname`, `createtime`, `updatetime`, `fans`, `state`) VALUES ('2', 'PHP', '2020-03-16 11:12:23', '2020-03-16 11:12:24', '0', '1');
INSERT INTO `awzsu_label`.`tb_label` (`id`, `labelname`, `createtime`, `updatetime`, `fans`, `state`) VALUES ('3', 'Python', '2020-03-16 11:13:23', '2020-03-16 11:13:24', '0', '1');
INSERT INTO `awzsu_label`.`tb_label` (`id`, `labelname`, `createtime`, `updatetime`, `fans`, `state`) VALUES ('4', 'AI', '2020-03-16 11:14:23', '2020-03-16 11:14:24', '0', '1');

CREATE TABLE `tb_label_user` (
  `labelid` varchar(255) NOT NULL COMMENT 'labelid',
  `userid` varchar(255) NOT NULL COMMENT 'userid',
  PRIMARY KEY (`labelid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签_用户';