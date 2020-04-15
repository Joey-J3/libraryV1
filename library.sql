CREATE DATABASE library;
USE library;

SET NAMES utf8;
START TRANSACTION;
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
                        `manager_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
                        `manager_code` varchar(32) NOT NULL COMMENT '管理员账号',
                        `manager_name` varchar(50) NOT NULL COMMENT '管理员姓名',
                        `manager_password` varchar(32) NOT NULL COMMENT '密码',
                        PRIMARY KEY (`manager_id`),
                        UNIQUE KEY `manager_name` (`manager_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `manager` VALUES (1, 'm0001', '小杰', '123');
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
                         `book_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
                         `book_title` varchar(100) NOT NULL COMMENT '书名',
                         `category_name` varchar(100) NOT NULL COMMENT '图书类别',
                         `book_price` decimal(10,2) DEFAULT NULL COMMENT '价格',
                         `book_author` varchar(100) NOT NULL COMMENT '作者',
                         `book_press` varchar(100) NOT NULL COMMENT '出版社',
                         `book_publishDate` date NOT NULL DEFAULT '1900-01-01' COMMENT '出版日期',
                         PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `books`
VALUES
       ( 1, 'Head First Java(中文版)', 'JavaSE', '79.00', '(美)塞若', '中国电力出版社', '2007-02-01'),
       ( 2, 'Java编程思想', 'JavaSE', '108.00', 'Bruce Eckel', '机械工业出版社', '2007-06-01'),
       ( 3, 'Java核心技术', 'JavaSE', '99.00', '昊斯特曼(Horstmann Cay S.), Gary Cornell', '电子工业出版社', '2011-07-01'),
       ( 4, '疯狂Java讲义', 'JavaSE', '79.00', '李刚', '电子工业出版社', '2008-09-01'),
       ( 5, 'Java多线程编程核心技术', 'JavaSE', '69.00', '高洪岩', '机械工业出版社', '2015-06-01'),
       ( 6, 'Java程序员修炼之道', 'JavaSE', '89.00', 'Benjamin J. Evans/Martijn Verburg', '人民邮电出版社', '2013-07-01'),
       ( 7, '第一行代码 Java(视频讲解版)', 'JavaSE', '89.00', '李兴华、马云涛', '人民邮电出版社', '2017-04-01');
COMMIT;