USE [master]
GO
/****** Object:  Database [Pizzeria_Da_Luigi]    Script Date: 10/8/2021 3:20:27 PM ******/
CREATE DATABASE [Pizzeria_Da_Luigi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pizzeria_Da_Luigi', FILENAME = N'C:\Users\tereza.simkova\Pizzeria_Da_Luigi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pizzeria_Da_Luigi_log', FILENAME = N'C:\Users\tereza.simkova\Pizzeria_Da_Luigi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pizzeria_Da_Luigi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET  MULTI_USER 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET QUERY_STORE = OFF
GO
USE [Pizzeria_Da_Luigi]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Pizzeria_Da_Luigi]
GO
/****** Object:  Table [dbo].[INGREDIENTE]    Script Date: 10/8/2021 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INGREDIENTE](
	[ID_INGREDIENTE] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](50) NULL,
	[COSTO] [decimal](7, 2) NULL,
	[QNT_MAGAZZINO] [int] NULL,
 CONSTRAINT [PK_INGREDIENTE] PRIMARY KEY CLUSTERED 
(
	[ID_INGREDIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PIZZA]    Script Date: 10/8/2021 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PIZZA](
	[ID_PIZZA] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](50) NULL,
	[PREZZO] [decimal](7, 2) NULL,
 CONSTRAINT [PK_PIZZA] PRIMARY KEY CLUSTERED 
(
	[ID_PIZZA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PIZZA_INGREDIENTE]    Script Date: 10/8/2021 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PIZZA_INGREDIENTE](
	[ID_PIZZA] [int] NULL,
	[ID_INGREDIENTE] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[INGREDIENTE] ON 

INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (1, N'POMODORO', CAST(1.20 AS Decimal(7, 2)), 25)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (2, N'MOZZARELLA', CAST(2.50 AS Decimal(7, 2)), 13)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (3, N'MOZZARELLA DI BUFALA', CAST(3.80 AS Decimal(7, 2)), 6)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (4, N'SPIANATA PICCANTE', CAST(2.20 AS Decimal(7, 2)), 5)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (5, N'FUNGHI', CAST(1.50 AS Decimal(7, 2)), 9)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (6, N'CARCIOFI', CAST(2.20 AS Decimal(7, 2)), 14)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (7, N'COTTO', CAST(0.50 AS Decimal(7, 2)), 7)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (8, N'OLIVE', CAST(1.20 AS Decimal(7, 2)), 4)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (9, N'FUNGHI PORCINI', CAST(3.50 AS Decimal(7, 2)), 16)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (10, N'STRACCHINO', CAST(1.50 AS Decimal(7, 2)), 2)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (11, N'SPECK', CAST(1.35 AS Decimal(7, 2)), 8)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (12, N'RUCOLA', CAST(0.52 AS Decimal(7, 2)), 5)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (13, N'GRANA', CAST(1.50 AS Decimal(7, 2)), 3)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (14, N'VERDURE DI STAGIONE', CAST(2.50 AS Decimal(7, 2)), 13)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (15, N'PATATE', CAST(1.00 AS Decimal(7, 2)), 20)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (16, N'SALSICCIA', CAST(2.20 AS Decimal(7, 2)), 6)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (17, N'POMODORINI', CAST(1.20 AS Decimal(7, 2)), 22)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (18, N'RICOTTA', CAST(1.80 AS Decimal(7, 2)), 2)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (19, N'PROVOLA', CAST(3.20 AS Decimal(7, 2)), 3)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (20, N'GORGONZOLA', CAST(2.20 AS Decimal(7, 2)), 1)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (21, N'POMODORO FRESCO', CAST(1.60 AS Decimal(7, 2)), 15)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (22, N'BASILICO', CAST(0.25 AS Decimal(7, 2)), 10)
INSERT [dbo].[INGREDIENTE] ([ID_INGREDIENTE], [NOME], [COSTO], [QNT_MAGAZZINO]) VALUES (23, N'BRESAOLA', CAST(3.20 AS Decimal(7, 2)), 4)
SET IDENTITY_INSERT [dbo].[INGREDIENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[PIZZA] ON 

INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (1, N'MARGHERITA', CAST(5.00 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (2, N'BUFALA', CAST(7.00 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (3, N'DIAVOLA', CAST(6.00 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (4, N'QUATRO STAGIONI', CAST(6.50 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (5, N'PORCINI', CAST(7.00 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (6, N'DIONISO', CAST(8.00 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (7, N'ORTOLANA', CAST(8.00 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (8, N'PATATE E SALSICIA', CAST(6.00 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (9, N'POMODORINI', CAST(6.00 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (10, N'QUATRO FORMAGGI', CAST(7.50 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (11, N'CAPRESE', CAST(7.50 AS Decimal(7, 2)))
INSERT [dbo].[PIZZA] ([ID_PIZZA], [NOME], [PREZZO]) VALUES (12, N'ZEUS', CAST(7.50 AS Decimal(7, 2)))
SET IDENTITY_INSERT [dbo].[PIZZA] OFF
GO
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (1, 1)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (1, 2)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (2, 1)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (2, 3)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (3, 1)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (3, 2)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (3, 4)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (4, 1)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (4, 2)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (4, 5)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (4, 6)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (4, 7)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (4, 8)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (5, 1)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (5, 2)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (5, 9)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (6, 1)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (5, 10)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (5, 11)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (5, 12)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (5, 13)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (6, 2)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (6, 14)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (7, 2)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (7, 15)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (7, 16)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (8, 2)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (8, 17)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (8, 18)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (9, 2)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (9, 19)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (9, 20)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (9, 13)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (10, 2)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (10, 21)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (10, 22)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (11, 2)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (11, 23)
INSERT [dbo].[PIZZA_INGREDIENTE] ([ID_PIZZA], [ID_INGREDIENTE]) VALUES (11, 12)
GO
ALTER TABLE [dbo].[PIZZA_INGREDIENTE]  WITH CHECK ADD  CONSTRAINT [FK_INGREDIENTE] FOREIGN KEY([ID_INGREDIENTE])
REFERENCES [dbo].[INGREDIENTE] ([ID_INGREDIENTE])
GO
ALTER TABLE [dbo].[PIZZA_INGREDIENTE] CHECK CONSTRAINT [FK_INGREDIENTE]
GO
ALTER TABLE [dbo].[PIZZA_INGREDIENTE]  WITH CHECK ADD  CONSTRAINT [FK_PIZZA] FOREIGN KEY([ID_PIZZA])
REFERENCES [dbo].[PIZZA] ([ID_PIZZA])
GO
ALTER TABLE [dbo].[PIZZA_INGREDIENTE] CHECK CONSTRAINT [FK_PIZZA]
GO
ALTER TABLE [dbo].[INGREDIENTE]  WITH CHECK ADD  CONSTRAINT [CHK_COSTO] CHECK  (([COSTO]>(0)))
GO
ALTER TABLE [dbo].[INGREDIENTE] CHECK CONSTRAINT [CHK_COSTO]
GO
ALTER TABLE [dbo].[INGREDIENTE]  WITH CHECK ADD  CONSTRAINT [CHK_QNT_MAGAZZINO] CHECK  (([QNT_MAGAZZINO]>=(0)))
GO
ALTER TABLE [dbo].[INGREDIENTE] CHECK CONSTRAINT [CHK_QNT_MAGAZZINO]
GO
ALTER TABLE [dbo].[PIZZA]  WITH CHECK ADD  CONSTRAINT [CHK_PREZZO] CHECK  (([PREZZO]>(0)))
GO
ALTER TABLE [dbo].[PIZZA] CHECK CONSTRAINT [CHK_PREZZO]
GO
/****** Object:  StoredProcedure [dbo].[ASSEGNA_ING_PIZZA]    Script Date: 10/8/2021 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ASSEGNA_ING_PIZZA]
@ID_PIZZA_FK INT,
@ID_INGREDIENTE_FK INT
AS
DECLARE @ID_PIZZA INT
DECLARE @ID_INGREDIENTE INT
SELECT @ID_PIZZA = ID_PIZZA FROM PIZZA 
SELECT @ID_INGREDIENTE = ID_INGREDIENTE FROM INGREDIENTE
INSERT INTO PIZZA_INGREDIENTE VALUES(@ID_PIZZA_FK,@ID_INGREDIENTE_FK);
GO
/****** Object:  StoredProcedure [dbo].[CHANGE_PREZZO]    Script Date: 10/8/2021 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CHANGE_PREZZO]
@NOMEPIZZA VARCHAR(50),
@PREZZO DECIMAL (7,2)
AS
BEGIN TRY
BEGIN TRAN
	DECLARE @ID_PIZZA INT
	SELECT @ID_PIZZA = ID_PIZZA FROM PIZZA
	UPDATE PIZZA SET PREZZO=@PREZZO WHERE ID_PIZZA=@ID_PIZZA
COMMIT TRAN
END TRY
BEGIN CATCH
	ROLLBACK TRAN;
	SELECT ERROR_LINE() AS ERRORLINE, ERROR_MESSAGE() AS [MESSAGGIO D'ERRORE]
END CATCH
	
GO
/****** Object:  StoredProcedure [dbo].[DELETE_ONE_ING]    Script Date: 10/8/2021 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DELETE_ONE_ING]
@NOME_ING varchar(50)
AS BEGIN
BEGIN TRY
BEGIN TRANSACTION
	DECLARE @ID_ING INT
	SELECT @ID_ING = ID_INGREDIENTE FROM INGREDIENTE WHERE NOME = @NOME_ING
	DELETE FROM PIZZA_INGREDIENTE where ID_INGREDIENTE=@ID_ING
		COMMIT TRAN;
END TRY
BEGIN CATCH
	ROLLBACK TRAN;
END CATCH
   SELECT ERROR_LINE() AS ERRORLINE, ERROR_MESSAGE() AS [MESSAGGIO D'ERRORE]
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INGREDIENTE]    Script Date: 10/8/2021 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INSERT_INGREDIENTE]
@NOME VARCHAR(50),
@COSTO DECIMAL(7,2),
@QNT_MAGAZZINO INT
AS
INSERT INTO INGREDIENTE VALUES(@NOME,@COSTO,@QNT_MAGAZZINO);
GO
/****** Object:  StoredProcedure [dbo].[INSERT_PIZZA]    Script Date: 10/8/2021 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INSERT_PIZZA]
@NOME VARCHAR(50),
@PREZZO DECIMAL(7,2)
AS
INSERT INTO PIZZA VALUES(@NOME,@PREZZO);
GO
USE [master]
GO
ALTER DATABASE [Pizzeria_Da_Luigi] SET  READ_WRITE 
GO
