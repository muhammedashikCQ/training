--1. Select values such that the students have failed including students whose mark field is NULL

CREATE TABLE Student1(student_id INT IDENTITY PRIMARY KEY,Student_name VARCHAR(50),Marks Int);
INSERT INTO Student1 VALUES
('Ashik',25),
(' James',35),
('john',NULL),
(' clarissa',NULL),
('Kiler',15),
(' nimz',10);
SELECT *,
CASE WHEN Marks<25 OR Marks IS NULL THEN 'Failed'
ELSE 'Pass'
END AS Status 
FROM Student1;

--2. Select fields with the value NULL

SELECT *,
CASE WHEN Marks IS NULL THEN 'Failed'
ELSE 'Pass'
END AS Status 
FROM Student1;

--3)3. What happens during a varchar out of bounds situation? How to insert a 10000 sized string?

DECLARE @name VARCHAR(MAX)='aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';
SELECT @name;

--4. Store name in Malayalam inside the database

--6. Each table in the online bookstore must have a field named “created on” which denotes the date and time when each record was inserted. This should be generated automatically
CREATE TABLE MalayalamBookStore1
(Book_id INT IDENTITY PRIMARY KEY,Book_name NVARCHAR(50), Author_name NVARCHAR(200),Created_On DATETIME DEFAULT CURRENT_TIMESTAMP);
INSERT INTO MalayalamBookStore1(Book_name, Author_name) VALUES (N'രണ്ടാമൂഴം',N'വാസുദേവന്‍ നായര്‍'),(N'ആടുജീവിതം',N'ബെന്യാമിൻ‍'),(N'പാത്തുമ്മായുടെ ആട്',N'ബഷീർ'),(N'നാലുകെട്ട് ',N'വാസുദേവൻ നായർ');
SELECT * FROM MalayalamBookStore1;


