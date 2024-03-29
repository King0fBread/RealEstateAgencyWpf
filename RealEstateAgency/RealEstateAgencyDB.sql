USE [master]
GO
/****** Object:  Database [RealEstateAgency]    Script Date: 06/03/2024 15:38:20 ******/
CREATE DATABASE [RealEstateAgency]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RealEstateAgency', FILENAME = N'D:\SSMS\srv\MSSQL16.SQLEXPRESS01\MSSQL\DATA\RealEstateAgency.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RealEstateAgency_log', FILENAME = N'D:\SSMS\srv\MSSQL16.SQLEXPRESS01\MSSQL\DATA\RealEstateAgency_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RealEstateAgency] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RealEstateAgency].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RealEstateAgency] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RealEstateAgency] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RealEstateAgency] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RealEstateAgency] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RealEstateAgency] SET ARITHABORT OFF 
GO
ALTER DATABASE [RealEstateAgency] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RealEstateAgency] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RealEstateAgency] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RealEstateAgency] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RealEstateAgency] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RealEstateAgency] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RealEstateAgency] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RealEstateAgency] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RealEstateAgency] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RealEstateAgency] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RealEstateAgency] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RealEstateAgency] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RealEstateAgency] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RealEstateAgency] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RealEstateAgency] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RealEstateAgency] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RealEstateAgency] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RealEstateAgency] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RealEstateAgency] SET  MULTI_USER 
GO
ALTER DATABASE [RealEstateAgency] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RealEstateAgency] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RealEstateAgency] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RealEstateAgency] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RealEstateAgency] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RealEstateAgency] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RealEstateAgency] SET QUERY_STORE = OFF
GO
USE [RealEstateAgency]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[IdClient] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Patronymic] [nvarchar](20) NULL,
	[Phone] [nvarchar](11) NOT NULL,
	[Comment] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientEmployee]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientEmployee](
	[IdClient] [int] NOT NULL,
	[IdEmployee] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdClient] ASC,
	[IdEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Developer]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Developer](
	[IdDeveloper] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDeveloper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[IdDistrict] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDistrict] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[IdEmployee] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Patronymic] [nvarchar](20) NULL,
	[Phone] [nvarchar](11) NOT NULL,
	[login] [nvarchar](20) NOT NULL,
	[password] [nvarchar](40) NOT NULL,
	[IdRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flat]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flat](
	[IdFlat] [int] IDENTITY(1,1) NOT NULL,
	[BuildingNumberOfRoom] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[NumberOfRooms] [int] NOT NULL,
	[Area] [int] NOT NULL,
	[FloorNumber] [int] NOT NULL,
	[EntranceNumber] [int] NOT NULL,
	[IdSkyscraper] [int] NOT NULL,
	[ImagePreview] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFlat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[IdMaterial] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[IdRequest] [int] IDENTITY(1,1) NOT NULL,
	[MinimumPrice] [money] NULL,
	[MaximumPrice] [money] NOT NULL,
	[NumberOfRooms] [int] NOT NULL,
	[MinimumArea] [int] NOT NULL,
	[MaximumArea] [int] NULL,
	[RequestDate] [datetime] NOT NULL,
	[IdDistrict] [int] NOT NULL,
	[IdEmployee] [int] NOT NULL,
	[IdClient] [int] NOT NULL,
	[IdRequestStatus] [int] NULL,
 CONSTRAINT [PK__Request__B11B05A38A73A04E] PRIMARY KEY CLUSTERED 
(
	[IdRequest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestFlat]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestFlat](
	[IdRequest] [int] NOT NULL,
	[IdFlat] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestStatus]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestStatus](
	[IdRequestStatus] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRequestStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkyScraper]    Script Date: 06/03/2024 15:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkyScraper](
	[IdSkyscraper] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[NumberOfFloors] [int] NOT NULL,
	[NumberOfEntrances] [int] NOT NULL,
	[NumberOfApartments] [int] NOT NULL,
	[IdDistrict] [int] NOT NULL,
	[IdMaterial] [int] NOT NULL,
	[IdDeveloper] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSkyscraper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Request] ADD  CONSTRAINT [DF__Request__Request__45F365D3]  DEFAULT (getdate()) FOR [RequestDate]
GO
ALTER TABLE [dbo].[ClientEmployee]  WITH CHECK ADD FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([IdClient])
GO
ALTER TABLE [dbo].[ClientEmployee]  WITH CHECK ADD FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Employee] ([IdEmployee])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[Flat]  WITH CHECK ADD FOREIGN KEY([IdSkyscraper])
REFERENCES [dbo].[SkyScraper] ([IdSkyscraper])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__IdClien__48CFD27E] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([IdClient])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__IdClien__48CFD27E]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__IdDistr__46E78A0C] FOREIGN KEY([IdDistrict])
REFERENCES [dbo].[District] ([IdDistrict])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__IdDistr__46E78A0C]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__IdEmplo__47DBAE45] FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Employee] ([IdEmployee])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__IdEmplo__47DBAE45]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__IdReque__49C3F6B7] FOREIGN KEY([IdRequestStatus])
REFERENCES [dbo].[RequestStatus] ([IdRequestStatus])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__IdReque__49C3F6B7]
GO
ALTER TABLE [dbo].[RequestFlat]  WITH CHECK ADD FOREIGN KEY([IdFlat])
REFERENCES [dbo].[Flat] ([IdFlat])
GO
ALTER TABLE [dbo].[RequestFlat]  WITH CHECK ADD  CONSTRAINT [FK__RequestFl__IdReq__571DF1D5] FOREIGN KEY([IdRequest])
REFERENCES [dbo].[Request] ([IdRequest])
GO
ALTER TABLE [dbo].[RequestFlat] CHECK CONSTRAINT [FK__RequestFl__IdReq__571DF1D5]
GO
ALTER TABLE [dbo].[SkyScraper]  WITH CHECK ADD FOREIGN KEY([IdDeveloper])
REFERENCES [dbo].[Developer] ([IdDeveloper])
GO
ALTER TABLE [dbo].[SkyScraper]  WITH CHECK ADD FOREIGN KEY([IdDistrict])
REFERENCES [dbo].[District] ([IdDistrict])
GO
ALTER TABLE [dbo].[SkyScraper]  WITH CHECK ADD FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Materials] ([IdMaterial])
GO
USE [master]
GO
ALTER DATABASE [RealEstateAgency] SET  READ_WRITE 
GO
