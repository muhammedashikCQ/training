CREATE TABLE Books(book_id INT IDENTITY PRIMARY KEY,Book_name VARCHAR(50),Price FLOAT);
INSERT INTO Books VALUES
('The Pilgrim’s Progress',2050),
(' Robinson Crusoe',1899.50),
('Gulliver’s Travels',1550),
(' clarissa',1748);
SELECT * FROM Books;

CREATE TABLE Authors(author_id   INT IDENTITY PRIMARY KEY,author_name  VARCHAR(50),author_place VARCHAR(50));
INSERT INTO Authors VALUES
('ohn Bunyan','USA'),
(' Jonathan Swift','LONDON'),
('Samuel Richardson','INDIA');
SELECT * FROM Authors;


CREATE TABLE Publishers(publisher_id INT IDENTITY PRIMARY KEY, publisher_name VARCHAR(50),publication_date  DATE NOT NULL);
INSERT INTO Publishers VALUES ('Sunatha','2003-08-12');
INSERT INTO Publishers VALUES ('Sunatha','2003-08-12');
INSERT INTO Publishers VALUES ('haja','2004-08-14');
INSERT INTO Publishers VALUES ('laka','2005-06-05');
SELECT * FROM Publishers;