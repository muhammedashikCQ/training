
---Create  Procedure For GetMoviesForToday

CREATE OR ALTER PROCEDURE GetMoviesForToday (
	@CityId INT,
	@MovieGenreId EntityId READONLY,
	@MovieLanguageId EntityId READONLY
	)
AS
BEGIN

SELECT m.MovieName,m.ReleaseDate,m.Duration
FROM Show s 
INNER JOIN Screen sc 
	ON sc.ScreenId = s.ScreenId
INNER JOIN Theater t 
	ON t.TheaterId = sc.TheaterId
INNER JOIN MovieLanguage ml	
	ON ml.MovieLanguageId = s.MovielanguageID
INNER JOIN MovieGenre mg 
	ON mg.MovieID = ml.MovieId
LEFT JOIN Movie m
on m.MovieId=mg.MovieID
WHERE CAST ( StartTime  AS DATE) = CAST(GETDATE() AS DATE)
	AND t.CityId = @CityId 
	AND mg.GenreId IN ( SELECT Ids FROM @MovieGenreId)
	AND ml.LanguageId IN (SELECT Ids FROM @MovielanguageId)
END
GO

DECLARE @MovieGenreId EntityId
INSERT INTO @MovieGenreId
SELECT 25
UNION ALL 
SELECT 26
DECLARE @MovieLanguageId EntityId 
INSERT INTO @MovieLanguageId
SELECT 5

EXEC GetMoviesForToday
	@CityId=7,
	@MovieGenreId=@MovieGenreId,
	@MovieLanguageId=@MovieGenreId



	--Create Procedure For GetShowDetails by Movie Language Id--


GO
CREATE PROCEDURE GetShowDetails(
	@LanguageId INT)
AS
BEGIN
SELECT * 
FROM Show 
AS S
INNER JOIN MovieLanguage
	AS ML
	ON ML.MovieLanguageId=S.MovielanguageID
	WHERE ML.LanguageId=@LanguageId
END
GO

EXEC GetShowDetails
	@LanguageId=5



	---Create Procedure for GetSeatInfoByShowId--

GO
CREATE OR ALTER PROCEDURE GetSeatInfoByShow(
		@ShowId INT)
AS
BEGIN

SELECT SE.SeatId,SE.ScreenId,
CASE
WHEN B.BookingId IS NULL THEN 'Not Booked'
WHEN B.BookingId IS NOT NULL THEN 'Booked'
END
AS [Status]
FROM Show
AS S
INNER JOIN Booking
	AS B
	ON B.ShowId=S.ShowId
	INNER JOIN BookingDetail
		AS BD
		ON BD.BookingId=B.BookingId
		RIGHT JOIN Seat
			AS SE
			ON SE.SeatId=BD.SeatId
			WHERE S.ShowId=@ShowId
END
GO

EXEC GetSeatInfoByShow
	@ShowId=44


	---Create Procedure For BookTickets ( Adding a new entry to booking table)--


GO
CREATE OR ALTER PROCEDURE BookingDetailTable(
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


		---Create Procedure to get booked ticket details--

GO 
CREATE OR ALTER PROCEDURE GetBookedTicketDetails(
	@BookingId INT)
 
AS
BEGIN

SELECT M.MovieName,CAST(SH.StartTime AS DATE) AS [Date],
	CAST(SH.StartTime AS TIME) AS Time,T.TheaterName,SC.ScreenName,SE.SeatNumber,SE.SeatId,BD.Price, B.TotalAmount 
FROM Booking AS B
INNER JOIN BookingDetail AS BD
	ON BD.BookingId=B.BookingId
	AND B.BookingId=@BookingId
INNER JOIN Seat AS SE
	ON SE.SeatId=BD.SeatId
INNER JOIN Screen AS SC
	ON SC.ScreenId=SE.ScreenId
INNER JOIN Theater AS T
	ON T.TheaterId=SC.TheaterId
INNER JOIN Show AS SH
	ON SH.ScreenId=SC.ScreenId
INNER JOIN MovieLanguage AS ML
	ON ML.MovieLanguageId=SH.MovielanguageID
INNER JOIN Movie AS M
	ON M.MovieId=ML.MovieId
								
END 
GO


EXEC GetBookedTicketDetails
	@BookingId=1010








