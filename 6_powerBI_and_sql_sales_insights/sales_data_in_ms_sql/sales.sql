USE [master]
GO
/****** Object:  Database [sales]    Script Date: 23-07-2021 17:21:59 ******/
CREATE DATABASE [sales]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\sales.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\sales_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [sales] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sales] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sales] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sales] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sales] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sales] SET ARITHABORT OFF 
GO
ALTER DATABASE [sales] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sales] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sales] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sales] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sales] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sales] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sales] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sales] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sales] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sales] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sales] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sales] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sales] SET RECOVERY FULL 
GO
ALTER DATABASE [sales] SET  MULTI_USER 
GO
ALTER DATABASE [sales] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sales] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sales] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sales] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sales] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sales] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'sales', N'ON'
GO
ALTER DATABASE [sales] SET QUERY_STORE = OFF
GO
USE [sales]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 23-07-2021 17:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customer_code] [varchar](50) NULL,
	[custmer_name] [varchar](50) NULL,
	[customer_type] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[date]    Script Date: 23-07-2021 17:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[date](
	[date] [date] NULL,
	[cy_date] [varchar](50) NULL,
	[year] [int] NOT NULL,
	[month_name] [varchar](50) NULL,
	[date_yy_mmm] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[markets]    Script Date: 23-07-2021 17:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[markets](
	[markets_code] [varchar](50) NULL,
	[markets_name] [varchar](50) NULL,
	[zone] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 23-07-2021 17:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_code] [varchar](50) NULL,
	[product_type] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transactions]    Script Date: 23-07-2021 17:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transactions](
	[product_code] [varchar](50) NULL,
	[customer_code] [varchar](50) NULL,
	[market_code] [varchar](50) NULL,
	[order_date] [date] NULL,
	[sales_qty] [int] NULL,
	[sales_amount] [float] NULL,
	[currency] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [sales] SET  READ_WRITE 
GO
