USE [master]
GO
/****** Object:  Database [BDD_MDS]    Script Date: 23/03/2023 09:57:39 a. m. ******/
CREATE DATABASE [BDD_MDS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDD_MDS', FILENAME = N'C:\Documents\AP6\Database\BDD_MDF.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDD_MDS_log', FILENAME = N'C:\Documents\AP6\Database\BDD_MDF_log.ldf' , SIZE = 504KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BDD_MDS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDD_MDS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDD_MDS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDD_MDS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDD_MDS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDD_MDS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDD_MDS] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDD_MDS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BDD_MDS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDD_MDS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDD_MDS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDD_MDS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDD_MDS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDD_MDS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDD_MDS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDD_MDS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDD_MDS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDD_MDS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDD_MDS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDD_MDS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDD_MDS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDD_MDS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDD_MDS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDD_MDS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDD_MDS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDD_MDS] SET  MULTI_USER 
GO
ALTER DATABASE [BDD_MDS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDD_MDS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDD_MDS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDD_MDS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDD_MDS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDD_MDS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BDD_MDS] SET QUERY_STORE = OFF
GO
USE [BDD_MDS]
GO
/****** Object:  Table [dbo].[ARTICULOS]    Script Date: 23/03/2023 09:57:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICULOS](
	[codart] [int] NOT NULL,
	[descrip] [nchar](10) NULL,
	[precio] [money] NULL,
	[stock] [int] NULL,
	[stock_min] [int] NULL,
	[dto] [decimal](2, 2) NULL,
 CONSTRAINT [PK_ARTICULOS] PRIMARY KEY CLUSTERED 
(
	[codart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 23/03/2023 09:57:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[codcli] [int] NOT NULL,
	[nombre] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
	[codpostal] [nchar](10) NULL,
	[codpue] [int] NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[codcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURAS]    Script Date: 23/03/2023 09:57:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURAS](
	[codfac] [int] NOT NULL,
	[fecha] [date] NULL,
	[codcli] [int] NULL,
	[codven] [int] NULL,
	[iva] [money] NULL,
	[dto] [decimal](2, 2) NULL,
 CONSTRAINT [PK_FACTURAS] PRIMARY KEY CLUSTERED 
(
	[codfac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LINEAS_FAC]    Script Date: 23/03/2023 09:57:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LINEAS_FAC](
	[codfac] [int] NOT NULL,
	[linea] [int] NOT NULL,
	[cant] [int] NULL,
	[codart] [int] NULL,
	[dto] [decimal](2, 2) NULL,
	[precio] [money] NULL,
 CONSTRAINT [PK_LINEAS_FAC] PRIMARY KEY CLUSTERED 
(
	[codfac] ASC,
	[linea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVINCIAS]    Script Date: 23/03/2023 09:57:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVINCIAS](
	[codpro] [int] NOT NULL,
	[nombre] [nchar](10) NULL,
 CONSTRAINT [PK_PROVINCIAS] PRIMARY KEY CLUSTERED 
(
	[codpro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PUEBLOS]    Script Date: 23/03/2023 09:57:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUEBLOS](
	[codpue] [int] NOT NULL,
	[nombre] [nchar](10) NULL,
	[codpro] [int] NULL,
 CONSTRAINT [PK_PUEBLOS] PRIMARY KEY CLUSTERED 
(
	[codpue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENDEDORES]    Script Date: 23/03/2023 09:57:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDEDORES](
	[codven] [int] NOT NULL,
	[nombre] [nchar](10) NULL,
	[direccion] [nchar](10) NULL,
	[codpostal] [nchar](10) NULL,
	[codpue] [int] NULL,
	[codjefe] [int] NULL,
 CONSTRAINT [PK_VENDEDORES] PRIMARY KEY CLUSTERED 
(
	[codven] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLIENTES]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTES_PUEBLOS] FOREIGN KEY([codpue])
REFERENCES [dbo].[PUEBLOS] ([codpue])
GO
ALTER TABLE [dbo].[CLIENTES] CHECK CONSTRAINT [FK_CLIENTES_PUEBLOS]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [FK_FACTURAS_CLIENTES] FOREIGN KEY([codcli])
REFERENCES [dbo].[CLIENTES] ([codcli])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [FK_FACTURAS_CLIENTES]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [FK_FACTURAS_VENDEDORES] FOREIGN KEY([codven])
REFERENCES [dbo].[VENDEDORES] ([codven])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [FK_FACTURAS_VENDEDORES]
GO
ALTER TABLE [dbo].[LINEAS_FAC]  WITH CHECK ADD  CONSTRAINT [FK_LINEAS_FAC_ARTICULOS] FOREIGN KEY([codart])
REFERENCES [dbo].[ARTICULOS] ([codart])
GO
ALTER TABLE [dbo].[LINEAS_FAC] CHECK CONSTRAINT [FK_LINEAS_FAC_ARTICULOS]
GO
ALTER TABLE [dbo].[LINEAS_FAC]  WITH CHECK ADD  CONSTRAINT [FK_LINEAS_FAC_FACTURAS] FOREIGN KEY([codfac])
REFERENCES [dbo].[FACTURAS] ([codfac])
GO
ALTER TABLE [dbo].[LINEAS_FAC] CHECK CONSTRAINT [FK_LINEAS_FAC_FACTURAS]
GO
ALTER TABLE [dbo].[PUEBLOS]  WITH CHECK ADD  CONSTRAINT [FK_PUEBLOS_PROVINCIAS] FOREIGN KEY([codpro])
REFERENCES [dbo].[PROVINCIAS] ([codpro])
GO
ALTER TABLE [dbo].[PUEBLOS] CHECK CONSTRAINT [FK_PUEBLOS_PROVINCIAS]
GO
ALTER TABLE [dbo].[VENDEDORES]  WITH CHECK ADD  CONSTRAINT [FK_VENDEDORES_PUEBLOS] FOREIGN KEY([codpue])
REFERENCES [dbo].[PUEBLOS] ([codpue])
GO
ALTER TABLE [dbo].[VENDEDORES] CHECK CONSTRAINT [FK_VENDEDORES_PUEBLOS]
GO
ALTER TABLE [dbo].[VENDEDORES]  WITH CHECK ADD  CONSTRAINT [FK_VENDEDORES_VENDEDORES] FOREIGN KEY([codjefe])
REFERENCES [dbo].[VENDEDORES] ([codven])
GO
ALTER TABLE [dbo].[VENDEDORES] CHECK CONSTRAINT [FK_VENDEDORES_VENDEDORES]
GO
USE [master]
GO
ALTER DATABASE [BDD_MDS] SET  READ_WRITE 
GO
