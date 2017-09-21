USE [master]
GO
/****** Object:  Database [HRDataBase]    Script Date: 05.04.2017 12:29:00 ******/
CREATE DATABASE [HRDataBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRDataBase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\HRDataBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HRDataBase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\HRDataBase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HRDataBase] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRDataBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRDataBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HRDataBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HRDataBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HRDataBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HRDataBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [HRDataBase] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HRDataBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HRDataBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HRDataBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HRDataBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HRDataBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HRDataBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HRDataBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HRDataBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HRDataBase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HRDataBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HRDataBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HRDataBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HRDataBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HRDataBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HRDataBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HRDataBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HRDataBase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HRDataBase] SET  MULTI_USER 
GO
ALTER DATABASE [HRDataBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HRDataBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HRDataBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HRDataBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HRDataBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HRDataBase] SET QUERY_STORE = OFF
GO
USE [HRDataBase]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [HRDataBase]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[EducationId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[SpecialityName] [varchar](100) NULL,
	[EducationalInstitutionName] [varchar](100) NULL,
	[StartDate] [date] NULL,
	[FinishDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[EducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Interview]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interview](
	[InterviewId] [int] NOT NULL,
	[PersonId] [int] NULL,
	[InterviewDate] [date] NULL,
	[Point] [int] NULL,
	[Comment] [varchar](1000) NULL,
	[FileResume] [varchar](200) NULL,
	[FileTest] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[InterviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Job]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobId] [int] NOT NULL,
	[PersonId] [int] NULL,
	[JobName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Knowledge_of_language]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Knowledge_of_language](
	[LanguageId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[TypeLanguageId] [int] NOT NULL,
	[LanguageLevelId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language_level]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language_level](
	[LanguageLevelId] [int] NOT NULL,
	[LanguageLevelName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[LanguageLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Birthday] [date] NULL,
	[City] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Salary] [int] NULL,
	[WorkExpireance] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersonTypeJob]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonTypeJob](
	[PersonTypeJobId] [int] NOT NULL,
	[TypeJobId] [int] NULL,
	[PersonId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonTypeJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProffesionalSkill]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProffesionalSkill](
	[ProfessionalSkillId] [int] NOT NULL,
	[SkillName] [varchar](100) NULL,
	[PersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProfessionalSkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeJob]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeJob](
	[TypeJobId] [int] NOT NULL,
	[TypeJobName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeLanguage]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeLanguage](
	[TypeLanguageId] [int] NOT NULL,
	[LanguageName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Work_experience]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_experience](
	[WorkExperienceId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[PositionName] [varchar](100) NULL,
	[CompanyName] [varchar](100) NULL,
	[StartDate] [date] NULL,
	[FinishDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (1, 12, N'justo in hac habitasse platea', N'dui luctus', CAST(N'2017-03-02' AS Date), CAST(N'2016-11-15' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (2, 13, N'lobortis sapien sapien', N'posuere cubilia curae duis faucibus', CAST(N'2016-09-09' AS Date), CAST(N'2016-08-11' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (3, 6, N'id luctus nec', N'etiam justo etiam pretium iaculis justo', CAST(N'2017-03-07' AS Date), CAST(N'2016-12-22' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (4, 7, N'tortor risus dapibus', N'in hac habitasse platea dictumst aliquam', CAST(N'2016-04-14' AS Date), CAST(N'2016-08-22' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (5, 1, N'risus praesent lectus vestibulum quam', N'duis aliquam convallis nunc', CAST(N'2016-06-03' AS Date), CAST(N'2016-11-11' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (6, 17, N'cras mi', N'auctor gravida sem praesent id', CAST(N'2016-10-26' AS Date), CAST(N'2016-11-06' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (7, 14, N'fringilla rhoncus', N'cubilia curae', CAST(N'2016-09-24' AS Date), CAST(N'2016-05-15' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (8, 3, N'magna vestibulum aliquet', N'porttitor lacus', CAST(N'2017-02-08' AS Date), CAST(N'2017-03-31' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (9, 15, N'nullam sit', N'velit nec nisi', CAST(N'2016-05-15' AS Date), CAST(N'2016-08-30' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (10, 4, N'posuere cubilia', N'vulputate luctus cum sociis natoque penatibus et', CAST(N'2016-10-22' AS Date), CAST(N'2016-12-03' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (11, 4, N'non mi integer', N'mollis molestie lorem quisque ut', CAST(N'2016-11-28' AS Date), CAST(N'2016-05-03' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (12, 19, N'sapien quis libero nullam', N'blandit nam nulla', CAST(N'2016-11-26' AS Date), CAST(N'2016-11-23' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (13, 19, N'fusce congue diam id ornare', N'rhoncus sed vestibulum sit amet cursus id', CAST(N'2016-05-17' AS Date), CAST(N'2016-11-21' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (14, 1, N'sapien quis libero nullam sit', N'purus phasellus', CAST(N'2016-09-17' AS Date), CAST(N'2016-09-29' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (15, 16, N'morbi non quam', N'eget eros elementum pellentesque quisque', CAST(N'2016-05-21' AS Date), CAST(N'2017-02-19' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (16, 4, N'eget congue eget semper', N'suscipit ligula in lacus curabitur at', CAST(N'2016-06-27' AS Date), CAST(N'2016-09-25' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (17, 12, N'sollicitudin ut suscipit', N'aliquam non mauris morbi non lectus', CAST(N'2016-06-10' AS Date), CAST(N'2016-07-01' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (18, 7, N'praesent id', N'lacus purus aliquet at feugiat', CAST(N'2016-07-10' AS Date), CAST(N'2016-11-24' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (19, 12, N'mauris morbi', N'ut nulla', CAST(N'2016-06-10' AS Date), CAST(N'2016-11-05' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (20, 14, N'convallis morbi odio odio elementum', N'tempor turpis nec', CAST(N'2016-11-28' AS Date), CAST(N'2016-09-03' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (21, 7, N'pharetra magna vestibulum', N'ipsum primis in faucibus orci luctus', CAST(N'2016-12-07' AS Date), CAST(N'2016-08-24' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (22, 2, N'viverra diam vitae', N'venenatis lacinia', CAST(N'2017-02-23' AS Date), CAST(N'2016-06-13' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (23, 18, N'tellus nisi eu orci', N'curae duis faucibus accumsan', CAST(N'2016-12-17' AS Date), CAST(N'2017-03-12' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (24, 7, N'massa donec', N'purus eu', CAST(N'2016-09-05' AS Date), CAST(N'2016-10-14' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (25, 11, N'mi pede malesuada in imperdiet', N'viverra dapibus nulla', CAST(N'2017-03-14' AS Date), CAST(N'2016-06-19' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (26, 1, N'nibh quisque id justo sit', N'et ultrices', CAST(N'2016-06-21' AS Date), CAST(N'2016-07-29' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (27, 19, N'sit amet diam in', N'erat curabitur', CAST(N'2016-05-03' AS Date), CAST(N'2016-12-17' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (28, 20, N'justo eu massa', N'in lectus pellentesque at', CAST(N'2016-11-25' AS Date), CAST(N'2017-03-05' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (29, 4, N'sapien non mi integer ac', N'nunc purus phasellus in felis donec', CAST(N'2016-10-03' AS Date), CAST(N'2016-06-10' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (30, 13, N'habitasse platea', N'ut suscipit a feugiat et eros', CAST(N'2016-07-09' AS Date), CAST(N'2016-08-11' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (31, 17, N'nulla mollis molestie', N'lorem vitae', CAST(N'2017-03-10' AS Date), CAST(N'2017-01-27' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (32, 7, N'suspendisse potenti nullam porttitor', N'aliquam augue quam sollicitudin', CAST(N'2016-08-03' AS Date), CAST(N'2017-01-05' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (33, 1, N'orci luctus et ultrices posuere', N'duis at velit eu est', CAST(N'2017-01-09' AS Date), CAST(N'2016-08-27' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (34, 14, N'nulla tempus', N'lacinia eget tincidunt eget tempus vel pede', CAST(N'2016-11-22' AS Date), CAST(N'2016-10-14' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (35, 6, N'aliquam augue', N'porttitor id consequat in', CAST(N'2016-05-08' AS Date), CAST(N'2016-10-05' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (36, 12, N'dictumst morbi vestibulum velit id', N'hac habitasse platea dictumst morbi vestibulum velit', CAST(N'2016-09-11' AS Date), CAST(N'2017-03-15' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (37, 5, N'tortor quis turpis sed', N'nascetur ridiculus mus vivamus vestibulum', CAST(N'2017-02-02' AS Date), CAST(N'2016-06-10' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (38, 5, N'eget rutrum at lorem integer', N'neque vestibulum eget vulputate ut ultrices vel', CAST(N'2016-09-25' AS Date), CAST(N'2016-04-28' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (39, 13, N'nisl nunc', N'imperdiet nullam orci pede venenatis', CAST(N'2016-12-14' AS Date), CAST(N'2017-01-15' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (40, 7, N'rhoncus mauris', N'in hac habitasse platea dictumst aliquam', CAST(N'2016-10-23' AS Date), CAST(N'2017-01-14' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (41, 1, N'sollicitudin ut suscipit', N'enim blandit mi in', CAST(N'2017-01-31' AS Date), CAST(N'2016-05-07' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (42, 3, N'sed tincidunt eu', N'eget vulputate ut ultrices vel', CAST(N'2016-05-12' AS Date), CAST(N'2017-03-24' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (43, 8, N'nunc viverra dapibus nulla suscipit', N'pellentesque at nulla suspendisse', CAST(N'2017-01-21' AS Date), CAST(N'2016-06-21' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (44, 13, N'vivamus in felis', N'at nibh in', CAST(N'2016-10-15' AS Date), CAST(N'2017-03-12' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (45, 16, N'libero non mattis', N'vel augue vestibulum', CAST(N'2017-01-22' AS Date), CAST(N'2016-04-11' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (46, 4, N'odio justo sollicitudin', N'amet justo morbi ut odio', CAST(N'2016-07-16' AS Date), CAST(N'2016-07-22' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (47, 18, N'aliquam convallis nunc proin at', N'at velit', CAST(N'2016-11-05' AS Date), CAST(N'2017-01-03' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (48, 15, N'odio condimentum', N'eleifend quam a', CAST(N'2016-10-11' AS Date), CAST(N'2016-04-09' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (49, 10, N'sit amet nulla quisque arcu', N'potenti cras in purus eu magna', CAST(N'2016-09-18' AS Date), CAST(N'2017-03-31' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (50, 19, N'nullam porttitor lacus at turpis', N'lorem vitae mattis nibh ligula nec sem', CAST(N'2016-06-18' AS Date), CAST(N'2016-08-02' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (51, 8, N'lobortis est phasellus', N'suscipit nulla elit ac nulla sed vel', CAST(N'2016-10-14' AS Date), CAST(N'2016-12-24' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (52, 13, N'etiam vel', N'proin eu mi nulla ac', CAST(N'2016-04-23' AS Date), CAST(N'2017-01-17' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (53, 14, N'arcu sed augue aliquam', N'eget nunc donec quis orci eget orci', CAST(N'2016-10-10' AS Date), CAST(N'2016-10-08' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (54, 15, N'purus aliquet', N'amet erat nulla tempus vivamus', CAST(N'2016-10-12' AS Date), CAST(N'2016-08-21' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (55, 20, N'ligula nec', N'dui vel sem sed sagittis', CAST(N'2016-12-17' AS Date), CAST(N'2017-01-17' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (56, 19, N'erat curabitur gravida nisi', N'pellentesque at nulla suspendisse potenti cras', CAST(N'2016-06-29' AS Date), CAST(N'2016-09-08' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (57, 8, N'proin eu mi nulla', N'vestibulum velit id pretium iaculis diam erat', CAST(N'2016-06-07' AS Date), CAST(N'2016-08-29' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (58, 2, N'donec odio justo sollicitudin ut', N'ac nibh', CAST(N'2016-08-26' AS Date), CAST(N'2017-02-27' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (59, 1, N'quisque erat', N'mus vivamus vestibulum sagittis sapien cum', CAST(N'2016-04-29' AS Date), CAST(N'2017-02-16' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (60, 5, N'ligula suspendisse ornare', N'pellentesque viverra pede', CAST(N'2016-10-23' AS Date), CAST(N'2017-03-13' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (61, 20, N'turpis integer aliquet massa id', N'hac habitasse', CAST(N'2016-11-17' AS Date), CAST(N'2016-05-08' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (62, 15, N'velit id pretium iaculis diam', N'sit amet cursus id turpis integer', CAST(N'2016-11-20' AS Date), CAST(N'2016-05-09' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (63, 3, N'mi sit amet lobortis', N'felis ut at dolor quis odio consequat', CAST(N'2016-08-29' AS Date), CAST(N'2016-07-08' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (64, 19, N'pede posuere nonummy', N'tempus vivamus in felis', CAST(N'2017-03-11' AS Date), CAST(N'2017-01-25' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (65, 13, N'integer aliquet massa id lobortis', N'massa id lobortis convallis tortor', CAST(N'2016-09-04' AS Date), CAST(N'2016-04-14' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (66, 12, N'quis orci eget', N'vel enim sit amet nunc', CAST(N'2016-08-19' AS Date), CAST(N'2016-10-13' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (67, 16, N'quis augue luctus', N'est quam pharetra', CAST(N'2016-06-09' AS Date), CAST(N'2016-11-12' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (68, 20, N'consectetuer eget rutrum at', N'ipsum aliquam', CAST(N'2017-02-01' AS Date), CAST(N'2016-09-05' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (69, 19, N'id consequat in consequat ut', N'luctus nec molestie sed', CAST(N'2017-03-06' AS Date), CAST(N'2016-07-27' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (70, 15, N'in congue etiam', N'aliquam sit amet diam in magna bibendum', CAST(N'2016-11-14' AS Date), CAST(N'2017-03-14' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (71, 14, N'congue risus', N'tellus semper interdum mauris ullamcorper', CAST(N'2016-09-25' AS Date), CAST(N'2016-10-15' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (72, 19, N'elementum pellentesque quisque porta volutpat', N'fusce consequat nulla nisl nunc nisl duis', CAST(N'2016-04-15' AS Date), CAST(N'2016-07-18' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (73, 8, N'orci luctus', N'odio donec vitae nisi nam ultrices', CAST(N'2016-10-07' AS Date), CAST(N'2016-08-31' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (74, 8, N'vestibulum sit', N'tellus semper interdum mauris ullamcorper purus sit', CAST(N'2016-07-29' AS Date), CAST(N'2016-08-18' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (75, 15, N'quis turpis eget', N'ipsum primis in faucibus orci luctus', CAST(N'2016-10-09' AS Date), CAST(N'2016-06-06' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (76, 13, N'elementum nullam varius nulla', N'purus aliquet', CAST(N'2016-04-12' AS Date), CAST(N'2016-07-02' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (77, 19, N'non quam nec dui', N'nulla nisl nunc nisl duis bibendum', CAST(N'2016-08-10' AS Date), CAST(N'2016-10-31' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (78, 11, N'morbi vestibulum velit id', N'vestibulum sed magna at nunc commodo placerat', CAST(N'2017-02-11' AS Date), CAST(N'2017-02-26' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (79, 6, N'nulla justo', N'hac habitasse platea dictumst', CAST(N'2016-08-24' AS Date), CAST(N'2016-08-24' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (80, 8, N'imperdiet et commodo vulputate', N'eget eleifend luctus', CAST(N'2016-08-27' AS Date), CAST(N'2016-05-01' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (81, 14, N'sit amet nunc', N'phasellus in felis donec semper sapien', CAST(N'2016-04-14' AS Date), CAST(N'2017-03-03' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (82, 18, N'maecenas pulvinar lobortis est', N'sit amet turpis elementum ligula vehicula consequat', CAST(N'2016-04-23' AS Date), CAST(N'2016-06-12' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (83, 4, N'leo pellentesque ultrices', N'ante vestibulum ante ipsum', CAST(N'2016-09-29' AS Date), CAST(N'2016-12-28' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (84, 6, N'sit amet consectetuer adipiscing', N'mauris morbi non lectus aliquam sit', CAST(N'2016-05-27' AS Date), CAST(N'2016-05-02' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (85, 15, N'elit ac nulla sed vel', N'proin interdum', CAST(N'2016-11-02' AS Date), CAST(N'2016-11-10' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (86, 13, N'donec dapibus', N'at turpis donec posuere metus vitae', CAST(N'2017-02-10' AS Date), CAST(N'2016-05-08' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (87, 9, N'ac diam', N'faucibus cursus urna ut tellus', CAST(N'2016-05-16' AS Date), CAST(N'2016-09-21' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (88, 17, N'lacinia erat', N'curabitur at ipsum ac tellus semper', CAST(N'2017-01-24' AS Date), CAST(N'2016-08-05' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (89, 5, N'lectus pellentesque', N'proin interdum mauris non ligula pellentesque ultrices', CAST(N'2017-02-12' AS Date), CAST(N'2016-06-08' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (90, 18, N'consequat lectus in est', N'ut tellus nulla ut', CAST(N'2016-11-02' AS Date), CAST(N'2017-03-27' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (91, 18, N'risus dapibus augue vel accumsan', N'rhoncus aliquam lacus morbi quis tortor', CAST(N'2017-01-19' AS Date), CAST(N'2016-10-29' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (92, 20, N'non mi', N'aliquet at feugiat non', CAST(N'2017-03-26' AS Date), CAST(N'2016-05-19' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (93, 3, N'iaculis congue vivamus metus arcu', N'feugiat non pretium quis lectus suspendisse potenti', CAST(N'2016-10-31' AS Date), CAST(N'2016-05-21' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (94, 6, N'consequat in', N'metus arcu adipiscing', CAST(N'2016-12-01' AS Date), CAST(N'2016-09-18' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (95, 3, N'nunc donec quis orci eget', N'etiam pretium', CAST(N'2016-11-11' AS Date), CAST(N'2016-06-01' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (96, 2, N'in purus eu magna vulputate', N'fusce lacus purus aliquet at feugiat', CAST(N'2017-02-05' AS Date), CAST(N'2016-12-07' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (97, 6, N'nunc proin at turpis a', N'cras non', CAST(N'2016-04-30' AS Date), CAST(N'2017-02-28' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (98, 7, N'lorem id ligula', N'ut erat id', CAST(N'2016-04-07' AS Date), CAST(N'2016-10-29' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (99, 2, N'sapien placerat ante', N'volutpat quam pede lobortis', CAST(N'2016-11-06' AS Date), CAST(N'2017-01-29' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (100, 6, N'at vulputate vitae nisl', N'lorem id ligula suspendisse ornare', CAST(N'2016-11-21' AS Date), CAST(N'2016-08-09' AS Date))
GO
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (1, 18, CAST(N'2016-04-16' AS Date), 41, N'amet erat nulla tempus', N'PedeAc.png', N'EtiamVel.txt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (2, 1, CAST(N'2017-03-18' AS Date), 82, N'ante ipsum primis in', N'EuMi.ppt', N'SociisNatoquePenatibus.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (3, 20, CAST(N'2017-03-23' AS Date), 98, N'praesent id massa id nisl venenatis lacinia aenean', N'Odio.avi', N'PedeMorbiPorttitor.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (4, 20, CAST(N'2016-10-31' AS Date), 26, N'tempor turpis nec euismod', N'UtVolutpat.xls', N'EgetRutrumAt.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (5, 9, CAST(N'2016-08-23' AS Date), 43, N'amet eros suspendisse accumsan tortor quis turpis', N'Pulvinar.xls', N'Diam.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (6, 13, CAST(N'2016-11-06' AS Date), 47, N'turpis a pede posuere', N'Suscipit.jpeg', N'PosuereCubilia.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (7, 1, CAST(N'2016-09-15' AS Date), 40, N'vitae nisl aenean lectus pellentesque', N'Aliquam.avi', N'Montes.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (8, 9, CAST(N'2016-09-07' AS Date), 28, N'eu sapien cursus vestibulum proin eu', N'Ac.jpeg', N'SemDuisAliquam.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (9, 5, CAST(N'2016-10-28' AS Date), 31, N'ligula in lacus curabitur at ipsum ac', N'VelitEu.avi', N'Posuere.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (10, 8, CAST(N'2016-09-19' AS Date), 93, N'nulla eget eros elementum', N'EratVestibulumSed.xls', N'MaecenasUt.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (11, 11, CAST(N'2017-02-21' AS Date), 92, N'accumsan tortor quis turpis sed ante', N'ErosVestibulum.tiff', N'NibhIn.doc')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (12, 15, CAST(N'2016-10-06' AS Date), 11, N'integer non velit donec diam neque vestibulum', N'FaucibusOrciLuctus.avi', N'Quis.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (13, 13, CAST(N'2017-03-05' AS Date), 79, N'ante vestibulum ante ipsum primis', N'IntegerPede.ppt', N'Est.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (14, 6, CAST(N'2016-12-03' AS Date), 14, N'duis bibendum morbi non quam nec dui luctus', N'Aliquam.ppt', N'AcEnim.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (15, 10, CAST(N'2016-06-28' AS Date), 27, N'sit amet sapien dignissim vestibulum vestibulum', N'AugueLuctus.xls', N'SitAmet.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (16, 9, CAST(N'2016-04-23' AS Date), 49, N'convallis eget eleifend luctus ultricies eu nibh quisque', N'NequeVestibulum.pdf', N'MiIntegerAc.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (17, 10, CAST(N'2016-07-27' AS Date), 44, N'duis mattis egestas metus aenean fermentum donec ut', N'EnimLeo.ppt', N'Amet.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (18, 11, CAST(N'2016-06-07' AS Date), 5, N'fermentum justo nec condimentum neque sapien', N'VestibulumAnteIpsum.mp3', N'NonVelitDonec.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (19, 7, CAST(N'2016-07-26' AS Date), 71, N'ante vestibulum ante ipsum', N'Congue.avi', N'Sed.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (20, 9, CAST(N'2016-08-10' AS Date), 59, N'maecenas ut massa quis augue luctus tincidunt', N'EtiamPretium.ppt', N'Nulla.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (21, 6, CAST(N'2016-06-22' AS Date), 27, N'fusce posuere felis sed lacus', N'SedMagna.doc', N'AeneanLectus.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (22, 20, CAST(N'2016-07-14' AS Date), 86, N'mi integer ac neque duis bibendum morbi', N'IntegerANibh.mp3', N'Nisi.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (23, 16, CAST(N'2016-12-18' AS Date), 51, N'faucibus orci luctus et', N'SuscipitNulla.xls', N'CubiliaCuraeMauris.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (24, 18, CAST(N'2016-10-22' AS Date), 51, N'tristique in tempus sit amet', N'DapibusAugue.xls', N'PulvinarSed.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (25, 15, CAST(N'2016-11-01' AS Date), 99, N'vestibulum rutrum rutrum neque aenean auctor', N'UltricesPosuere.tiff', N'SitAmet.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (26, 4, CAST(N'2017-01-18' AS Date), 91, N'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', N'DisParturient.pdf', N'Faucibus.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (27, 15, CAST(N'2017-01-31' AS Date), 69, N'sociis natoque penatibus et magnis dis parturient montes', N'NullaMollis.mp3', N'Id.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (28, 5, CAST(N'2016-11-15' AS Date), 57, N'neque libero convallis eget', N'NonummyMaecenas.ppt', N'FeugiatEt.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (29, 12, CAST(N'2016-12-23' AS Date), 16, N'porta volutpat erat quisque erat eros viverra', N'ConvallisEget.xls', N'Velit.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (30, 15, CAST(N'2016-09-04' AS Date), 66, N'a feugiat et eros vestibulum ac', N'Rutrum.ppt', N'Est.gif')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (31, 1, CAST(N'2016-05-22' AS Date), 3, N'pellentesque ultrices phasellus id', N'Erat.xls', N'AccumsanTellus.jpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (32, 6, CAST(N'2016-07-30' AS Date), 25, N'pede malesuada in imperdiet', N'Nibh.mpeg', N'AmetNunc.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (33, 2, CAST(N'2016-10-22' AS Date), 53, N'purus sit amet nulla quisque arcu libero rutrum', N'PlateaDictumst.mp3', N'LeoOdio.mpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (34, 6, CAST(N'2016-09-19' AS Date), 94, N'ut at dolor quis odio consequat varius integer', N'Justo.gif', N'DonecPharetra.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (35, 13, CAST(N'2016-04-20' AS Date), 23, N'magna ac consequat metus sapien ut nunc', N'HendreritAtVulputate.tiff', N'SuscipitA.mov')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (36, 4, CAST(N'2016-09-28' AS Date), 59, N'tincidunt in leo maecenas pulvinar lobortis est', N'MattisEgestas.png', N'SodalesSed.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (37, 13, CAST(N'2016-10-27' AS Date), 54, N'cum sociis natoque penatibus et magnis dis', N'IdConsequat.png', N'InFelis.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (38, 13, CAST(N'2016-12-26' AS Date), 94, N'tempus vel pede morbi porttitor', N'NisiVenenatis.ppt', N'SitAmetNulla.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (39, 16, CAST(N'2016-08-03' AS Date), 57, N'aliquet pulvinar sed nisl nunc', N'LobortisEstPhasellus.avi', N'Molestie.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (40, 9, CAST(N'2016-07-05' AS Date), 22, N'dui vel nisl duis ac nibh fusce lacus', N'Ornare.ppt', N'Nulla.mov')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (41, 2, CAST(N'2016-07-13' AS Date), 100, N'sollicitudin ut suscipit a feugiat et eros vestibulum', N'Id.avi', N'UtMassaQuis.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (42, 5, CAST(N'2016-10-20' AS Date), 53, N'nisi eu orci mauris lacinia sapien', N'OrnareConsequat.xls', N'VulputateUt.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (43, 5, CAST(N'2016-08-06' AS Date), 5, N'porttitor id consequat in consequat ut nulla sed', N'Libero.mp3', N'PosuereCubiliaCurae.mpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (44, 10, CAST(N'2016-08-30' AS Date), 33, N'dapibus dolor vel est', N'InterdumMaurisUllamcorper.mp3', N'VestibulumAliquetUltrices.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (45, 20, CAST(N'2016-10-16' AS Date), 96, N'in est risus auctor sed tristique in tempus', N'ViverraEgetCongue.xls', N'EuEst.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (46, 20, CAST(N'2016-06-10' AS Date), 34, N'vulputate luctus cum sociis natoque penatibus et magnis', N'FaucibusOrciLuctus.doc', N'ProinEuMi.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (47, 6, CAST(N'2016-12-26' AS Date), 43, N'eget eros elementum pellentesque', N'Ut.jpeg', N'Vitae.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (48, 18, CAST(N'2017-03-23' AS Date), 76, N'odio porttitor id consequat in', N'VestibulumAnteIpsum.png', N'BlanditUltrices.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (49, 6, CAST(N'2016-10-11' AS Date), 4, N'augue vestibulum rutrum rutrum', N'AugueVestibulum.avi', N'Lobortis.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (50, 5, CAST(N'2016-08-20' AS Date), 14, N'morbi vel lectus in', N'Vulputate.avi', N'ParturientMontesNascetur.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (51, 6, CAST(N'2017-01-18' AS Date), 26, N'in libero ut massa volutpat', N'CrasNon.mp3', N'EleifendLuctus.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (52, 8, CAST(N'2017-03-22' AS Date), 33, N'ac nibh fusce lacus', N'In.tiff', N'Sagittis.gif')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (53, 15, CAST(N'2016-11-28' AS Date), 73, N'ac leo pellentesque ultrices mattis', N'Odio.avi', N'UltricesAliquet.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (54, 4, CAST(N'2017-01-25' AS Date), 72, N'non ligula pellentesque ultrices phasellus id', N'RisusPraesent.ppt', N'UtMassa.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (55, 5, CAST(N'2016-12-04' AS Date), 89, N'in leo maecenas pulvinar lobortis est phasellus', N'OdioDonec.xls', N'Curae.txt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (56, 15, CAST(N'2016-09-21' AS Date), 42, N'nam dui proin leo odio porttitor', N'SitAmetTurpis.txt', N'SitAmet.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (57, 2, CAST(N'2017-03-28' AS Date), 6, N'donec posuere metus vitae ipsum aliquam non mauris', N'AtDiamNam.ppt', N'Aliquet.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (58, 19, CAST(N'2017-03-24' AS Date), 23, N'quis orci nullam molestie nibh', N'Vivamus.mpeg', N'Nascetur.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (59, 2, CAST(N'2016-08-19' AS Date), 51, N'nibh in quis justo maecenas rhoncus aliquam lacus', N'AmetSem.avi', N'Ligula.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (60, 16, CAST(N'2016-09-11' AS Date), 46, N'est donec odio justo', N'AliquamSitAmet.xls', N'IntegerAc.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (61, 10, CAST(N'2016-04-06' AS Date), 91, N'libero quis orci nullam molestie nibh in lectus', N'Dapibus.xls', N'Potenti.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (62, 3, CAST(N'2016-11-29' AS Date), 53, N'ultrices enim lorem ipsum dolor sit amet', N'LobortisConvallis.mp3', N'Dictumst.png')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (63, 12, CAST(N'2016-11-13' AS Date), 93, N'integer ac leo pellentesque ultrices mattis', N'PenatibusEt.xls', N'EgetTempusVel.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (64, 4, CAST(N'2017-02-07' AS Date), 36, N'id consequat in consequat ut nulla', N'Lorem.txt', N'At.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (65, 13, CAST(N'2016-09-25' AS Date), 71, N'est congue elementum in hac habitasse platea', N'DictumstMorbiVestibulum.pdf', N'NuncDonec.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (66, 2, CAST(N'2016-10-06' AS Date), 12, N'suspendisse potenti nullam porttitor lacus', N'CuraeMaurisViverra.pdf', N'DiamCras.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (67, 17, CAST(N'2016-08-14' AS Date), 71, N'et ultrices posuere cubilia curae mauris', N'Praesent.avi', N'Fusce.jpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (68, 13, CAST(N'2016-04-22' AS Date), 33, N'massa quis augue luctus tincidunt nulla mollis', N'CrasMiPede.ppt', N'Ultrices.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (69, 10, CAST(N'2016-08-07' AS Date), 46, N'tempor turpis nec euismod scelerisque quam turpis adipiscing', N'LeoOdio.avi', N'Curabitur.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (70, 16, CAST(N'2016-11-22' AS Date), 5, N'ut at dolor quis odio consequat varius integer', N'AcTellus.pdf', N'CommodoVulputateJusto.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (71, 1, CAST(N'2016-05-31' AS Date), 45, N'ut suscipit a feugiat et eros vestibulum', N'PedeAc.avi', N'Elit.jpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (72, 4, CAST(N'2016-09-17' AS Date), 46, N'amet sapien dignissim vestibulum vestibulum ante', N'NullaTellus.ppt', N'AcEnimIn.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (73, 15, CAST(N'2016-05-16' AS Date), 46, N'iaculis diam erat fermentum justo nec condimentum neque', N'Morbi.mp3', N'AmetJusto.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (74, 6, CAST(N'2016-12-19' AS Date), 5, N'enim blandit mi in porttitor pede', N'DonecDiamNeque.avi', N'AuctorGravidaSem.jpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (75, 11, CAST(N'2017-01-21' AS Date), 50, N'in hac habitasse platea dictumst aliquam augue quam', N'NullaUt.mov', N'Pede.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (76, 20, CAST(N'2016-11-28' AS Date), 17, N'maecenas tristique est et tempus semper est quam', N'LacusAt.ppt', N'UltricesPosuere.jpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (77, 20, CAST(N'2016-04-12' AS Date), 54, N'adipiscing elit proin interdum mauris non', N'Risus.png', N'Convallis.txt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (78, 15, CAST(N'2016-04-29' AS Date), 4, N'pellentesque viverra pede ac diam', N'In.ppt', N'MagnaVulputateLuctus.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (79, 14, CAST(N'2016-07-22' AS Date), 81, N'rhoncus aliquam lacus morbi quis tortor', N'NonPretium.avi', N'Donec.jpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (80, 19, CAST(N'2016-12-03' AS Date), 7, N'sit amet eros suspendisse accumsan tortor quis turpis', N'PrimisInFaucibus.avi', N'ElementumNullamVarius.png')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (81, 2, CAST(N'2017-01-20' AS Date), 21, N'pede lobortis ligula sit amet', N'InTempus.mp3', N'Consequat.doc')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (82, 9, CAST(N'2016-10-19' AS Date), 12, N'fermentum donec ut mauris', N'PosuereCubiliaCurae.mp3', N'Ac.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (83, 5, CAST(N'2016-08-19' AS Date), 10, N'id lobortis convallis tortor risus dapibus augue', N'EstDonecOdio.xls', N'Elit.doc')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (84, 16, CAST(N'2016-07-01' AS Date), 4, N'libero convallis eget eleifend', N'Massa.png', N'NuncViverra.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (85, 15, CAST(N'2016-07-23' AS Date), 15, N'sed nisl nunc rhoncus dui', N'AIpsum.mp3', N'InHacHabitasse.gif')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (86, 13, CAST(N'2017-03-22' AS Date), 40, N'magna at nunc commodo placerat', N'Nulla.avi', N'Eget.gif')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (87, 18, CAST(N'2016-05-10' AS Date), 3, N'eros vestibulum ac est', N'Turpis.mp3', N'OdioDonecVitae.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (88, 12, CAST(N'2017-03-09' AS Date), 12, N'montes nascetur ridiculus mus etiam vel augue vestibulum', N'Vitae.avi', N'At.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (89, 1, CAST(N'2016-10-04' AS Date), 71, N'varius nulla facilisi cras non velit nec', N'PenatibusEt.xls', N'FermentumDonecUt.mov')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (90, 16, CAST(N'2016-04-24' AS Date), 84, N'eu felis fusce posuere felis sed lacus morbi', N'PedeUllamcorper.txt', N'Rhoncus.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (91, 5, CAST(N'2017-02-02' AS Date), 23, N'curabitur gravida nisi at', N'NullamOrciPede.avi', N'PellentesqueQuisque.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (92, 16, CAST(N'2016-10-02' AS Date), 44, N'eu magna vulputate luctus', N'Id.ppt', N'NullaSed.mpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (93, 15, CAST(N'2017-03-01' AS Date), 20, N'amet consectetuer adipiscing elit proin interdum mauris', N'MaurisEnimLeo.xls', N'VestibulumVestibulumAnte.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (94, 18, CAST(N'2016-06-11' AS Date), 81, N'tortor id nulla ultrices', N'Ante.mp3', N'InSapienIaculis.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (95, 9, CAST(N'2016-05-04' AS Date), 53, N'hac habitasse platea dictumst maecenas ut massa', N'Est.mp3', N'LacusCurabiturAt.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (96, 18, CAST(N'2016-12-21' AS Date), 46, N'sit amet lobortis sapien', N'EratNulla.jpeg', N'TinciduntLacusAt.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (97, 10, CAST(N'2017-01-11' AS Date), 35, N'dui luctus rutrum nulla', N'Ultrices.jpeg', N'AugueQuam.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (98, 4, CAST(N'2016-06-14' AS Date), 5, N'mi nulla ac enim in tempor turpis nec', N'PellentesqueAtNulla.txt', N'MetusArcuAdipiscing.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (99, 15, CAST(N'2016-09-08' AS Date), 36, N'convallis tortor risus dapibus', N'HacHabitassePlatea.avi', N'MaurisVulputate.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (100, 11, CAST(N'2017-02-21' AS Date), 6, N'velit vivamus vel nulla eget eros elementum pellentesque', N'Accumsan.mp3', N'JustoNecCondimentum.png')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (1, N'Shawn', N'Perry', CAST(N'2016-06-17' AS Date), N'Angelholm', N'sperry0@tinypic.com', N'46-(846)203-2672', 71, 51)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (2, N'Susan', N'Lee', CAST(N'2017-02-16' AS Date), N'Montreuil', N'slee1@accuweather.com', N'33-(974)940-7685', 89, 18.8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (3, N'Judy', N'Perkins', CAST(N'2017-03-10' AS Date), N'Wanquan', N'jperkins2@newsvine.com', N'86-(444)845-9379', 65, 68.8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (4, N'Tammy', N'Campbell', CAST(N'2017-01-02' AS Date), N'Lozova', N'tcampbell3@163.com', N'380-(743)405-1510', 78, 48)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (5, N'Arthur', N'Henderson', CAST(N'2016-04-15' AS Date), N'Sankanan', N'ahenderson4@zimbio.com', N'63-(486)892-5131', 30, 54.6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (6, N'Heather', N'Diaz', CAST(N'2016-12-28' AS Date), N'Banatsko Veliko Selo', N'hdiaz5@moonfruit.com', N'381-(132)424-8659', 33, 19.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (7, N'Sean', N'Chapman', CAST(N'2016-07-12' AS Date), N'Laau', N'schapman6@ehow.com', N'62-(961)337-8311', 25, 34)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (8, N'Christopher', N'Simmons', CAST(N'2016-10-23' AS Date), N'Cruzeiro do Sul', N'csimmons7@google.cn', N'55-(989)922-2950', 15, 97.7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (9, N'Roy', N'Fuller', CAST(N'2016-05-17' AS Date), N'Nalut', N'rfuller8@statcounter.com', N'218-(808)276-6571', 54, 8.7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (10, N'Louise', N'Freeman', CAST(N'2016-11-23' AS Date), N'Wangping', N'lfreeman9@gizmodo.com', N'86-(782)162-6240', 28, 15.2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (11, N'Kathryn', N'Austin', CAST(N'2017-01-15' AS Date), N'Datagon', N'kaustina@wisc.edu', N'63-(239)837-4968', 63, 18.3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (12, N'Howard', N'Hudson', CAST(N'2017-01-15' AS Date), N'San Antonio', N'hhudsonb@uiuc.edu', N'51-(482)545-9060', 54, 37.5)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (13, N'Mary', N'Kelly', CAST(N'2016-09-19' AS Date), N'Vila Fria', N'mkellyc@nytimes.com', N'351-(937)353-7070', 7, 11.3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (14, N'Jane', N'Mccoy', CAST(N'2016-05-29' AS Date), N'Ampara', N'jmccoyd@eepurl.com', N'94-(637)855-2903', 89, 53.3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (15, N'Elizabeth', N'Chapman', CAST(N'2016-08-07' AS Date), N'San Isidro', N'echapmane@posterous.com', N'52-(687)200-7901', 93, 3.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (16, N'Annie', N'Baker', CAST(N'2016-08-05' AS Date), N'Taby', N'abakerf@gravatar.com', N'46-(869)201-5908', 83, 4.3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (17, N'Joseph', N'Harvey', CAST(N'2016-04-04' AS Date), N'Monrovia', N'jharveyg@rediff.com', N'231-(759)261-2513', 97, 76.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (18, N'Ruby', N'Fox', CAST(N'2017-01-05' AS Date), N'Altagracia de Orituco', N'rfoxh@bluehost.com', N'58-(304)144-8429', 22, 44.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (19, N'Doris', N'Mitchell', CAST(N'2016-08-23' AS Date), N'Visnjevac', N'dmitchelli@macromedia.com', N'385-(706)210-6254', 48, 4.6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (20, N'Diane', N'James', CAST(N'2016-10-10' AS Date), N'Richmond', N'djamesj@msu.edu', N'27-(520)743-2759', 65, 8.7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (21, N'Ernest', N'Reed', CAST(N'2016-04-08' AS Date), N'Zhucun', N'ereedk@loc.gov', N'86-(579)195-4510', 25, 28)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (22, N'Victor', N'Flores', CAST(N'2016-04-23' AS Date), N'Kabac', N'vfloresl@de.vu', N'63-(888)723-2074', 1, 51.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (23, N'Laura', N'Brown', CAST(N'2016-10-16' AS Date), N'Ejidal', N'lbrownm@yolasite.com', N'52-(646)163-8794', 53, 39.2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (24, N'Diana', N'Harris', CAST(N'2017-03-03' AS Date), N'Longtian', N'dharrisn@businessweek.com', N'86-(325)637-5706', 68, 85.6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (25, N'Angela', N'Kim', CAST(N'2016-11-08' AS Date), N'Vilhena', N'akimo@eventbrite.com', N'55-(548)582-4084', 64, 29.3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (26, N'Ruth', N'Martinez', CAST(N'2016-08-16' AS Date), N'Georgetown', N'rmartinezp@e-recht24.de', N'220-(704)637-9160', 48, 17.7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (27, N'Amy', N'Jones', CAST(N'2016-06-14' AS Date), N'Pijao', N'ajonesq@noaa.gov', N'57-(903)175-6725', 50, 71.2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (28, N'Wanda', N'Dixon', CAST(N'2017-01-12' AS Date), N'Arvika', N'wdixonr@sun.com', N'46-(483)971-1497', 65, 37.4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (29, N'Teresa', N'Sims', CAST(N'2016-06-02' AS Date), N'Biggar', N'tsimss@tamu.edu', N'1-(147)977-0462', 6, 70.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (30, N'Pamela', N'Phillips', CAST(N'2016-04-17' AS Date), N'Cachira', N'pphillipst@engadget.com', N'57-(745)432-3930', 68, 4.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (31, N'Robert', N'Ross', CAST(N'2016-09-18' AS Date), N'Heilongkou', N'rrossu@artisteer.com', N'86-(961)498-9145', 95, 68.2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (32, N'Sean', N'West', CAST(N'2017-03-04' AS Date), N'Ciwidara', N'swestv@foxnews.com', N'62-(708)754-7791', 25, 60.4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (33, N'Doris', N'Banks', CAST(N'2017-04-01' AS Date), N'Santa Elena de Uairen', N'dbanksw@wikimedia.org', N'58-(993)108-6279', 44, 43.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (34, N'Nicholas', N'Holmes', CAST(N'2016-08-18' AS Date), N'Zhengguo', N'nholmesx@flickr.com', N'86-(345)582-6786', 70, 26.4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (35, N'Jason', N'Williams', CAST(N'2016-07-09' AS Date), N'Majie', N'jwilliamsy@digg.com', N'86-(906)598-7409', 5, 10.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (36, N'Laura', N'Arnold', CAST(N'2016-10-05' AS Date), N'Shaami-Yurt', N'larnoldz@imageshack.us', N'7-(297)512-0080', 72, 32.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (37, N'Linda', N'Rodriguez', CAST(N'2017-02-18' AS Date), N'Mulhouse', N'lrodriguez10@eepurl.com', N'33-(402)676-9201', 16, 26)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (38, N'Tina', N'Kennedy', CAST(N'2016-04-15' AS Date), N'Rumenka', N'tkennedy11@bloglines.com', N'381-(633)139-4052', 48, 74.4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (39, N'Howard', N'White', CAST(N'2016-11-02' AS Date), N'Florida', N'hwhite12@ihg.com', N'53-(769)795-4525', 52, 45)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (40, N'Billy', N'Andrews', CAST(N'2017-01-18' AS Date), N'Arkalyk', N'bandrews13@gov.uk', N'7-(653)627-8239', 44, 43.4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (41, N'Jeremy', N'Kim', CAST(N'2016-07-01' AS Date), N'Tres Lagoas', N'jkim14@unesco.org', N'55-(774)638-8162', 95, 1.2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (42, N'Joyce', N'Jenkins', CAST(N'2016-12-02' AS Date), N'Pancalan', N'jjenkins15@reverbnation.com', N'62-(159)168-5547', 86, 59.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (43, N'Karen', N'Rose', CAST(N'2016-05-08' AS Date), N'Shobu', N'krose16@reddit.com', N'81-(658)922-7912', 3, 78.2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (44, N'Samuel', N'Little', CAST(N'2016-08-18' AS Date), N'Zilang', N'slittle17@furl.net', N'86-(760)613-7409', 53, 93)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (45, N'Virginia', N'Burton', CAST(N'2017-01-30' AS Date), N'Homa Bay', N'vburton18@facebook.com', N'254-(648)342-4805', 25, 37.5)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (46, N'Alice', N'Moore', CAST(N'2016-11-15' AS Date), N'Chitcani', N'amoore19@histats.com', N'373-(551)464-5407', 34, 36.4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (47, N'Ann', N'Moore', CAST(N'2016-07-28' AS Date), N'Palpala', N'amoore1a@mayoclinic.com', N'54-(715)403-6027', 81, 79.4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (48, N'Denise', N'Mcdonald', CAST(N'2017-02-27' AS Date), N'Pahonjean', N'dmcdonald1b@themeforest.net', N'62-(395)375-1717', 80, 11.6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (49, N'Steve', N'Rivera', CAST(N'2016-12-17' AS Date), N'Say?ut', N'srivera1c@prlog.org', N'967-(903)142-6397', 33, 92.6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (50, N'Nicholas', N'Mills', CAST(N'2016-05-04' AS Date), N'Sumberrejo', N'nmills1d@wikia.com', N'62-(836)813-5171', 24, 1.3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (51, N'Ashley', N'Pierce', CAST(N'2016-07-14' AS Date), N'Adelaide Mail Centre', N'apierce1e@blogtalkradio.com', N'61-(535)725-9226', 34, 36.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (52, N'Susan', N'Vasquez', CAST(N'2017-03-12' AS Date), N'Liudaogou', N'svasquez1f@dailymotion.com', N'86-(840)608-7991', 39, 7.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (53, N'Rachel', N'King', CAST(N'2016-06-12' AS Date), N'Uddevalla', N'rking1g@alexa.com', N'46-(676)499-8151', 79, 75.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (54, N'Patrick', N'Ford', CAST(N'2017-02-22' AS Date), N'Pamoyanan', N'pford1h@soundcloud.com', N'62-(137)971-0775', 63, 33.7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (55, N'Karen', N'Barnes', CAST(N'2017-01-07' AS Date), N'Sainte-Martine', N'kbarnes1i@amazon.co.uk', N'1-(365)856-6450', 90, 88.3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (56, N'Clarence', N'Nguyen', CAST(N'2017-01-21' AS Date), N'Wielbark', N'cnguyen1j@newsvine.com', N'48-(449)580-3082', 74, 3.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (57, N'Donald', N'Andrews', CAST(N'2016-07-29' AS Date), N'Sines', N'dandrews1k@alexa.com', N'351-(539)267-9434', 21, 3.8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (58, N'Katherine', N'Garcia', CAST(N'2017-03-13' AS Date), N'Qila Abdullah', N'kgarcia1l@odnoklassniki.ru', N'92-(746)962-0575', 35, 29.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (59, N'Teresa', N'Robertson', CAST(N'2016-10-19' AS Date), N'Tempeh Tengah', N'trobertson1m@live.com', N'62-(394)341-3656', 10, 77.7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (60, N'Jimmy', N'Wheeler', CAST(N'2017-01-15' AS Date), N'Abreus', N'jwheeler1n@upenn.edu', N'53-(973)123-8476', 77, 34)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (61, N'Benjamin', N'Hall', CAST(N'2017-03-14' AS Date), N'Tha?nh Ho?a', N'bhall1o@google.de', N'84-(640)957-6349', 83, 95)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (62, N'Ronald', N'Cox', CAST(N'2016-05-03' AS Date), N'Linpu', N'rcox1p@shareasale.com', N'86-(794)507-2590', 69, 66.2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (63, N'Aaron', N'Pierce', CAST(N'2016-08-08' AS Date), N'Jiuxian', N'apierce1q@oakley.com', N'86-(730)252-6611', 15, 22.6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (64, N'Phyllis', N'Hall', CAST(N'2016-11-04' AS Date), N'Dabrowa', N'phall1r@wsj.com', N'48-(406)994-5510', 81, 36.8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (65, N'Ashley', N'Lane', CAST(N'2016-04-04' AS Date), N'Rosso', N'alane1s@printfriendly.com', N'222-(644)712-7752', 16, 50.4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (66, N'Larry', N'Griffin', CAST(N'2016-09-02' AS Date), N'Parajara', N'lgriffin1t@smugmug.com', N'62-(434)926-3838', 38, 78)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (67, N'Amy', N'Riley', CAST(N'2016-11-21' AS Date), N'Moshkovo', N'ariley1u@apple.com', N'7-(711)796-7329', 48, 62.3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (68, N'Martin', N'Reed', CAST(N'2016-05-03' AS Date), N'Jingxin', N'mreed1v@sina.com.cn', N'86-(675)129-8109', 44, 67.8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (69, N'Anthony', N'Butler', CAST(N'2016-10-16' AS Date), N'Ziyuan', N'abutler1w@pinterest.com', N'86-(648)698-3149', 27, 61.4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (70, N'Wanda', N'Taylor', CAST(N'2016-06-20' AS Date), N'Alepou', N'wtaylor1x@studiopress.com', N'30-(729)346-4187', 68, 3.3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (71, N'Melissa', N'Morales', CAST(N'2017-03-16' AS Date), N'Jadranovo', N'mmorales1y@mit.edu', N'385-(802)515-6401', 2, 54)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (72, N'Steven', N'James', CAST(N'2017-01-06' AS Date), N'Predmerice nad Labem', N'sjames1z@etsy.com', N'420-(884)359-1751', 3, 26.7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (73, N'Thomas', N'Matthews', CAST(N'2016-06-16' AS Date), N'Sara Kunda', N'tmatthews20@cbslocal.com', N'220-(651)219-5736', 23, 46.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (74, N'Jesse', N'Gutierrez', CAST(N'2016-04-16' AS Date), N'Dingbu', N'jgutierrez21@macromedia.com', N'86-(547)506-9823', 61, 56)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (75, N'Clarence', N'Coleman', CAST(N'2016-04-23' AS Date), N'Villa Nueva', N'ccoleman22@paypal.com', N'54-(169)963-3291', 19, 38.6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (76, N'Michelle', N'Larson', CAST(N'2017-02-11' AS Date), N'Zamosc', N'mlarson23@quantcast.com', N'48-(264)842-6962', 4, 23.5)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (77, N'Debra', N'Carter', CAST(N'2016-09-05' AS Date), N'Periyiali', N'dcarter24@patch.com', N'30-(667)543-6714', 77, 42.4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (78, N'Kelly', N'Flores', CAST(N'2016-05-16' AS Date), N'Uiasa', N'kflores25@wsj.com', N'62-(314)823-4999', 93, 2.7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (79, N'Steven', N'Wood', CAST(N'2016-09-10' AS Date), N'Finspang', N'swood26@ted.com', N'46-(367)545-3902', 86, 22.5)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (80, N'Maria', N'Gray', CAST(N'2016-08-13' AS Date), N'Businovo', N'mgray27@eepurl.com', N'7-(378)283-9131', 15, 85.7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (81, N'Frank', N'Wagner', CAST(N'2017-01-22' AS Date), N'Shakhty', N'fwagner28@pinterest.com', N'7-(637)704-8035', 24, 18.2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (82, N'Willie', N'Austin', CAST(N'2016-07-24' AS Date), N'Nghia Hanh', N'waustin29@imdb.com', N'84-(789)597-7016', 65, 86.7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (83, N'Benjamin', N'James', CAST(N'2016-11-15' AS Date), N'Nagaracinta', N'bjames2a@samsung.com', N'62-(888)366-3938', 36, 96.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (84, N'Melissa', N'Ramirez', CAST(N'2017-03-12' AS Date), N'Timurlorong', N'mramirez2b@gov.uk', N'62-(279)840-1325', 86, 73)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (85, N'Joshua', N'Patterson', CAST(N'2016-05-29' AS Date), N'Loreto', N'jpatterson2c@desdev.cn', N'63-(977)495-0746', 71, 24.3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (86, N'Frances', N'Peterson', CAST(N'2017-03-17' AS Date), N'Merignac', N'fpeterson2d@miitbeian.gov.cn', N'33-(277)710-8475', 71, 69.6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (87, N'Ann', N'Harvey', CAST(N'2017-01-08' AS Date), N'Jijiazhuang', N'aharvey2e@cisco.com', N'86-(536)931-8000', 81, 76.5)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (88, N'Wayne', N'Schmidt', CAST(N'2016-09-27' AS Date), N'Zverevo', N'wschmidt2f@tmall.com', N'7-(932)569-2785', 39, 57.8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (89, N'Nicholas', N'Kelly', CAST(N'2016-12-17' AS Date), N'Laveiras', N'nkelly2g@spotify.com', N'351-(574)211-0423', 28, 77.5)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (90, N'Wayne', N'Hayes', CAST(N'2016-10-01' AS Date), N'Tandag', N'whayes2h@list-manage.com', N'63-(751)467-2233', 80, 35.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (91, N'Kathryn', N'Palmer', CAST(N'2016-11-08' AS Date), N'Austin', N'kpalmer2i@bloomberg.com', N'1-(512)189-5546', 99, 43.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (92, N'Linda', N'Bowman', CAST(N'2017-01-01' AS Date), N'Nanpu', N'lbowman2j@ucla.edu', N'86-(750)655-8731', 25, 78)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (93, N'Gary', N'Jordan', CAST(N'2016-05-19' AS Date), N'Knyszyn', N'gjordan2k@domainmarket.com', N'48-(385)572-0790', 8, 80.6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (94, N'Larry', N'Andrews', CAST(N'2016-11-29' AS Date), N'Sarrat', N'landrews2l@soundcloud.com', N'63-(496)808-8286', 22, 48.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (95, N'Larry', N'Williams', CAST(N'2017-03-03' AS Date), N'Shreveport', N'lwilliams2m@blog.com', N'1-(318)511-1533', 54, 62.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (96, N'Russell', N'Simmons', CAST(N'2016-08-28' AS Date), N'Bobo-Dioulasso', N'rsimmons2n@1und1.de', N'226-(127)846-9013', 87, 75.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (97, N'Phillip', N'James', CAST(N'2017-03-17' AS Date), N'Wairinding', N'pjames2o@amazon.com', N'62-(685)177-8479', 100, 77)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (98, N'Annie', N'Graham', CAST(N'2016-11-20' AS Date), N'Tha Yang', N'agraham2p@pinterest.com', N'66-(620)640-7844', 59, 41.1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (99, N'Virginia', N'Simpson', CAST(N'2016-05-23' AS Date), N'Rongxing', N'vsimpson2q@ucoz.com', N'86-(731)639-5708', 66, 3.9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (100, N'Kathy', N'Ramirez', CAST(N'2016-09-05' AS Date), N'Caijiagang', N'kramirez2r@accuweather.com', N'86-(541)789-5146', 35, 26.8)
GO
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (1, 1, 13)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (2, 6, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (3, 6, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (4, 6, 16)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (5, 8, 12)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (6, 6, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (7, 9, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (8, 6, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (9, 2, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (10, 9, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (11, 1, 5)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (12, 6, 10)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (13, 3, 3)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (14, 6, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (15, 9, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (16, 8, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (17, 7, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (18, 9, 15)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (19, 1, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (20, 3, 3)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (21, 5, 1)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (22, 9, 11)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (23, 1, 4)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (24, 6, 1)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (25, 1, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (26, 3, 5)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (27, 4, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (28, 5, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (29, 9, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (30, 5, 15)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (31, 2, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (32, 4, 12)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (33, 2, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (34, 5, 11)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (35, 6, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (36, 2, 2)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (37, 1, 2)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (38, 7, 10)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (39, 9, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (40, 3, 5)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (41, 8, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (42, 5, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (43, 1, 2)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (44, 8, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (45, 2, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (46, 4, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (47, 8, 11)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (48, 7, 7)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (49, 6, 13)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (50, 8, 16)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (51, 6, 3)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (52, 2, 14)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (53, 4, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (54, 6, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (55, 2, 7)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (56, 3, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (57, 1, 7)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (58, 2, 15)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (59, 4, 19)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (60, 6, 10)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (61, 7, 3)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (62, 2, 13)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (63, 2, 1)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (64, 9, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (65, 5, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (66, 4, 19)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (67, 8, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (68, 8, 16)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (69, 3, 4)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (70, 3, 15)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (71, 9, 15)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (72, 6, 16)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (73, 4, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (74, 4, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (75, 9, 13)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (76, 7, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (77, 6, 4)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (78, 8, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (79, 7, 8)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (80, 7, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (81, 9, 19)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (82, 5, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (83, 2, 5)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (84, 1, 2)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (85, 2, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (86, 2, 3)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (87, 1, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (88, 4, 5)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (89, 7, 16)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (90, 4, 12)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (91, 3, 7)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (92, 4, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (93, 3, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (94, 7, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (95, 3, 11)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (96, 8, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (97, 4, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (98, 4, 8)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (99, 8, 1)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (100, 1, 10)
GO
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (1, N'aliquam convallis nunc')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (2, N'luctus')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (3, N'in ante vestibulum')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (4, N'id sapien')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (5, N'sollicitudin ut')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (6, N'ipsum dolor')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (7, N'quam')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (8, N'ac')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (9, N'ut odio')
ALTER TABLE [dbo].[Education]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Interview]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Knowledge_of_language]  WITH CHECK ADD FOREIGN KEY([TypeLanguageId])
REFERENCES [dbo].[TypeLanguage] ([TypeLanguageId])
GO
ALTER TABLE [dbo].[Knowledge_of_language]  WITH CHECK ADD FOREIGN KEY([LanguageLevelId])
REFERENCES [dbo].[Language_level] ([LanguageLevelId])
GO
ALTER TABLE [dbo].[Knowledge_of_language]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[PersonTypeJob]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[PersonTypeJob]  WITH CHECK ADD FOREIGN KEY([TypeJobId])
REFERENCES [dbo].[TypeJob] ([TypeJobId])
GO
ALTER TABLE [dbo].[ProffesionalSkill]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Work_experience]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEducationById]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetEducationById]
    @EducationId int 
AS   
BEGIN
      SELECT Education.EducationId, Education.PersonId, Education.SpecialityName, Education.EducationalInstitutionName,
			 Education.StartDate, Education.FinishDate

      FROM	 dbo.Education WHERE EducationId=@EducationId
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetEducations]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetEducations]
AS   
BEGIN
      SELECT Education.EducationId, Education.PersonId, Education.SpecialityName,
			 Education.EducationalInstitutionName, Education.StartDate, Education.FinishDate

      FROM	 dbo.Education
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetEducationsWhere]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetEducationsWhere]
	@PersonId int = null,
	@SpecialityName varchar(100) = null,
	@EducationalInstitutionName varchar(100) = null

AS
BEGIN
      SELECT Education.EducationId, Education.PersonId, Education.SpecialityName,
			 Education.EducationalInstitutionName, Education.StartDate, Education.FinishDate

      FROM	 dbo.Education

	  WHERE	 (@PersonId IS NULL OR (Education.PersonId = @PersonId)) AND
			 (@SpecialityName IS NULL OR (Education.SpecialityName LIKE '%' + @SpecialityName  + '%')) AND
			 (@EducationalInstitutionName IS NULL OR (Education.EducationalInstitutionName LIKE '%' + @EducationalInstitutionName  + '%'))
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetJobById]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetJobById]
    @JobId int 
AS   
BEGIN
      SELECT Job.JobId, Job.PersonId, Job.JobName

      FROM	 dbo.Job WHERE JobId=@JobId
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetJobs]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetJobs]
AS   
BEGIN
      SELECT Job.JobId, Job.PersonId, Job.JobName

      FROM	 dbo.Job
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetJobsWhere]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetJobsWhere]
	@PersonId int = null,
	@JobName varchar(100) = null

AS
BEGIN
      SELECT Job.JobId, Job.PersonId, Job.JobName

      FROM	 dbo.Job

	  WHERE	 (@PersonId IS NULL OR (Job.PersonId = @PersonId)) AND
			 (@JobName IS NULL OR (Job.JobName LIKE '%' + @JobName  + '%'))
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetProfessionalSkillById]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetProfessionalSkillById]
    @ProfessionalSkillId int 
AS   
BEGIN
      SELECT ProfessionalSkill.ProfessionalSkillId, ProfessionalSkill.PersonId, 
			 ProfessionalSkill.SkillName

      FROM	 dbo.ProfessionalSkill WHERE ProfessionalSkill.ProfessionalSkillId=@ProfessionalSkillId
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetProfessionalSkills]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetProfessionalSkills]
AS   
BEGIN
      SELECT ProfessionalSkill.ProfessionalSkillId, ProfessionalSkill.PersonId, 
			 ProfessionalSkill.SkillName

      FROM	 dbo.ProfessionalSkill
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetProfessionalSkillsWhere]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetProfessionalSkillsWhere]
	@PersonId int = null,
	@SkillName varchar(100) = null

AS
BEGIN
      SELECT ProfessionalSkill.ProfessionalSkillId, ProfessionalSkill.PersonId, 
			 ProfessionalSkill.SkillName

      FROM	 dbo.ProfessionalSkill

	  WHERE	 (@PersonId IS NULL OR (ProfessionalSkill.PersonId = @PersonId)) AND
			 (@SkillName IS NULL OR (ProfessionalSkill.SkillName LIKE '%' + @SkillName  + '%'))
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeJobById]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetTypeJobById]
    @PersonTypeJobId int 
AS   
BEGIN
      SELECT PersonTypeJob.PersonTypeJobId, PersonTypeJob.PersonId,
			 TypeJob.TypeJobName

      FROM	 dbo.PersonTypeJob 

	  INNER JOIN dbo.TypeJob ON PersonTypeJob.TypeJobId = TypeJob.TypeJobId 

	  WHERE PersonTypeJob.PersonTypeJobId=@PersonTypeJobId
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeJobs]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetTypeJobs]
AS   
BEGIN
      SELECT PersonTypeJob.PersonTypeJobId, PersonTypeJob.PersonId,
			 TypeJob.TypeJobName

      FROM	 dbo.PersonTypeJob 

	  INNER JOIN dbo.TypeJob ON PersonTypeJob.TypeJobId = TypeJob.TypeJobId 
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeJobsWhere]    Script Date: 05.04.2017 12:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetTypeJobsWhere]
	@PersonId int = null,
	@TypeJobName varchar(100) = null

AS
BEGIN
      SELECT PersonTypeJob.PersonTypeJobId, PersonTypeJob.PersonId,
			 TypeJob.TypeJobName

      FROM	 dbo.PersonTypeJob 

	  INNER JOIN dbo.TypeJob ON PersonTypeJob.TypeJobId = TypeJob.TypeJobId 

	  WHERE	 (@PersonId IS NULL OR (PersonTypeJob.PersonId = @PersonId)) AND
			 (@TypeJobName IS NULL OR (TypeJob.TypeJobName LIKE '%' + @TypeJobName  + '%'))
END


GO
USE [master]
GO
ALTER DATABASE [HRDataBase] SET  READ_WRITE 
GO
