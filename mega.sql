create database exam;

use exam;

create table emply (id int, nam varchar(10));

insert into emply (id, nam) 
values (3,'c'),(4,'d'),(5,'e'),(6,'f');

select * from emply;

-- delete from emply where id = (3,4,5);

set sql_safe_updates=0;
delete from emply where id in (4,5,6);

alter table emply
rename column nam to nam1;

alter table emply
add column dob date;

set sql_safe_updates=0;


update emply
set nam1=''
where id=2;

alter table emply
modify dob int;

insert into emply (id, nam1, dob) 
values (3,'c',1),(4,'d',2);

select * from emply;

alter table emply
rename column nam1 to nam;

alter table emply
drop column dob;

update emply 
set nam='ajuba' where id=2;


rename table emply to www;

select * from www;


alter table www
modify column www int;


rename table www to emply;

select * from emply;

ALTER TABLE emply
ADD CONSTRAINT primary key (www);

-- ALTER TABLE staff
-- ADD CONSTRAINT fk_dept
-- FOREIGN KEY ( dept_id ) REFERENCES
-- departments(dept_id );

delete from emply where nam in ('s');

insert into emply (www,nam) values (3,'g'),(4,'h');

alter table emply
add constraint www
primary key (www);

select * from emply;

insert into emply (www,nam) values (1,'s');

-- ***************************************************************************
alter table emply drop primary key;
-- ***************************************************************************

insert into emply (www,nam) values (1,'s');

select * from emply;

delete from emply where nam='s';

alter table emply
add constraint www
primary key (www);

insert into emply (www,nam) values (1,'s');

select * from emply;

create table company
(www int, dept varchar(4));

alter table company
add constraint www
foreign key (www) references emply(www);

insert into company (www,dept) 
-- values (1,'d1'),(2,'d2'),(3,'d3'),(4,'d4');
values (1,'d2');
-- values (10,'d1');

select * from company;

delete from company
where www=null;

alter table company
alter column dept 
set default (dept='d1');

alter table company
add constraint www
foreign key (www) references emply(www);


-- ***************************************************************************
alter table company drop foreign key www;
-- ***************************************************************************


select e.www, e.nam, c.dept
from emply as e
inner join company as c
on e.www=c.www;

select e.www as id,e.nam,c.dept
from emply as e
inner join company as c
on e.www=c.www;

select e.www, e.nam, c.dept
from emply as e
left join company as c 
on e.www = c.www;
-- on c.www = e.www;

select e.www, e.nam, c.dept
from emply as e 
right join company as c 
on e.www=c.www;


select e.www,e.nam,c.dept
from emply as e
left join company as c
on e.www=c.www
where dept is null;

select e.www,e.nam , c.dept
from emply as e
right join company as c
on e.www=c.www
where e.nam is null;


-- *********************************************
select e.www,e.nam,c.dept
from emply as e
left join company as c
on e.www=c.www
where dept is null
union
select e.www,e.nam , c.dept
from emply as e
right join company as c
on e.www=c.www
where e.nam is null;



-- full join
-- ***********************************************
select * from emply as e 
left join company as c
on e.www=c.www

union

select *
from emply as e 
right join company as c
on e.www=c.www;