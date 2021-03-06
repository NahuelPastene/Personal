USE [master]
GO
/****** Object:  Database [PersonalGcba]    Script Date: 13/7/2021 14:37:07 ******/
CREATE DATABASE [PersonalGcba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonalGcba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PersonalGcba.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PersonalGcba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PersonalGcba_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PersonalGcba] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PersonalGcba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PersonalGcba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PersonalGcba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PersonalGcba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PersonalGcba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PersonalGcba] SET ARITHABORT OFF 
GO
ALTER DATABASE [PersonalGcba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PersonalGcba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PersonalGcba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PersonalGcba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PersonalGcba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PersonalGcba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PersonalGcba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PersonalGcba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PersonalGcba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PersonalGcba] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PersonalGcba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PersonalGcba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PersonalGcba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PersonalGcba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PersonalGcba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PersonalGcba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PersonalGcba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PersonalGcba] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PersonalGcba] SET  MULTI_USER 
GO
ALTER DATABASE [PersonalGcba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PersonalGcba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PersonalGcba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PersonalGcba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PersonalGcba] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PersonalGcba] SET QUERY_STORE = OFF
GO
USE [PersonalGcba]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 13/7/2021 14:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[IdArea] [int] IDENTITY(1,1) NOT NULL,
	[NombreArea] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[IdArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 13/7/2021 14:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Dni] [int] NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Desarrollador] [nvarchar](2) NOT NULL,
	[Descripcion] [nvarchar](150) NOT NULL,
	[IdArea] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Areas] ON 

INSERT [dbo].[Areas] ([IdArea], [NombreArea]) VALUES (1, N'Recursos Humanos')
INSERT [dbo].[Areas] ([IdArea], [NombreArea]) VALUES (2, N'IT')
INSERT [dbo].[Areas] ([IdArea], [NombreArea]) VALUES (3, N'Administracion')
INSERT [dbo].[Areas] ([IdArea], [NombreArea]) VALUES (4, N'Seguridad')
SET IDENTITY_INSERT [dbo].[Areas] OFF
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Desarrollador], [Descripcion], [IdArea]) VALUES (1, N'Pablo', N'Perez', 31542569, CAST(N'1985-05-13' AS Date), N'Si', N'Ingreso en agosto de 2020', 2)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Desarrollador], [Descripcion], [IdArea]) VALUES (5, N'Juana', N'Rodriguez', 35458596, CAST(N'1990-08-17' AS Date), N'No', N'Ingreso en febrero de 2019', 1)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Desarrollador], [Descripcion], [IdArea]) VALUES (6, N'Rodrigo', N'Paez', 38002485, CAST(N'1992-09-01' AS Date), N'No', N'Ingreso en marzo de 2018', 3)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Desarrollador], [Descripcion], [IdArea]) VALUES (7, N'Matias', N'Lorenzo', 34256145, CAST(N'1989-07-15' AS Date), N'No', N'Ingreso en junio de 2020', 4)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Areas] FOREIGN KEY([IdArea])
REFERENCES [dbo].[Areas] ([IdArea])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Areas]
GO
