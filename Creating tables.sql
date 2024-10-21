CREATE SCHEMA StudentCourses;

USE studentcourses;
	
CREATE TABLE Students
(
Student_No INT PRIMARY KEY,
Student_Name VARCHAR(50),
Exam_Score INT,
Support BOOLEAN,
DOB DATE
);

CREATE TABLE CourseTeacher
(
Course_Name VARCHAR(50) PRIMARY KEY, 
Teacher_Name VARCHAR(50)
);
    
CREATE TABLE StudentCourse
(
Student_No INT,
Course_Name VARCHAR(50), 
Exam_Board VARCHAR(50),
CONSTRAINT PK_StudentCourse PRIMARY KEY (Student_No,Course_Name),
FOREIGN KEY (Student_No) REFERENCES Students(Student_No),
FOREIGN KEY (Course_Name) REFERENCES CourseTeacher(Course_Name)
);

INSERT INTO Students
VALUES
(1001, 'Bob Baker', 78, 0, '2001-08-25'),
(1002, 'Sally Davies', 55, 1, '1999-10-02'),
(1003, 'Mark Hanmill', 90, 0, '1995-06-05'),
(1004, 'Anas Ali', 70, 0, '1980-08-03'),
(1005, 'Cheuk Yin', 45, 1, '2002-05-01');

INSERT INTO CourseTeacher
VALUES
('Computer Science', 'Mr Jones'),
('Maths', 'Ms Parker'),
('Physics', 'Mr Peters'),
('Biology', 'Mrs Patel'),
('Music', 'Ms Daniels');

INSERT INTO StudentCourse
VALUES
(1001, 'Computer Science', 'BCS'),
(1001, 'Maths', 'EdExcel'),
(1001, 'Physics', 'OCR'),
(1002, 'Maths', 'AQA'),
(1002, 'Biology', 'WJEC'),
(1002, 'Music', 'AQA'),
(1003, 'Computer Science', 'BCS'),
(1003, 'Maths', 'EdExcel'),
(1003, 'Physics', 'OCR'),
(1004, 'Maths', 'AQA'),
(1004, 'Physics', 'OCR'),
(1004, 'Biology', 'WJEC'),
(1005, 'Computer Science', 'BCS'),
(1005, 'Maths', 'EdExcel'),
(1005, 'Music', 'AQA');

SELECT * FROM CourseTeacher;
SELECT * FROM StudentCourse;
SELECT * FROM Students;