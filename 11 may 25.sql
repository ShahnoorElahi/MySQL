create database school1;

use school1;

CREATE TABLE Dept (
    Dept_id INT PRIMARY KEY,
    DeptName VARCHAR(100) 
);

INSERT INTO Dept (Dept_id, DeptName) VALUES
(1, 'dept1'),
(2, 'dept2'),
(3, 'dept3');

SELECT * FROM Dept;




CREATE TABLE Students (
    s_id INT PRIMARY KEY,
    s_name VARCHAR(100),
    marks int NOT NULL CHECK (Marks >= 0),
    age int DEFAULT 18,
    Dept_id int,
    has_scholarship bool,
    email varchar(20),
    foreign key (Dept_id) references Dept(Dept_id)
);

INSERT INTO Students (s_id,s_name,marks,age,dept_id,has_scholarship,email) VALUES
(1, 'stud1',77,21,3,true,'stud1@a.com'),
(2, 'stud2',67,22,2,false,'stud2@a.com'),
(3, 'stud3',37,19,1,true,'stud3@a.com');

INSERT INTO Students (s_id,s_name,marks,dept_id,has_scholarship,email) VALUES
(7, 'stud1',97,2,true,'stud1@a.com'),
(8, 'stud3',37,1,false,'stud3@a.com');

SELECT * FROM Students;

SELECT * FROM Students where (marks > 60);

SELECT * FROM Students where ((age >= 19) and (age <= 22));

SELECT * FROM Students where ((dept_id = 1) or (dept_id = 2));

SELECT * FROM Students where ((has_scholarship = false) and (marks < 50));

SELECT * FROM Students WHERE s_name LIKE '%1';

select s_name from students where (REGEXP_LIKE(s_name, '^A', 'i'));

select * from students where (REGEXP_LIKE(s_name,'.*1.*','i'));

SELECT avg(marks), dept_id FROM Students group by dept_id;

SELECT max(marks), s_name FROM Students group by s_name;

SELECT count(s_name), dept_id FROM Students group by dept_id;

SELECT dept_id, avg(marks) FROM Students  group by dept_id having (avg(marks) > 60);

update students set marks=marks+5 where dept_id=1;

SET SQL_SAFE_UPDATES=0;
update students set s_name='atud1' where s_name='stud1';
SET SQL_SAFE_UPDATES=1;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM students WHERE marks < 35;
SET SQL_SAFE_UPDATES = 1; 

select * from students order by marks desc;
