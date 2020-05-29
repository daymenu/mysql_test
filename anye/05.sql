use anye;
-- 建表语句
CREATE TABLE anye_5
(
  id int primary key,
  k int not null default 0,
  name varchar(10),
  index (k)
) engine=InnoDB DEFAULT CHARSET=utf8mb4;

-- 插入数据
insert into anye_5 values 
(100, 1, '100'),
(200, 2, '200'),
(300, 3, '300'),
(500, 6, '500'),
(600, 7, '600');

-- 建表语句
drop table anye_5_1;
CREATE TABLE anye_5_1
(
	id  int primary key auto_increment,
	username varchar(20) not null default '',
	age int not null default '0',
	index idx_username(username,age)
) engine=InnoDB DEFAULT CHARSET=utf8mb4;

truncate anye_5_1;
-- 插入数据
insert into anye_5_1 (username,age) values
('李四', 20),
('王五', 10),
('王六', 30),
('张三', 10),
('张三', 10),
('张三', 20);

explain select * from anye_5_1 where username like '%六' limit 3;

explain select * from anye_5_1 where age=30 limit 3;
