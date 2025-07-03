-- CREATE – Create a new table or database
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10)
);

-- ALTER – Modify existing table add new col
ALTER TABLE Students
ADD Email VARCHAR(100);

-- INSERT – Add new records
INSERT INTO Students(StudentID, StudentName, Age, Gender, Email)
VALUES 
(1, 'Ansh', 18, 'Male', 'ansh123@gmail.com'),
(2, 'Rahul', 20, 'Male', 'rahul20@gmail.com'),
(3, 'Sneha', 19, 'Female', 'sneha19@gmail.com'),
(4, 'Priya', 21, 'Female', 'priya21@gmail.com'),
(5, 'Karan', 22, 'Male', 'karan22@gmail.com'),
(6, 'Meena', 20, 'Female', 'meena20@gmail.com'),
(7, 'Ravi', 18, 'Male', 'ravi18@gmail.com');

-- UPDATE – Modify existing records
UPDATE Students
SET Age = 21
WHERE StudentID = 1;

-- DELETE – Remove records
DELETE FROM Students
WHERE StudentID = 7;

-- DROP – Delete table or database
DROP TABLE Students;

-- RENAME – Rename a table
RENAME TABLE Students TO Learners;

-- RENAME – Rename a col name 
ALTER TABLE Students
RENAME COLUMN email_id TO email;

-- SELECT – Retrieve some col data
SELECT StudentName, Age
FROM Students;
-- SELECT – Retrieve all data
SELECT * FROM Students;
-- WHERE are ues for display the particular data
SELECT * FROM Students
WHERE Gender='Male';
-- Display the data age > 20
SELECT * FROM Students
WHERE Age>20;

-- OR ARE Used only one condtion true then display the data
SELECT * FROM Students
WHERE Age>20 OR Gender='Male';

-- AND are used both condtion true then display the data
SELECT * FROM Students
WHERE Age>20 AND Gender='Male';

-- The DISTINCT keyword is used to remove duplicate values
SELECT DISTINCT Gender
FROM Students;

-- The ORDER BY is used to sorting data
SELECT * FROM Students
ORDER BY StudentName;
-- The ORDER BY is used to sorting data Ascending and Descending
SELECT * FROM Students
ORDER BY StudentName DESC; 

-- search for a specific pattern name start with 'A'
SELECT * FROM Students
WHERE StudentName LIKE 'A%';
-- search for a specific pattern name Ending with 'A'
SELECT * FROM Students
WHERE StudentName LIKE '%a';

-- GROUP BY are used to the create group of  same value
SELECT Gender FROM Students
GROUP BY Gender;
-- count num of member in group
SELECT Gender, COUNT(*) FROM Students
GROUP BY Gender;





--CREATE – Create a new table or database
CREATE TABLE Faculty (
    FacultyID SERIAL PRIMARY KEY,
    FacultyName VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
    Dept VARCHAR(50) NOT NULL,
	Salary DECIMAL(10,2) DEFAULT 13000.00
); 

-- Insert Multiple Rows
INSERT INTO Faculty (FacultyName, Email, Dept, Salary)
VALUES
('Dr. Anjali Mehta', 'anjali.mehta@college.edu', 'Computer Science', 45000.00),
('Prof. Rajiv Sharma', 'rajiv.sharma@college.edu', 'Mechanical', 42000.00),
('Dr. Neha Sinha', 'neha.sinha@college.edu', 'Physics', 40000.00),
('Prof. Arjun Patel', 'arjun.patel@college.edu', 'Mathematics', 39000.00),
('Dr. Sneha Roy', 'sneha.roy@college.edu', 'Biology', 41000.00);

-- FIND faculty from following dept Computer Science', 'Physics then used IN
SELECT * FROM Faculty
WHERE Dept IN ('Computer Science', 'Physics');
-- Other Data display then used NOT IN
SELECT * FROM Faculty
WHERE Dept NOT IN ('Computer Science', 'Physics');

-- Find the faculty whose salary is more than 40000 and less than 42000  then use BETWEEN
SELECT * FROM Faculty
WHERE Salary BETWEEN 40000 AND 42000;

-- count the total num of faculty
SELECT COUNT(*) FROM Faculty;
-- total number of salary
SELECT SUM(Salary) FROM Faculty;
-- avg of salary
SELECT AVG(Salary) FROM Faculty;

-- CROSS JOIN combined the both table 
SELECT * FROM Students CROSS JOIN Faculty;

-- LEFT JOIN
SELECT * FROM Students S LEFT JOIN Faculty F ON S.email = F.email;

SELECT * FROM Faculty;



















