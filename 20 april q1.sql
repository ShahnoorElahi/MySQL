create database school;

use school;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    grade CHAR(1) DEFAULT 'C'
);

INSERT INTO Student (student_id, name, email, grade) VALUES
(1, 'Ali Khan', 'ali.khan@example.com', 'A'),
(2, 'Sara Ahmed', 'sara.ahmed@example.com', 'B'),
(3, 'Usman Tariq', 'usman.tariq@example.com', 'A'),
(4, 'Ayesha Noor', 'ayesha.noor@example.com', 'C'),
(5, 'Bilal Shah', 'bilal.shah@example.com', 'B'),
(6, 'Hira Saeed', 'hira.saeed@example.com', 'A'),
(7, 'Zain Ali', 'zain.ali@example.com', 'A'),
(8, 'Nida Iqbal', 'nida.iqbal@example.com', 'B'),
(9, 'Hamza Yousuf', 'hamza.yousuf@example.com', 'C'),
(10, 'Marium Tariq', 'marium.tariq@example.com', 'B');

SELECT * FROM Student;