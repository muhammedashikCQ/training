---Procedure For Inserting Values into Genre--

GO
CREATE PROCEDURE GenreTable
@GenreName VARCHAR(100)
AS
BEGIN
INSERT INTO Genre
VALUES(@GenreName)
END
GO
EXEC GenreTable 'Horror'
EXEC GenreTable 'Comedy'
EXEC GenreTable 'Thriller'
EXEC GenreTable 'Drama'
EXEC GenreTable 'Romance'
EXEC GenreTable 'Humor'
EXEC GenreTable 'ScienceFiction'

DROP PROCEDURE MovieTable

SELECT * FROM Genre


---Procedure For Inserting Values into Language--


GO
CREATE PROCEDURE LanguageTable
@LanguageName VARCHAR(100)
AS
BEGIN
INSERT INTO Language
VALUES(@LanguageName)
END
GO

EXEC LanguageTable 'English'
EXEC LanguageTable 'Hindi'
EXEC LanguageTable 'Malayalam'
EXEC LanguageTable 'Tamil'
EXEC LanguageTable 'Telungu'

SELECT * FROM Language


----Creating Table Type For Storing LanguageId and GenreId

CREATE TYPE EntityId
AS TABLE(
Ids INT
)
GO
CREATE PROCEDURE MovieGenreLanguage
@MovieName VARCHAR(50),
@ReleaseDate DATETIME,
@Duration TIME,
@GenreIds dbo.EntityId READONLY,
@LanguageIds dbo.EntityId READONLY
AS
BEGIN
INSERT INTO Movie(MovieName, ReleaseDate, Duration)
VALUES(
@MovieName,
@ReleaseDate,
@Duration)

DECLARE @MovieId INT =  @@IDENTITY

INSERT INTO MovieGenre(MovieID,GenreId)
SELECT @MovieId,Ids
FROM @GenreIds

INSERT INTO MovieLanguage(MovieId,LanguageId)
SELECT @MovieId,Ids
FROM @LanguageIds
END
GO


DECLARE @GenreIds dbo.EntityId
INSERT @GenreIds
--SELECT 22
--UNION ALL
--SELECT 23  
--UNION ALL
--SELECT 24
--UNION ALL
--SELECT 25
--UNION ALL
--SELECT 26
--UNION ALL
SELECT 27
--UNION ALL
--SELECT 28
DECLARE @LanguageIds dbo.EntityId
INSERT @LanguageIds
SELECT 1
--UNION ALL
--SELECT 2
--UNION ALL
--SELECT 3
--UNION ALL
--SELECT 4
--UNION ALL
--SELECT 5


EXEC MovieGenreLanguage
 @MovieName='Bahubali',
 @ReleaseDate='2023-12-23',
 @Duration='02:45:10',
 @GenreIds = @GenreIds,
 @LanguageIds = @LanguageIds


EXEC MovieGenreLanguage
 @MovieName='KGF',
 @ReleaseDate='2023-10-23',
 @Duration='03:45:10',
 @GenreIds = @GenreIds,
 @LanguageIds = @LanguageIds


EXEC MovieGenreLanguage
@MovieName='Bheeshma',
@ReleaseDate='2023-9-15',
@Duration='02:25:09',
@GenreIds = @GenreIds,
@LanguageIds = @LanguageIds


EXEC MovieGenreLanguage
@MovieName='Lion',
@ReleaseDate='2023-05-18',
@Duration='02:55:10',
@GenreIds = @GenreIds,
@LanguageIds = @LanguageIds

EXEC MovieGenreLanguage
@MovieName='Bro',
@ReleaseDate='2023-11-10',
@Duration='02:45:10',
@GenreIds = @GenreIds,
@LanguageIds = @LanguageIds

--Creating procedure for Inserting into State Table-


GO
CREATE PROCEDURE StateTable
(
@StateName VARCHAR(50)
)
AS
BEGIN
INSERT INTO State(
StateName)
VALUES(
@StateName)

END
GO
EXEC StateTable
@StateName='Kerala'

EXEC StateTable
@StateName='Andhra Pradesh'

EXEC StateTable
@StateName='Karnataka'

EXEC StateTable
@StateName='TamilNadu'

EXEC StateTable
@StateName='Assam'

EXEC StateTable
@StateName='Bihar'

EXEC StateTable
@StateName='Haryana'

EXEC StateTable
@StateName='Punjab'

EXEC StateTable
@StateName='Rajasthan'

EXEC StateTable
@StateName='Telangana'

EXEC StateTable
@StateName='Uttar Pradesh'

EXEC StateTable
@StateName='West Bengal'

EXEC StateTable
@StateName='Mizoram'

EXEC StateTable
@StateName='Tripura'

EXEC StateTable
@StateName='Uttarakhand'



----Create Procedure for Inserting into City Table--
GO
CREATE PROCEDURE CityTable(
@CityName VARCHAR(50),
@Pincode INT,
@StateId EntityIds READONLY )
AS
BEGIN
INSERT INTO City(
CityName,
Pincode,
StateId)
SELECT
@CityName,
@Pincode,
Ids
FROM @StateId
END
GO
DECLARE @StateId EntityIds
INSERT @StateId
SELECT 1

EXEC CityTable
@CityName='Kollam',
@Pincode=67865,
@StateId=@StateId

DECLARE @StateId EntityIds
INSERT @StateId
SELECT 14

EXEC CityTable
@CityName='Katapn',
@Pincode=67815,
@StateId=@StateId

DECLARE @StateId EntityIds
INSERT @StateId
SELECT 1
EXEC CityTable
@CityName='Trivandrum',
@Pincode=67899,
@StateId=@StateId


DECLARE @StateId EntityIds
INSERT @StateId
SELECT 12

EXEC CityTable
@CityName='ASkarq',
@Pincode=12349,
@StateId=@StateId


DECLARE @StateId EntityIds
INSERT @StateId
SELECT 8

EXEC CityTable
@CityName='Madaska',
@Pincode=22397,
@StateId=@StateId


DECLARE @StateId EntityIds
INSERT @StateId
SELECT 2
UNION ALL
SELECT 4

EXEC CityTable
@CityName='Kolilj',
@Pincode=1349,
@StateId=@StateId

DECLARE @StateId EntityIds
INSERT @StateId
SELECT 1

EXEC CityTable
@CityName='Kottayam',
@Pincode=695609,
@StateId=@StateId

DECLARE @StateId EntityIds
INSERT @StateId
SELECT 1

EXEC CityTable
@CityName='Kannur',
@Pincode=69515,
@StateId=@StateId

DECLARE @StateId EntityIds
INSERT @StateId
SELECT 1

EXEC CityTable
@CityName='Kochi',
@Pincode=691235,
@StateId=@StateId


DECLARE @StateId EntityIds
INSERT @StateId
SELECT 1

EXEC CityTable
@CityName='Malappuram',
@Pincode=65655,
@StateId=@StateId
SELECT * FROM City



---Creating Procedure For Rating Table--

GO
CREATE PROCEDURE RatingTable
(
@RatingValue INT)
AS
BEGIN
INSERT INTO Rating(
RatingValue)
VALUES(
@RatingValue)

END
GO
EXEC RatingTable
@RatingValue=5
EXEC RatingTable
@RatingValue=4
EXEC RatingTable
@RatingValue=3
EXEC RatingTable
@RatingValue=2
EXEC RatingTable
@RatingValue=1

SELECT* FROM Rating
---------------------------------

--Creating Procedure For Inserting Value to the User--
GO
CREATE PROCEDURE UserTable(
@UserName VARCHAR(50),
@EmailId VARCHAR(10),
@Password VARCHAR(100),
@Age INT,
@Phonenumber VARCHAR(50))
AS
BEGIN
INSERT INTO [User](
UserName,
EmailId,
[Password],
Age,
PhoneNumber)
VALUES(
@UserName,
@EmailId,
@Password,
@Age,
@Phonenumber)
END
GO

EXEC UserTable
@UserName='Ashik',
@EmailId='muhammedashik12@gmail.com',
@Password='1205ada',
@Age=23,
@Phonenumber='9846602825'

EXEC UserTable
@UserName='Eldo',
@EmailId='eldo12@gmail.com',
@Password='55ss2',
@Age=23,
@Phonenumber='9864546444'
EXEC UserTable
@UserName='Arjun',
@EmailId='daaf2@gmail.com',
@Password='fs5sf62',
@Age=23,
@Phonenumber='65236655559'
EXEC UserTable
@UserName='Abin',
@EmailId='Abin12@gmail.com',
@Password='asdfafd23',
@Age=23,
@Phonenumber='98956552665'
EXEC UserTable
@UserName='Logi',
@EmailId='asdasda@gmail.com',
@Password='asd656',
@Age=23,
@Phonenumber='98656562355'

EXEC UserTable
@UserName='Askjhks',
@EmailId='ADSADSA@gmail.com',
@Password='aasds5656',
@Age=23,
@Phonenumber='9868665856'
EXEC UserTable
@UserName='Asklkikj',
@EmailId='Asdfjio@ac.in',
@Password='aasds5656',
@Age=23,
@Phonenumber='65655598565'

EXEC UserTable
@UserName='Asklkikj',
@EmailId='Asdfjio@ac.in',
@Password='aasds5656',
@Age=23,
@Phonenumber='65655598565'
----Create Procedure for PaymentMethod---
GO
CREATE PROCEDURE PaymentMethodTable
(
@PaymentType VARCHAR(50)
)
AS
BEGIN
INSERT INTO PaymentMethod(
PaymentType)
VALUES(
@PaymentType)
END
GO
EXEC PaymentMethodTable
@PaymentType='UPI'
EXEC PaymentMethodTable
@PaymentType='Net Banking'
EXEC PaymentMethodTable
@PaymentType='Card Payment'

----Create Procedure for SeatClass---

GO
CREATE PROCEDURE SeatClassTable
(
@SeatClassName VARCHAR(50),
@SeatClassPrice INT
)
AS
BEGIN
INSERT INTO SeatClass(
SeatClassName,
SeatClassPrice)
VALUES(
@SeatClassName,
@SeatClassPrice)
END
GO
EXEC SeatClassTable
@SeatClassName='Silver',
@SeatClassPrice=250

EXEC SeatClassTable
@SeatClassName='Gold',
@SeatClassPrice=300

EXEC SeatClassTable
@SeatClassName='Diamond',
@SeatClassPrice=400
EXEC SeatClassTable
@SeatClassName='Platinum',
@SeatClassPrice=500


------Create Procedure for Theater---

CREATE TYPE ScreenType
AS
TABLE(
ScreenName VARCHAR(50),
ScreenNumber INT)

CREATE TYPE SeatType
AS
TABLE(
SeatNumber INT,
SeatClassId INT
)
GO
CREATE PROCEDURE TheaterScreenSeat(
@TheaterName VARCHAR(50),
@CityId INT,
@Screens ScreenType READONLY,
@TheaterSeat SeatType READONLY
)
AS
BEGIN
INSERT INTO Theater(
TheaterName,
CityId)
VALUES(
@TheaterName,
@CityId)

DECLARE @TheaterId INT=SCOPE_IDENTITY();

DECLARE @Inserted TABLE(
Id INT,
[Name] VARCHAR(50),
Number INT)

INSERT INTO Screen(
ScreenName,
ScreenNumber,
TheaterId)
OUTPUT Inserted.ScreenId,Inserted.ScreenName,Inserted.ScreenNumber
INTO @Inserted
SELECT
ScreenName,
ScreenNumber,
@TheaterId
FROM @Screens

INSERT INTO Seat(
SeatNumber,
SeatClassId,
ScreenId)
SELECT SeatNumber,SeatClassId, I.Id
FROM @TheaterSeat  AS T
CROSS JOIN @Inserted I
END
GO
--------------------------

DECLARE @Screens ScreenType
INSERT INTO @Screens(
ScreenName,
ScreenNumber)
SELECT  'AX1',1
UNION ALL
SELECT  'AX2',2
UNION ALL
SELECT  'AX3',3
UNION ALL
SELECT  'AX4',4
UNION ALL
SELECT  'AX5',5
DECLARE @TheaterSeat SeatType
INSERT INTO @TheaterSeat(
SeatNumber,
SeatClassId)
SELECT 1,9
UNION ALL
SELECT 2,9
UNION ALL
SELECT 3,9
UNION ALL
SELECT 4,9
UNION ALL
SELECT 5,9
UNION ALL
SELECT 6,9
UNION ALL
SELECT 7,9
UNION ALL
SELECT 8,9
UNION ALL
SELECT 9,9
UNION ALL
SELECT 10,9
SELECT 2,9
UNION ALL
SELECT 3,9
UNION ALL
SELECT 4,9
UNION ALL
SELECT 5,9
UNION ALL
SELECT 6,9
UNION ALL
SELECT 7,9
UNION ALL
SELECT 8,9
UNION ALL
SELECT 9,9
UNION ALL
SELECT 10,9
EXEC TheaterScreenSeat
@TheaterName='Dhanya',
@CityId =7,
@Screens =@Screens,
@TheaterSeat=@TheaterSeat
--------------------------------------------------

DECLARE @Screens ScreenType
INSERT INTO @Screens(
ScreenName,
ScreenNumber)
SELECT  'AX1',1
UNION ALL
SELECT  'AX2',2
UNION ALL
SELECT  'AX3',3
UNION ALL
SELECT  'AX4',4
UNION ALL
SELECT  'AX5',5
DECLARE @TheaterSeat SeatType
INSERT INTO @TheaterSeat(
SeatNumber,
SeatClassId)
SELECT 1,10
UNION ALL
SELECT 2,10
UNION ALL
SELECT 3,10
UNION ALL
SELECT 4,10
UNION ALL
SELECT 5,10
UNION ALL
SELECT 6,10
UNION ALL
SELECT 7,11
UNION ALL
SELECT 8,11
UNION ALL
SELECT 9,11
UNION ALL
SELECT 10,11
SELECT 2,11
UNION ALL
SELECT 3,11
UNION ALL
SELECT 4,11
UNION ALL
SELECT 5,11
UNION ALL
SELECT 6,11
UNION ALL
SELECT 7,11
UNION ALL
SELECT 8,11
UNION ALL
SELECT 9,11
UNION ALL
SELECT 10,11
EXEC TheaterScreenSeat
@TheaterName=' Carnival Artech Mall Screen 1',
@CityId =7,
@Screens =@Screens,
@TheaterSeat=@TheaterSeat

---------------------------------------------------
DECLARE @Screens ScreenType
INSERT INTO @Screens(
ScreenName,
ScreenNumber)
SELECT  'AX1',1
UNION ALL
SELECT  'AX2',2

DECLARE @TheaterSeat SeatType
INSERT INTO @TheaterSeat(
SeatNumber,
SeatClassId)
SELECT 1,10
UNION ALL
SELECT 2,10
UNION ALL
SELECT 3,10

EXEC TheaterScreenSeat
@TheaterName=' Ganga',
@CityId =11,
@Screens =@Screens,
@TheaterSeat=@TheaterSeat

------------------------------------------
DECLARE @Screens ScreenType
INSERT INTO @Screens(
ScreenName,
ScreenNumber)
SELECT  'AX1',1
UNION ALL
SELECT  'AX2',2

DECLARE @TheaterSeat SeatType
INSERT INTO @TheaterSeat(
SeatNumber,
SeatClassId)
SELECT 1,12
UNION ALL
SELECT 2,10
UNION ALL
SELECT 3,11

EXEC TheaterScreenSeat
@TheaterName=' HK Cinemas',
@CityId =11,
@Screens =@Screens,
@TheaterSeat=@TheaterSeat

-------------------------------------------

DECLARE @Screens ScreenType
INSERT INTO @Screens(
ScreenName,
ScreenNumber)
SELECT  'AX1',1
UNION ALL
SELECT  'AX2',2

DECLARE @TheaterSeat SeatType
INSERT INTO @TheaterSeat(
SeatNumber,
SeatClassId)
SELECT 1,10
UNION ALL
SELECT 2,10
UNION ALL
SELECT 3,10

EXEC TheaterScreenSeat
@TheaterName='JV Cinemas Screen 1',
@CityId =13,
@Screens =@Screens,
@TheaterSeat=@TheaterSeat

-------------------------------------
DECLARE @Screens ScreenType
INSERT INTO @Screens(
ScreenName,
ScreenNumber)
SELECT  'AX1',1
UNION ALL
SELECT  'AX2',2

DECLARE @TheaterSeat SeatType
INSERT INTO @TheaterSeat(
SeatNumber,
SeatClassId)
SELECT 1,10
UNION ALL
SELECT 2,10
UNION ALL
SELECT 3,10

EXEC TheaterScreenSeat
@TheaterName='Sindhu',
@CityId =19,
@Screens =@Screens,
@TheaterSeat=@TheaterSeat

---------------------

DECLARE @Screens ScreenType
INSERT INTO @Screens(
ScreenName,
ScreenNumber)
SELECT  'AX1',1
UNION ALL
SELECT  'AX2',2

DECLARE @TheaterSeat SeatType
INSERT INTO @TheaterSeat(
SeatNumber,
SeatClassId)
SELECT 1,10
UNION ALL
SELECT 2,10
UNION ALL
SELECT 3,10

EXEC TheaterScreenSeat
@TheaterName='Vimala',
@CityId =18,
@Screens =@Screens,
@TheaterSeat=@TheaterSeat




-------------------------------------------------------------

------Creating Procedure for Show----
GO
CREATE PROCEDURE ShowTable
(
@StartTime DATETIME,
@EndTime DATETIME,
@MovielanguageID INT,
@ScreenId INT
)
AS
BEGIN
INSERT INTO Show(
StartTime,
EndTime,
MovielanguageID,
ScreenId)
VALUES(
@StartTime,
@EndTime,
@MovielanguageID,
@ScreenId)
END  
GO

EXEC ShowTable
@StartTime='08/05/2013 03:00:00 PM',
@EndTime='08/05/2013 06:00:00 PM',
@MovielanguageID=17,
@ScreenId=26

EXEC ShowTable
@StartTime='09/05/2013 10:00:00 PM',
@EndTime='09/05/2013 1:00:00 PM',
@MovielanguageID=17,
@ScreenId=28


EXEC ShowTable
@StartTime='10/05/2013 9:00:00 AM',
@EndTime='08/05/2013 12:00:00 AM',
@MovielanguageID=16,
@ScreenId=41

EXEC ShowTable
@StartTime='09/05/2013 09:00:00 AM',
@EndTime='09/05/2013 10:00:00 AM',
@MovielanguageID=10,
@ScreenId=45

EXEC ShowTable
@StartTime='11/06/2013 08:00:00 AM',
@EndTime='11/06/2013 11:00:00 AM',
@MovielanguageID=15,
@ScreenId=37


---Create Procedure For Booking Detail Table---


CREATE TYPE SeatEntity
AS TABLE
(
	Id INT
)
GO
CREATE PROCEDURE BookingDetailTable(
	@UserId	INT,
	@PaymentMethodId INT,
	@ShowId	INT,
	@SeatValues SeatEntity READONLY
	)
AS 
BEGIN

INSERT INTO Booking(
	PaymentMethodId,
	UserId,
	ShowId
	)
SELECT 
	@PaymentMethodId,
	@UserId,
	@ShowId
	

DECLARE @BookingId INT= SCOPE_IDENTITY();

INSERT INTO BookingDetail(
	BookingId,
	SeatId,
	Price)
SELECT
	@BookingId,
	S.SeatId,
	SC.SeatClassPrice

FROM @SeatValues AS SV
INNER JOIN Seat AS S
ON S.SeatId=SV.Id
INNER JOIN SeatClass AS SC
ON SC.SeatClassId=S.SeatClassId

DECLARE @TotalAmount DECIMAL
SELECT @TotalAmount=SUM(Price) FROM BookingDetail
UPDATE Booking
    SET Booking.TotalAmount =@TotalAmount 
END
GO



DECLARE @SeatValues SeatEntity
INSERT INTO @SeatValues(Id)
	SELECT
		176
			UNION ALL
	SELECT
		186


EXEC BookingDetailTable
	@UserId	=1,
	@PaymentMethodId =2,
	@ShowId	=15,
	@SeatValues=@SeatValues

---------------------------------

DECLARE @SeatValues SeatEntity
INSERT INTO @SeatValues(Id)
	SELECT
		178
			UNION ALL
	SELECT
		220
			UNION ALL
	SELECT 
		289



EXEC BookingDetailTable
	@UserId	=3,
	@PaymentMethodId =1,
	@ShowId	=19,
	@SeatValues=@SeatValues
	

------------------------------


DECLARE @SeatValues SeatEntity
INSERT INTO @SeatValues(Id)
	SELECT
		195
			UNION ALL
	SELECT
		224
	



EXEC BookingDetailTable
	@UserId	=5,
	@PaymentMethodId =2,
	@ShowId	=18,
	@SeatValues=@SeatValues
	

	
	