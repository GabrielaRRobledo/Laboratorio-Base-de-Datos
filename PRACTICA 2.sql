USE [master]
GO
/****** Object:  Database [Balances2017] Script Date: 04/09/2017 09:47:44 p.m. ******/
CREATE DATABASE [Balances2017]
 CONTAINMENT = NONE
 ON  PRIMARY
 ( NAME = N'Balances2017', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Balances2017.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Balances2017_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Balances2017_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
ALTER DATABASE [Balances2017] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Balances2017].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Balances2017] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Balances2017] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Balances2017] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Balances2017] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Balances2017] SET ARITHABORT OFF 
GO
ALTER DATABASE [Balances2017] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Balances2017] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Balances2017] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Balances2017] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Balances2017] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Balances2017] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Balances2017] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Balances2017] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Balances2017] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Balances2017] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Balances2017] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Balances2017] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Balances2017] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Balances2017] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Balances2017] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Balances2017] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Balances2017] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Balances2017] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Balances2017] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Balances2017] SET  MULTI_USER 
GO
ALTER DATABASE [Balances2017] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Balances2017] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Balances2017] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Balances2017] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Balances2017]
GO
/****** Object:  Table [dbo].[BalanceEnero]    Script Date: 04/09/2017 09:47:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BalanceEnero](
	[IDBalanceEnero] [uniqueidentifier] NULL,
	[NoFactura] [nchar] NULL,
	[Empresa] [varchar](50) NULL,
	[FormaPago] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BalanceFebrero]    Script Date: 04/09/2017 09:47:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BalanceFebrero](
	[IDBalanceFebrero] [uniqueidentifier] NULL,
	[NoFactura] [nchar] NULL,
	[Empresa] [varchar](50) NULL,
	[FormaPago] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BalanceMarzo]   Script Date: 04/09/2017 09:47:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BalanceMarzo](
	[IDBalanceMarzo] [uniqueidentifier] NULL,
	[NoFactura] [nchar] NULL,
	[Empresa] [varchar](50) NULL,
	[FormaPago] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BalnceAbril]   Script Date: 04/09/2017 09:47:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BalanceAbril](
	[IDBalanceAbril] [uniqueidentifier] NULL,
	[NoFactura] [nchar] NULL,
	[Empresa] [varchar](50) NULL,
	[FormaPago] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BalnceMayo]    Script Date: 04/09/2017 09:47:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BalnceMayo](
	[IDBalanceMayo] [uniqueidentifier] NULL,
	[NoFactura] [nchar] NULL,
	[Empresa] [varchar](50) NULL,
	[FormaPago] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BalanceJunio]    Script Date: 04/09/2017 09:47:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BalnceJunio](
	[IDBalanceJunio] [uniqueidentifier] NULL,
	[NoFactura] [nchar] NULL,
	[Empresa] [varchar](50) NULL,
	[FormaPago] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BalanceJulio]    Script Date: 04/09/2017 09:47:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BalanceJulio](
	[IDBalanceJulio] [uniqueidentifier] NULL,
	[NoFactura] [nchar] NULL,
	[Empresa] [varchar](50) NULL,
	[FormaPago] [nchar](10) NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Balances2017] SET  READ_WRITE 
GO
