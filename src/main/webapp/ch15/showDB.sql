alter table member drop column phone;

use jspbookdb;
show tables;
insert into member values("rlaehgusqp","rlaehgus1234~","�赵��");

select * from user;
select * from bbs;
desc member;
desc bbs;
delete from member where id="rlaehgusqp";

drop table student;

select * from user;
desc user;
show table user;
show tables;
create table user(
	userID varchar(50) not null,
	userPW varchar(50) not null,
	userName varchar(50) not null,
	primary key (userID)
);

delete from user where userID="rlaehgusqp";
insert into user values('rlaehgusqp','rlaehgus1234~',"김도현");

create table bbs(
	bbsID int,
	bbsTitle varchar(50),
	userID varchar(20),
	bbsDate datetime,
	bbsContent varchar(2048),
	bbsAvailable int,
	primary key (bbsID)
);

