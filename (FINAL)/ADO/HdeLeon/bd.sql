USE [master]
GO
/****** Object:  Database [CrudWindowsForm]    Script Date: 03/10/2019 01:21:01 a. m. ******/
CREATE DATABASE [CrudWindowsForm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CrudWindowsForm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CrudWindowsForm.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CrudWindowsForm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CrudWindowsForm_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CrudWindowsForm] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CrudWindowsForm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CrudWindowsForm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET ARITHABORT OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CrudWindowsForm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CrudWindowsForm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CrudWindowsForm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CrudWindowsForm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CrudWindowsForm] SET  MULTI_USER 
GO
ALTER DATABASE [CrudWindowsForm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CrudWindowsForm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CrudWindowsForm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CrudWindowsForm] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CrudWindowsForm] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CrudWindowsForm]
GO
/****** Object:  Table [dbo].[people]    Script Date: 03/10/2019 01:21:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[people](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
 CONSTRAINT [PK_people] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [CrudWindowsForm] SET  READ_WRITE 
GO
