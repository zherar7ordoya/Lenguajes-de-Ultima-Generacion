USE [BDEjemplo]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 22/4/2022 19:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](10) NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 22/4/2022 19:03:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](10) NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia_Persona]    Script Date: 22/4/2022 19:03:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia_Persona](
	[CodPersona] [int] NOT NULL,
	[CodMateria] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 22/4/2022 19:03:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[DNI] [int] NULL,
	[FechaNac] [date] NULL,
	[CodLocalidad] [int] NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Materia_Persona]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Persona_Materia] FOREIGN KEY([CodMateria])
REFERENCES [dbo].[Materia] ([Codigo])
GO
ALTER TABLE [dbo].[Materia_Persona] CHECK CONSTRAINT [FK_Materia_Persona_Materia]
GO
ALTER TABLE [dbo].[Materia_Persona]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Persona_Persona] FOREIGN KEY([CodPersona])
REFERENCES [dbo].[Persona] ([Codigo])
GO
ALTER TABLE [dbo].[Materia_Persona] CHECK CONSTRAINT [FK_Materia_Persona_Persona]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Localidad] FOREIGN KEY([CodLocalidad])
REFERENCES [dbo].[Localidad] ([Codigo])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Localidad]
GO
