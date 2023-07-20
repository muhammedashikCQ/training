
---Table for Movie

CREATE TABLE Movie(
	MovieId INT IDENTITY,
	MovieName VARCHAR(50) NOT NULL,
	ReleaseDate DATETIME NOT NULL,
	Duration TIME NOT NULL
	

	--Adding Constraints--

	CONSTRAINT pk_Movie
	PRIMARY KEY(MovieId));


---Table for Show

CREATE TABLE Show(
	ShowId INT IDENTITY,
	StartTime DATETIME NOT NULL,
	EndTime DATETIME NOT NULL,
	MovielanguageID INT,
	ScreenId TINYINT
	--Adding Constraints--

	CONSTRAINT pk_Show 
	PRIMARY KEY (ShowId));

----Table for User

CREATE TABLE [User](
	UserId INT IDENTITY,
	UserName VARCHAR(50) NOT NULL,
	EmailId VARCHAR(100) NOT NULL,
	[Password] VARCHAR(100) NOT NULL,
	Age INT NOT NULL,
	PhoneNumber  VARCHAR(50) NOT NULL,
	CreatedOn DATETIME NOT NULL 
	DEFAULT CURRENT_TIMESTAMP,
	UserLikeId	INT

	

	---Adding Constraints--

	CONSTRAINT pk_User 
	PRIMARY KEY(UserId),
	CONSTRAINT uq_User_Phonenumber 
	UNIQUE(PhoneNumber),
	CONSTRAINT uq_User_EmailId 
	UNIQUE(EmailId),
	CONSTRAINT uq_User_UserName 
	UNIQUE(UserName));


----Table for Theater


CREATE TABLE Theater(
	TheaterId INT IDENTITY,
	TheaterName VARCHAR(50) NOT NULL,
	TotalScreen INT NOT NULL,
	CityId	INT 
	--Adding Constraints--
	
	CONSTRAINT pk_Theater
	PRIMARY KEY(TheaterId));

	
---Table for Place
	
CREATE TABLE City(
	CityId INT IDENTITY,
	CityName VARCHAR(50) NOT NULL,
	Pincode INT NOT NULL,
	StateId	INT 
	--Adding Constraint--
	
	CONSTRAINT pk_City
	PRIMARY KEY(CityId));

	
--Table for State

CREATE TABLE State(
	StateId INT IDENTITY,
	StateName VARCHAR(50) NOT NULL

	--Adding Constraint--
	CONSTRAINT pk_State
	PRIMARY KEY(StateId),
	CONSTRAINT uq_State_StateName
	UNIQUE(StateName));

	
--Table For Screen

CREATE TABLE Screen(
	ScreenId TINYINT IDENTITY,
	ScreenName	VARCHAR(50)	NOT NULL,
	ScreenNumber	TINYINT	NOT NULL,
	TheaterId	INT 
	 ----Adding Constraint--
	 
	 CONSTRAINT pk_Screen
	 PRIMARY KEY(ScreenId));

--Table for SeatClass

CREATE TABLE SeatClass(
	SeatClassId	TINYINT IDENTITY,
	SeatClassName VARCHAR(50),
	SeatClassPrice	INT	NOT NULL,
	ScreenId	TINYINT
	--Adding Constraints--
	
	CONSTRAINT pk_SeatClass
	PRIMARY KEY(SeatClassId),
	CONSTRAINT uq_SeatClass_SeatClassName
	UNIQUE(SeatClassName));
	
---Table For Seat

CREATE TABLE Seat(
	SeatId INT IDENTITY,
	SeatNumber SMALLINT NOT NULL,
	SeatClassId	TINYINT
	--Adding Constraints
	
	CONSTRAINT pk_Seat
	PRIMARY KEY(SeatId));

----Table for BookedSeat

CREATE TABLE BookedSeat(
	BookedSeatId INT IDENTITY,
	BookingDetailId	INT,
	SeatId	INT
	---Adding Constraints--
	
	CONSTRAINT pk_BookedSeat
	PRIMARY KEY(BookedSeatId));


--Table For Payment

CREATE TABLE Payment(
	PaymentId INT IDENTITY,
	Amount DECIMAL NOT NULL,
	ConvinienceFees DECIMAL NOT NULL,
	TotalAmount DECIMAL NOT NULL,
	[Timestamp]	DATETIME NOT NULL 
	DEFAULT CURRENT_TIMESTAMP,
	TransactionId INT,
	PaymentMethodId	INT
	--Adding Constraints--
	
	CONSTRAINT pk_Payment
	PRIMARY KEY (PaymentId),
	CONSTRAINT uq_Payment_TransactionId
	UNIQUE(TransactionId));


--Table for PaymentMethod--

CREATE TABLE PaymentMethod(
	PaymentMethodId INT IDENTITY,
	PaymentType VARCHAR(50) NOT NULL

	--Adding Constraints--

	CONSTRAINT pk_PaymentMethod
	PRIMARY KEY(PaymentMethodId));

--Table for BookingDetail


CREATE TABLE BookingDetail(
	BookingDetailId INT IDENTITY,
	BookedSeatId	INT,
	ShowId	INT,
	UserId	INT,
	PaymentID	INT,
	
	--Adding constraints--
	CONSTRAINT pk_BookingDetail
	PRIMARY KEY(BookingDetailId));

---Table for Rating--

CREATE TABLE Rating(
	RatingId	INT IDENTITY,
	RatingValue	INT,
	MovieID	INT
	--Adding Constraint--
	CONSTRAINT pk_Rating
	PRIMARY KEY(RatingId));

---Table for UserLike

CREATE TABLE UserLike(
	UserLikeId INT IDENTITY,
	GenreId	TINYINT,
	LanguageId	TINYINT
	--Adding Constraints--
	
	CONSTRAINT pk_UserLike
	PRIMARY KEY(UserLikeId));

	--Table for Genre

CREATE TABLE Genre(
	GenreId TINYINT IDENTITY,
	GenreName VARCHAR(50)

	--Adding Constraints--

	CONSTRAINT pk_Genre
	PRIMARY KEY(GenreId),
	CONSTRAINT uq_Genre_GenreName
	UNIQUE(GenreName));

----Table For language--

CREATE TABLE Language(
	LanguageId TINYINT IDENTITY,
	LanguageName VARCHAR(50) NOT NULL
	--Adding Constraints--

	CONSTRAINT pk_Language
	PRIMARY KEY(LanguageId),
	CONSTRAINT uq_Language_LanguageId
	UNIQUE(LanguageName));


--Table for MovieLanguage

CREATE TABLE MovieLanguage(
	MovieLanguageId	INT IDENTITY,
	MovieId	INT,
	LanguageId	TINYINT
	
	--Adding Constraints-
	CONSTRAINT pk_MovieLanguage
	PRIMARY KEY(MovieLanguageId));

	

--Table For MovieGenre
CREATE TABLE MovieGenre(
	MovieGenreId INT IDENTITY,
	MovieID	INT,
	GenreId	TINYINT
	--Adding Constraints--
	CONSTRAINT pk_MovieGenre
	PRIMARY KEY(MovieGenreId));
	
	

-----Altering Table------

--Adding Foreign Key-----


		--Show Table--

--Connecting Show-MovieLanguage

ALTER TABLE Show 
	ADD CONSTRAINT fk_Show_MovieLanguage
	FOREIGN KEY(MovielanguageId) 
	REFERENCES Movielanguage(MovieLanguageId);

--Connecting Show-Screen

ALTER TABLE Show 
	ADD CONSTRAINT fk_Show_Screen
	FOREIGN KEY(ScreenId) 
	REFERENCES Screen(ScreenId);

		--BookingDetail--


--Connecting BookingDetail-BookedSeat

ALTER TABLE BookingDetail 
	ADD CONSTRAINT fk_BookingDetail_BookedSeat
	FOREIGN KEY(BookedSeatId) 
	REFERENCES BookedSeat(BookedSeatId);

--Connecting BookingDetail-Show

ALTER TABLE BookingDetail 
	ADD CONSTRAINT fk_BookingDetail_Show
	FOREIGN KEY(ShowId) 
	REFERENCES Show(ShowId);

--Connecting BookingDetail-User

ALTER TABLE BookingDetail
	ADD CONSTRAINT fk_BookingDetail_User
	FOREIGN KEY(UserId)
	REFERENCES [User](UserId);


---Connecting BookingDetail-Payment

ALTER TABLE BookingDetail 
	ADD CONSTRAINT fk_BookingDetail_Payment
	FOREIGN KEY(PaymentId) 
	REFERENCES Payment(PaymentId);


		---Rating---

--Connecting Rating - Movie


ALTER TABLE Rating
	ADD CONSTRAINT fk_Rating_Movie
	FOREIGN KEY(MovieId)
	REFERENCES Movie(MovieId);

		--User--

--Connecting User-UserLike

ALTER TABLE [User]
	ADD CONSTRAINT fk_User_UserLike
	FOREIGN KEY(UserLikeId)
	REFERENCES [UserLike](UserLikeId);

	--Theater--

--Connecting Theater-City

ALTER TABLE Theater
	ADD CONSTRAINT fk_Theater_City
	FOREIGN KEY(CityId)
	REFERENCES City(CityId);


	--City--

--Connecting City-State

ALTER TABLE City
	ADD CONSTRAINT fk_City_State
	FOREIGN KEY(StateId)
	REFERENCES [State](StateId);

	--Screen--

--Connecting Screen-Theater

ALTER TABLE Screen
	ADD CONSTRAINT fk_Screen_Theater
	FOREIGN KEY(TheaterId)
	REFERENCES Theater(TheaterId);


	--Payment--

--Connecting Payment-PaymentMethod

ALTER TABLE Payment
	ADD CONSTRAINT fk_Payment_PaymentMethod
	FOREIGN KEY(PaymentMethodId)
	REFERENCES PaymentMethod(PaymentMethodId);


	--UserLike---

--Connecting UserLike-GenreId--

ALTER TABLE UserLike
	ADD CONSTRAINT fk_UserLike_GenreId
	FOREIGN KEY(GenreId)
	REFERENCES Genre(GenreId);


ALTER TABLE UserLike
	ADD CONSTRAINT fk_UserLike_LanguageId
	FOREIGN KEY(LanguageId)
	REFERENCES Language(LanguageId);


	---MovieLanguage--

---Connecting MovieLanguage-Movie


ALTER TABLE MovieLanguage
	ADD CONSTRAINT fk_MovieLanguage_Movie
	FOREIGN KEY(MovieId)
	REFERENCES Movie(MovieId);

---Connecting MovieLanguage-Language

ALTER TABLE MovieLanguage
	ADD CONSTRAINT fk_MovieLanguage_Language
	FOREIGN KEY(LanguageId)
	REFERENCES Language(LanguageId);


	--MovieGenre--

	---Connecting MovieGenre-Movie

ALTER TABLE MovieGenre
	ADD CONSTRAINT fk_MovieGenre_Movie
	FOREIGN KEY(MovieId)
	REFERENCES Movie(MovieId);

	--Connecting MovieGenre-Genre

ALTER TABLE MovieGenre
	ADD CONSTRAINT fk_MovieGenre_Genre
	FOREIGN KEY(GenreId)
	REFERENCES Genre(GenreId);


	--SeatClass--

	--Connecting SeatClass-Screen

ALTER TABLE SeatClass
	ADD CONSTRAINT fk_SeatClass_Screen
	FOREIGN KEY(ScreenId)
	REFERENCES Screen(ScreenId);


	--BookedSeat--

--Connecting BookedSeat-BookingDetail

ALTER TABLE BookedSeat
	ADD CONSTRAINT fk_BookedSeat_BookingDetail
	FOREIGN KEY(BookingDetailId)
	REFERENCES BookingDetail(BookingDetailId);

--Connecting BookedSeat-Seat

ALTER TABLE BookedSeat
	ADD CONSTRAINT fk_BookedSeat_Seat
	FOREIGN KEY(SeatId)
	REFERENCES Seat(SeatId);


	--Seat--

--Connecting Seat-SeatClass

ALTER TABLE Seat
	ADD CONSTRAINT fk_Seat_SeatClass
	FOREIGN KEY(SeatClassId)
	REFERENCES SeatClass(SeatClassId);




---Inserting Values into the Movie--

CREATE PROCEDURE MovieTable
@MovieName	VARCHAR(50),
@ReleaseDate	DATETIME,
@Duration	TIME
AS 
BEGIN
INSERT INTO Movie
VALUES(
@MovieName,
@ReleaseDate,
@Duration)
END
GO
EXEC MovieTable 'Bahubali','2023-12-23','02:45:10'
EXEC MovieTable 'KGF','2023-10-23','03:45:10'
EXEC MovieTable 'Bheeshma','2023-9-15','02:25:09'
EXEC MovieTable 'Lion','2023-05-18','02:55:10'
EXEC MovieTable 'Bro','2023-11-10','02:45:10'

DELETE Movie
DROP PROCEDURE MovieTable
SELECT * FROM Movie

