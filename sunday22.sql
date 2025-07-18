use school;
create table courses(
id int primary key,
name varchar(50)
);

insert into courses 
(id , name)
values
("1","python"),
("2","dbms");

select * from courses;