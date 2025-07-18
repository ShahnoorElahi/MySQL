create database company;

use company;

CREATE TABLE employees (
    id INT,
    name VARCHAR(255),
    dept VARCHAR(255),
    base_salary INT,
    bonus INT,
    tax_rate DECIMAL(4, 2),
    hours_worked INT
);
-- drop table employees;
INSERT INTO employees ( id , name , dept, base_salary , bonus , tax_rate , hours_worked ) VALUES
( 1 , 'Alice','IT', 50000 , 5000 , 0.20 , 160 ) ,
( 2 , 'Bob' , 'IT' , 60000 , 4000 , 0.18 , 170 ) ,
( 3 , 'Charlie' , 'FINANCE' , 55000 , 3000 , 0.22 , 150 ) ,
( 4 , 'Diana' , 'FINANCE' , 70000 , 7000 , 0.19 , 180 ) ,
( 5 , 'Evan' , 'IT' , 48000 , 2500 , 0.21 , 155 ) ;
select * from employees ;
select name from employees ;
select name , base_salary from employees ;
select name , base_salary from employees where base_salary > 50000 ;


select * from employees ORDER BY name asc ;
select * from employees ORDER BY name desc ;



select * from employees limit 3 ;

select name , base_salary + bonus as total_income from employees ;

select name , base_salary - ( base_salary * tax_rate ) as salary_after_tax from employees ;

select name , hours_worked % 40 as extra_hours from employees ;

select id, name, base_salary / hours_worked as hourly_rate from employees ;

select name, (base_salary * 12) + (bonus * 12) as annual_compensation from employees;

select name, dept, bonus, hours_worked from employees 
where ((dept = 'IT') and ((bonus > 3000) or (hours_worked > 160)));

