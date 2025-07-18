use company;

create table abc(
id int primary key,
dept varchar(10)
);

INSERT INTO abc (id, dept) VALUES
(1, 'dept1'),
(2, 'dept2'),
(3, 'dept3'),
(4, 'dept4');

select * from abc;



create table def(
id int,
address varchar(10),
emp_name varchar(10),
foreign key (id) references abc( id)
on update cascade
on delete cascade
);


INSERT INTO def (id, address, emp_name) VALUES
(1, 'address1','emp1'),
(2, 'address2','emp2'),
(3, 'address3','emp3'),
(4, 'address4','emp4'),
(5, 'address5','emp5');

select * from abc;
select * from def;

drop table abc;
drop table def;

update abc set id=5 where id=2;

-- delete from def do not delete it from abc table
delete from abc where id=2;


ALTER TABLE abc ADD DOB date;

ALTER TABLE abc RENAME COLUMN DOB TO DateofBirth;

RENAME TABLE abc TO staff;

select * from staff;

update staff set DateofBirth='18-5-25' where id=1;

ALTER TABLE def MODIFY address varchar(93);

ALTER TABLE staff ALTER COLUMN dept SET DEFAULT "username";

INSERT INTO staff (id) VALUES
(2);

select * from staff;

ALTER TABLE staff ALTER COLUMN dept DROP DEFAULT;

-- error
-- INSERT INTO staff (id) VALUES (5); 

INSERT INTO staff (id,dept) VALUES 
(5,'dept5'); 

select * from staff;



-- inner join
SELECT e.id , e.emp_name , d.dept
FROM abc as d
inner JOIN def as e
ON e.id = d.id;

-- left join
SELECT e.id , e.emp_name , d.dept
FROM abc as d
left JOIN def as e
ON e.id = d.id;

-- right join
SELECT e.id , e.emp_name , d.dept
FROM abc as d
right JOIN def as e
ON e.id = d.id;

-- full join
SELECT e.id , e.emp_name , d.dept
FROM abc as d
left JOIN def as e
ON e.id = d.id

union

SELECT e.id , e.emp_name , d.dept
FROM abc as d
right JOIN def as e
ON e.id = d.id;



-- left exclusive
SELECT e.id , e.emp_name , d.dept
FROM abc as d
left JOIN def as e
on ( e.id = d.id) where e.id is null;

-- right exclusive
SELECT e.id , e.emp_name , d.dept
FROM abc as d
right JOIN def as e
on ( e.id = d.id) where d.dept is null;

SET SQL_SAFE_UPDATES=1;
delete from def;
select * from abc;
select * from def;



-- full exclusive join
SELECT e.id , e.emp_name , d.dept
FROM abc as d
left JOIN def as e
ON e.id = d.id where e.emp_name is null

union

SELECT e.id , e.emp_name , d.dept
FROM abc as d
right JOIN def as e
ON e.id = d.id where d.dept is null;