USE [master]
GO
/****** Object:  Database [BookMyShow]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  UserDefinedTableType [dbo].[EntityId]    Script Date: 24-07-2023 11:03:31 ******/
CREATE TYPE [dbo].[EntityId] AS TABLE(
	[Ids] [int] NULL
)
GO
/****** Object:  Table [dbo].[BookedSeat]    Script Date: 24-07-2023 11:03:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookedSeat](
	[BookedSeatId] [int] IDENTITY(1,1) NOT NULL,
	[BookingDetailId] [int] NULL,
	[SeatId] [int] NULL,
 CONSTRAINT [pk_BookedSeat] PRIMARY KEY CLUSTERED 
(
	[BookedSeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 24-07-2023 11:03:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[BookingDetailId] [int] IDENTITY(1,1) NOT NULL,
	[BookedSeatId] [int] NULL,
	[ShowId] [int] NULL,
	[UserId] [int] NULL,
	[PaymentID] [int] NULL,
 CONSTRAINT [pk_BookingDetail] PRIMARY KEY CLUSTERED 
(
	[BookingDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  Table [dbo].[Genre]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  Table [dbo].[Language]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  Table [dbo].[Movie]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  Table [dbo].[MovieGenre]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  Table [dbo].[MovieLanguage]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 24-07-2023 11:03:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[ConvinienceFees] [decimal](18, 0) NOT NULL,
	[TotalAmount] [decimal](18, 0) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[TransactionId] [int] NULL,
	[PaymentMethodId] [int] NULL,
 CONSTRAINT [pk_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_Payment_TransactionId] UNIQUE NONCLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  Table [dbo].[Rating]    Script Date: 24-07-2023 11:03:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingId] [int] IDENTITY(1,1) NOT NULL,
	[RatingValue] [int] NULL,
	[MovieID] [int] NULL,
 CONSTRAINT [pk_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screen]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  Table [dbo].[Seat]    Script Date: 24-07-2023 11:03:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[SeatId] [int] IDENTITY(1,1) NOT NULL,
	[SeatNumber] [smallint] NOT NULL,
	[SeatClassId] [tinyint] NULL,
 CONSTRAINT [pk_Seat] PRIMARY KEY CLUSTERED 
(
	[SeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatClass]    Script Date: 24-07-2023 11:03:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatClass](
	[SeatClassId] [tinyint] IDENTITY(1,1) NOT NULL,
	[SeatClassName] [varchar](50) NULL,
	[SeatClassPrice] [int] NOT NULL,
	[ScreenId] [tinyint] NULL,
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
/****** Object:  Table [dbo].[Show]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  Table [dbo].[State]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  Table [dbo].[Theater]    Script Date: 24-07-2023 11:03:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theater](
	[TheaterId] [int] IDENTITY(1,1) NOT NULL,
	[TheaterName] [varchar](50) NOT NULL,
	[TotalScreen] [int] NOT NULL,
	[CityId] [int] NULL,
 CONSTRAINT [pk_Theater] PRIMARY KEY CLUSTERED 
(
	[TheaterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24-07-2023 11:03:31 ******/
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
	[UserLikeId] [int] NULL,
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
/****** Object:  Table [dbo].[UserLike]    Script Date: 24-07-2023 11:03:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLike](
	[UserLikeId] [int] IDENTITY(1,1) NOT NULL,
	[GenreId] [tinyint] NULL,
	[LanguageId] [tinyint] NULL,
 CONSTRAINT [pk_UserLike] PRIMARY KEY CLUSTERED 
(
	[UserLikeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRating]    Script Date: 24-07-2023 11:03:31 ******/
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
ALTER TABLE [dbo].[Payment] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[BookedSeat]  WITH CHECK ADD  CONSTRAINT [fk_BookedSeat_Seat] FOREIGN KEY([SeatId])
REFERENCES [dbo].[Seat] ([SeatId])
GO
ALTER TABLE [dbo].[BookedSeat] CHECK CONSTRAINT [fk_BookedSeat_Seat]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [fk_BookingDetail_BookedSeat] FOREIGN KEY([BookedSeatId])
REFERENCES [dbo].[BookedSeat] ([BookedSeatId])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [fk_BookingDetail_BookedSeat]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [fk_BookingDetail_Payment] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentId])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [fk_BookingDetail_Payment]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [fk_BookingDetail_Show] FOREIGN KEY([ShowId])
REFERENCES [dbo].[Show] ([ShowId])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [fk_BookingDetail_Show]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [fk_BookingDetail_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [fk_BookingDetail_User]
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
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [fk_Payment_PaymentMethod] FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethod] ([PaymentMethodId])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [fk_Payment_PaymentMethod]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [fk_Rating_Movie] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [fk_Rating_Movie]
GO
ALTER TABLE [dbo].[Screen]  WITH CHECK ADD  CONSTRAINT [fk_Screen_Theater] FOREIGN KEY([TheaterId])
REFERENCES [dbo].[Theater] ([TheaterId])
GO
ALTER TABLE [dbo].[Screen] CHECK CONSTRAINT [fk_Screen_Theater]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [fk_Seat_SeatClass] FOREIGN KEY([SeatClassId])
REFERENCES [dbo].[SeatClass] ([SeatClassId])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [fk_Seat_SeatClass]
GO
ALTER TABLE [dbo].[SeatClass]  WITH CHECK ADD  CONSTRAINT [fk_SeatClass_Screen] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screen] ([ScreenId])
GO
ALTER TABLE [dbo].[SeatClass] CHECK CONSTRAINT [fk_SeatClass_Screen]
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
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [fk_User_UserLike] FOREIGN KEY([UserLikeId])
REFERENCES [dbo].[UserLike] ([UserLikeId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [fk_User_UserLike]
GO
ALTER TABLE [dbo].[UserLike]  WITH CHECK ADD  CONSTRAINT [fk_UserLike_GenreId] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([GenreId])
GO
ALTER TABLE [dbo].[UserLike] CHECK CONSTRAINT [fk_UserLike_GenreId]
GO
ALTER TABLE [dbo].[UserLike]  WITH CHECK ADD  CONSTRAINT [fk_UserLike_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([LanguageId])
GO
ALTER TABLE [dbo].[UserLike] CHECK CONSTRAINT [fk_UserLike_LanguageId]
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
/****** Object:  StoredProcedure [dbo].[GenreTable]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  StoredProcedure [dbo].[LanguageTable]    Script Date: 24-07-2023 11:03:31 ******/
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
/****** Object:  StoredProcedure [dbo].[MovieGenreLanguage]    Script Date: 24-07-2023 11:03:31 ******/
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
USE [master]
GO
ALTER DATABASE [BookMyShow] SET  READ_WRITE 
GO
