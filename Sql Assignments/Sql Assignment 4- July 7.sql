
-- --1.Display the incremented id value (identity primary key)

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
SELECT SCOPE_IDENTITY();

-- --2. Display date in DD-MM-YYYY format

CREATE TABLE Employee(employee_id INT IDENTITY PRIMARY KEY,employee_name VARCHAR(MAX),place VARCHAR(MAX),date_of_joining DATE);
INSERT INTO Employee VALUES('Ashik','Trivandrum','2023-07-03'),('james','Kochi','2023-07-08'),('jose','calicut','2023-06-25'),('james','Kochi','2023-06-21'),('jose','calicut','2023-07-01');
SELECT *,FORMAT (date_of_joining,'dd-MM-yyyy') AS Required_Date FROM Employee;

-- --3. Declare an attribute of datatype datetime and display only the date

DECLARE @Date DATETIME = CURRENT_TIMESTAMP;
SELECT @Date;
SELECT CONVERT(DATE,@Date);

-- 4. Create an employee table with field “joiningdate” and display the joining date in two time zones - India and New York

CREATE TABLE Employee1(employee_id INT IDENTITY PRIMARY KEY,employee_name VARCHAR(MAX),place VARCHAR(MAX),date_of_joining DATETIMEOFFSET DEFAULT CURRENT_TIMESTAMP);
INSERT INTO Employee1 (employee_name,place) VALUES('Ashik','Trivandrum'),('james','Kochi'),('jose','calicut'),('james','Kochi'),('jose','calicut');
SELECT *,(SWITCHOFFSET(date_of_joining,+330))AS timezone_in_India,(SWITCHOFFSET(date_of_joining,-240)) AS timezone_in_newyork FROM Employee1;

-- 5. For Book table: 

-- i) Display the no. of books arrived during the last year 
-- ii) Display the no. of books arrived on every Monday during the last year

CREATE TABLE Books(book_id INT IDENTITY PRIMARY KEY,Book_name VARCHAR(50),date1 DATE);
INSERT INTO Books VALUES
('The Pilgrim’s Progress','2022-03-07'),
(' Robinson Crusoe','2022-04-04'),
('Gulliver’s Travels','2022-05-02'),
(' clarissa','2022-06-01'),
('Gulliver','2023-07-05'),
(' claara','2023-12-07');
DECLARE @maxValue INT;
SELECT @maxValue =YEAR(GETDATE());
SELECT COUNT(book_name) AS Books_last_year FROM Books WHERE YEAR(date1)=@maxValue-1;
SELECT COUNT(book_name) AS Books_last_year_Mondays FROM Books WHERE YEAR(date1)=@maxValue-1 AND DATEPART(weekday,date1)=2;

-- 6. For Employee table: Display the total no. of days each intern has joined

CREATE TABLE Employee2(employee_id INT IDENTITY PRIMARY KEY,employee_name VARCHAR(MAX),place VARCHAR(MAX),date_of_joining DATE);
INSERT INTO Employee2 VALUES('Ashik','Trivandrum','2023-07-03'),('james','Kochi','2023-07-03'),('jose','calicut','2023-06-25'),('akhil','Kochi','2023-06-25'),('jose','calicut','2023-07-01'),('hali','Kochi','2023-07-25'),('joli','calicut','2023-07-26');
SELECT * FROM Employee2;
SELECT COUNT(DISTINCT date_of_joining) AS total_joining_days FROM Employee;


