USE SchoolSystem;


CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(100),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);


INSERT INTO Enrollment (enrollment_id, student_id, course_name) VALUES
(101, 1, 'Mathematics'),
(102, 2, 'Computer Science'),
(103, 3, 'English Literature'),
(104, 4, 'Mathematics'),
(105, 5, 'Physics'),
(106, 1, 'Computer Science'),
(107, 6, 'Chemistry'),
(108, 7, 'Physics'),
(109, 8, 'Computer Science'),
(110, 9, 'History'),
(111, 10, 'English Literature'),
(112, 2, 'Physics'),
(113, 3, 'Chemistry'),
(114, 4, 'Biology'),
(115, 5, 'Computer Science');


select * FROM student;




-- SHOW databases;
-- SHOW tables;


-- USE SCHOOL;
-- DROP database school ;