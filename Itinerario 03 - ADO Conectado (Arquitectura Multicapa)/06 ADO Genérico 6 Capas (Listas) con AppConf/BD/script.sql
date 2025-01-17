USE [MiBaseListas]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 26/8/2020 14:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[DNI] [nchar](10) NULL,
	[FechaNac] [date] NULL,
	[CodLocalidad] [int] NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alumno_Materia]    Script Date: 26/8/2020 14:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno_Materia](
	[codAlu] [int] NOT NULL,
	[CodMat] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 26/8/2020 14:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 26/8/2020 14:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Materia1] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Localidad] FOREIGN KEY([CodLocalidad])
REFERENCES [dbo].[Localidad] ([Codigo])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Localidad]
GO
ALTER TABLE [dbo].[Alumno_Materia]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Materia_Alumno] FOREIGN KEY([codAlu])
REFERENCES [dbo].[Alumno] ([Codigo])
GO
ALTER TABLE [dbo].[Alumno_Materia] CHECK CONSTRAINT [FK_Alumno_Materia_Alumno]
GO
ALTER TABLE [dbo].[Alumno_Materia]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Materia_Materia] FOREIGN KEY([CodMat])
REFERENCES [dbo].[Materia] ([Codigo])
GO
ALTER TABLE [dbo].[Alumno_Materia] CHECK CONSTRAINT [FK_Alumno_Materia_Materia]
GO
