

CREATE TABLE Persons (id INT IDENTITY,Name VARCHAR(50),Age INT,CONSTRAINT pk_Persons PRIMARY KEY(id));
INSERT Persons VALUES('John Samuel',22),('John Sine',34),('alex John',26),('leo deo',54),('Alen',87),('Alien',23);

--1.Display all records who’s name starts with John

SELECT * FROM Persons WHERE Name LIKE('John%');

--2- Display all records who’s name ends with John

SELECT * FROM Persons WHERE Name LIKE('%John');

--3- Display all records who’s name have John ( can be any   where )

SELECT * FROM Persons WHERE Name LIKE('%John%');

--4-Display all records who’s name starts with A and ends with n

SELECT * FROM Persons WHERE Name LIKE('A%N');

--5-Display all records who have alex or deo any where in name column


SELECT * FROM Persons WHERE Name LIKE('%alex%') OR Name LIKE('%deo%');


    