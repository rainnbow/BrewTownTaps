USE [master]
GO
/****** Object:  Database [BrewTownTaps]    Script Date: 5/31/2017 7:45:28 PM ******/
CREATE DATABASE [BrewTownTaps]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Brew Town Taps - Breweries', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Brew Town Taps - Breweries.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Brew Town Taps - Breweries_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Brew Town Taps - Breweries_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BrewTownTaps] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BrewTownTaps].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BrewTownTaps] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BrewTownTaps] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BrewTownTaps] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BrewTownTaps] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BrewTownTaps] SET ARITHABORT OFF 
GO
ALTER DATABASE [BrewTownTaps] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BrewTownTaps] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BrewTownTaps] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BrewTownTaps] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BrewTownTaps] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BrewTownTaps] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BrewTownTaps] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BrewTownTaps] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BrewTownTaps] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BrewTownTaps] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BrewTownTaps] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BrewTownTaps] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BrewTownTaps] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BrewTownTaps] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BrewTownTaps] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BrewTownTaps] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BrewTownTaps] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BrewTownTaps] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BrewTownTaps] SET  MULTI_USER 
GO
ALTER DATABASE [BrewTownTaps] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BrewTownTaps] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BrewTownTaps] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BrewTownTaps] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BrewTownTaps] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BrewTownTaps]
GO
/****** Object:  Table [dbo].[Breweries]    Script Date: 5/31/2017 7:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Breweries](
	[BreweryID] [int] IDENTITY(1,1) NOT NULL,
	[BreweryName] [varchar](100) NOT NULL,
	[BreweryAddress] [varchar](100) NOT NULL,
	[BreweryDistrictID] [int] NOT NULL,
	[BreweryPhoneNumber] [varchar](14) NULL CONSTRAINT [DF__Breweries__Brewe__108B795B]  DEFAULT (''),
 CONSTRAINT [PK__Brewerie__E08249F5CBC88FCF] PRIMARY KEY CLUSTERED 
(
	[BreweryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 5/31/2017 7:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Districts](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Breweries] ON 

INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (1, N'Atwater Brewery - Grand Rapids', N'201 Michigan St. NW, Grand Rapids, MI', 4, N'616-649-3020')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (2, N'Bell''s Brewery at Gerald R. Ford International Airport', N'5500 44th St. SE, Grand Rapids, MI', 1, N'269-382-2332')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (3, N'Bier Distillery', N'5295 West River Drive NE #100, Comstock Park, MI', 2, N'616-888-9746')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (4, N'B.O.B.''s Brewery', N'20 Monroe Ave. NW, Grand Rapids, MI', 4, N'616-356-2000')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (5, N'Brewery Vivant', N'925 Cherry St. SE, Grand Rapids, MI', 5, N'616-719-1604')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (6, N'City Built Brewing', N'820 Monroe Ave. NW #155, Grand Rapids, MI', 4, NULL)
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (7, N'Cranker''s Restaurant & Brewery', N'454 68th St. SW, Grand Rapids, MI', 2, N'616-927-1919')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (8, N'Creston Brewery', N'1504 Plainfield Ave. NE, Grand Rapids, MI', 3, N'616-805-4523')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (9, N'East West Brewing Company', N'1400 Lake Drive SE, Grand Rapids, MI', 5, N'616-288-5250')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (10, N'EB Coffee and Pub', N'8980 N Rogers Court, Caledonia, MI', 1, N'616-891-7700')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (11, N'Elk Brewing - Grand Rapids', N'700 Wealthy St. SE, Grand Rapids, MI', 5, N'616-238-5227')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (12, N'Founders Brewing Company', N'235 Grandville Ave. SW, Grand Rapids, MI', 4, N'616-776-2182')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (13, N'Fountain Hill Brewery', N'151 Fountain St. NE, Grand Rapids, MI', 4, N'616-234-3700')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (14, N'Grand Rapids Brewing Company', N'1 Ionia Ave. SW, Grand Rapids, MI', 4, N'616-458-7000')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (15, N'Gravel Bottom Brewery & Supply', N'418 Ada Dr. SE, Ada, MI', 2, N'616-920-7398')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (16, N'Greyline Brewing Co.', N'1727 Alpine Ave. NW, Grand Rapids, MI', 6, NULL)
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (17, N'Harmony Brewing Company - Eastown', N'1551 Lake Drive SE, Grand Rapids, MI', 5, N'616-233-0063')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (18, N'Harmony Hall', N'401 Stocking Ave. NW, Grand Rapids, MI', 6, N'616-233-9186')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (19, N'Hideout Brewing', N'3113 Plaza Dr. NE, Grand Rapids, MI', 3, N'616-361-9658')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (20, N'HopCat', N'25 Ionia Ave. SW, Grand Rapids, MI', 4, N'616-451-4677')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (21, N'Jaden James Brewery', N'4665 Broadmoor Ave. SE, Grand Rapids, MI', 1, N'616-656-4665')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (22, N'Kitzingen Brewery', N'1760 44th St. SW #8, Wyoming, MI', 2, N'616-805-5077')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (23, N'New Holland - The Knickerbocker', N'417 Bridge St. NW, Grand Rapids, MI', 6, N'616-345-5642')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (24, N'Osgood Brewing', N'4051 Chicago Dr. SW, Grandville, MI', 2, N'616-432-3881')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (25, N'Perrin Brewing', N'5910 Comstock Park Dr. NW, Comstock Park, MI', 2, N'616-551-1957')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (26, N'Railtown Brewing Company', N'3555 68th Street SE, Caledonia, MI', 1, N'616-881-2364')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (27, N'Schmohz Brewery', N'2600 Patterson SE, Grand Rapids, MI', 1, N'616-949-0860')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (28, N'Speciation Artisan Ales', N'3720 West River Dr. NE, Comstock Park, MI', 2, NULL)
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (29, N'The Mitten Brewing Company', N'527 Leonard St. NW, Grand Rapids, MI', 6, N'616-608-5612')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (30, N'The People''s Cider', N'600 Maryland Ave. NE, Ste B, Grand Rapids, MI', 2, N'616-322-7805')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (31, N'Thornapple Brewing', N'6262 28th St. SE, Grand Rapids, MI', 1, N'616-288-6907')
INSERT [dbo].[Breweries] ([BreweryID], [BreweryName], [BreweryAddress], [BreweryDistrictID], [BreweryPhoneNumber]) VALUES (32, N'Vander Mill - Grand Rapids', N'505 Ball Ave. NE, Grand Rapids, MI', 2, N'616-259-8828')
SET IDENTITY_INSERT [dbo].[Breweries] OFF
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([DistrictID], [DistrictName]) VALUES (1, N'Airport')
INSERT [dbo].[Districts] ([DistrictID], [DistrictName]) VALUES (2, N'Around Town')
INSERT [dbo].[Districts] ([DistrictID], [DistrictName]) VALUES (3, N'Creston')
INSERT [dbo].[Districts] ([DistrictID], [DistrictName]) VALUES (4, N'Downtown')
INSERT [dbo].[Districts] ([DistrictID], [DistrictName]) VALUES (5, N'Eastown')
INSERT [dbo].[Districts] ([DistrictID], [DistrictName]) VALUES (6, N'Westside')
SET IDENTITY_INSERT [dbo].[Districts] OFF
ALTER TABLE [dbo].[Breweries]  WITH CHECK ADD  CONSTRAINT [FK_Breweries_Districts] FOREIGN KEY([BreweryDistrictID])
REFERENCES [dbo].[Districts] ([DistrictID])
GO
ALTER TABLE [dbo].[Breweries] CHECK CONSTRAINT [FK_Breweries_Districts]
GO
USE [master]
GO
ALTER DATABASE [BrewTownTaps] SET  READ_WRITE 
GO
