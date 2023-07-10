CREATE TABLE Books(book_id INT IDENTITY,Book_name VARCHAR(50),Price FLOAT,Author1_id INT,Publisher1_id INT,CONSTRAINT pk_Books PRIMARY KEY(book_id),CONSTRAINT fk_Books_Author_id_Authors_author_id FOREIGN KEY(Author1_id) REFERENCES Authors(author_id),CONSTRAINT fk_Books_Publisher_id_Publishers_publisher_id FOREIGN KEY(Publisher1_id) REFERENCES Publishers(publisher_id));
INSERT INTO Books VALUES
('The Pilgrim’s Progress',2050,1,2),
(' Robinson Crusoe',1899.50,3,4),
('Gulliver’s Travels',1550,5,6),
(' clarissa',1748,7,8);
SELECT * FROM Books;

DROP TABLE Books;
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

