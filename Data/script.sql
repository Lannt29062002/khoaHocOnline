USE [master]
GO
/****** Object:  Database [QLKH]    Script Date: 15/03/2023 3:44:31 CH ******/
CREATE DATABASE [QLKH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLKH', FILENAME = N'E:\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLKH.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLKH_log', FILENAME = N'E:\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLKH_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLKH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLKH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLKH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLKH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLKH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLKH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLKH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLKH] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLKH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLKH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLKH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLKH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLKH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLKH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLKH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLKH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLKH] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLKH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLKH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLKH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLKH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLKH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLKH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLKH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLKH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLKH] SET  MULTI_USER 
GO
ALTER DATABASE [QLKH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLKH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLKH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLKH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLKH] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLKH]
GO
/****** Object:  Table [dbo].[authors]    Script Date: 15/03/2023 3:44:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[Couserid] [varchar](50) NOT NULL,
	[Startdate] [date] NOT NULL,
	[Auimg] [varchar](250) NOT NULL,
	[Auname] [varchar](50) NOT NULL,
	[Auemail] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Couserid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Couser]    Script Date: 15/03/2023 3:44:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Couser](
	[couserId] [varchar](50) NOT NULL,
	[couserName] [varchar](250) NULL,
	[Couserdes] [varchar](250) NULL,
	[CouserImg] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[couserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inCouser]    Script Date: 15/03/2023 3:44:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inCouser](
	[couserId] [varchar](50) NULL,
	[Slot] [varchar](50) NULL,
	[DateBegin] [date] NULL,
	[DateEnd] [date] NULL,
	[Ccontent] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 15/03/2023 3:44:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[id] [int] NOT NULL,
	[Question] [varchar](250) NULL,
	[A] [varchar](250) NULL,
	[B] [varchar](250) NULL,
	[C] [varchar](250) NULL,
	[D] [varchar](250) NULL,
	[answer] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 15/03/2023 3:44:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Account] [varchar](50) NOT NULL,
	[Pass] [varchar](30) NOT NULL,
	[Campus] [nvarchar](30) NOT NULL,
	[Email] [varchar](50) NULL,
	[Gender] [bit] NULL,
	[address] [nvarchar](50) NULL,
	[dob] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15/03/2023 3:44:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[account] [varchar](20) NOT NULL,
	[Password] [varchar](40) NULL,
	[UserName] [varchar](30) NULL,
	[Gender] [bit] NULL,
	[Email] [varchar](50) NULL,
	[dateofbirth] [date] NULL,
	[address] [nvarchar](50) NULL,
	[isTeacher] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[viewcouser]    Script Date: 15/03/2023 3:44:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[viewcouser](
	[Couserid] [varchar](50) NULL,
	[viewnumber] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[viewslot]    Script Date: 15/03/2023 3:44:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[viewslot](
	[Couserid] [varchar](50) NULL,
	[slot] [int] NULL,
	[viewnumber] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[authors] ([Couserid], [Startdate], [Auimg], [Auname], [Auemail]) VALUES (N'IOT102', CAST(N'2022-12-24' AS Date), N'nIOT.png', N'Nguyen Van A', N'nguyenvana147854@gmail.com')
INSERT [dbo].[authors] ([Couserid], [Startdate], [Auimg], [Auname], [Auemail]) VALUES (N'JPD123', CAST(N'2022-07-01' AS Date), N'mJPD.jpg', N'Tran Thao V', N'tranthaov147854@gmail.com')
INSERT [dbo].[authors] ([Couserid], [Startdate], [Auimg], [Auname], [Auemail]) VALUES (N'LAB211', CAST(N'2022-11-28' AS Date), N'nLAB.jpg', N'Truong Quang T', N'truongquangt541257@gmail.com')
INSERT [dbo].[authors] ([Couserid], [Startdate], [Auimg], [Auname], [Auemail]) VALUES (N'MAS291', CAST(N'2022-02-11' AS Date), N'nMAS.jpg', N'Bui tien D', N'buitiend160821@gmail.com')
INSERT [dbo].[authors] ([Couserid], [Startdate], [Auimg], [Auname], [Auemail]) VALUES (N'VOV124', CAST(N'2022-06-10' AS Date), N'nVo.jpg', N'Bui Thi K', N'buithik214568@gmail.com')
INSERT [dbo].[authors] ([Couserid], [Startdate], [Auimg], [Auname], [Auemail]) VALUES (N'WED201c', CAST(N'2022-03-21' AS Date), N'nWEB.jpg', N'Ngo Viet A', N'ngovieta521463@gmail.com')
GO
INSERT [dbo].[Couser] ([couserId], [couserName], [Couserdes], [CouserImg]) VALUES (N'IOT102', N'Internet of Things', N'You will learn some methods of communicating commands with device.', N'download.jpg')
INSERT [dbo].[Couser] ([couserId], [couserName], [Couserdes], [CouserImg]) VALUES (N'JPD123', N'Elementary Japanese', N'You will learn some basic communication sentences and Japanese culture.', N'download (1).jpg')
INSERT [dbo].[Couser] ([couserId], [couserName], [Couserdes], [CouserImg]) VALUES (N'LAB211', N'OOP with Java Lab', N'You will be practicing a number of projects on object-oriented programming.', N'Tips-for-a-Project-Manager-to-Successfully-Manage-Mobile-App-Development-Projects.jpg')
INSERT [dbo].[Couser] ([couserId], [couserName], [Couserdes], [CouserImg]) VALUES (N'MAS291', N'Statistics and Probability', N'everything you''d want to know about descriptive and inferential statistics.', N'asset-v1-oliprobstatopen_jan2017typeassetblockprobstat.jpg')
INSERT [dbo].[Couser] ([couserId], [couserName], [Couserdes], [CouserImg]) VALUES (N'VOV124', N'Vovinam', N'Practicing some self-defense martial arts helps you become more confident in any situation.', N'images.png')
INSERT [dbo].[Couser] ([couserId], [couserName], [Couserdes], [CouserImg]) VALUES (N'WED201c', N'Web Design', N'After completing the course you can design your own a simple website.', N'cartoon-web-design-background_52683-70879.webp')
GO
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'MAS291', N'1', CAST(N'2022-12-08' AS Date), CAST(N'2022-11-19' AS Date), N'a')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'LAB211', N'1', CAST(N'2022-08-07' AS Date), CAST(N'2022-08-13' AS Date), N'Review basic techniques that have been learned.Introduce and analyze significance of Attacking combos 1.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'MAS291', N'2', CAST(N'2022-08-14' AS Date), CAST(N'2022-08-20' AS Date), N'The Roles of Statistics in Engineering
1.3 Mechanistic and Empirical Models
1.4 Probability and Probability Models')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'MAS291', N'3', CAST(N'2022-12-17' AS Date), CAST(N'2022-11-06' AS Date), N'asd')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'MAS291', N'4', CAST(N'2022-08-26' AS Date), CAST(N'2022-09-04' AS Date), N'Probability
2.2 Interpretations of Probability
2.3 Addition Rules')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'MAS291', N'5', CAST(N'2022-09-03' AS Date), CAST(N'2022-09-11' AS Date), N'Probability
2.4 Conditional Probability')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'MAS291', N'6', CAST(N'2022-09-10' AS Date), CAST(N'2022-09-18' AS Date), N'Probability
2.5 Multiplication and Total Probability Rules
2.6 Independence')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'MAS291', N'7', CAST(N'2022-09-19' AS Date), CAST(N'2022-09-25' AS Date), N'	Probability
2.7 Bayes')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'VOV124', N'5', CAST(N'2022-09-03' AS Date), CAST(N'2022-09-11' AS Date), N'Review basic techniques.Introduce and complete self-defense skills of punch techniques of Nhap Mon Form.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'VOV124', N'6', CAST(N'2022-09-10' AS Date), CAST(N'2022-09-18' AS Date), N'Review basic techniques.Introduce and complete attacking skills of elbow strike techniques of Nhap Mon Form.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'VOV124', N'7', CAST(N'2022-09-19' AS Date), CAST(N'2022-09-25' AS Date), N'Review basic techniques.Introduce and complete self-defense skills of block techniques of Nhap Mon Form.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'VOV124', N'8', CAST(N'2022-09-26' AS Date), CAST(N'2022-10-02' AS Date), N'Complete Nhap Mon Form and practice group exercises.Fighting techniques: roundhouse punch with objectives technique.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'VOV124', N'9', CAST(N'2022-10-03' AS Date), CAST(N'2022-10-09' AS Date), N'Complete Nhap Mon Form and practice group exercises.Exercises on kata competition in teams')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'IOT102', N'8', CAST(N'2022-11-16' AS Date), CAST(N'2022-11-15' AS Date), N'a')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'IOT102', N'9', CAST(N'2002-08-12' AS Date), CAST(N'2002-08-18' AS Date), N'aaaa')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'MAS291', N'8', CAST(N'2022-09-26' AS Date), CAST(N'2022-10-02' AS Date), N'Probability
2.8 Random Variables')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'MAS291', N'9', CAST(N'2022-10-03' AS Date), CAST(N'2022-10-09' AS Date), N'Discrete Random Variables and Probability Distribution
3.1 Discrete Random Variables')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'LAB211', N'2', CAST(N'2022-08-14' AS Date), CAST(N'2022-08-20' AS Date), N'Review basic techniques that have been learned.Introduce and analyze significance of Attacking combos 2.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'LAB211', N'3', CAST(N'2022-08-21' AS Date), CAST(N'2022-08-27' AS Date), N'Review basic techniques that have been learned.Introduce and analyze significance of Attacking combos 3.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'LAB211', N'4', CAST(N'2022-08-26' AS Date), CAST(N'2022-09-04' AS Date), N'Review basic techniques that have been learned.Introduce and analyze significance of Attacking combos 4.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'LAB211', N'5', CAST(N'2022-09-03' AS Date), CAST(N'2022-09-11' AS Date), N'Review basic techniques.Introduce and complete self-defense skills of punch techniques of Nhap Mon Form.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'LAB211', N'6', CAST(N'2022-09-10' AS Date), CAST(N'2022-09-18' AS Date), N'Review basic techniques.Introduce and complete attacking skills of elbow strike techniques of Nhap Mon Form.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'LAB211', N'7', CAST(N'2022-09-19' AS Date), CAST(N'2022-09-25' AS Date), N'Review basic techniques.Introduce and complete self-defense skills of block techniques of Nhap Mon Form.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'LAB211', N'8', CAST(N'2022-09-26' AS Date), CAST(N'2022-10-02' AS Date), N'Complete Nhap Mon Form and practice group exercises.Fighting techniques: roundhouse punch with objectives technique.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'LAB211', N'9', CAST(N'2022-10-03' AS Date), CAST(N'2022-10-09' AS Date), N'Complete Nhap Mon Form and practice group exercises.Exercises on kata competition in teams')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'LAB211', N'10', CAST(N'2022-10-10' AS Date), CAST(N'2022-10-16' AS Date), N'competition in teams.Review')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'JPD123', N'1', CAST(N'2022-09-07' AS Date), CAST(N'2022-09-13' AS Date), N'Enroll to the spec on Coursera for FPT University Platform
- Watch all videos, read all materials in the module
')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'JPD123', N'2', CAST(N'2022-09-14' AS Date), CAST(N'2022-09-20' AS Date), N'	- Watch all videos, read all materials in the module
- Finish quiz: Tags')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'JPD123', N'3', CAST(N'2022-09-21' AS Date), CAST(N'2022-09-25' AS Date), N' Watch all videos, read all materials in the module
- Finish quiz: Hosting and Validation,
- Peer-graded assignment: Final project,
')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'JPD123', N'4', CAST(N'2022-09-26' AS Date), CAST(N'2022-10-04' AS Date), N'- Watch all videos, read all materials in the modules
- Finish quiz: Styling Syntax and Theory, Pear-graded assignment: Your First Style Site) and Review your')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'JPD123', N'5', CAST(N'2022-10-03' AS Date), CAST(N'2022-10-11' AS Date), N'- All Students should participate in review slot(if any question)
Deadline of Course 2 Completion: End of Friday of the week.')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'JPD123', N'6', CAST(N'2022-10-10' AS Date), CAST(N'2022-10-18' AS Date), N'- All Students should participate in review slot (course 2)
- Watch all videos, read all materials in the modules
- Finish quiz: Module 1
- Finish Peer-graded')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'JPD123', N'7', CAST(N'2022-10-19' AS Date), CAST(N'2022-10-25' AS Date), N' Watch all videos, read all materials in the modules
- Finish quiz: Javascript Review, Peer-graded assignment: Autocomplete with Javascript and Review your peers: Autocomplete with Javascript')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'JPD123', N'8', CAST(N'2022-10-26' AS Date), CAST(N'2022-11-02' AS Date), N'- All Students have to participate in review slot (course 3)
- Watch all videos, read all materials in the modules
- Finished quiz: Basic concepts in responsive design approaches ')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'JPD123', N'9', CAST(N'2022-11-03' AS Date), CAST(N'2022-11-09' AS Date), N'- Watch all videos, read all materials in the modules
- Finish quiz: Module 3 review: Bootstrap
- Finish quiz: Responsive Design Final Assessment')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'IOT102', N'1', CAST(N'2022-11-18' AS Date), CAST(N'2022-11-20' AS Date), N'asd')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'IOT102', N'2', CAST(N'2022-08-14' AS Date), CAST(N'2022-08-20' AS Date), N'The Roles of Statistics in Engineering
1.3 Mechanistic and Empirical Models
1.4 Probability and Probability Models')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'IOT102', N'7', CAST(N'2022-09-19' AS Date), CAST(N'2022-09-25' AS Date), N'	Probability
2.7 Bayes')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'IOT102', N'8', CAST(N'2022-09-26' AS Date), CAST(N'2022-10-02' AS Date), N'Probability
2.8 Random Variables')
INSERT [dbo].[inCouser] ([couserId], [Slot], [DateBegin], [DateEnd], [Ccontent]) VALUES (N'IOT102', N'9', CAST(N'2022-10-03' AS Date), CAST(N'2022-10-09' AS Date), N'Discrete Random Variables and Probability Distribution
3.1 Discrete Random Variables')
GO
INSERT [dbo].[Table] ([id], [Question], [A], [B], [C], [D], [answer]) VALUES (1, N'Hom nay la thu may ', N'Thu 2', N'Thu 3', N'Thu 4', N'Thu 6', N'D')
INSERT [dbo].[Table] ([id], [Question], [A], [B], [C], [D], [answer]) VALUES (2, N'Mai la thu may ', N'Thu 7', N'Thu 3', N'Thu 4', N'Thu 6', N'A')
INSERT [dbo].[Table] ([id], [Question], [A], [B], [C], [D], [answer]) VALUES (3, N'Hom qua la thu may ', N'Thu 2', N'Thu 3', N'Thu 5', N'Thu 6', N'C')
GO
INSERT [dbo].[User] ([ID], [Name], [Account], [Pass], [Campus], [Email], [Gender], [address], [dob]) VALUES (N'HE161381', N'Son', N'sonnahe161381', N'123', N'Hòa L?c', N'sonnahe161381@fpt.edu.vn', 1, N'Hà N?i', CAST(N'2002-11-26' AS Date))
INSERT [dbo].[User] ([ID], [Name], [Account], [Pass], [Campus], [Email], [Gender], [address], [dob]) VALUES (N'HE161381', N'Son', N'sonnahe161381i', N'123', N'Hòa L?c', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([account], [Password], [UserName], [Gender], [Email], [dateofbirth], [address], [isTeacher]) VALUES (N'admin', N'637', N'Lan', 1, N'lanhe160821@fpt.edu.vn', CAST(N'2001-06-06' AS Date), N'Ha Noi', 1)
INSERT [dbo].[Users] ([account], [Password], [UserName], [Gender], [Email], [dateofbirth], [address], [isTeacher]) VALUES (N'admin21', N'123', N'kieu', 1, N'lannthe160821@fpt.edu.vn', CAST(N'2022-11-24' AS Date), N'kimbong', 1)
INSERT [dbo].[Users] ([account], [Password], [UserName], [Gender], [Email], [dateofbirth], [address], [isTeacher]) VALUES (N'admin23', N'123', N'kieu', 1, N'lannthe160821@fpt.edu.vn', CAST(N'2022-11-18' AS Date), N'knad', 1)
INSERT [dbo].[Users] ([account], [Password], [UserName], [Gender], [Email], [dateofbirth], [address], [isTeacher]) VALUES (N'hocsinh', N'123', N'Nguyen thanh lan', 0, N'lannthe160821@fpt.edu.vn', CAST(N'2022-12-03' AS Date), N'knad', 0)
INSERT [dbo].[Users] ([account], [Password], [UserName], [Gender], [Email], [dateofbirth], [address], [isTeacher]) VALUES (N'khang', N'123', N'Nguyen Thanh Khang', 1, N'lannthe160821@fpt.edu.vn', CAST(N'2022-11-17' AS Date), N'123a2', 1)
INSERT [dbo].[Users] ([account], [Password], [UserName], [Gender], [Email], [dateofbirth], [address], [isTeacher]) VALUES (N'long', N'123', N'Nguyen Thanh Long', 1, N'lannthe160821@fpt.edu.vn', CAST(N'2022-11-16' AS Date), N'123a2', 1)
GO
INSERT [dbo].[viewcouser] ([Couserid], [viewnumber]) VALUES (N'MAS291', 2)
GO
ALTER TABLE [dbo].[inCouser]  WITH CHECK ADD FOREIGN KEY([couserId])
REFERENCES [dbo].[Couser] ([couserId])
GO
ALTER TABLE [dbo].[inCouser]  WITH CHECK ADD FOREIGN KEY([couserId])
REFERENCES [dbo].[authors] ([Couserid])
GO
ALTER TABLE [dbo].[inCouser]  WITH CHECK ADD FOREIGN KEY([couserId])
REFERENCES [dbo].[authors] ([Couserid])
GO
USE [master]
GO
ALTER DATABASE [QLKH] SET  READ_WRITE 
GO
