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