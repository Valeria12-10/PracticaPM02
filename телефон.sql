USE [master]
GO
/****** Object:  Database [user09]    Script Date: 15.05.2024 11:25:26 ******/
CREATE DATABASE [user09]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'user09', FILENAME = N'/var/opt/mssql/data/user09.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'user09_log', FILENAME = N'/var/opt/mssql/data/user09_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [user09] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [user09].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [user09] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [user09] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [user09] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [user09] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [user09] SET ARITHABORT OFF 
GO
ALTER DATABASE [user09] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [user09] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [user09] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [user09] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [user09] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [user09] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [user09] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [user09] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [user09] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [user09] SET  ENABLE_BROKER 
GO
ALTER DATABASE [user09] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [user09] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [user09] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [user09] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [user09] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [user09] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [user09] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [user09] SET RECOVERY FULL 
GO
ALTER DATABASE [user09] SET  MULTI_USER 
GO
ALTER DATABASE [user09] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [user09] SET DB_CHAINING OFF 
GO
ALTER DATABASE [user09] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [user09] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [user09] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [user09] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [user09] SET QUERY_STORE = OFF
GO
USE [user09]
GO
/****** Object:  Table [dbo].[ГруппаКонтактов]    Script Date: 15.05.2024 11:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ГруппаКонтактов](
	[ID_ГруппаКонтактов] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](100) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID_ГруппаКонтактов] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Должность]    Script Date: 15.05.2024 11:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Должность](
	[ID_Должности] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](100) NULL,
 CONSTRAINT [PK_Должность] PRIMARY KEY CLUSTERED 
(
	[ID_Должности] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Контакты]    Script Date: 15.05.2024 11:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Контакты](
	[ID_Контакта] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](100) NULL,
	[Имя] [nvarchar](100) NULL,
	[Отчество] [nvarchar](100) NULL,
	[Номер телефона] [char](12) NULL,
	[E-mail] [nvarchar](100) NULL,
	[Компания] [nvarchar](100) NULL,
	[Должность] [int] NULL,
	[ГруппаКонтактов] [int] NULL,
	[Дата Рождения] [date] NULL,
	[Фотография] [nvarchar](100) NULL,
 CONSTRAINT [PK_Контакты] PRIMARY KEY CLUSTERED 
(
	[ID_Контакта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ГруппаКонтактов] ON 

INSERT [dbo].[ГруппаКонтактов] ([ID_ГруппаКонтактов], [Название]) VALUES (1, N'Родственники')
INSERT [dbo].[ГруппаКонтактов] ([ID_ГруппаКонтактов], [Название]) VALUES (2, N'Друзья')
INSERT [dbo].[ГруппаКонтактов] ([ID_ГруппаКонтактов], [Название]) VALUES (3, N'Коллеги')
SET IDENTITY_INSERT [dbo].[ГруппаКонтактов] OFF
GO
SET IDENTITY_INSERT [dbo].[Должность] ON 

INSERT [dbo].[Должность] ([ID_Должности], [Название]) VALUES (1, N'Директор')
INSERT [dbo].[Должность] ([ID_Должности], [Название]) VALUES (2, N'Менеджер')
INSERT [dbo].[Должность] ([ID_Должности], [Название]) VALUES (3, N'Бухгалтер')
SET IDENTITY_INSERT [dbo].[Должность] OFF
GO
SET IDENTITY_INSERT [dbo].[Контакты] ON 

INSERT [dbo].[Контакты] ([ID_Контакта], [Фамилия], [Имя], [Отчество], [Номер телефона], [E-mail], [Компания], [Должность], [ГруппаКонтактов], [Дата Рождения], [Фотография]) VALUES (12, N'Иванов', N'Иван', N'Иванович', N'+79226546699', N'ivanov@mail.ru', N'ООО Рога и Копыта', 1, 1, CAST(N'1980-01-01' AS Date), N'ivan.jpg')
INSERT [dbo].[Контакты] ([ID_Контакта], [Фамилия], [Имя], [Отчество], [Номер телефона], [E-mail], [Компания], [Должность], [ГруппаКонтактов], [Дата Рождения], [Фотография]) VALUES (13, N'Петрова', N'Мария', N'Петровна', N'+79215556789', N'petrova@gmail.com', N'ЗАО Альфа', 2, 2, CAST(N'1985-05-10' AS Date), N'maria.jpg')
INSERT [dbo].[Контакты] ([ID_Контакта], [Фамилия], [Имя], [Отчество], [Номер телефона], [E-mail], [Компания], [Должность], [ГруппаКонтактов], [Дата Рождения], [Фотография]) VALUES (14, N'Сидоров', N'Сергей', N'Сергеевич', N'+79234445678', N'sidorov@yandex.ru', N'ИП Сидоров С.С.', 3, 3, CAST(N'1990-03-15' AS Date), N'sergey.jpg')
INSERT [dbo].[Контакты] ([ID_Контакта], [Фамилия], [Имя], [Отчество], [Номер телефона], [E-mail], [Компания], [Должность], [ГруппаКонтактов], [Дата Рождения], [Фотография]) VALUES (15, N'Кузнецова', N'Екатерина', N'Александровна', N'+79112223344', N'kuznetsova@mail.ru', N'ООО Бета', 1, 1, CAST(N'1988-07-20' AS Date), N'ekaterina.jpg')
INSERT [dbo].[Контакты] ([ID_Контакта], [Фамилия], [Имя], [Отчество], [Номер телефона], [E-mail], [Компания], [Должность], [ГруппаКонтактов], [Дата Рождения], [Фотография]) VALUES (16, N'Попов', N'Александр', N'Михайлович', N'+79251112233', N'popov@gmail.com', N'ЗАО Гамма', 2, 3, CAST(N'1982-12-05' AS Date), N'alexander.jpg')
INSERT [dbo].[Контакты] ([ID_Контакта], [Фамилия], [Имя], [Отчество], [Номер телефона], [E-mail], [Компания], [Должность], [ГруппаКонтактов], [Дата Рождения], [Фотография]) VALUES (17, N'Смирнова', N'Ирина', N'Игоревна', N'+79266667788', N'smirnova@yandex.ru', N'ИП Смирнова И.И.', 3, 2, CAST(N'1995-06-18' AS Date), N'irina.jpg')
INSERT [dbo].[Контакты] ([ID_Контакта], [Фамилия], [Имя], [Отчество], [Номер телефона], [E-mail], [Компания], [Должность], [ГруппаКонтактов], [Дата Рождения], [Фотография]) VALUES (18, N'Орлов', N'Дмитрий', N'Викторович', N'+79277778899', N'orlov@mail.ru', N'ООО Дельта', 1, 3, CAST(N'1986-09-22' AS Date), N'dmitriy.jpg')
INSERT [dbo].[Контакты] ([ID_Контакта], [Фамилия], [Имя], [Отчество], [Номер телефона], [E-mail], [Компания], [Должность], [ГруппаКонтактов], [Дата Рождения], [Фотография]) VALUES (19, N'Соколова', N'Юлия', N'Борисовна', N'+79288889900', N'sokolova@gmail.com', N'ЗАО Эпсилон', 2, 1, CAST(N'1992-02-14' AS Date), N'julia.jpg')
INSERT [dbo].[Контакты] ([ID_Контакта], [Фамилия], [Имя], [Отчество], [Номер телефона], [E-mail], [Компания], [Должность], [ГруппаКонтактов], [Дата Рождения], [Фотография]) VALUES (20, N'Морозов', N'Андрей', N'Петрович', N'+79299990011', N'morozov@yandex.ru', N'ИП Морозов А.П.', 3, 3, CAST(N'1989-10-01' AS Date), N'andrey.jpg')
INSERT [dbo].[Контакты] ([ID_Контакта], [Фамилия], [Имя], [Отчество], [Номер телефона], [E-mail], [Компания], [Должность], [ГруппаКонтактов], [Дата Рождения], [Фотография]) VALUES (21, N'Волкова', N'Наталья', N'Сергеевна', N'+79300001122', N'volkova@mail.ru', N'ООО Зета', 1, 2, CAST(N'1993-04-05' AS Date), N'natalya.jpg')
SET IDENTITY_INSERT [dbo].[Контакты] OFF
GO
ALTER TABLE [dbo].[Контакты]  WITH CHECK ADD  CONSTRAINT [FK_Контакты_ГруппаКонтактов1] FOREIGN KEY([ГруппаКонтактов])
REFERENCES [dbo].[ГруппаКонтактов] ([ID_ГруппаКонтактов])
GO
ALTER TABLE [dbo].[Контакты] CHECK CONSTRAINT [FK_Контакты_ГруппаКонтактов1]
GO
ALTER TABLE [dbo].[Контакты]  WITH CHECK ADD  CONSTRAINT [FK_Контакты_Должность1] FOREIGN KEY([Должность])
REFERENCES [dbo].[Должность] ([ID_Должности])
GO
ALTER TABLE [dbo].[Контакты] CHECK CONSTRAINT [FK_Контакты_Должность1]
GO
USE [master]
GO
ALTER DATABASE [user09] SET  READ_WRITE 
GO
