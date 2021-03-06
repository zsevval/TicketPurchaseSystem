USE [master]
GO
/****** Object:  Database [PlatformProject]    Script Date: 13.01.2022 15:19:36 ******/
CREATE DATABASE [PlatformProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PlatformProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PlatformProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PlatformProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PlatformProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PlatformProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlatformProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlatformProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PlatformProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PlatformProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PlatformProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PlatformProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [PlatformProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PlatformProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PlatformProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PlatformProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PlatformProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PlatformProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PlatformProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PlatformProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PlatformProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PlatformProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PlatformProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PlatformProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PlatformProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PlatformProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PlatformProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PlatformProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PlatformProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PlatformProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PlatformProject] SET  MULTI_USER 
GO
ALTER DATABASE [PlatformProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PlatformProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PlatformProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PlatformProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PlatformProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PlatformProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PlatformProject] SET QUERY_STORE = OFF
GO
USE [PlatformProject]
GO
/****** Object:  Table [dbo].[MuseumInfo]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuseumInfo](
	[MuseumInfoID] [int] IDENTITY(1,1) NOT NULL,
	[MuseumID] [int] NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[MuseumPrice] [float] NULL,
 CONSTRAINT [PK_MuseumInfo_1] PRIMARY KEY CLUSTERED 
(
	[MuseumInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderTicket]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTicket](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[ConcertID] [int] NULL,
	[TravelInfoID] [int] NULL,
	[MuseumInfoID] [int] NULL,
	[CouponID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_OrderTicket] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConcertInfo]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConcertInfo](
	[SingerPlaceID] [int] IDENTITY(1,1) NOT NULL,
	[SingerID] [int] NOT NULL,
	[ConcertPlaceID] [int] NOT NULL,
	[ConcertDate] [date] NULL,
 CONSTRAINT [PK_ConcertInfo_1] PRIMARY KEY CLUSTERED 
(
	[SingerPlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Singer]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Singer](
	[SingerID] [int] IDENTITY(1,1) NOT NULL,
	[SingerName] [varchar](50) NULL,
	[SingerSurname] [varchar](50) NULL,
 CONSTRAINT [PK_Singer] PRIMARY KEY CLUSTERED 
(
	[SingerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Museum]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Museum](
	[MuseumID] [int] IDENTITY(1,1) NOT NULL,
	[MuseumName] [varchar](50) NULL,
	[MuseumPlace] [varchar](50) NULL,
	[Explanation] [varchar](500) NULL,
 CONSTRAINT [PK_Museum] PRIMARY KEY CLUSTERED 
(
	[MuseumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Travel]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Travel](
	[TravelID] [int] IDENTITY(1,1) NOT NULL,
	[TravelName] [varchar](50) NULL,
	[Departure] [varchar](50) NULL,
	[Destination] [varchar](50) NULL,
 CONSTRAINT [PK_Travel] PRIMARY KEY CLUSTERED 
(
	[TravelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Concert]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concert](
	[ConcertID] [int] IDENTITY(1,1) NOT NULL,
	[SingerPlaceID] [int] NOT NULL,
	[SeatID] [int] NOT NULL,
	[ConcertPrice] [float] NULL,
 CONSTRAINT [PK_Concert_1] PRIMARY KEY CLUSTERED 
(
	[ConcertID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelInfo]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelInfo](
	[TravelInfoID] [int] IDENTITY(1,1) NOT NULL,
	[TravelID] [int] NOT NULL,
	[MentorID] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[TravelPrice] [float] NULL,
 CONSTRAINT [PK_TravelInfo_1] PRIMARY KEY CLUSTERED 
(
	[TravelInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerSurname] [varchar](50) NULL,
	[CustomerPhone] [char](11) NULL,
	[CustomerEmail] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Type] [int] NULL,
	[Age] [tinyint] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_CustomerEvents]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_CustomerEvents]
AS  
    SELECT 
	cus.CustomerName, 
	'MUZE' AS EventName,
	SUM(Price) AS Total,
	AVG(Price) AS Avarage,
	MIN(Price) AS Minimum,
	MAX(Price) AS Maximum
    FROM OrderTicket AS o
	INNER JOIN Customer AS cus ON o.CustomerID = cus.CustomerID
    INNER JOIN MuseumInfo AS mf ON o.MuseumInfoID = mf.MuseumInfoID
	INNER JOIN Museum AS m ON mf.MuseumID = mf.MuseumID
	GROUP BY CustomerName

	UNION ALL

	SELECT 
	cus.CustomerName, 
	'GEZİ' AS EventName,
	SUM(Price) AS Total,
    AVG(Price) AS Avarage,
	MIN(Price) AS Minimum,
	MAX(Price) AS Maximum
    FROM OrderTicket AS o
	INNER JOIN Customer AS cus ON o.CustomerID = cus.CustomerID
    INNER JOIN TravelInfo AS tf ON o.TravelInfoID = tf.TravelInfoID
	INNER JOIN Travel AS t ON tf.TravelInfoID = t.TravelID
	GROUP BY CustomerName

	UNION ALL

	SELECT 
	cus.CustomerName, 
	'KONSER' AS EventName,
	SUM(Price) AS Total,
    AVG(Price) AS Avarage,
	MIN(Price) AS Minimum,
	MAX(Price) AS Maximum
    FROM OrderTicket AS o
	INNER JOIN Customer AS cus ON o.CustomerID = cus.CustomerID
    INNER JOIN Concert AS c ON o.ConcertID = c.ConcertID
	INNER JOIN ConcertInfo cf ON cf.SingerPlaceID = c.SingerPlaceID
	INNER JOIN Singer AS s ON s.SingerID = cf.SingerID
	GROUP BY CustomerName
GO
/****** Object:  Table [dbo].[ConcertPlaces]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConcertPlaces](
	[ConcertPlaceID] [int] IDENTITY(1,1) NOT NULL,
	[ConcertPlace] [varchar](50) NULL,
	[City] [varchar](50) NULL,
 CONSTRAINT [PK_ConcertPlaces] PRIMARY KEY CLUSTERED 
(
	[ConcertPlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConcertSeatPlan]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConcertSeatPlan](
	[SeatID] [int] IDENTITY(1,1) NOT NULL,
	[ConcertPlaceID] [int] NOT NULL,
	[SeatName] [varchar](50) NULL,
	[Capacity] [int] NULL,
 CONSTRAINT [PK_ConcertSeatPlan_1] PRIMARY KEY CLUSTERED 
(
	[SeatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupon]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupon](
	[CouponID] [int] IDENTITY(1,1) NOT NULL,
	[CouponName] [varchar](50) NULL,
	[DiscountPercentage] [int] NULL,
 CONSTRAINT [PK_Coupon] PRIMARY KEY CLUSTERED 
(
	[CouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mentor]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mentor](
	[MentorID] [int] IDENTITY(1,1) NOT NULL,
	[MentorName] [varchar](50) NULL,
	[MentorSurname] [varchar](50) NULL,
	[MentorPhone] [char](11) NULL,
	[MentorGender] [varchar](50) NULL,
 CONSTRAINT [PK_Mentor] PRIMARY KEY CLUSTERED 
(
	[MentorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Concert] ON 

INSERT [dbo].[Concert] ([ConcertID], [SingerPlaceID], [SeatID], [ConcertPrice]) VALUES (1, 1, 3, 150)
INSERT [dbo].[Concert] ([ConcertID], [SingerPlaceID], [SeatID], [ConcertPrice]) VALUES (2, 2, 4, 200)
INSERT [dbo].[Concert] ([ConcertID], [SingerPlaceID], [SeatID], [ConcertPrice]) VALUES (3, 3, 5, 300)
INSERT [dbo].[Concert] ([ConcertID], [SingerPlaceID], [SeatID], [ConcertPrice]) VALUES (4, 6, 7, 125)
SET IDENTITY_INSERT [dbo].[Concert] OFF
GO
SET IDENTITY_INSERT [dbo].[ConcertInfo] ON 

INSERT [dbo].[ConcertInfo] ([SingerPlaceID], [SingerID], [ConcertPlaceID], [ConcertDate]) VALUES (1, 1, 1, CAST(N'2021-10-12' AS Date))
INSERT [dbo].[ConcertInfo] ([SingerPlaceID], [SingerID], [ConcertPlaceID], [ConcertDate]) VALUES (2, 2, 3, CAST(N'2021-09-14' AS Date))
INSERT [dbo].[ConcertInfo] ([SingerPlaceID], [SingerID], [ConcertPlaceID], [ConcertDate]) VALUES (3, 3, 4, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[ConcertInfo] ([SingerPlaceID], [SingerID], [ConcertPlaceID], [ConcertDate]) VALUES (4, 4, 2, CAST(N'2022-05-16' AS Date))
INSERT [dbo].[ConcertInfo] ([SingerPlaceID], [SingerID], [ConcertPlaceID], [ConcertDate]) VALUES (5, 1, 3, CAST(N'2022-03-05' AS Date))
INSERT [dbo].[ConcertInfo] ([SingerPlaceID], [SingerID], [ConcertPlaceID], [ConcertDate]) VALUES (6, 3, 2, CAST(N'2022-05-07' AS Date))
INSERT [dbo].[ConcertInfo] ([SingerPlaceID], [SingerID], [ConcertPlaceID], [ConcertDate]) VALUES (7, 3, 3, CAST(N'2022-04-11' AS Date))
INSERT [dbo].[ConcertInfo] ([SingerPlaceID], [SingerID], [ConcertPlaceID], [ConcertDate]) VALUES (8, 2, 1, CAST(N'2022-07-14' AS Date))
SET IDENTITY_INSERT [dbo].[ConcertInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[ConcertPlaces] ON 

INSERT [dbo].[ConcertPlaces] ([ConcertPlaceID], [ConcertPlace], [City]) VALUES (1, N'Zorlu', N'İstanbul')
INSERT [dbo].[ConcertPlaces] ([ConcertPlaceID], [ConcertPlace], [City]) VALUES (2, N'Harbiye', N'İstanbul')
INSERT [dbo].[ConcertPlaces] ([ConcertPlaceID], [ConcertPlace], [City]) VALUES (3, N'Jolly Joker', N'Ankara')
INSERT [dbo].[ConcertPlaces] ([ConcertPlaceID], [ConcertPlace], [City]) VALUES (4, N'Milyon Performance', N'Eskişehir')
SET IDENTITY_INSERT [dbo].[ConcertPlaces] OFF
GO
SET IDENTITY_INSERT [dbo].[ConcertSeatPlan] ON 

INSERT [dbo].[ConcertSeatPlan] ([SeatID], [ConcertPlaceID], [SeatName], [Capacity]) VALUES (1, 1, N'A', 50)
INSERT [dbo].[ConcertSeatPlan] ([SeatID], [ConcertPlaceID], [SeatName], [Capacity]) VALUES (2, 1, N'B', 15)
INSERT [dbo].[ConcertSeatPlan] ([SeatID], [ConcertPlaceID], [SeatName], [Capacity]) VALUES (3, 1, N'C', 100)
INSERT [dbo].[ConcertSeatPlan] ([SeatID], [ConcertPlaceID], [SeatName], [Capacity]) VALUES (4, 2, N'A', 50)
INSERT [dbo].[ConcertSeatPlan] ([SeatID], [ConcertPlaceID], [SeatName], [Capacity]) VALUES (5, 2, N'B', 20)
INSERT [dbo].[ConcertSeatPlan] ([SeatID], [ConcertPlaceID], [SeatName], [Capacity]) VALUES (6, 2, N'C', 10)
INSERT [dbo].[ConcertSeatPlan] ([SeatID], [ConcertPlaceID], [SeatName], [Capacity]) VALUES (7, 2, N'D', 50)
INSERT [dbo].[ConcertSeatPlan] ([SeatID], [ConcertPlaceID], [SeatName], [Capacity]) VALUES (8, 3, N'A', 0)
INSERT [dbo].[ConcertSeatPlan] ([SeatID], [ConcertPlaceID], [SeatName], [Capacity]) VALUES (9, 3, N'B', 0)
INSERT [dbo].[ConcertSeatPlan] ([SeatID], [ConcertPlaceID], [SeatName], [Capacity]) VALUES (10, 4, N'A', 250)
SET IDENTITY_INSERT [dbo].[ConcertSeatPlan] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupon] ON 

INSERT [dbo].[Coupon] ([CouponID], [CouponName], [DiscountPercentage]) VALUES (1, N'bilet10', 10)
INSERT [dbo].[Coupon] ([CouponID], [CouponName], [DiscountPercentage]) VALUES (2, N'hosgeldin20', 20)
INSERT [dbo].[Coupon] ([CouponID], [CouponName], [DiscountPercentage]) VALUES (3, N'indirim30', 30)
INSERT [dbo].[Coupon] ([CouponID], [CouponName], [DiscountPercentage]) VALUES (4, NULL, 0)
INSERT [dbo].[Coupon] ([CouponID], [CouponName], [DiscountPercentage]) VALUES (5, N'MUZEILK', 30)
INSERT [dbo].[Coupon] ([CouponID], [CouponName], [DiscountPercentage]) VALUES (6, N'SANAOZEL15', 15)
INSERT [dbo].[Coupon] ([CouponID], [CouponName], [DiscountPercentage]) VALUES (7, N'SANAOZEL20', 20)
SET IDENTITY_INSERT [dbo].[Coupon] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (1, N'Selma', N'Kalsın', N'05426802456', N'selmakalsin@gmail.com', N'Selma123.', 0, 29)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (2, N'Melisa', N'Gündoğdu', N'05432897267', N'melisagundogdu12@gmail.com', N'Mel345_21', 0, 12)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (5, N'Ahmet', N'Yahya', N'05375687900', N'ahmet_yahya@gmail.com', N'ahmet_yahya123', 1, 45)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (6, N'Hatice', N'Kılıç', N'05462178652', N'haticekilic@gmail.com', N'haticekilic34@gmail.com', 1, 12)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (7, N'Ece', N'Uçak', N'05321567845', N'ece_ece1345@gmail.com', N'eceucece24', 0, 12)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (8, N'İlayda', N'Kaya', N'05426802456', N'ilayda_kaya@gmail.com', N'aysetan@gmail.com', 1, 25)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (9, N'Ayşe', N'Tan', N'05123456783', N'aysetan@gmail.com', N'aysetan2345', 1, 35)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (10, N'Şevval', N'Yıldız', N'05421356789', N'zsevvaly@gmail.com', N'123', 1, 21)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (12, N'Ahmet', N'Yıldırım', N'05356723377', N'yildirimahmetyil@gmail.com', N'345.213ahmet', 1, 45)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (13, N'Ayşe', N'Doğan', N'05412675632', N'ayse_dogan@gmail.com', N'ayse_ayse2456', 0, 15)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (14, N'Eren', N'Dermir', N'05463782179', N'erendemir@gmail.com', N'ereneren_23', 1, 15)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (15, N'Zeynep Şevval', N'Yıldız', N'05324567877', N'zsevvaly@gmail.com', N'123', 1, 22)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (16, N'Ahmet', N'Gezgin', N'05362463456', N'ahmetgezgin@gmail.com', N'245', 0, 19)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (18, N'Büşra', N'Salihoğlu', N'05429632578', N'busra@gmail.com', N'12345', 1, 21)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerPhone], [CustomerEmail], [Password], [Type], [Age]) VALUES (19, N'Dicle ', N'Kılıç', N'1516156    ', N'dicle@gmail.com', N'123', 1, 23)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Mentor] ON 

INSERT [dbo].[Mentor] ([MentorID], [MentorName], [MentorSurname], [MentorPhone], [MentorGender]) VALUES (1, N'Ahmet', N'Babalık', N'05426584526', N'erkek')
INSERT [dbo].[Mentor] ([MentorID], [MentorName], [MentorSurname], [MentorPhone], [MentorGender]) VALUES (2, N'Berna', N'Barış', N'05137894526', N'kadın')
INSERT [dbo].[Mentor] ([MentorID], [MentorName], [MentorSurname], [MentorPhone], [MentorGender]) VALUES (3, N'İdil', N'Kemer', N'05478514236', N'kadın')
INSERT [dbo].[Mentor] ([MentorID], [MentorName], [MentorSurname], [MentorPhone], [MentorGender]) VALUES (4, N'Adnan', N'Asmalı', N'05426151000', N'erkek')
SET IDENTITY_INSERT [dbo].[Mentor] OFF
GO
SET IDENTITY_INSERT [dbo].[Museum] ON 

INSERT [dbo].[Museum] ([MuseumID], [MuseumName], [MuseumPlace], [Explanation]) VALUES (1, N'Oyuncak Müzesi', N'Kadıköy', N'Oyuncak tarihinin en gözde örneklerinin sergilendiği müze tarihi bir köşkte konumlanmıştır.')
INSERT [dbo].[Museum] ([MuseumID], [MuseumName], [MuseumPlace], [Explanation]) VALUES (2, N'Sakıp Sabancı', N'Karaköy', N' Zengin bir hat ve resim koleksiyonunu bünyesinde barındıran ve düzenlediği geçici sergilerle birçok ünlü sanatçının eserlerine ev sahipliği yapan bir sanat müzesidir. ')
INSERT [dbo].[Museum] ([MuseumID], [MuseumName], [MuseumPlace], [Explanation]) VALUES (3, N'Rahmi Koç Müzesi', N'Hasköy', N'Türkiye''de sanayi, ulaşım, endüstri ve iletişim tarihine adanmış ilk önemli müzedir.')
INSERT [dbo].[Museum] ([MuseumID], [MuseumName], [MuseumPlace], [Explanation]) VALUES (4, N'Deniz Müzesi', N'Beşiktaş', N' Türkiye''nin denizcilik alanında en büyük müzesidir, içerdiği koleksiyon çeşitliliği açısından dünyanın sayılı müzelerinden biridir. ')
INSERT [dbo].[Museum] ([MuseumID], [MuseumName], [MuseumPlace], [Explanation]) VALUES (5, N'İstanbul Modern Sanat Müzesi', N'Beyoğlu', N'İstanbul Modern Sanat Müzesi veya kısaca İstanbul Modern, Türkiye''nin ilk modern sanat müzesidir. Eczacıbaşı ailesinin öncülüğünde, İstanbul Kültür Sanat Vakfı tarafından kurulan müze, 11 Aralık 2004''te ziyarete açıldı')
INSERT [dbo].[Museum] ([MuseumID], [MuseumName], [MuseumPlace], [Explanation]) VALUES (6, N'Pera Müzesi', N'Beyoğlu', N'Pera Müzesi, İstanbul''un Tepebaşı semtinde bulunan özel bir müzedir. 2005 yılında Suna ve İnan Kıraç Vakfı tarafından nitelikli ve geniş ölçekli kültür sanat hizmeti vermek amacıyla kurulmuştur.')
INSERT [dbo].[Museum] ([MuseumID], [MuseumName], [MuseumPlace], [Explanation]) VALUES (7, N'Barış Manço Evi', N'Kadıköy', N'Rock müzisyeni ve TV yıldızı Barış Manço''nun eski evinde, sergilerin düzenlendiği müze')
INSERT [dbo].[Museum] ([MuseumID], [MuseumName], [MuseumPlace], [Explanation]) VALUES (8, N'Kazım Karabekir Paşa Müzesi', N'Kadıköy', N'Türk Kurtuluş Savaşı kahramanı Musa Kâzım Karabekir’in İstanbul’un Kadıköy ilçesindeki Erenköy semtinde müze haline getirilen evidir.')
SET IDENTITY_INSERT [dbo].[Museum] OFF
GO
SET IDENTITY_INSERT [dbo].[MuseumInfo] ON 

INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (1, 1, CAST(N'2021-11-10' AS Date), CAST(N'2021-12-24' AS Date), 100)
INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (2, 3, CAST(N'2021-10-12' AS Date), CAST(N'2021-10-15' AS Date), 50)
INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (3, 4, CAST(N'2021-09-13' AS Date), CAST(N'2021-10-13' AS Date), 25)
INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (4, 1, CAST(N'2021-04-27' AS Date), CAST(N'2021-05-02' AS Date), 125)
INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (8, 2, CAST(N'2021-11-14' AS Date), CAST(N'2021-12-19' AS Date), 30)
INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (9, 5, CAST(N'2021-04-03' AS Date), CAST(N'2021-05-12' AS Date), 35)
INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (10, 6, CAST(N'2022-03-04' AS Date), CAST(N'2022-03-14' AS Date), 75)
INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (11, 3, CAST(N'2022-10-12' AS Date), CAST(N'2022-10-15' AS Date), 60)
INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (12, 7, CAST(N'2021-10-09' AS Date), CAST(N'2021-10-18' AS Date), 65)
INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (13, 8, CAST(N'2021-10-22' AS Date), CAST(N'2021-10-30' AS Date), 30)
INSERT [dbo].[MuseumInfo] ([MuseumInfoID], [MuseumID], [StartDate], [EndDate], [MuseumPrice]) VALUES (14, 1, CAST(N'2021-10-04' AS Date), CAST(N'2021-10-14' AS Date), 60)
SET IDENTITY_INSERT [dbo].[MuseumInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderTicket] ON 

INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (1, 15, NULL, NULL, 2, 2, CAST(N'2022-01-02T01:30:17.510' AS DateTime), 40)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (3, 10, NULL, NULL, 1, 2, CAST(N'2022-01-02T01:33:37.687' AS DateTime), 80)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (5, 14, NULL, NULL, 2, 2, CAST(N'2022-01-02T01:35:17.093' AS DateTime), 40)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (7, 12, NULL, NULL, 2, 2, CAST(N'2022-01-02T01:37:04.400' AS DateTime), 40)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (8, 13, NULL, NULL, 1, 2, CAST(N'2022-01-02T01:38:48.720' AS DateTime), 80)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (11, 15, NULL, NULL, 2, 2, CAST(N'2022-01-02T13:53:31.180' AS DateTime), 40)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (12, 14, NULL, NULL, 3, 3, CAST(N'2022-01-02T13:55:07.347' AS DateTime), 17.5)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (13, 10, NULL, NULL, 1, 1, CAST(N'2022-01-02T13:56:30.370' AS DateTime), 90)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (14, 15, NULL, NULL, 2, 2, CAST(N'2022-01-02T15:38:57.727' AS DateTime), 40)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (15, 10, NULL, NULL, 6, 2, CAST(N'2022-01-02T15:41:33.010' AS DateTime), 120)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (16, 15, NULL, NULL, 4, 2, CAST(N'2022-01-02T19:30:51.207' AS DateTime), 100)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (18, 15, NULL, NULL, 1, 3, CAST(N'2022-01-02T19:57:02.710' AS DateTime), 70)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (19, 15, NULL, NULL, 4, 1, CAST(N'2022-01-02T20:02:48.753' AS DateTime), 112.5)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (20, 15, NULL, NULL, 4, 4, CAST(N'2022-01-02T20:21:40.853' AS DateTime), 125)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (21, 15, NULL, NULL, 4, NULL, CAST(N'2022-01-02T20:26:49.180' AS DateTime), 125)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (22, 15, NULL, NULL, 3, NULL, CAST(N'2022-01-02T20:28:08.183' AS DateTime), 25)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (23, 15, NULL, NULL, 2, NULL, CAST(N'2022-01-02T20:30:30.710' AS DateTime), 50)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (24, 8, 3, NULL, NULL, NULL, CAST(N'2022-01-02T20:30:40.710' AS DateTime), 300)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (25, 10, NULL, NULL, 8, 2, CAST(N'2022-01-04T00:31:20.200' AS DateTime), 24)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (26, 13, 2, NULL, NULL, 1, CAST(N'2022-01-04T20:21:40.853' AS DateTime), 50)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (27, 12, NULL, 3, NULL, NULL, CAST(N'2022-01-04T20:21:40.853' AS DateTime), 70)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (28, 12, 2, NULL, NULL, NULL, CAST(N'2022-01-04T20:21:40.853' AS DateTime), 100)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (29, 10, NULL, NULL, 9, 2, CAST(N'2022-01-05T00:00:30.517' AS DateTime), 28)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (30, 12, NULL, 2, NULL, NULL, CAST(N'2022-01-05T00:00:00.000' AS DateTime), 54)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (31, 12, NULL, 1, NULL, NULL, CAST(N'2022-01-05T00:00:00.000' AS DateTime), 90)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (32, 10, NULL, NULL, 10, 2, CAST(N'2022-01-05T09:43:54.623' AS DateTime), 60)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (33, 10, NULL, NULL, 9, 2, CAST(N'2022-01-05T13:35:33.727' AS DateTime), 28)
INSERT [dbo].[OrderTicket] ([OrderID], [CustomerID], [ConcertID], [TravelInfoID], [MuseumInfoID], [CouponID], [OrderDate], [Price]) VALUES (34, 10, NULL, NULL, 4, 2, CAST(N'2022-01-05T13:46:19.160' AS DateTime), 100)
SET IDENTITY_INSERT [dbo].[OrderTicket] OFF
GO
SET IDENTITY_INSERT [dbo].[Singer] ON 

INSERT [dbo].[Singer] ([SingerID], [SingerName], [SingerSurname]) VALUES (1, N'Sezen', N'Aksu')
INSERT [dbo].[Singer] ([SingerID], [SingerName], [SingerSurname]) VALUES (2, N'Yıldız', N'Tilbe')
INSERT [dbo].[Singer] ([SingerID], [SingerName], [SingerSurname]) VALUES (3, N'Cem', N'Adrian')
INSERT [dbo].[Singer] ([SingerID], [SingerName], [SingerSurname]) VALUES (4, N'Zeynep', N'Bastık')
SET IDENTITY_INSERT [dbo].[Singer] OFF
GO
SET IDENTITY_INSERT [dbo].[Travel] ON 

INSERT [dbo].[Travel] ([TravelID], [TravelName], [Departure], [Destination]) VALUES (1, N'Anıtkabir', N'İstanbul', N'Ankara')
INSERT [dbo].[Travel] ([TravelID], [TravelName], [Departure], [Destination]) VALUES (2, N'Kapadokya', N'Yalova', N'Nevşehir')
INSERT [dbo].[Travel] ([TravelID], [TravelName], [Departure], [Destination]) VALUES (3, N'Datça', N'İzmir', N'Muğla')
INSERT [dbo].[Travel] ([TravelID], [TravelName], [Departure], [Destination]) VALUES (4, N'Saat Kulesi', N'Ankara', N'İzmir')
SET IDENTITY_INSERT [dbo].[Travel] OFF
GO
SET IDENTITY_INSERT [dbo].[TravelInfo] ON 

INSERT [dbo].[TravelInfo] ([TravelInfoID], [TravelID], [MentorID], [StartDate], [EndDate], [TravelPrice]) VALUES (1, 1, 1, CAST(N'2021-11-25T23:00:00.000' AS DateTime), CAST(N'2021-11-27T15:00:00.000' AS DateTime), 150)
INSERT [dbo].[TravelInfo] ([TravelInfoID], [TravelID], [MentorID], [StartDate], [EndDate], [TravelPrice]) VALUES (2, 2, 2, CAST(N'2021-12-14T00:00:00.000' AS DateTime), CAST(N'2021-12-17T00:00:00.000' AS DateTime), 350)
INSERT [dbo].[TravelInfo] ([TravelInfoID], [TravelID], [MentorID], [StartDate], [EndDate], [TravelPrice]) VALUES (3, 3, 1, CAST(N'2021-12-23T00:00:00.000' AS DateTime), CAST(N'2021-12-25T00:00:00.000' AS DateTime), 125)
INSERT [dbo].[TravelInfo] ([TravelInfoID], [TravelID], [MentorID], [StartDate], [EndDate], [TravelPrice]) VALUES (4, 4, 1, CAST(N'2021-12-29T00:00:00.000' AS DateTime), CAST(N'2021-12-30T00:00:00.000' AS DateTime), 150)
INSERT [dbo].[TravelInfo] ([TravelInfoID], [TravelID], [MentorID], [StartDate], [EndDate], [TravelPrice]) VALUES (5, 2, 4, CAST(N'2021-10-02T00:00:00.000' AS DateTime), CAST(N'2021-10-04T00:00:00.000' AS DateTime), 200)
INSERT [dbo].[TravelInfo] ([TravelInfoID], [TravelID], [MentorID], [StartDate], [EndDate], [TravelPrice]) VALUES (6, 2, 3, CAST(N'2022-01-17T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1500)
INSERT [dbo].[TravelInfo] ([TravelInfoID], [TravelID], [MentorID], [StartDate], [EndDate], [TravelPrice]) VALUES (7, 2, 2, CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-01-04T00:00:00.000' AS DateTime), 320)
INSERT [dbo].[TravelInfo] ([TravelInfoID], [TravelID], [MentorID], [StartDate], [EndDate], [TravelPrice]) VALUES (8, 2, 3, CAST(N'2022-03-09T00:00:00.000' AS DateTime), CAST(N'2022-03-19T00:00:00.000' AS DateTime), 750)
INSERT [dbo].[TravelInfo] ([TravelInfoID], [TravelID], [MentorID], [StartDate], [EndDate], [TravelPrice]) VALUES (9, 2, 4, CAST(N'2022-02-01T00:00:00.000' AS DateTime), CAST(N'2022-01-03T00:00:00.000' AS DateTime), 250)
SET IDENTITY_INSERT [dbo].[TravelInfo] OFF
GO
ALTER TABLE [dbo].[Concert]  WITH CHECK ADD  CONSTRAINT [FK_Concert_ConcertInfo] FOREIGN KEY([SingerPlaceID])
REFERENCES [dbo].[ConcertInfo] ([SingerPlaceID])
GO
ALTER TABLE [dbo].[Concert] CHECK CONSTRAINT [FK_Concert_ConcertInfo]
GO
ALTER TABLE [dbo].[Concert]  WITH CHECK ADD  CONSTRAINT [FK_Concert_ConcertSeatPlan] FOREIGN KEY([SeatID])
REFERENCES [dbo].[ConcertSeatPlan] ([SeatID])
GO
ALTER TABLE [dbo].[Concert] CHECK CONSTRAINT [FK_Concert_ConcertSeatPlan]
GO
ALTER TABLE [dbo].[ConcertInfo]  WITH CHECK ADD  CONSTRAINT [FK_ConcertInfo_ConcertPlaces] FOREIGN KEY([SingerID])
REFERENCES [dbo].[ConcertPlaces] ([ConcertPlaceID])
GO
ALTER TABLE [dbo].[ConcertInfo] CHECK CONSTRAINT [FK_ConcertInfo_ConcertPlaces]
GO
ALTER TABLE [dbo].[ConcertInfo]  WITH CHECK ADD  CONSTRAINT [FK_ConcertInfo_Singer] FOREIGN KEY([SingerID])
REFERENCES [dbo].[Singer] ([SingerID])
GO
ALTER TABLE [dbo].[ConcertInfo] CHECK CONSTRAINT [FK_ConcertInfo_Singer]
GO
ALTER TABLE [dbo].[MuseumInfo]  WITH CHECK ADD  CONSTRAINT [FK_MuseumInfo_Museum] FOREIGN KEY([MuseumID])
REFERENCES [dbo].[Museum] ([MuseumID])
GO
ALTER TABLE [dbo].[MuseumInfo] CHECK CONSTRAINT [FK_MuseumInfo_Museum]
GO
ALTER TABLE [dbo].[OrderTicket]  WITH CHECK ADD  CONSTRAINT [FK_OrderTicket_Coupon] FOREIGN KEY([CouponID])
REFERENCES [dbo].[Coupon] ([CouponID])
GO
ALTER TABLE [dbo].[OrderTicket] CHECK CONSTRAINT [FK_OrderTicket_Coupon]
GO
ALTER TABLE [dbo].[TravelInfo]  WITH CHECK ADD  CONSTRAINT [FK_TravelInfo_Mentor] FOREIGN KEY([MentorID])
REFERENCES [dbo].[Mentor] ([MentorID])
GO
ALTER TABLE [dbo].[TravelInfo] CHECK CONSTRAINT [FK_TravelInfo_Mentor]
GO
ALTER TABLE [dbo].[TravelInfo]  WITH CHECK ADD  CONSTRAINT [FK_TravelInfo_Travel] FOREIGN KEY([TravelID])
REFERENCES [dbo].[Travel] ([TravelID])
GO
ALTER TABLE [dbo].[TravelInfo] CHECK CONSTRAINT [FK_TravelInfo_Travel]
GO
/****** Object:  StoredProcedure [dbo].[sel_AvaragePrice]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sel_AvaragePrice]
AS
 
BEGIN
SELECT 
AVG(c.ConcertPrice) AS KonserUcretOrt,
AVG(m.MuseumPrice) AS MüzeUcretOrt,
AVG(t.TravelPrice) AS GeziUcretOrt
FROM Concert AS c

INNER JOIN MuseumInfo AS m ON m.MuseumInfoID=c.ConcertID 
INNER JOIN TravelInfo  AS t ON t.TravelInfoID=c.ConcertID

END
GO
/****** Object:  StoredProcedure [dbo].[upd_InsertOrUpdateCustomer]    Script Date: 13.01.2022 15:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upd_InsertOrUpdateCustomer]
(
@CustomerID INT,
@CustomerName varchar(50)= NULL,
@CustomerSurname varchar(50)= NULL,
@CustomerPhone char(11)= NULL,
@CustomerEmail varchar(50)= NULL,
@Password VARCHAR(50)= NULL,
@Type INT= NULL,
@Age TINYINT= NULL
)

AS
BEGIN
IF EXISTS(SELECT 1 FROM dbo.Customer WHERE CustomerID=@CustomerID)
BEGIN
UPDATE dbo.Customer
SET
CustomerName=@CustomerName,
CustomerSurname=@CustomerSurname, 
CustomerPhone=@CustomerPhone,
CustomerEmail=@CustomerEmail,
[Password]=@Password,
[Type]=@Type,
Age=@Age
WHERE CustomerID=@CustomerID
END

ELSE
BEGIN
INSERT INTO dbo.Customer(
CustomerName, 
CustomerSurname, 
CustomerPhone, 
CustomerEmail, 
[Password], 
[Type], 
Age 
)
VALUES(
@CustomerName,
@CustomerSurname, 
@CustomerPhone,
@CustomerEmail,
@Password,
@Type,
@Age
)

END
END
GO
USE [master]
GO
ALTER DATABASE [PlatformProject] SET  READ_WRITE 
GO
