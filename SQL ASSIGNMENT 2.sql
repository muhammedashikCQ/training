CREATE DATABASE LIBRARY
CREATE TABLE BOOKSTORE(Book_id int,[Book_Name] varchar(50),[Author] varchar(50),year_of_publishing int,Price float)
INSERT INTO BOOKSTORE VALUES 
(12,'The pilgrims progress','John Bunayan',1678,2550),
(4,'The Robinson Crusoe','Daniel Defeo',1719,1555.25),
(5,' Gulliver’s Travels','Jonathan Swift',1726,1860),
(25,' Clarissa','y Samuel Richardson ',1748,2540.50),
(15,'Tom Jones',' Henry Fielding',1658,2547.20);
SELECT * FROM BOOKSTORE;