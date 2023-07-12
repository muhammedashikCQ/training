CREATE TABLE Books(BookId INT,
BookName VARCHAR(50),
IsbnNo INT,
AuthorId INT,
PublisherId INT,
OrderId INT
CONSTRAINT pk_Books PRIMARY KEY(BookId),
CONSTRAINT uq_Books UNIQUE(IsbnNo));
ALTER TABLE Books ADD
CONSTRAINT fk_Books_Author_id_Authors_author_id
FOREIGN KEY(AuthorId) REFERENCES Authors(AuthorId),
CONSTRAINT fk_Books_PublisherId_Publishers_PublisherId
FOREIGN KEY(PublisherId) REFERENCES Publisher(PublisherId),
CONSTRAINT fk_Books_OrderId_Orders_OrderId
FOREIGN KEY(OrderId) REFERENCES Orders(OrderId);
ALTER TABLE Books ADD CustomerId INT;
ALTER TABLE Books ADD CONSTRAINT fk_Books_CustomerId_Customer_CustomerId
FOREIGN KEY(CustomerId) REFERENCES Customer(CustomerId);
SELECT * FROM Books;
INSERT INTO Books VALUES
 (1,' Robinson ',180,2,1,1,2),
 (2,'Gulliver’s',550,2,3,2,3),
 (3,' clarissa',748,3,3,3,3),
 (4,' clarissa',258,4,2,4,1);

 SELECT * FROM Books;
 ----Author Table--

 CREATE TABLE Authors(AuthorId INT,
 AuthorName  VARCHAR(50),
 AuthorPlace VARCHAR(50),
 PublisherId INT,  
 CONSTRAINT pk_Authors PRIMARY KEY(AuthorId));
 SELECT * FROM Authors;
 ALTER TABLE Authors ADD
 CONSTRAINT fk_Authors_AuthorId_Publishers_PublisherId
 FOREIGN KEY(PublisherId) REFERENCES Publisher(PublisherId);
 INSERT INTO Authors VALUES
 (1,'ohn Bunyan','USA',1),
 (2,'Jonathan Swift','LONDON',2),
 (3,'Samuel Richardson','INDIA',3),
 (4,'Richardson','IND',4);
 
 SELECT * FROM Authors;
 

 --   --Publisher Table--

 CREATE TABLE Publisher(PublisherId INT NOT NULL,
 PublisherName VARCHAR(50),
 PublicationDate  DATE  NOT NULL,
 CONSTRAINT pk_Publisher PRIMARY KEY(PublisherId));
 --AlTER TABLE Publisher ADD OrderId INT;
 --ALTER TABLE Publisher ADD CONSTRAINT fk_Publihsers_OrderId_Orders_OrdersId
 --FOREIGN KEY(OrderId) REFERENCES Orders(OrderId)
 INSERT INTO Publisher VALUES (1,'Sunatha','2003-08-12');
 INSERT INTO Publisher VALUES(2,'haja','2004-08-14');
 INSERT INTO Publisher VALUES(3,'Sunatha','2003-08-12');
 INSERT INTO Publisher VALUES(4,'laka','2005-06-05');
 INSERT INTO Publisher VALUES(5,'laka','2005-06-05');

 SELECT * FROM Publisher;
 
 
     --Order Table--

 CREATE TABLE Orders(OrderId INT,
 Price FLOAT,
 PublisherID INT,
 CONSTRAINT pk_Orders PRIMARY KEY(OrderId));
 ALTER TABLE Orders ADD CONSTRAINT fk_Orders_PublisherId_Publishers_PublisherId
 FOREIGN KEY(BookId) REFERENCES Books(BookId),
 CONSTRAINT fk_Orders_CustomerId_Customer_CustomerId
 FOREIGN KEY(CustomerId) REFERENCES Customer(CustomerId);
 ALTER TABLE Orders ADD CustomerId INT;
 ALTER TABLE Orders ADD CONSTRAINT fk_Orders_CustomerId_Customer_CustomerId
 FOREIGN KEY(CustomerId) REFERENCES Customer(CustomerId);
 SELECT * FROM Orders;
 INSERT INTO Orders VALUES
 (1,1205,1,2),
 (2,305,2,2),
 (3,605,3,4),
 (4,205,4,1);
 




 -----Customer Table--

 CREATE TABLE Customer(CustomerId INT NOT NULL,
 CustomerName VARCHAR(20),
 CustomerAge INT,
 CONSTRAINT pk_customer PRIMARY KEY(CustomerId),
 CONSTRAINT ck_CustomerAge CHECK(CustomerAge>=18));
 INSERT INTO Customer VALUES
 (1,'Ashik',18),
 (2,'Afsal',24),
 (3,'Abin',32),
 (4,'Prem',26);

 SELECT * FROM Customer;