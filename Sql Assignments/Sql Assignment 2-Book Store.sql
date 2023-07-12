CREATE TABLE Books(book_id INT IDENTITY,Book_name VARCHAR(50),Price FLOAT,Author1_id INT,Publisher1_id INT,CONSTRAINT pk_Books PRIMARY KEY(book_id),CONSTRAINT fk_Books_Author_id_Authors_author_id FOREIGN KEY(Author1_id) REFERENCES Authors(author_id),CONSTRAINT fk_Books_Publisher_id_Publishers_publisher_id FOREIGN KEY(Publisher1_id) REFERENCES Publishers(publisher_id));
INSERT INTO Books VALUES
('The Pilgrim’s Progress',2050,1,2),
(' Robinson Crusoe',1899.50,3,4),
('Gulliver’s Travels',1550,5,6),
(' clarissa',1748,7,8);
SELECT * FROM Books;
CREATE TABLE Authors(author_id INT IDENTITY NOT NULL,author_name  VARCHAR(50),author_place VARCHAR(50),publisher1_id INT NOT NULL,CONSTRAINT uq_Authors UNIQUE(author_id),CONSTRAINT fk_Authors_Authors_id_Publishers_publisher_id FOREIGN KEY(publisher1_id) REFERENCES Publishers(publisher_id));
INSERT INTO Authors VALUES
('ohn Bunyan','USA',1),
('Jonathan Swift','LONDON',3),
('Samuel Richardson','INDIA',5);
SELECT * FROM Authors;
DROP TABLE Authors;


CREATE TABLE Publishers(publisher_id INT IDENTITY,publisher_name VARCHAR(50),publication_date  DATE  NOT NULL,CONSTRAINT pk_Publishers PRIMARY KEY(publisher_id),CONSTRAINT ck_Publichers CHECK(YEAR(publication_date)>2003));	
INSERT INTO Publishers VALUES ('Sunatha','2003-08-12');
INSERT INTO Publishers VALUES ('Sunatha','2003-08-12');
INSERT INTO Publishers VALUES ('haja','2004-08-14');
INSERT INTO Publishers VALUES ('laka','2005-06-05');
INSERT INTO Publishers VALUES ('laok','2004-05-03');

SELECT * FROM Publishers;
DROP TABLE Publishers;

