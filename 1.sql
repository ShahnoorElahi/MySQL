create database school;
use school;
create table student(
roolno int primary key,
name varchar(50),
course varchar(50));

insert into student (roolno , name, course)
values(110,"Ali","computer science");
insert into student (roolno , name, course)
values ('121',"sara","python");

select * from student;