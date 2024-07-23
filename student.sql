CREATE DATABASE UniversityDB;
USE UniversityDB;
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address TEXT,
    enrollment_date DATE NOT NULL
);
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255) NOT NULL,
    course_description TEXT
);
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade CHAR(2)
);
INSERT INTO Students (name, email, phone, address, enrollment_date)
VALUES
('Alice Johnson', 'alice.johnson@example.com', '123-456-7890', '123 Maple St, Anytown, USA', '2024-08-01'),
('Bob Smith', 'bob.smith@example.com', '987-654-3210', '456 Oak St, Othertown, USA', '2024-08-01');
INSERT INTO Courses (course_name, course_description)
VALUES
('Database Systems', 'Introduction to database design and SQL.'),
('Operating Systems', 'Study of modern operating systems.');
INSERT INTO Enrollments (student_id, course_id, grade)
VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 1, 'C');
INSERT INTO Students (name, email, phone, address, enrollment_date)
VALUES ('Charlie Brown', 'charlie.brown@example.com', '555-555-5555', '789 Pine St, Newtown, USA', '2024-08-02');
INSERT INTO Courses (course_name, course_description)
VALUES ('Data Structures', 'Fundamentals of data structures.');
INSERT INTO Enrollments (student_id, course_id, grade)
VALUES (3, 3, 'B');
select * from Students;
UPDATE Students
SET email = 'alice.j@example.com'
WHERE student_id = 1;
SELECT * FROM Courses;
SELECT * FROM Enrollments;
SELECT c.course_name, c.course_description, e.grade
FROM Courses c
JOIN Enrollments e ON c.course_id = e.course_id
WHERE e.student_id = 1;
SELECT s.name, c.course_name, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;