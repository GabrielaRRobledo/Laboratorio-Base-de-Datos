USE [master]
GO
/****** Object:  Database [Recursos_Humanos]    Script Date: 30/10/2017 12:30:56 a. m. ******/
CREATE DATABASE [Recursos_Humanos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Recursos_Humanos', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Recursos_Humanos.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Recursos_Humanos_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Recursos_Humanos_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Recursos_Humanos] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Recursos_Humanos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Recursos_Humanos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Recursos_Humanos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Recursos_Humanos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Recursos_Humanos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Recursos_Humanos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Recursos_Humanos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Recursos_Humanos] SET  MULTI_USER 
GO
ALTER DATABASE [Recursos_Humanos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Recursos_Humanos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Recursos_Humanos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Recursos_Humanos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Recursos_Humanos]
GO
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 30/10/2017 12:30:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trabajadores](
	[ID_Trabajadores] [int] NULL,
	[Trabajadores] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Encargado]    Script Date: 30/10/2017 12:30:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Encargado](
	[ID_Encargado] [int] NULL,
	[ID_Area] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[horas] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Area]    Script Date: 30/10/2017 12:30:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area](
	[ID_Area] [int] NULL,
	[ID_Encargado] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 30/10/2017 12:30:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
/****** Object:  View [dbo].[horario]    Script Date: 30/10/2017 12:30:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[copia] as select * from  Encargado
 where Trabajadores = Area
 with check option;
GO
INSERT [dbo].[Encargado] ([ID_Encargado], [Encargado]) VALUES (1, N'Juan Hdz')
GO
INSERT [dbo].[Encargado] ([ID_Encargado], [Encargado]) VALUES (2, N'Pedro Lino')
GO
INSERT [dbo].[Encargado] ([ID_Encargado], [Encargado]) VALUES (3, N'Ana Torres')
GO
INSERT [dbo].[Area] ([ID_Area], [Area]) VALUES (1, N'Plasticos')
GO
INSERT [dbo].[Area] ([ID_Area], [Area]) VALUES (2, N'Metales')
GO
INSERT [dbo].[Area] ([ID_Area], [Area]) VALUES (3, N'Carton')
GO
USE [master]
GO
ALTER DATABASE [Recursos_Humanos] SET  READ_WRITE 
GO