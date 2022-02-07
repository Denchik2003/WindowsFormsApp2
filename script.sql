USE [master]
GO
/****** Object:  Database [вариант_1]    Script Date: 07.02.2022 13:22:53 ******/
CREATE DATABASE [вариант_1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'вариант_1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\вариант_1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'вариант_1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\вариант_1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [вариант_1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [вариант_1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [вариант_1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [вариант_1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [вариант_1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [вариант_1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [вариант_1] SET ARITHABORT OFF 
GO
ALTER DATABASE [вариант_1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [вариант_1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [вариант_1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [вариант_1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [вариант_1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [вариант_1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [вариант_1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [вариант_1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [вариант_1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [вариант_1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [вариант_1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [вариант_1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [вариант_1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [вариант_1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [вариант_1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [вариант_1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [вариант_1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [вариант_1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [вариант_1] SET  MULTI_USER 
GO
ALTER DATABASE [вариант_1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [вариант_1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [вариант_1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [вариант_1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [вариант_1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [вариант_1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [вариант_1] SET QUERY_STORE = OFF
GO
USE [вариант_1]
GO
/****** Object:  Table [dbo].[Авторизация]    Script Date: 07.02.2022 13:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторизация](
	[ID] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Авторизация] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Водитель]    Script Date: 07.02.2022 13:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Водитель](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Middlename] [nvarchar](50) NOT NULL,
	[Passport_serial] [int] NOT NULL,
	[Passport_number] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Address_life] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](50) NULL,
	[Jobname] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Водитель] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [вариант_1] SET  READ_WRITE 
GO
