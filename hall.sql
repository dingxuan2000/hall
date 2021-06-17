drop database if exists hall;

create database hall default character set utf8mb4 collate utf8mb4_unicode_ci;
use hall;

CREATE TABLE user
(
    id int not null auto_increment,
    name varchar(20),
    age int,
    primary key (id)
);

insert into user values (1,'ads', 18);

-- 丁璇
create table comm_manager
(
    comm_id int not null auto_increment,
    comm_name varchar(255) not null comment '社区名称',
    primary key (comm_id)
);

-- lucy & huang
create table house_manager
(
    house_id int not null auto_increment,
    house_name varchar(255) not null comment '小区名称',
    comm_id int not null,
    foreign key (comm_id) references comm_manager(comm_id) ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (house_id)
);

-- steven
create table charge_type
(
    charge_id int not null auto_increment,
    charge_name varchar(255) not null comment '收费类型',
    charge_unit varchar(255) not null comment '计价单位',
    primary key (charge_id)
);

-- yang
CREATE TABLE hall_manager
(
    hall_id int not null auto_increment,
    hall_name varchar(128) not null,
    hall_community varchar(128) not null,
    hall_house varchar(128) not null,
    hall_address varchar(128) not null,
    hall_area int not null,
    hall_table_num int not null,
    hall_deposit int not null,
    primary key (hall_id)
);

insert into hall_manager values (1,'ads', 'qwe', 'zxc', 'gdf', 1,2,3);
