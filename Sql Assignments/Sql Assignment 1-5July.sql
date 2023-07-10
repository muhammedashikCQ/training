CREATE DATABASE CLASS

CREATE TABLE STUDENT(id int,[Name] varchar(50),Place varchar(50),Marks int);

INSERT INTO STUDENT VALUES(1,'Ashik','Trivandrum',25),
(2,'Abin','Kochi',35),
(3,'James','Thrissur',55),
(4,'Alen','Kottayam',45);

SELECT *,Marks,
CASE WHEN Marks>=40THEN 'A'
	WHEN Marks>=30 AND Marks <40 THEN 'B'
	WHEN Marks>=20 AND Marks <30 THEN 'C'
	WHEN Marks>=10 AND Marks <20 THEN 'D'
	ELSE 'Fail'
	END AS Grades
	FROM STUDENT;
	

