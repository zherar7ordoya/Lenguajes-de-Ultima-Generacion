USE [Equipo]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 27/9/2021 17:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[CodTecnico] [int] NULL,
 CONSTRAINT [PK_Equipo] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipo_Jugador]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo_Jugador](
	[CodEquipo] [int] NOT NULL,
	[CodJugador] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[TAmarilla] [int] NOT NULL,
	[TRoja] [int] NOT NULL,
	[Goles] [int] NOT NULL,
	[Rapado] [bit] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[DNI] [int] NULL,
 CONSTRAINT [PK_JUgador] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tecnico]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tecnico](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[DNI] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Tecnico] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Alta_Equipo]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Alta_Equipo]
	-- Add the parameters for the stored procedure here
@Nom nvarchar(50),
@Color nvarchar(50),
@CodTecnico int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into Equipo(Nombre, Color, CodTecnico)
	values (@Nom,@Color,@CodTecnico)
END
GO
/****** Object:  StoredProcedure [dbo].[Alta_JPrincipiante]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Alta_JPrincipiante]
-- Add the parameters for the stored procedure here
	@TAmarilla int,
	@TRojas int,
	@GolesR int,
	@Rapado bit,
	@Nombre varchar(50),
	@Apellido varchar(50),
	@DNI int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Insert into Jugador(TAmarilla, TRoja, Goles, Rapado,Nombre, Apellido,DNI) 
values(@TAmarilla,@TRojas,@GolesR,@Rapado,@Nombre,@Apellido,@DNI)
END
GO
/****** Object:  StoredProcedure [dbo].[Alta_JProfesional]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Alta_JProfesional]
	-- Add the parameters for the stored procedure here
	@TAmarilla int,
	@TRojas int,
	@GolesR int,
	@Nombre varchar(50),
	@Apellido varchar(50),
	@DNI int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Insert into Jugador(TAmarilla, TRoja, Goles, Nombre, Apellido,DNI) 
values(@TAmarilla,@TRojas,@GolesR,@Nombre,@Apellido,@DNI)
END
GO
/****** Object:  StoredProcedure [dbo].[Alta_Jugador_Equipo]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Alta_Jugador_Equipo]
	-- Add the parameters for the stored procedure here
@CodEquipo int,
@CodJugador int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		Insert Into Equipo_Jugador(CodEquipo,CodJugador)
		values(@CodEquipo,@CodJugador)
END
GO
/****** Object:  StoredProcedure [dbo].[Buscar_Jugador_DNI]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Buscar_Jugador_DNI]
@DNI int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Select * from Jugador where DNI= @DNI
END
GO
/****** Object:  StoredProcedure [dbo].[Listar_Equipos]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Listar_Equipos]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select Equipo.Codigo,Equipo.Nombre as Equipo, Equipo.Color, Tecnico.Nombre,Tecnico.Apellido,Tecnico.DNI
	from Equipo,Tecnico
	where Equipo.CodTecnico= Tecnico.Codigo
END
GO
/****** Object:  StoredProcedure [dbo].[Listar_Jugadores_Equipo]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Listar_Jugadores_Equipo]
	-- Add the parameters for the stored procedure here
@CodEqui int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select J.Codigo,J.Nombre,J.Apellido,J.DNI,J.Rapado, J.TRoja, J.TAmarilla,J.Goles
    from Equipo_Jugador, Jugador as J, Equipo as E
    Where Equipo_Jugador.CodJugador = J.Codigo and Equipo_Jugador.CodEquipo= E.Codigo and E.Codigo=@CodEqui
END
GO
/****** Object:  StoredProcedure [dbo].[Listar_Tecnicos]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Listar_Tecnicos]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

       Select Codigo,Nombre,Apellido,DNI
	   From Tecnico
	   where Estado = 'False'
END
GO
/****** Object:  StoredProcedure [dbo].[Modificar_Tecnico]    Script Date: 27/9/2021 17:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Modificar_Tecnico]
	-- Add the parameters for the stored procedure here
	@Cod int,
	@Estado Bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   update Tecnico set Estado= @Estado where Codigo = @Cod
END
GO
