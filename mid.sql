
-- Write a query to display the employee number, name and salary of all managers. 
select EMPNO, ENAME, SAL from EMP where JOB = 'MANAGER';

-- Write a query to display the names of all employees with names starting with M.
select ENAME from EMP where (REGEXP_LIKE(ENAME,'^M','i'));

-- Write a query to display name and job title of all the employees whose are not CLERK.
select ENAME, JOB from EMP where JOB != 'CLERK';

-- Assign to employee 7876 the same manager as the employee 7900.
set SQL_SAFE_UPDATES=0;
update EMP set  MGR=(select MGR from EMP where EMPNO=7900)  where EMPNO=7876;
set SQL_SAFE_UPDATES=1;

-- Write a query to insert a record in Emp.
insert into EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (793, 'MILLER', 'CLERK', 82, '23-JAN-82',300, 10);

-- Justify or deny the statements with reason: [Maximum 4 lines]
a) Redundancy cannot be eliminated completely.
 no we can use unique keyword to avoid duplication;
b) Three Tier architecture is more scalable as compared to two Tier Architecture
-- yes because system is decentralized or divided into small sub systems so we can easily scale
c) Data Sharing has raised concern of security.
 no because sensitive data can store in different table or database
 
 
 -- Differentiate between:
a) Instance and schema
instance is the stored data  in table or database
where schema is the layout or constraints/data_type of table in a database
b) DA vs DBA
data administrator is who that don't know code and technical aspects of database and table. he just use system of database like user;
where database administrator is who that know the code and technical aspects of database and table. he make database and tables like Software engineer;










use company;
select * from employees;
set SQL_SAFE_UPDATES=0;
update employees set dept='q',name='w' where id!=1;

insert into employees (id,name,dept,base_salary,bonus,tax_rate, hours_worked) values (6,'g','h',4,5,7,11);