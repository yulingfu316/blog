-- blog数据库
create database if not exists blog default character set utf8 collate utf8_general_ci;
use blog;

-- 用户表
create table if not exists user(
  id int(11) unsigned primary key auto_increment,
  email varchar(30) unique,
  password varchar(20) not null,
  user_profile_id int(11),
  user_snapshot_id int(11),
  email_verify_code varchar(32) not null,
  email_verified tinyint(1) default 0,
  create_time timestamp default '0000-00-00 00:00:00',
  update_time timestamp default current_timestamp on update current_timestamp
)ENGINE=INNODB;

-- 用户表插入数据触发器
drop trigger if exists user_insert;
create trigger user_insert before insert on user for each row set NEW.create_time=now();

-- 用户Profile表
create table if not exists user_profile(
  id int(11) unsigned primary key auto_increment,
  real_name varchar(50),
  gendar tinyint(1),
  birthday datetime,
  QQ varchar(11),
  address varchar(100),
  introduction text,
  constellation_id int(11),
  update_time timestamp default current_timestamp on update current_timestamp
)ENGINE=INNODB;

-- 用户头像表
create table if not exists user_snapshot(
  id int(11) unsigned primary key auto_increment,
  snapshot_data blob
)ENGINE=INNODB;

-- 星座表
create table if not exists constellation(
  id int(11) unsigned primary key auto_increment,
  en_title varchar(11),
  cn_title varchar(3)
)ENGINE=INNODB;

-- 十二星座数据
      
-- 好友表
create table if not exists friends(
  id int(11) unsigned primary key auto_increment,
  user_id int(11) not null,
  friend_id int(11) not null
)ENGINE=INNODB;

-- 说说表
create table if not exists say(
  id int(11) unsigned primary key auto_increment,
  user_id int(11) not null,
  root_id int(11) default 0,
  super_id int(11) default 0,
  content varchar(255) not null,
  create_time timestamp default current_timestamp,
  state tinyint(1) default 0
)ENGINE=INNODB;

-- 留言表
create table if not exists leave_msg(
  id int(11) unsigned primary key auto_increment,
  receiver_id int(11) not null,
  leaver_id int(11) not null,
  root_id int(11) default 0,
  super_id int(11) default 0,
  content varchar(255) not null,
  create_time timestamp default current_timestamp,
  state tinyint(1) default 0
)ENGINE=INNODB;

-- 日志表
create table if not exists log(
  id int(11) unsigned primary key auto_increment,
  user_id int(11) not null,
  title varchar(50) not null,
  content text not null,
  create_time timestamp default current_timestamp,
  category_id int(11) not null,
  read_times int(11) default 0
)ENGINE=INNODB;

-- 日志评论表
create table if not exists log_comment(
  id int(11) unsigned primary key auto_increment,
  user_id int(11) not null,
  log_id int(11) not null,
  super_id int(11) default 0,
  content text not null,
  create_time timestamp default current_timestamp,
  state tinyint(1) default 0
)ENGINE=INNODB;

-- 信息分类表
create table if not exists category(
  id int(11) unsigned primary key auto_increment,
  en_title varchar(50),
  cn_title varchar(50)
)ENGINE=INNODB;

-- tags表
create table if not exists tag(
  id int(11) unsigned primary key auto_increment,
  en_title varchar(30),
  cn_title varchar(30)
)ENGINE=INNODB;

-- tags日志关联表
create table if not exists log_tag(
  id int(11) unsigned primary key auto_increment,
  log_id int(11) not null,
  tag_id int(11) not null
)ENGINE=INNODB;
