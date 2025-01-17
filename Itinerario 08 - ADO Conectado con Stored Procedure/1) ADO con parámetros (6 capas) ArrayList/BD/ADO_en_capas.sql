USE [master]
GO

/****** Object:  Database [ADO_en_capas]    Script Date: 11/5/2021 15:28:12 ******/
CREATE DATABASE [ADO_en_capas] CONTAINMENT = NONE ON PRIMARY (
	NAME = N'EjemploCapas',
	FILENAME = N'U:\Documents\Lenguajes-de-Ultima-Generacion\BBDD\Data\ADO_en_capas.mdf',
	SIZE = 4096 KB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1024 KB
	) LOG ON (
	NAME = N'EjemploCapas_log',
	FILENAME = N'U:\Documents\Lenguajes-de-Ultima-Generacion\BBDD\Data\ADO_en_capas.ldf',
	SIZE = 3456 KB,
	MAXSIZE = 2048 GB,
	FILEGROWTH = 10 %
	)
	WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

ALTER DATABASE [ADO_en_capas]

SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
	EXEC [ADO_en_capas].[dbo].[sp_fulltext_database] @action = 'enable'
END
GO

ALTER DATABASE [ADO_en_capas]

SET ANSI_NULL_DEFAULT OFF
GO

ALTER DATABASE [ADO_en_capas]

SET ANSI_NULLS OFF
GO

ALTER DATABASE [ADO_en_capas]

SET ANSI_PADDING OFF
GO

ALTER DATABASE [ADO_en_capas]

SET ANSI_WARNINGS OFF
GO

ALTER DATABASE [ADO_en_capas]

SET ARITHABORT OFF
GO

ALTER DATABASE [ADO_en_capas]

SET AUTO_CLOSE OFF
GO

ALTER DATABASE [ADO_en_capas]

SET AUTO_SHRINK OFF
GO

ALTER DATABASE [ADO_en_capas]

SET AUTO_UPDATE_STATISTICS ON
GO

ALTER DATABASE [ADO_en_capas]

SET CURSOR_CLOSE_ON_COMMIT OFF
GO

ALTER DATABASE [ADO_en_capas]

SET CURSOR_DEFAULT GLOBAL
GO

ALTER DATABASE [ADO_en_capas]

SET CONCAT_NULL_YIELDS_NULL OFF
GO

ALTER DATABASE [ADO_en_capas]

SET NUMERIC_ROUNDABORT OFF
GO

ALTER DATABASE [ADO_en_capas]

SET QUOTED_IDENTIFIER OFF
GO

ALTER DATABASE [ADO_en_capas]

SET RECURSIVE_TRIGGERS OFF
GO

ALTER DATABASE [ADO_en_capas]

SET DISABLE_BROKER
GO

ALTER DATABASE [ADO_en_capas]

SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO

ALTER DATABASE [ADO_en_capas]

SET DATE_CORRELATION_OPTIMIZATION OFF
GO

ALTER DATABASE [ADO_en_capas]

SET TRUSTWORTHY OFF
GO

ALTER DATABASE [ADO_en_capas]

SET ALLOW_SNAPSHOT_ISOLATION OFF
GO

ALTER DATABASE [ADO_en_capas]

SET PARAMETERIZATION SIMPLE
GO

ALTER DATABASE [ADO_en_capas]

SET READ_COMMITTED_SNAPSHOT OFF
GO

ALTER DATABASE [ADO_en_capas]

SET HONOR_BROKER_PRIORITY OFF
GO

ALTER DATABASE [ADO_en_capas]

SET RECOVERY SIMPLE
GO

ALTER DATABASE [ADO_en_capas]

SET MULTI_USER
GO

ALTER DATABASE [ADO_en_capas]

SET PAGE_VERIFY CHECKSUM
GO

ALTER DATABASE [ADO_en_capas]

SET DB_CHAINING OFF
GO

ALTER DATABASE [ADO_en_capas]

SET FILESTREAM(NON_TRANSACTED_ACCESS = OFF)
GO

ALTER DATABASE [ADO_en_capas]

SET TARGET_RECOVERY_TIME = 0 SECONDS
GO

ALTER DATABASE [ADO_en_capas]

SET DELAYED_DURABILITY = DISABLED
GO

ALTER DATABASE [ADO_en_capas]

SET ACCELERATED_DATABASE_RECOVERY = OFF
GO

ALTER DATABASE [ADO_en_capas]

SET QUERY_STORE = OFF
GO

USE [ADO_en_capas]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente] (
	[IdCliente] [int] IDENTITY(1, 1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[DNI] [int] NULL,
	[IdLocalidad] [int] NULL,
	[Activo] [bit] NULL,
	CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED ([IdCliente] ASC) WITH (
		PAD_INDEX = OFF,
		STATISTICS_NORECOMPUTE = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Localidad]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Localidad] (
	[IdLocalidad] [int] IDENTITY(1, 1) NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
	CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED ([IdLocalidad] ASC) WITH (
		PAD_INDEX = OFF,
		STATISTICS_NORECOMPUTE = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Cliente]
	WITH CHECK ADD CONSTRAINT [FK_Cliente_Localidad] FOREIGN KEY ([IdLocalidad]) REFERENCES [dbo].[Localidad]([IdLocalidad])
GO

ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Localidad]
GO

/****** Object:  StoredProcedure [dbo].[s_Cliente_Baja]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[s_Cliente_Baja] @IdCliente INT
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Cliente
	SET Activo = 'False'
	WHERE IdCliente = @IdCliente
END
GO

/****** Object:  StoredProcedure [dbo].[s_Cliente_BusquedaXApellido]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[s_Cliente_BusquedaXApellido] @Apellido VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	SELECT IdCliente,
		Nombre,
		Apellido,
		DNI,
		Cliente.IdLocalidad,
		Localidad.Descripcion AS Localidad,
		Activo
	FROM Cliente
	JOIN Localidad ON Localidad.IdLocalidad = Cliente.IdLocalidad
	WHERE Activo = 'True'
		AND Apellido = @Apellido
END
GO

/****** Object:  StoredProcedure [dbo].[s_Cliente_Crear]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[s_Cliente_Crear] @Nombre VARCHAR(50),
	@Apellido VARCHAR(50),
	@DNI INT,
	@IdLocalidad INT,
	@Activo BIT
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Cliente (
		Nombre,
		Apellido,
		DNI,
		IdLocalidad,
		Activo
		)
	VALUES (
		@Nombre,
		@Apellido,
		@DNI,
		@IdLocalidad,
		@Activo
		)
END
GO

/****** Object:  StoredProcedure [dbo].[s_Cliente_Existe_DNI]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[s_Cliente_Existe_DNI]
	-- Add the parameters for the stored procedure here
	@DNI INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	SELECT count(DNI)
	FROM Cliente
	WHERE DNI = @DNI
END
GO

/****** Object:  StoredProcedure [dbo].[s_Cliente_Listar]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[s_Cliente_Listar] @IdCliente INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	SELECT Nombre,
		Apellido,
		DNI,
		Cliente.IdLocalidad,
		Localidad.Descripcion AS Localidad
	FROM Cliente
	JOIN Localidad ON Localidad.IdLocalidad = Cliente.IdLocalidad
	WHERE Activo = 'True'
		AND Cliente.IdCliente = @IdCliente
END
GO

/****** Object:  StoredProcedure [dbo].[s_Cliente_ListarT]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[s_Cliente_ListarT]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT IdCliente,
		Nombre,
		Apellido,
		DNI,
		Cliente.IdLocalidad,
		Localidad.Descripcion AS Localidad,
		Activo
	FROM Cliente
	JOIN Localidad ON Localidad.IdLocalidad = Cliente.IdLocalidad
	WHERE Activo = 'True'
END
GO

/****** Object:  StoredProcedure [dbo].[s_Cliente_Modificar]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[s_Cliente_Modificar] @IdCliente INT,
	@Nombre VARCHAR(50),
	@Apellido VARCHAR(50),
	@DNI INT,
	@IdLocalidad INT,
	@Activo BIT
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Cliente
	SET [Nombre] = @Nombre,
		[Apellido] = @Apellido,
		[DNI] = @DNI,
		[IdLocalidad] = @IdLocalidad,
		Activo = 1
	WHERE IdCliente = @IdCliente
END
GO

/****** Object:  StoredProcedure [dbo].[s_Localidad_Asociada]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[s_Localidad_Asociada] @IdLoc INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT count(IdLocalidad)
	FROM Cliente
	WHERE IdLocalidad = @IdLoc
END
GO

/****** Object:  StoredProcedure [dbo].[s_Localidad_Borrar]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[s_Localidad_Borrar] @IdLoc INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	DELETE
	FROM Localidad
	WHERE IdLocalidad = @IdLoc
END
GO

/****** Object:  StoredProcedure [dbo].[s_Localidad_ListarT]    Script Date: 11/5/2021 15:28:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[s_Localidad_ListarT]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT *
	FROM Localidad
END
GO

USE [master]
GO

ALTER DATABASE [ADO_en_capas]

SET READ_WRITE
GO


