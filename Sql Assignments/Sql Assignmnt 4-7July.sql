--1.Display the incremented id value (identity primary key)

CREATE TABLE Student1(student_id INT IDENTITY PRIMARY KEY,Student_name VARCHAR(50),Marks Int);
INSERT INTO Student1 VALUES
('Ashik',25),
(' James',35),
('john',NULL),
(' clarissa',NULL),
('Kiler',15),
(' nimz',10),
('nimz',10);
SELECT *,'Failed' FROM Student1 WHERE Marks<25 OR Marks IS NULL; 
SELECT * FROM Student1;
SELECT @@IDENTITY

--2. Display date in DD-MM-YYYY format
CREATE TABLE Employee(employee_id INT IDENTITY PRIMARY KEY,employee_name VARCHAR(MAX),place VARCHAR(MAX),date_of_joining DATE);
INSERT INTO Employee VALUES('Ashik','Trivandrum','2023-07-03'),('james','Kochi','2023-07-08'),('jose','calicut','2023-06-25'),('james','Kochi','2023-06-21'),('jose','calicut','2023-07-01');
SELECT *,FORMAT (GETDATE(),'dd-mm-yyyy') AS Required_Date FROM Employee;

--3. Declare an attribute of datatype datetime and display only the date

DECLARE @Date DATETIME = CURRENT_TIMESTAMP;
SELECT @Date;
SELECT CONVERT(DATE,@Date);

