USE [master]
GO
/****** Object:  Database [BookMyShow]    Script Date: 25-07-2023 17:43:04 ******/
CREATE DATABASE [BookMyShow]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookMyShow', FILENAME = N'/var/opt/mssql/data/BookMyShow.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookMyShow_log', FILENAME = N'/var/opt/mssql/data/BookMyShow_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BookMyShow] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookMyShow].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookMyShow] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookMyShow] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookMyShow] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookMyShow] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookMyShow] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookMyShow] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BookMyShow] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookMyShow] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookMyShow] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookMyShow] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookMyShow] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookMyShow] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookMyShow] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookMyShow] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookMyShow] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookMyShow] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookMyShow] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookMyShow] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookMyShow] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookMyShow] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookMyShow] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookMyShow] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookMyShow] SET RECOVERY FULL 
GO
ALTER DATABASE [BookMyShow] SET  MULTI_USER 
GO
ALTER DATABASE [BookMyShow] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookMyShow] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookMyShow] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookMyShow] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookMyShow] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookMyShow] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BookMyShow', N'ON'
GO
ALTER DATABASE [BookMyShow] SET QUERY_STORE = OFF
GO
USE [BookMyShow]
GO
/****** Object:  UserDefinedTableType [dbo].[EntityId]    Script Date: 25-07-2023 17:43:04 ******/
CREATE TYPE [dbo].[EntityId] AS TABLE(
	[Ids] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[EntityId1]    Script Date: 25-07-2023 17:43:04 ******/
CREATE TYPE [dbo].[EntityId1] AS TABLE(
	[GenreIds] [int] NULL,
	[LanguageIds] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[EntityIds]    Script Date: 25-07-2023 17:43:04 ******/
CREATE TYPE [dbo].[EntityIds] AS TABLE(
	[Ids] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ScreenType]    Script Date: 25-07-2023 17:43:04 ******/
CREATE TYPE [dbo].[ScreenType] AS TABLE(
	[ScreenName] [varchar](50) NULL,
	[ScreenNumber] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[SeatEntity]    Script Date: 25-07-2023 17:43:04 ******/
CREATE TYPE [dbo].[SeatEntity] AS TABLE(
	[Id] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[SeatType]    Script Date: 25-07-2023 17:43:04 ******/
CREATE TYPE [dbo].[SeatType] AS TABLE(
	[SeatNumber] [int] NULL,
	[SeatClassId] [int] NULL
)
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[Timestamp] [datetime] NOT NULL,
	[PaymentMethodId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ShowId] [int] NOT NULL,
 CONSTRAINT [pk_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[BookingDetailId] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NULL,
	[SeatId] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [pk_BookingDetail] PRIMARY KEY CLUSTERED 
(
	[BookingDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NOT NULL,
	[Pincode] [int] NOT NULL,
	[StateId] [int] NULL,
 CONSTRAINT [pk_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreId] [tinyint] IDENTITY(1,1) NOT NULL,
	[GenreName] [varchar](50) NULL,
 CONSTRAINT [pk_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_Genre_GenreName] UNIQUE NONCLUSTERED 
(
	[GenreName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageId] [tinyint] IDENTITY(1,1) NOT NULL,
	[LanguageName] [varchar](50) NOT NULL,
 CONSTRAINT [pk_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_Language_LanguageId] UNIQUE NONCLUSTERED 
(
	[LanguageName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](50) NOT NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Duration] [time](7) NOT NULL,
 CONSTRAINT [pk_Movie] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieGenre]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieGenre](
	[MovieGenreId] [int] IDENTITY(1,1) NOT NULL,
	[MovieID] [int] NULL,
	[GenreId] [tinyint] NULL,
 CONSTRAINT [pk_MovieGenre] PRIMARY KEY CLUSTERED 
(
	[MovieGenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieLanguage]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieLanguage](
	[MovieLanguageId] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NULL,
	[LanguageId] [tinyint] NULL,
 CONSTRAINT [pk_MovieLanguage] PRIMARY KEY CLUSTERED 
(
	[MovieLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[PaymentMethodId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [varchar](50) NOT NULL,
 CONSTRAINT [pk_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingId] [int] IDENTITY(1,1) NOT NULL,
	[RatingValue] [int] NULL,
 CONSTRAINT [pk_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screen]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screen](
	[ScreenId] [tinyint] IDENTITY(1,1) NOT NULL,
	[ScreenName] [varchar](50) NOT NULL,
	[ScreenNumber] [tinyint] NOT NULL,
	[TheaterId] [int] NULL,
 CONSTRAINT [pk_Screen] PRIMARY KEY CLUSTERED 
(
	[ScreenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[SeatId] [int] IDENTITY(1,1) NOT NULL,
	[SeatNumber] [smallint] NOT NULL,
	[SeatClassId] [tinyint] NULL,
	[ScreenId] [tinyint] NULL,
 CONSTRAINT [pk_Seat] PRIMARY KEY CLUSTERED 
(
	[SeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatClass]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatClass](
	[SeatClassId] [tinyint] IDENTITY(1,1) NOT NULL,
	[SeatClassName] [varchar](50) NULL,
	[SeatClassPrice] [int] NOT NULL,
 CONSTRAINT [pk_SeatClass] PRIMARY KEY CLUSTERED 
(
	[SeatClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_SeatClass_SeatClassName] UNIQUE NONCLUSTERED 
(
	[SeatClassName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Show]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Show](
	[ShowId] [int] IDENTITY(1,1) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[MovielanguageID] [int] NULL,
	[ScreenId] [tinyint] NULL,
 CONSTRAINT [pk_Show] PRIMARY KEY CLUSTERED 
(
	[ShowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](50) NOT NULL,
 CONSTRAINT [pk_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_State_StateName] UNIQUE NONCLUSTERED 
(
	[StateName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theater]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theater](
	[TheaterId] [int] IDENTITY(1,1) NOT NULL,
	[TheaterName] [varchar](50) NOT NULL,
	[CityId] [int] NULL,
 CONSTRAINT [pk_Theater] PRIMARY KEY CLUSTERED 
(
	[TheaterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[EmailId] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Age] [int] NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [pk_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_User_EmailId] UNIQUE NONCLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_User_Phonenumber] UNIQUE NONCLUSTERED 
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_User_UserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRating]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRating](
	[UserRatingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[MovieId] [int] NULL,
	[RatingId] [int] NULL,
 CONSTRAINT [pk_UserRating] PRIMARY KEY CLUSTERED 
(
	[UserRatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Booking] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_Booking_PaymentMethodId] FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethod] ([PaymentMethodId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_Booking_PaymentMethodId]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_Booking_Show] FOREIGN KEY([ShowId])
REFERENCES [dbo].[Show] ([ShowId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_Booking_Show]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_Booking_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_Booking_User]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [fk_BookingDetail_Booking] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([BookingId])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [fk_BookingDetail_Booking]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [fk_BookingDetail_Seat] FOREIGN KEY([SeatId])
REFERENCES [dbo].[Seat] ([SeatId])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [fk_BookingDetail_Seat]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [fk_City_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [fk_City_State]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [fk_MovieGenre_Genre] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([GenreId])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [fk_MovieGenre_Genre]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [fk_MovieGenre_Movie] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [fk_MovieGenre_Movie]
GO
ALTER TABLE [dbo].[MovieLanguage]  WITH CHECK ADD  CONSTRAINT [fk_MovieLanguage_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([LanguageId])
GO
ALTER TABLE [dbo].[MovieLanguage] CHECK CONSTRAINT [fk_MovieLanguage_Language]
GO
ALTER TABLE [dbo].[MovieLanguage]  WITH CHECK ADD  CONSTRAINT [fk_MovieLanguage_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[MovieLanguage] CHECK CONSTRAINT [fk_MovieLanguage_Movie]
GO
ALTER TABLE [dbo].[Screen]  WITH CHECK ADD  CONSTRAINT [fk_Screen_Theater] FOREIGN KEY([TheaterId])
REFERENCES [dbo].[Theater] ([TheaterId])
GO
ALTER TABLE [dbo].[Screen] CHECK CONSTRAINT [fk_Screen_Theater]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [fk_Seat_Screen] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screen] ([ScreenId])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [fk_Seat_Screen]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [fk_Seat_SeatClass] FOREIGN KEY([SeatClassId])
REFERENCES [dbo].[SeatClass] ([SeatClassId])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [fk_Seat_SeatClass]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [fk_Show_MovieLanguage] FOREIGN KEY([MovielanguageID])
REFERENCES [dbo].[MovieLanguage] ([MovieLanguageId])
GO
ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [fk_Show_MovieLanguage]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [fk_Show_Screen] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screen] ([ScreenId])
GO
ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [fk_Show_Screen]
GO
ALTER TABLE [dbo].[Theater]  WITH CHECK ADD  CONSTRAINT [fk_Theater_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Theater] CHECK CONSTRAINT [fk_Theater_City]
GO
ALTER TABLE [dbo].[UserRating]  WITH CHECK ADD  CONSTRAINT [fk_UserRating_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[UserRating] CHECK CONSTRAINT [fk_UserRating_Movie]
GO
ALTER TABLE [dbo].[UserRating]  WITH CHECK ADD  CONSTRAINT [fk_UserRating_Rating] FOREIGN KEY([RatingId])
REFERENCES [dbo].[Rating] ([RatingId])
GO
ALTER TABLE [dbo].[UserRating] CHECK CONSTRAINT [fk_UserRating_Rating]
GO
ALTER TABLE [dbo].[UserRating]  WITH CHECK ADD  CONSTRAINT [fk_UserRating_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserRating] CHECK CONSTRAINT [fk_UserRating_User]
GO
/****** Object:  StoredProcedure [dbo].[BookingDetailTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BookingDetailTable](
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
/****** Object:  StoredProcedure [dbo].[CityTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CityTable](
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
/****** Object:  StoredProcedure [dbo].[GenreTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenreTable]
@GenreName VARCHAR(100)
AS 
BEGIN
INSERT INTO Genre
VALUES(@GenreName)
END
GO
/****** Object:  StoredProcedure [dbo].[LanguageTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LanguageTable]
@LanguageName VARCHAR(100)
AS
BEGIN
INSERT INTO Language
VALUES(@LanguageName)
END 
GO
/****** Object:  StoredProcedure [dbo].[MovieGenreLanguage]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MovieGenreLanguage]
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
/****** Object:  StoredProcedure [dbo].[PaymentMethodTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PaymentMethodTable]
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
/****** Object:  StoredProcedure [dbo].[PaymentTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PaymentTable]
(
@Amount DECIMAL,
@ConvenienceFees DECIMAL,
@TotalAmout DECIMAL,
@TransactionId INT,
@PaymentMethodID INT
)
AS
BEGIN
INSERT INTO Payment(
Amount,
ConvinienceFees,
TotalAmount,
TransactionId,
PaymentMethodID)
VALUES(
@Amount,
@ConvenienceFees ,
@TotalAmout ,
@TransactionId,
@PaymentMethodID)
END
GO
/****** Object:  StoredProcedure [dbo].[RatingTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RatingTable]
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
/****** Object:  StoredProcedure [dbo].[SeatClassTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeatClassTable]
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
/****** Object:  StoredProcedure [dbo].[ShowTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShowTable]
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
/****** Object:  StoredProcedure [dbo].[StateTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StateTable]
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
/****** Object:  StoredProcedure [dbo].[TheaterScreenSeat]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TheaterScreenSeat](
	@TheaterName	VARCHAR(50),
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
/****** Object:  StoredProcedure [dbo].[UserLikeTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UserLikeTable]
(
@Ids EntityId1 READONLY
)
AS
BEGIN
INSERT INTO UserLike(GenreId,LanguageId)
SELECT GenreIds,LanguageIds
FROM @Ids
END 
GO
/****** Object:  StoredProcedure [dbo].[UserTable]    Script Date: 25-07-2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UserTable](
	@UserName VARCHAR(50),
	@EmailId	VARCHAR(10),
	@Password	VARCHAR(100),
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
USE [master]
GO
ALTER DATABASE [BookMyShow] SET  READ_WRITE 
GO
