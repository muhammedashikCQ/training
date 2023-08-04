
CREATE TABLE Student (Id INT IDENTITY,
	[Name] VARCHAR(50),
	[Address] VARCHAR(100),
	Class VARCHAR(50),
	Mark DECIMAL
	CONSTRAINT pk_Student PRIMARY KEY(Id))

GO 
CREATE OR ALTER PROCEDURE SetStudentDetails
@Name VARCHAR(100),
@Address VARCHAR(100),
@Class VARCHAR(50),
@Mark DECIMAL
AS
BEGIN
INSERT INTO Student(
	[Name],
	[Address],
	Class,
	Mark)
	VALUES(@Name,
	@Address,
	@Class,
	@Mark)
END
GO

EXEC SetStudentDetails
	@Name='Ashik',
	@Address='askaslk',
	@Class='10B',
	@Mark=23.5
EXEC SetStudentDetails
	@Name='Abin',
	@Address='sdsdsds',
	@Class='11',
	@Mark=26.5
EXEC SetStudentDetails
	@Name='Ajith',
	@Address='nhkhhk',
	@Class='16C',
	@Mark=28.65
EXEC SetStudentDetails
	@Name='Prem',
	@Address='aefaeaf',
	@Class='12F',
	@Mark=35.5


SELECT * FROM Student

------Procedure for GetStudentDetails--
GO 
CREATE OR ALTER PROCEDURE GetStudentDetails
AS
BEGIN
SELECT * FROM Student;
END
GO

----Procedure for Insert a student detail an get the identity--
GO 
CREATE OR ALTER PROCEDURE InsertNewStudent
@Name VARCHAR(100),
@Address VARCHAR(100),
@Class VARCHAR(50),
@Mark DECIMAL
AS
BEGIN
INSERT INTO Student(
	[Name],
	[Address],
	Class,
	Mark)
	VALUES(@Name,
	@Address,
	@Class,
	@Mark)
	return @@Identity;
END
GO

