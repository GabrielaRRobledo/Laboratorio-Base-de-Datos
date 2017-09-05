USE [master]
GO
/****** Object:  Database [ticketmaster]    Script Date: 28/08/2017 09:48:00 p.m. ******/
CREATE DATABASE [ticketmaster]
 
GO
ALTER DATABASE [ticketmaster] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ticketmaster].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ticketmaster] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ticketmaster] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ticketmaster] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ticketmaster] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ticketmaster] SET ARITHABORT OFF 
GO
ALTER DATABASE [ticketmaster] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ticketmaster] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ticketmaster] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ticketmaster] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ticketmaster] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ticketmaster] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ticketmaster] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ticketmaster] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ticketmaster] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ticketmaster] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ticketmaster] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ticketmaster] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ticketmaster] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ticketmaster] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ticketmaster] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ticketmaster] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ticketmaster] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ticketmaster] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ticketmaster] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ticketmaster] SET  MULTI_USER 
GO
ALTER DATABASE [ticketmaster] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ticketmaster] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ticketmaster] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ticketmaster] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ticketmaster]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 28/08/2017 09:48:00 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[Columna 1] [nchar](10) NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [ticketmaster] SET  READ_WRITE 
GO
