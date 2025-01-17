USE [Ejemplos_LUG]
GO
/****** Object:  Table [dbo].[Auto]    Script Date: 6/10/2020 08:30:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auto](
	[auto_id] [int] NOT NULL,
	[auto_marca] [varchar](50) NULL,
	[auto_modelo] [varchar](50) NULL,
	[auto_patente] [varchar](50) NULL,
	[auto_color] [varchar](50) NULL,
 CONSTRAINT [PK_Auto] PRIMARY KEY CLUSTERED 
(
	[auto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 6/10/2020 08:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[Persona_id] [int] NOT NULL,
	[Persona_nombre] [varchar](50) NULL,
	[Persona_apellido] [varchar](50) NULL,
	[Persona_direccion] [varchar](50) NULL,
	[Persona_saldo] [int] NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[Persona_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
