USE [master]
GO
/****** Object:  Database [Books]    Script Date: 02/13/2017 09:29:04 ******/
CREATE DATABASE [Books] ON  PRIMARY 
( NAME = N'Books', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Books.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Books_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Books_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Books] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Books].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Books] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Books] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Books] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Books] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Books] SET ARITHABORT OFF
GO
ALTER DATABASE [Books] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Books] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Books] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Books] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Books] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Books] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Books] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Books] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Books] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Books] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Books] SET  DISABLE_BROKER
GO
ALTER DATABASE [Books] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Books] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Books] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Books] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Books] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Books] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Books] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Books] SET  READ_WRITE
GO
ALTER DATABASE [Books] SET RECOVERY FULL
GO
ALTER DATABASE [Books] SET  MULTI_USER
GO
ALTER DATABASE [Books] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Books] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Books', N'ON'
GO
USE [Books]
GO
/****** Object:  Table [dbo].[tb_upload_record]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_upload_record](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[upload_time] [datetime] NULL,
	[file_name] [nchar](50) NULL,
 CONSTRAINT [PK_tb_upload_record] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_upload_record] ON
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (1, CAST(0x0000A69200000000 AS DateTime), N'1                                                 ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (2, CAST(0x0000A69300000000 AS DateTime), N'2                                                 ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (3, CAST(0x0000A69400000000 AS DateTime), N'3                                                 ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (4, CAST(0x0000A69500000000 AS DateTime), N'4                                                 ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (5, CAST(0x0000A69A00D6C98C AS DateTime), N'636116149175498803.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (6, CAST(0x0000A69A00D6F86C AS DateTime), N'636116149597228583.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (7, CAST(0x0000A69A00D75050 AS DateTime), N'636116150365261414.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (8, CAST(0x0000A69A00D80978 AS DateTime), N'636116151947590746.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (9, CAST(0x0000A69A00D9D154 AS DateTime), N'636116155834662955.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (10, CAST(0x0000A69A00D9FF08 AS DateTime), N'636116156222341274.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (11, CAST(0x0000A69A00DEB994 AS DateTime), N'636116166551254281.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (12, CAST(0x0000A69A00DF58F4 AS DateTime), N'201610090133012486.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (13, CAST(0x0000A69B0097C584 AS DateTime), N'201610100912053383.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (14, CAST(0x0000A69B00E7D0EC AS DateTime), N'201610101404012486.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (15, CAST(0x0000A69B00E896F8 AS DateTime), N'201610101406508475.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (16, CAST(0x0000A69B00ED0C60 AS DateTime), N'201610101423048159.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (17, CAST(0x0000A69B0107BB3C AS DateTime), N'201610101600129953.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (18, CAST(0x0000A69B0107E7C4 AS DateTime), N'201610101600513699.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (19, CAST(0x0000A69B010854C0 AS DateTime), N'201610101602242644.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (20, CAST(0x0000A69B01088274 AS DateTime), N'201610101603032935.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (21, CAST(0x0000A69B01090A64 AS DateTime), N'201610101604595493.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (22, CAST(0x0000A69B010A0B08 AS DateTime), N'201610101608385784.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (23, CAST(0x0000A69B010A7F0C AS DateTime), N'201610101610176074.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (24, CAST(0x0000A69B010E3444 AS DateTime), N'201610101623472802.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (25, CAST(0x0000A69B010F1B20 AS DateTime), N'201610101627048159.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (26, CAST(0x0000A69B01104978 AS DateTime), N'201610101631222196.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (27, CAST(0x0000A69B0110FF1C AS DateTime), N'201610101633575044.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (28, CAST(0x0000A69B0111B718 AS DateTime), N'201610101636344887.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (29, CAST(0x0000A69B01123350 AS DateTime), N'201610101638201747.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (30, CAST(0x0000A69B01156098 AS DateTime), N'201610101649534147.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (31, CAST(0x0000A69B0115F7C4 AS DateTime), N'201610101652032935.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (32, CAST(0x0000A69B0116E6D4 AS DateTime), N'201610101655263093.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (33, CAST(0x0000A69B011901E4 AS DateTime), N'201610101703068607.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (34, CAST(0x0000A69F00B018DC AS DateTime), N'201610141041089056.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (35, CAST(0x0000A6A300C0A2D8 AS DateTime), N'201610181141216971.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (36, CAST(0x0000A6A300C182AC AS DateTime), N'201610181144339662.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (37, CAST(0x0000A6A300C1ED50 AS DateTime), N'201610181146048159.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (38, CAST(0x0000A6A600B74D64 AS DateTime), N'201610211107237420.xlsx                           ')
INSERT [dbo].[tb_upload_record] ([id], [upload_time], [file_name]) VALUES (39, CAST(0x0000A6A600B78CAC AS DateTime), N'201610211108176074.xlsx                           ')
SET IDENTITY_INSERT [dbo].[tb_upload_record] OFF
/****** Object:  Table [dbo].[tb_menu_manager]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_menu_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[menu_id] [nchar](20) NULL,
 CONSTRAINT [PK_tb_menu_manager] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_menu_manager] ON
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (1, 1, N'M002                ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (2, 1, N'M0021               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (3, 1, N'M0022               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (4, 1, N'M003                ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (5, 1, N'M0031               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (6, 1, N'M0032               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (7, 1, N'M0033               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (8, 1, N'M0034               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (9, 1, N'M0035               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (10, 1, N'M0036               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (11, 1, N'M0037               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (12, 1, N'M004                ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (13, 1, N'M0041               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (14, 1, N'M0042               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (15, 1, N'M005                ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (16, 1, N'M0051               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (17, 1, N'M0052               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (18, 1, N'M006                ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (19, 1, N'M0061               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (84, 2, N'M0021               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (85, 2, N'M0031               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (86, 2, N'M0041               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (87, 1, N'M0023               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (88, 1, N'M0043               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (89, 1, N'M0044               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (90, 1, N'M0024               ')
INSERT [dbo].[tb_menu_manager] ([id], [user_id], [menu_id]) VALUES (95, 1, N'M0045               ')
SET IDENTITY_INSERT [dbo].[tb_menu_manager] OFF
/****** Object:  Table [dbo].[tb_menu]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_menu](
	[menu_id] [nvarchar](20) NOT NULL,
	[menu_parent_id] [nvarchar](20) NULL,
	[menu_name] [nvarchar](50) NULL,
	[menu_url] [nvarchar](200) NULL,
	[menu_level] [int] NULL,
	[menu_sort] [int] NULL,
 CONSTRAINT [PK_tb_menu] PRIMARY KEY NONCLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M002', N'#', N'图书管理', N'#', 1, 2)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0021', N'M002', N'图书入库', N'BookAdd.aspx', 2, 1)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0022', N'M002', N'图书列表', N'BookList.aspx', 2, 2)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0023', N'M002', N'图书状态', N'BookStatus.aspx', 2, 3)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0024', N'M002', N'图书丢失登记', N'BookLostRegister.aspx', 2, 4)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M003', N'#', N'借阅管理', N'#', 1, 3)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0031', N'M003', N'借阅图书', N'BorrowOut.aspx', 2, 1)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0032', N'M003', N'归还图书', N'BorrowIn.aspx', 2, 2)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0033', N'M003', N'续借图书', N'BorrowAgain.aspx', 2, 3)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0034', N'M003', N'读者列表', N'BorrowerList.aspx', 2, 4)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0035', N'M003', N'借阅卡挂失管理', N'BorrowCardLost.aspx', 2, 5)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0036', N'M003', N'借阅卡停借管理', N'BorrowCardStop.aspx', 2, 6)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0037', N'M003', N'借阅卡办理', N'BorrowerAdd.aspx', 2, 7)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M004', N'#', N'数据查询', N'#', 1, 4)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0041', N'M004', N'入馆记录', N'InputList.aspx', 2, 1)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0042', N'M004', N'借阅记录', N'BorrowList.aspx', 2, 2)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0043', N'M004', N'借阅卡停借记录', N'BorrowCardStopList.aspx', 2, 3)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0044', N'M004', N'借阅卡挂失记录', N'BorrowCardLostList.aspx', 2, 4)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0045', N'M004', N'图书丢失处理记录', N'BookLostList.aspx', 2, 5)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M005', N'#', N'数据统计', N'ChangePwd.aspx', 1, 5)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0051', N'M005', N'图书借阅统计', N'BookBorrowStat.aspx', 2, 1)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0052', N'M005', N'图书分类统计', N'BookTypeStat.aspx', 2, 2)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M006', N'#', N'系统设置', N'#', 1, 6)
INSERT [dbo].[tb_menu] ([menu_id], [menu_parent_id], [menu_name], [menu_url], [menu_level], [menu_sort]) VALUES (N'M0061', N'M006', N'权限管理', N'UserPermit.aspx', 2, 1)
/****** Object:  Table [dbo].[tb_manager]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tb_manager] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_manager] ON
INSERT [dbo].[tb_manager] ([id], [account], [password]) VALUES (1, N'admin', N'21232F297A57A5A743894A0E4A801FC3')
INSERT [dbo].[tb_manager] ([id], [account], [password]) VALUES (2, N'user2', N'7E58D63B60197CEB55A1C487989A3720')
INSERT [dbo].[tb_manager] ([id], [account], [password]) VALUES (3, N'user3', N'E10ADC3949BA59ABBE56E057F20F883E')
SET IDENTITY_INSERT [dbo].[tb_manager] OFF
/****** Object:  Table [dbo].[tb_images]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[foreign_id] [nchar](50) NULL,
	[src] [nvarchar](50) NULL,
	[upload_date] [datetime] NULL,
 CONSTRAINT [PK_tb_images] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_images] ON
INSERT [dbo].[tb_images] ([id], [foreign_id], [src], [upload_date]) VALUES (4, N'faeaf265-7d23-4a3e-8dda-9783f349f47e              ', N'201610211031569820.jpg', CAST(0x0000A6A600AD90D0 AS DateTime))
INSERT [dbo].[tb_images] ([id], [foreign_id], [src], [upload_date]) VALUES (5, N'FA00377A-A252-440C-ABBF-159F4E57B173              ', N'201610211037488026.jpg', CAST(0x0000A6A600AF2D50 AS DateTime))
INSERT [dbo].[tb_images] ([id], [foreign_id], [src], [upload_date]) VALUES (6, N'f28f2252-e85b-48db-9917-960c8c39f6c0              ', N'201610211038549372.jpg', CAST(0x0000A6A600AF7AA8 AS DateTime))
INSERT [dbo].[tb_images] ([id], [foreign_id], [src], [upload_date]) VALUES (7, N'f239a63d-004e-4369-99c5-73e0e3e7339d              ', N'201610211039298765.jpg', CAST(0x0000A6A600AFA3AC AS DateTime))
INSERT [dbo].[tb_images] ([id], [foreign_id], [src], [upload_date]) VALUES (8, N'f1cdbad6-e4a9-4cc2-9133-855931a5f738              ', N'201610211042595493.jpg', CAST(0x0000A6A600B099C4 AS DateTime))
INSERT [dbo].[tb_images] ([id], [foreign_id], [src], [upload_date]) VALUES (9, N'f1131322-7f3b-4747-9597-b001832c15e9              ', N'201610211043452353.jpg', CAST(0x0000A6A600B0CFAC AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_images] OFF
/****** Object:  Table [dbo].[tb_down_record]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_down_record](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[down_time] [datetime] NULL,
	[file_name] [nchar](50) NULL,
	[is_down] [bit] NULL,
 CONSTRAINT [PK_tb_down_record] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_down_record] ON
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (1, CAST(0x0000A69200000000 AS DateTime), N'1                                                 ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (2, CAST(0x0000A69300000000 AS DateTime), N'2                                                 ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (3, CAST(0x0000A69400000000 AS DateTime), N'3                                                 ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (4, CAST(0x0000A69500000000 AS DateTime), N'4                                                 ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (5, CAST(0x0000A69B009899A0 AS DateTime), N'201610100914549372                                ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (6, CAST(0x0000A69B0099B790 AS DateTime), N'201610100919391008                                ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (7, CAST(0x0000A69B009B0DC0 AS DateTime), N'201610100924324438                                ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (8, CAST(0x0000A69B00A2B2C8 AS DateTime), N'201610100952222196                                ', 1)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (9, CAST(0x0000A69B00A2F0E4 AS DateTime), N'201610100953155626                                ', 1)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (10, CAST(0x0000A69B00A90FB0 AS DateTime), N'201610101015324438                                ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (11, CAST(0x0000A69B00AA9E20 AS DateTime), N'201610101021129953                                ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (12, CAST(0x0000A69B00E79C30 AS DateTime), N'20161010140316850                                 ', 1)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (13, CAST(0x0000A69B00E8CBB4 AS DateTime), N'20161010140735111                                 ', 1)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (14, CAST(0x0000A69B00ED3FF0 AS DateTime), N'201610101423472802                                ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (15, CAST(0x0000A69B00EE34DC AS DateTime), N'201610101427176074                                ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (16, CAST(0x0000A69B00EEEBAC AS DateTime), N'201610101429534147                                ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (17, CAST(0x0000A69B00F0C9CC AS DateTime), N'201610101436411456                                ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (18, CAST(0x0000A69B00F10338 AS DateTime), N'201610101437303990                                ', 0)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (19, CAST(0x0000A69B00F1854C AS DateTime), N'201610101439216971                                ', 1)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (20, CAST(0x0000A69B00F1CCC8 AS DateTime), N'201610101440222196                                ', 1)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (21, CAST(0x0000A69D00F25F44 AS DateTime), N'201610121442278317                                ', 1)
INSERT [dbo].[tb_down_record] ([id], [down_time], [file_name], [is_down]) VALUES (22, CAST(0x0000A6A500E2F914 AS DateTime), N'201610201346222196                                ', 1)
SET IDENTITY_INSERT [dbo].[tb_down_record] OFF
/****** Object:  Table [dbo].[tb_borrower_info]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_borrower_info](
	[id] [varchar](50) NOT NULL,
	[name] [nchar](10) NULL,
	[gender] [bit] NULL,
	[grade] [nchar](10) NULL,
	[card_id] [varchar](50) NULL,
 CONSTRAINT [PK_tb_borrower_info] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_borrower_info] ([id], [name], [gender], [grade], [card_id]) VALUES (N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'高一        ', N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0')
INSERT [dbo].[tb_borrower_info] ([id], [name], [gender], [grade], [card_id]) VALUES (N'7F460423-C818-47BB-84D5-4604BC65D3E1', N'李四        ', 0, N'高三        ', N'8b585734-5c58-43da-b306-2a4cc0d71234')
INSERT [dbo].[tb_borrower_info] ([id], [name], [gender], [grade], [card_id]) VALUES (N'7F460423-C818-47BB-84D5-4604BC65D3E5', N'张三        ', 1, N'高一        ', N'1F747F89-11AF-479E-9392-6528E1F0ED57')
INSERT [dbo].[tb_borrower_info] ([id], [name], [gender], [grade], [card_id]) VALUES (N'9069e39c-9aef-4d7c-8052-177f78513ba5', N'王亚公       ', 1, N'高二        ', N'7599df44-644d-4a0d-ac5b-0f72ef2147c5')
INSERT [dbo].[tb_borrower_info] ([id], [name], [gender], [grade], [card_id]) VALUES (N'9246cda0-5a49-4bd2-93dc-4f3ef6e23fbb', N'赵柳        ', 1, N'高一        ', N'2a343560-cb79-4111-8384-76ec2042a711')
INSERT [dbo].[tb_borrower_info] ([id], [name], [gender], [grade], [card_id]) VALUES (N'cef9a3db-74b0-4c58-bdd4-d032d3d8faa2', N'金克强       ', 1, N'高一        ', N'66846336-3d8e-4a0c-8a6c-79d2770c46ea')
INSERT [dbo].[tb_borrower_info] ([id], [name], [gender], [grade], [card_id]) VALUES (N'd7a5cac2-6d40-4874-a19e-aa9e68819838', N'王五        ', 1, N'高二        ', N'8b585734-5c58-43da-b306-2a4cc0d7e67f')
INSERT [dbo].[tb_borrower_info] ([id], [name], [gender], [grade], [card_id]) VALUES (N'f3410fbb-0a11-4601-aaeb-e01f7d655c63', N'马辉        ', 1, N'高一        ', N'84406527-bf26-4ff4-a476-75fbe0d38be8')
/****** Object:  Table [dbo].[tb_borrowCard_stop]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_borrowCard_stop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[borrow_id] [nvarchar](50) NULL,
	[borrow_name] [nchar](10) NULL,
	[borrow_gender] [bit] NULL,
	[borrow_card_id] [nvarchar](50) NULL,
	[stop_date] [datetime] NULL,
	[relieve_date] [datetime] NULL,
	[operater] [nchar](10) NULL,
 CONSTRAINT [PK_tb_borrowCard_stop] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_borrowCard_stop] ON
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (1, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A40111F8B8 AS DateTime), CAST(0x0000A6A40111FB10 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (2, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A40111FC3C AS DateTime), CAST(0x0000A6A40111FD68 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (3, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A4011F475C AS DateTime), CAST(0x0000A6A4011F5698 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (4, N'7F460423-C818-47BB-84D5-4604BC65D3E5', N'张三        ', 1, N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A6A4011F475C AS DateTime), CAST(0x0000A6A4011F5698 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (5, N'9246cda0-5a49-4bd2-93dc-4f3ef6e23fbb', N'赵柳        ', 1, N'2a343560-cb79-4111-8384-76ec2042a711', CAST(0x0000A6A4011F4888 AS DateTime), CAST(0x0000A6A4011F5440 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (6, N'cef9a3db-74b0-4c58-bdd4-d032d3d8faa2', N'金克强       ', 1, N'66846336-3d8e-4a0c-8a6c-79d2770c46ea', CAST(0x0000A6A4011F4888 AS DateTime), CAST(0x0000A6A4011F5314 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (7, N'9069e39c-9aef-4d7c-8052-177f78513ba5', N'王亚公       ', 1, N'7599df44-644d-4a0d-ac5b-0f72ef2147c5', CAST(0x0000A6A4011F4888 AS DateTime), CAST(0x0000A6A4011F556C AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (8, N'f3410fbb-0a11-4601-aaeb-e01f7d655c63', N'马辉        ', 1, N'84406527-bf26-4ff4-a476-75fbe0d38be8', CAST(0x0000A6A4011F49B4 AS DateTime), CAST(0x0000A6A4011F51E8 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (9, N'7F460423-C818-47BB-84D5-4604BC65D3E1', N'李四        ', 0, N'8b585734-5c58-43da-b306-2a4cc0d71234', CAST(0x0000A6A4011F49B4 AS DateTime), CAST(0x0000A6A4011F50BC AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (10, N'd7a5cac2-6d40-4874-a19e-aa9e68819838', N'王五        ', 1, N'8b585734-5c58-43da-b306-2a4cc0d7e67f', CAST(0x0000A6A4011F4E64 AS DateTime), CAST(0x0000A6A4011F50BC AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (11, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A4011F57C4 AS DateTime), CAST(0x0000A6A4011F5B48 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (12, N'cef9a3db-74b0-4c58-bdd4-d032d3d8faa2', N'金克强       ', 1, N'66846336-3d8e-4a0c-8a6c-79d2770c46ea', CAST(0x0000A6A4011F58F0 AS DateTime), CAST(0x0000A6A4011F5A1C AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (13, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A5008F3F7C AS DateTime), CAST(0x0000A6A5008F40A8 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (14, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A5008FC190 AS DateTime), CAST(0x0000A6A5008FC2BC AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (15, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A50093D6E0 AS DateTime), CAST(0x0000A6A500941178 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (16, N'7F460423-C818-47BB-84D5-4604BC65D3E5', N'张三        ', 1, N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A6A50093EBF8 AS DateTime), CAST(0x0000A6A500941178 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (17, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A500952734 AS DateTime), CAST(0x0000A6A50095D6FC AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (18, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A50095DF30 AS DateTime), CAST(0x0000A6A500965B68 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (19, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A500969150 AS DateTime), CAST(0x0000A6A500A30F5C AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (20, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A500A318BC AS DateTime), CAST(0x0000A6A500A61D00 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (21, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A500A636C8 AS DateTime), CAST(0x0000A6A500A651BC AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (22, N'7F460423-C818-47BB-84D5-4604BC65D3E5', N'张三        ', 1, N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A6A500A637F4 AS DateTime), CAST(0x0000A6A500A65090 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (23, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A500A72830 AS DateTime), CAST(0x0000A6A500B6DA8C AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_stop] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [stop_date], [relieve_date], [operater]) VALUES (24, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A500B6E89C AS DateTime), CAST(0x0000A6A500B6F7D8 AS DateTime), N'admin     ')
SET IDENTITY_INSERT [dbo].[tb_borrowCard_stop] OFF
/****** Object:  Table [dbo].[tb_borrowCard_Lost]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_borrowCard_Lost](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[borrow_id] [nvarchar](50) NULL,
	[borrow_name] [nchar](10) NULL,
	[borrow_gender] [bit] NULL,
	[borrow_card_id] [nvarchar](50) NULL,
	[lost_date] [datetime] NULL,
	[relieve_date] [datetime] NULL,
	[operater] [nchar](10) NULL,
 CONSTRAINT [PK_tb_borrowCard_Lost] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_borrowCard_Lost] ON
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (1, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A40113C79C AS DateTime), CAST(0x0000A6A40113CC4C AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (2, N'7F460423-C818-47BB-84D5-4604BC65D3E5', N'张三        ', 1, N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A6A40113C8C8 AS DateTime), CAST(0x0000A6A40113CB20 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (3, N'7F460423-C818-47BB-84D5-4604BC65D3E5', N'张三        ', 1, N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A6A40113CD78 AS DateTime), CAST(0x0000A6A40113D228 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (4, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A4011F349C AS DateTime), CAST(0x0000A6A4011F3A78 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (5, N'7F460423-C818-47BB-84D5-4604BC65D3E5', N'张三        ', 1, N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A6A4011F349C AS DateTime), CAST(0x0000A6A4011F3A78 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (6, N'9246cda0-5a49-4bd2-93dc-4f3ef6e23fbb', N'赵柳        ', 1, N'2a343560-cb79-4111-8384-76ec2042a711', CAST(0x0000A6A4011F35C8 AS DateTime), CAST(0x0000A6A4011F4054 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (7, N'cef9a3db-74b0-4c58-bdd4-d032d3d8faa2', N'金克强       ', 1, N'66846336-3d8e-4a0c-8a6c-79d2770c46ea', CAST(0x0000A6A4011F35C8 AS DateTime), CAST(0x0000A6A4011F3BA4 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (8, N'9069e39c-9aef-4d7c-8052-177f78513ba5', N'王亚公       ', 1, N'7599df44-644d-4a0d-ac5b-0f72ef2147c5', CAST(0x0000A6A4011F35C8 AS DateTime), CAST(0x0000A6A4011F3BA4 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (9, N'f3410fbb-0a11-4601-aaeb-e01f7d655c63', N'马辉        ', 1, N'84406527-bf26-4ff4-a476-75fbe0d38be8', CAST(0x0000A6A4011F36F4 AS DateTime), CAST(0x0000A6A4011F3F28 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (10, N'7F460423-C818-47BB-84D5-4604BC65D3E1', N'李四        ', 0, N'8b585734-5c58-43da-b306-2a4cc0d71234', CAST(0x0000A6A4011F36F4 AS DateTime), CAST(0x0000A6A4011F3DFC AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (11, N'd7a5cac2-6d40-4874-a19e-aa9e68819838', N'王五        ', 1, N'8b585734-5c58-43da-b306-2a4cc0d7e67f', CAST(0x0000A6A4011F3820 AS DateTime), CAST(0x0000A6A4011F3DFC AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (12, N'9246cda0-5a49-4bd2-93dc-4f3ef6e23fbb', N'赵柳        ', 1, N'2a343560-cb79-4111-8384-76ec2042a711', CAST(0x0000A6A4011F4054 AS DateTime), CAST(0x0000A6A4011F43D8 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (13, N'9069e39c-9aef-4d7c-8052-177f78513ba5', N'王亚公       ', 1, N'7599df44-644d-4a0d-ac5b-0f72ef2147c5', CAST(0x0000A6A4011F4180 AS DateTime), CAST(0x0000A6A4011F43D8 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (14, N'7F460423-C818-47BB-84D5-4604BC65D3E1', N'李四        ', 0, N'8b585734-5c58-43da-b306-2a4cc0d71234', CAST(0x0000A6A4011F42AC AS DateTime), CAST(0x0000A6A4011F4504 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (15, N'7ef749eb-7e74-4a2d-98c3-d3419b294583', N'钱事        ', 1, N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A6A500A5F1A4 AS DateTime), CAST(0x0000A6A500C4B5D0 AS DateTime), N'admin     ')
INSERT [dbo].[tb_borrowCard_Lost] ([id], [borrow_id], [borrow_name], [borrow_gender], [borrow_card_id], [lost_date], [relieve_date], [operater]) VALUES (16, N'7F460423-C818-47BB-84D5-4604BC65D3E5', N'张三        ', 1, N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A6A500C4AB44 AS DateTime), NULL, N'admin     ')
SET IDENTITY_INSERT [dbo].[tb_borrowCard_Lost] OFF
/****** Object:  Table [dbo].[tb_borrow_card]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_borrow_card](
	[id] [varchar](100) NOT NULL,
	[handle_time] [datetime] NULL,
	[valid_time] [datetime] NULL,
	[ic_card] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[status] [bit] NULL,
	[stop] [bit] NULL,
	[lose] [bit] NULL,
 CONSTRAINT [PK_tb_borrow_card] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_borrow_card] ([id], [handle_time], [valid_time], [ic_card], [phone], [status], [stop], [lose]) VALUES (N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A68F00000000 AS DateTime), CAST(0x0000AAD600000000 AS DateTime), N'341226199501015917', N'13012341234', 0, 1, 1)
INSERT [dbo].[tb_borrow_card] ([id], [handle_time], [valid_time], [ic_card], [phone], [status], [stop], [lose]) VALUES (N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A68A00000000 AS DateTime), CAST(0x0000D15700000000 AS DateTime), N'341226199010105913', N'13012341234', 0, 1, 0)
INSERT [dbo].[tb_borrow_card] ([id], [handle_time], [valid_time], [ic_card], [phone], [status], [stop], [lose]) VALUES (N'2a343560-cb79-4111-8384-76ec2042a711', CAST(0x0000A68F00000000 AS DateTime), CAST(0x0000AAD600000000 AS DateTime), N'341226199501015918', N'13578947894', 1, 1, 1)
INSERT [dbo].[tb_borrow_card] ([id], [handle_time], [valid_time], [ic_card], [phone], [status], [stop], [lose]) VALUES (N'66846336-3d8e-4a0c-8a6c-79d2770c46ea', CAST(0x0000A69100000000 AS DateTime), CAST(0x0000AAD800000000 AS DateTime), N'341226199501015989', N'13612345678', 1, 1, 1)
INSERT [dbo].[tb_borrow_card] ([id], [handle_time], [valid_time], [ic_card], [phone], [status], [stop], [lose]) VALUES (N'7599df44-644d-4a0d-ac5b-0f72ef2147c5', CAST(0x0000A69100000000 AS DateTime), CAST(0x0000AAD800000000 AS DateTime), N'941226199501015916', N'19912345676', 1, 1, 1)
INSERT [dbo].[tb_borrow_card] ([id], [handle_time], [valid_time], [ic_card], [phone], [status], [stop], [lose]) VALUES (N'84406527-bf26-4ff4-a476-75fbe0d38be8', CAST(0x0000A68F00000000 AS DateTime), CAST(0x0000AAD600000000 AS DateTime), N'341226199501015919', N'1354567897', 1, 1, 1)
INSERT [dbo].[tb_borrow_card] ([id], [handle_time], [valid_time], [ic_card], [phone], [status], [stop], [lose]) VALUES (N'8b585734-5c58-43da-b306-2a4cc0d71234', CAST(0x0000A68A00000000 AS DateTime), CAST(0x0000D15700000000 AS DateTime), N'341226199010105913', N'13012341234', 1, 1, 1)
INSERT [dbo].[tb_borrow_card] ([id], [handle_time], [valid_time], [ic_card], [phone], [status], [stop], [lose]) VALUES (N'8b585734-5c58-43da-b306-2a4cc0d7e67f', CAST(0x0000A68F00000000 AS DateTime), CAST(0x0000A6AC00000000 AS DateTime), N'341226199501015123', N'13512341123', 1, 1, 1)
/****** Object:  Table [dbo].[tb_borrow_again]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_borrow_again](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[book_borrow_id] [nvarchar](50) NULL,
	[again_date] [datetime] NULL,
	[again_intime] [datetime] NULL,
	[manager] [nvarchar](10) NULL,
 CONSTRAINT [PK_tb_borrow_again] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_borrow_again] ON
INSERT [dbo].[tb_borrow_again] ([id], [book_borrow_id], [again_date], [again_intime], [manager]) VALUES (1, N'ef854421-fe60-424e-a795-1f2d13067778', CAST(0x0000A6A900B0ADB0 AS DateTime), CAST(0x0000A71D00000000 AS DateTime), N'admin')
INSERT [dbo].[tb_borrow_again] ([id], [book_borrow_id], [again_date], [again_intime], [manager]) VALUES (2, N'ef854421-fe60-424e-a795-1f2d13067778', CAST(0x0000A6A900B0DC90 AS DateTime), CAST(0x0000A71D00000000 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[tb_borrow_again] OFF
/****** Object:  Table [dbo].[tb_book_type]    Script Date: 02/13/2017 09:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_book_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[no] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[parent_no] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_book_type] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_book_type] ON
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1, N'A', N'马克思主义、列宁主义、毛泽东思想', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2, N'A1', N'马克思、恩格斯著作', N'A')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (3, N'A11', N'选集、文集', N'A1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (4, N'A12', N'单行著作', N'A1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (5, N'A13', N'书信集、日记、函电、谈话', N'A1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (6, N'A14', N'诗词', N'A1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (7, N'A15', N'手迹', N'A1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (8, N'A16', N'专题汇编', N'A1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (9, N'A18', N'语录', N'A1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (10, N'A2', N'列宁著作', N'A')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (11, N'A21', N'选集、文集', N'A2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (12, N'A22', N'单行著作', N'A2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (13, N'A23', N'书信集、日记、函电、谈话', N'A2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (14, N'A24', N'诗词', N'A2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (15, N'A25', N'手迹', N'A2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (16, N'A26', N'专题汇编', N'A2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (17, N'A28', N'语录', N'A2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (18, N'A3', N'斯大林著作', N'A')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (19, N'A31', N'选集、文集', N'A3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (20, N'A32', N'单行著作', N'A3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (21, N'A33', N'书信集、日记、函电、谈话', N'A3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (22, N'A34', N'诗词', N'A3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (23, N'A35', N'手迹', N'A3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (24, N'A36', N'专题汇编', N'A3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (25, N'A38', N'语录', N'A3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (26, N'A4', N'毛泽东著作', N'A')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (27, N'A41', N'选集、文集', N'A4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (28, N'A42', N'单行著作', N'A4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (29, N'A43', N'书信集、日记、函电、谈话', N'A4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (30, N'A44', N'诗词', N'A4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (31, N'A45', N'手迹', N'A4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (32, N'A46', N'专题汇编', N'A4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (33, N'A48', N'语录', N'A4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (34, N'A49', N'邓小平著作', N'A4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (35, N'A491', N'选集、文集', N'A49')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (36, N'A492', N'单行著作', N'A49')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (37, N'A493', N'书信集、日记、函电、谈话', N'A49')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (38, N'A494', N'诗词', N'A49')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (39, N'A495', N'手迹', N'A49')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (40, N'A496', N'专题汇编', N'A49')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (41, N'A498', N'语录', N'A49')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (42, N'A5', N'马克思、恩格斯、列宁、斯大林、毛泽东著作汇编', N'A')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (43, N'A7', N'马克思、恩格斯、列宁、斯大林、毛泽东的生平和传记', N'A')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (44, N'A71', N'马克思', N'A7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (45, N'A72', N'恩格斯', N'A7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (46, N'A73', N'列宁', N'A7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (47, N'A74', N'斯大林', N'A7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (48, N'A75', N'毛泽东', N'A7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (49, N'A76', N'邓小平', N'A7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (50, N'A8', N'马克思主义、列宁主义、毛泽东思想的学习和研究', N'A')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (51, N'A81', N'马克思主义的学习和研究', N'A8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (52, N'A811', N'马克思、恩格斯著作的学习和研究', N'A81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (53, N'A813', N'书目、索引', N'A81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (54, N'A82', N'列宁主义的学习和研究', N'A8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (55, N'A821', N'列宁著作的学习和研究', N'A82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (56, N'A823', N'书目、索引', N'A82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (57, N'A83', N'斯大林的思想的学习和研究', N'A8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (58, N'A831', N'斯大林著作的学习和研究', N'A83')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (59, N'A833', N'书目、索引', N'A83')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (60, N'A84', N'毛泽东思想的学习和研究', N'A8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (61, N'A841', N'毛泽东著作的学习和研究', N'A84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (62, N'A843', N'书目、索引', N'A84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (63, N'A849', N'邓小平理论的学习研究', N'A84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (64, N'A849.1', N'邓小平著作的学习和研究', N'A849')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (65, N'A849.3', N'书目、索引', N'A849')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (66, N'A85', N'著作汇编的学习和研究', N'A8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (67, N'B', N'哲学', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (68, N'B0', N'哲学理论', N'B')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (69, N'B00', N'马克思主义哲学', N'B0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (70, N'B01', N'哲学基本问题', N'B0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (71, N'B02', N'辩证唯物主义', N'B0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (72, N'B03', N'历史唯物主义', N'B0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (73, N'B08', N'哲学流派及其研究', N'B0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (74, N'B1', N'世界哲学', N'B')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (75, N'B2', N'中国哲学', N'B')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (76, N'B20', N'唯物主义和唯心主义（总论）', N'B2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (77, N'B21', N'古代哲学', N'B2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (78, N'B22', N'先秦哲学（公元前221年）', N'B2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (79, N'B23', N'秦汉、三国晋、南北朝哲学（公元前221年～公元589年）', N'B2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (80, N'B24', N'隋、唐、宋、元、明、清哲学（589～1840年）', N'B2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (81, N'B25', N'近代哲学（1840～1916年）', N'B2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (82, N'B26', N'现代哲学（1919～年）', N'B2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (83, N'B27', N'马克思主义哲学在中国的传播与发展', N'B2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (84, N'B3', N'亚洲哲学', N'B')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (85, N'B4', N'非洲哲学', N'B')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (86, N'B5', N'欧洲哲学', N'B')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (87, N'B6', N'大洋洲哲学', N'B')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (88, N'B7', N'美洲哲学', N'B')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (89, N'B80', N'逻辑科学（总论）', N'B8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (90, N'B81', N'逻辑学', N'B8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (91, N'B82', N'伦理学', N'B8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (92, N'B821', N'人生观、人生哲学', N'B82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (93, N'B822', N'国家道德', N'B82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (94, N'B822.9', N'职业道德（工作道德）', N'B822')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (95, N'B823', N'家庭、婚姻道德', N'B82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (96, N'B824', N'社会公德', N'B82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (97, N'B825', N'个人修养', N'B82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (98, N'B829', N'其他伦理规范', N'B82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (99, N'B83', N'美学', N'B8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (100, N'B84', N'心理学', N'B8')
GO
print 'Processed 100 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (101, N'B841', N'心理研究方法', N'B84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (102, N'B842', N'心理过程与心理状态', N'B84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (103, N'B843', N'发生心理学', N'B84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (104, N'B844', N'发展心理学', N'B84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (105, N'B845', N'生理心理学', N'B84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (106, N'B845.1', N'神经心理', N'B845')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (107, N'B845.9', N'其他', N'B845')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (108, N'B846', N'变态、病态、超意识心理学', N'B84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (109, N'B848', N'个性心理、人格心理学', N'B84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (110, N'B848.1', N'神经类型与气质', N'B848')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (111, N'B848.2', N'能力与才能', N'B848')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (112, N'B848.3', N'兴趣、态度', N'B848')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (113, N'B848.4', N'信念、意志、行为', N'B848')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (114, N'B848.5', N'智力、智慧', N'B848')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (115, N'B848.6', N'性格', N'B848')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (116, N'B848.8', N'个别差异', N'B848')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (117, N'B849', N'应用心理学', N'B84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (118, N'B9', N'无神论、宗教', N'B')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (119, N'B91', N'对宗教的分析和研究', N'B9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (120, N'B92', N'宗教理论与概况', N'B9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (121, N'B94', N'佛教', N'B9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (122, N'B95', N'道教', N'B9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (123, N'B96', N'伊斯兰教', N'B9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (124, N'B97', N'基督教', N'B9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (125, N'B98', N'其他宗教', N'B9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (126, N'B99', N'迷信术教', N'B9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (127, N'C', N'社会科学总论', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (128, N'C0', N'社会科学理论与方法论', N'C')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (129, N'C01', N'科学研究的方针、政策', N'C0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (130, N'C02', N'科学的哲学思想', N'C0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (131, N'C03', N'科学的方法论', N'C0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (132, N'C04', N'术语规范及交流', N'C0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (133, N'C06', N'学派与学说', N'C0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (134, N'C09', N'社会科学史', N'C0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (135, N'C1', N'社会科学现状、概况', N'C')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (136, N'C2', N'机关、团体、会议', N'C')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (137, N'C3', N'社会科学研究方法', N'C')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (138, N'C4', N'社会科学教育与普及', N'C')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (139, N'C49', N'社会科学普及读物', N'C4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (140, N'C5', N'社会科学丛书、文集、连续性出版物', N'C')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (141, N'C51', N'丛书（汇刻书）、文库', N'C5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (142, N'C52', N'全集、选集', N'C5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (143, N'C53', N'文集、会议录', N'C5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (144, N'C54', N'年鉴、年刊', N'C5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (145, N'C55', N'连续出版物', N'C5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (146, N'C6', N'社会科学参考工具书', N'C')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (147, N'C61', N'名词术语、辞典、百科全书（类书）', N'C6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (148, N'C62', N'手册、指南、一览表、年表', N'C6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (149, N'C8', N'统计学', N'C')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (150, N'C91', N'社会学', N'C9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (151, N'C912', N'社会结构和社会关系', N'C91')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (152, N'C912.1', N'个人（社会人）', N'C912')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (153, N'C912.2', N'社会团体', N'C912')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (154, N'C912.3', N'社会关系、社会制约', N'C912')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (155, N'C912.4', N'文化人类学、社会人类学', N'C912')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (156, N'C912.5', N'民族学', N'C912')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (157, N'C912.6', N'社会心理、社会行为', N'C912')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (158, N'C912.8', N'地区社会学', N'C912')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (159, N'C913', N'社会生活和社会问题', N'C91')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (160, N'C913.1', N'恋爱、家庭、婚姻', N'C913')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (161, N'C913.2', N'职业', N'C913')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (162, N'C913.3', N'生活与消费', N'C913')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (163, N'C913.4', N'文教卫生', N'C913')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (164, N'C913.5', N'青少年问题', N'C913')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (165, N'C913.6', N'老年人问题', N'C913')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (166, N'C913.68', N'妇女问题', N'C913.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (167, N'C913.69', N'残疾人问题', N'C913.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (168, N'C913.7', N'社会福利、救济、社会保障', N'C913')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (169, N'C913.8', N'社会病态', N'C913')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (170, N'C913.9', N'其他社会问题', N'C913')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (171, N'C914', N'社会利益', N'C91')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (172, N'C915', N'社会调查和分析', N'C91')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (173, N'C92', N'人口学', N'C9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (174, N'C93', N'管理学', N'C9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (175, N'C931', N'管理', N'C93')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (176, N'C931.4', N'办公室工作', N'C931')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (177, N'C931.46', N'文书工作', N'C931.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (178, N'C932', N'咨询学', N'C93')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (179, N'C933', N'领导学', N'C93')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (180, N'C934', N'决策学', N'C93')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (181, N'C936', N'管理组织学', N'C93')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (182, N'C939', N'应用管理学', N'C93')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (183, N'C96', N'人才学', N'C9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (184, N'C961', N'人才培养与人才选拔', N'C96')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (185, N'C961.9', N'人才预测与人才规划', N'C961')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (186, N'C962', N'人才管理', N'C96')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (187, N'C963', N'人才智力开发', N'C96')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (188, N'C964', N'世界各国人才调查及研究', N'C96')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (189, N'C97', N'劳动科学', N'C9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (190, N'C970', N'劳动科学基础理论', N'C97')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (191, N'C975', N'职业培训', N'C97')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (192, N'C976.1', N'劳动社会学', N'C976')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (193, N'C976.7', N'劳动计量学', N'C976')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (194, N'D', N'政治、法律', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (195, N'D0', N'政治理论', N'D')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (196, N'D00', N'科学社会主义理论（总论）', N'D0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (197, N'D01', N'阶级、阶级斗争理论', N'D0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (198, N'D02', N'革命理论', N'D0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (199, N'D03', N'国家理论', N'D0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (200, N'D035', N'国家行政管理', N'D03')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (201, N'D04', N'无产阶级革命与无产阶级专政理论', N'D0')
GO
print 'Processed 200 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (202, N'D05', N'政党理论', N'D0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (203, N'D06', N'民族、殖民地问题理论', N'D0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (204, N'D068', N'战争与和平问题理论', N'D06')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (205, N'D07', N'政治流派和思潮', N'D0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (206, N'D08', N'其他政治理论问题', N'D0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (207, N'D09', N'政治学史、政治思想史', N'D0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (208, N'D1', N'国际共产主义运动', N'D')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (209, N'D2', N'中国共产党', N'D')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (210, N'D20', N'党的领导人著作', N'D2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (211, N'D20', N'建党理论', N'D2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (212, N'D21', N'党章', N'D2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (213, N'D22', N'党的组织、会议及文献', N'D2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (214, N'D229', N'会议文献参考资料', N'D22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (215, N'D23', N'党史', N'D2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (216, N'D239', N'党史参考资料', N'D23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (217, N'D24', N'党的总路线和总政策', N'D2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (218, N'D25', N'党的领导', N'D2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (219, N'D26', N'党的建设', N'D2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (220, N'D261', N'思想建设', N'D26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (221, N'D262', N'组织建设', N'D26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (222, N'D263', N'党员', N'D26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (223, N'D264', N'整风整党运动', N'D26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (224, N'D27', N'中国共产党与各国共产党的关系', N'D2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (225, N'D29', N'中国共产主义青年团', N'D2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (226, N'D33', N'亚洲各国共产党', N'D3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (227, N'D34', N'非洲各国共产党', N'D3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (228, N'D35', N'欧洲各国共产党', N'D3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (229, N'D36', N'大洋洲各国共产党', N'D3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (230, N'D37', N'美洲各国共产党', N'D3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (231, N'D4', N'工人、农民、青年、妇女运动与组织', N'D')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (232, N'D41', N'工人运动与组织', N'D4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (233, N'D42', N'农民运动与组织', N'D4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (234, N'D43', N'青年、学生运动与组织', N'D4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (235, N'D431', N'世界青年学生运动与组织', N'D43')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (236, N'D432', N'中国青年学生运动与组织', N'D43')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (237, N'D44', N'妇女运动与组织', N'D4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (238, N'D441', N'世界妇女运动与组织', N'D44')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (239, N'D442', N'中国妇女运动与组织', N'D44')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (240, N'D5', N'世界政治', N'D')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (241, N'D50', N'世界政治概况', N'D5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (242, N'D51', N'世界人民革命斗争', N'D5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (243, N'D52', N'世界政治制度与国家机构', N'D5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (244, N'D55', N'世界政治事件', N'D5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (245, N'D56', N'世界社会结构', N'D5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (246, N'D57', N'社会福利与社会救济', N'D5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (247, N'D58', N'社会问题', N'D5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (248, N'D59', N'世界政治制度史', N'D5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (249, N'D6', N'中国政治', N'D')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (250, N'D60', N'政策、政论', N'D6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (251, N'D609', N'报刊社论', N'D60')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (252, N'D61', N'中国革命和建设问题', N'D6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (253, N'D62', N'政治制度与国家机构', N'D6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (254, N'D621.6', N'国家表征', N'D621')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (255, N'D63', N'国家行政管理', N'D6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (256, N'D632.1', N'社会保障与社会福利', N'D632')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (257, N'D64', N'政治思想教育', N'D6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (258, N'D642', N'革命传统教育', N'D64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (259, N'D643', N'形势教育', N'D64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (260, N'D647', N'国际主义、爱国主义教育', N'D64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (261, N'D648', N'共产主义教育', N'D64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (262, N'D648.1', N'职业道德教育', N'D648')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (263, N'D648.2', N'集体主义、革命纪律教育', N'D648')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (264, N'D648.3', N'社会公德教育', N'D648')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (265, N'D648.4', N'革命英雄主义、革命乐观主义教育', N'D648')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (266, N'D649', N'家庭、婚姻道德教育', N'D64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (267, N'D65', N'政治运动、政治事件', N'D6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (268, N'D66', N'阶级结构与社会结构', N'D6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (269, N'D668', N'社会调查和社会分析', N'D66')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (270, N'D669', N'社会生活与问题', N'D66')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (271, N'D669.1', N'恋爱、家庭婚姻', N'D669')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (272, N'D669.2', N'职业', N'D669')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (273, N'D669.3', N'生活、居住', N'D669')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (274, N'D669.5', N'青少年', N'D669')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (275, N'D669.6', N'老年', N'D669')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (276, N'D669.68', N'妇女', N'D669.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (277, N'D669.69', N'残疾人', N'D669.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (278, N'D669.7', N'社会福利', N'D669')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (279, N'D669.9', N'其他', N'D669')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (280, N'D67', N'地方政治概况', N'D6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (281, N'D675.8', N'台湾政治概况', N'D675')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (282, N'D676.58', N'香港政治概况', N'D676.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (283, N'D676.59', N'澳门政治概况', N'D676.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (284, N'D69', N'政治制度史', N'D6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (285, N'D691', N'清及清以前政治', N'D69')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (286, N'D693', N'民国时代政治', N'D69')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (287, N'D73', N'亚洲各国政治', N'D7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (288, N'D74', N'非洲各国政治', N'D7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (289, N'D75', N'欧洲各国政治', N'D7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (290, N'D76', N'大洋洲各国政治', N'D7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (291, N'D77', N'美洲各国政治', N'D7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (292, N'D731.3', N'日本政治', N'D731')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (293, N'D751.2', N'苏联政治', N'D751')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (294, N'D751.6', N'德国政治', N'D751')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (295, N'D756.1', N'英国政治', N'D756')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (296, N'D756.5', N'法国政治', N'D756')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (297, N'D771.2', N'美国政治', N'D771')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (298, N'D8', N'外交、国际关系', N'D')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (299, N'D80', N'外交、国际关系理论', N'D8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (300, N'D81', N'国际关系', N'D8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (301, N'D82', N'中国外交', N'D8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (302, N'D83', N'亚洲外交', N'D8')
GO
print 'Processed 300 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (303, N'D84', N'非洲外交', N'D8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (304, N'D85', N'欧洲外交', N'D8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (305, N'D86', N'大洋洲外交', N'D8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (306, N'D87', N'美洲外交', N'D8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (307, N'D9', N'法律', N'D')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (308, N'D949', N'法律普及读物', N'D94')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (309, N'D90', N'法的理论（法学）', N'D9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (310, N'D91', N'法学各部门', N'D9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (311, N'D92', N'中国法律', N'D9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (312, N'D920.0', N'理论', N'D920')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (313, N'D920.1', N'方针、政策及其阐述', N'D920')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (314, N'D920.5', N'解释、案例', N'D920')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (315, N'D920.9', N'法律汇编', N'D920')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (316, N'D921', N'国家法、宪法', N'D92')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (317, N'D921.1', N'国家机构组织法', N'D921')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (318, N'D921.2', N'选举法', N'D921')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (319, N'D921.8', N'地方自治法', N'D921')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (320, N'D921.9', N'特别行政区基本法', N'D921')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (321, N'D922.1', N'行政法、行政管理法', N'D922')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (322, N'D922.2', N'财政法', N'D922')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (323, N'D922.28', N'金融法', N'D922.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (324, N'D922.281', N'银行法', N'D922.28')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (325, N'D922.282', N'信托、信贷法', N'D922.28')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (326, N'D922.284', N'保险法', N'D922.28')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (327, N'D922.285', N'货币管理法令', N'D922.28')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (328, N'D922.286', N'外汇管理法令', N'D922.28')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (329, N'D922.287', N'证券管理法令', N'D922.28')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (330, N'D922.29', N'经济法', N'D922.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (331, N'D922.3', N'土地法', N'D922')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (332, N'D922.4', N'农业经济管理法令', N'D922')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (333, N'D922.5', N'劳动法', N'D922')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (334, N'D922.6', N'自然资源与环境保护法', N'D922')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (335, N'D923', N'民法', N'D92')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (336, N'D923.2', N'物权', N'D923')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (337, N'D923.3', N'债权', N'D923')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (338, N'D923.4', N'知识产权', N'D923')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (339, N'D923.5', N'继承法', N'D923')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (340, N'D923.6', N'合同法', N'D923')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (341, N'D923.8', N'民事其他法权', N'D923')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (342, N'D923.9', N'婚姻法', N'D923')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (343, N'D924', N'刑法', N'D92')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (344, N'D925', N'诉讼法', N'D92')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (345, N'D926', N'司法制度', N'D92')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (346, N'D927', N'地方法制', N'D92')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (347, N'D929', N'中国法制史', N'D92')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (348, N'D93', N'亚洲各国法律', N'D9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (349, N'D94', N'非洲各国法律', N'D9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (350, N'D95', N'欧洲各国法律', N'D9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (351, N'D96', N'大洋洲各国法律', N'D9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (352, N'D97', N'美洲各国法律', N'D9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (353, N'D99', N'国际法', N'D9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (354, N'D990', N'国际法理论', N'D99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (355, N'D993', N'领土', N'D99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (356, N'D994', N'平时国际法', N'D99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (357, N'D995', N'战时国际法（战争法）', N'D99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (358, N'D996', N'国际经济法', N'D99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (359, N'D997', N'国际私法', N'D99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (360, N'E', N'军事', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (361, N'E0', N'军事理论', N'E')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (362, N'E1', N'世界军事', N'E')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (363, N'E149', N'世界军事普及读物', N'E14')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (364, N'E12', N'军事制度', N'E1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (365, N'E13', N'军事教育与训练', N'E1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (366, N'E14', N'军事后方勤务', N'E1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (367, N'E15', N'各种武装力量（各军、兵种）', N'E1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (368, N'E16', N'军事组织与活动', N'E1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (369, N'E19', N'军事史', N'E1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (370, N'E2', N'中国军事', N'E')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (371, N'E20', N'建军理论', N'E2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (372, N'E21', N'司令部工作', N'E2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (373, N'E22', N'政治工作', N'E2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (374, N'E23', N'军事后勤', N'E2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (375, N'E24', N'生产建设工作', N'E2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (376, N'E25', N'国防建设与战备', N'E2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (377, N'E26', N'军事制度', N'E2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (378, N'E27', N'各种武装力量（各军、兵种）', N'E2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (379, N'E28', N'民兵', N'E2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (380, N'E289', N'地方军事', N'E28')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (381, N'E289.58', N'台湾军事', N'E289.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (382, N'E29', N'军事史（战史、建军史）', N'E2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (383, N'E297', N'中国人民解放军军事史', N'E29')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (384, N'E297.1', N'北伐战争时期', N'E297')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (385, N'E297.2', N'土地革命战争时期', N'E297')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (386, N'E297.3', N'抗日战争时期', N'E297')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (387, N'E297.4', N'解放战争时期', N'E297')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (388, N'E297.5', N'社会主义革命和社会主义建设时期', N'E297')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (389, N'E249', N'中国军事普及读物', N'E24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (390, N'E3', N'亚洲军事', N'E')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (391, N'E4', N'非洲军事', N'E')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (392, N'E5', N'欧洲军事', N'E')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (393, N'E6', N'大洋洲军事', N'E')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (394, N'E7', N'美洲军事', N'E')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (395, N'E8', N'战略、战役、战术', N'E')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (396, N'E81', N'战略学', N'E8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (397, N'E82', N'战役学', N'E8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (398, N'E83', N'战术学', N'E8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (399, N'E86', N'非常规战争', N'E8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (400, N'E87', N'军事情报', N'E8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (401, N'E89', N'古代兵法、战法', N'E8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (402, N'E892', N'中国', N'E89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (403, N'E9', N'军事技术', N'E')
GO
print 'Processed 400 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (404, N'E91', N'军事技术基础科学', N'E9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (405, N'E92', N'武器、军用器材', N'E9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (406, N'E95', N'军事工程', N'E9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (407, N'E96', N'军事通信', N'E9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (408, N'E99', N'军事地形学、军事地理学', N'E9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (409, N'F', N'经济', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (410, N'F0', N'政治经济学', N'F')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (411, N'F00', N'马克思主义政治经济学', N'F0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (412, N'F01', N'经济学基本问题', N'F0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (413, N'F02', N'前资本主义社会生产方式', N'F0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (414, N'F03', N'资本主义社会生产方式', N'F0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (415, N'F04', N'社会主义社会生产方式', N'F0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (416, N'F05', N'共产主义社会生产方式', N'F0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (417, N'F06', N'经济学分支科学', N'F0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (418, N'F061.2', N'增长经济学', N'F061')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (419, N'F061.3', N'发展经济学', N'F061')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (420, N'F062.1', N'资源经济学', N'F062')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (421, N'F062.2', N'生态经济学', N'F062')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (422, N'F062.3', N'科学经济学、知识经济学', N'F062')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (423, N'F062.4', N'技术经济学', N'F062')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (424, N'F062.5', N'信息经济学', N'F062')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (425, N'F062.9', N'产业经济学', N'F062')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (426, N'F063.1', N'非生产领域经济学', N'F063')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (427, N'F063.4', N'家庭经济学', N'F063')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (428, N'F069.9', N'其他', N'F069')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (429, N'F09', N'经济思想史', N'F0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (430, N'F091', N'世界', N'F09')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (431, N'F091.9', N'马克思列宁主义经济思想', N'F091')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (432, N'F091.93', N'毛泽东、邓小平经济思想', N'F091.9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (433, N'F092', N'中国经济思想', N'F09')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (434, N'F1', N'世界各国经济概况、经济史、经济地理', N'F')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (435, N'F11', N'世界经济、国际经济关系', N'F1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (436, N'F12', N'中国经济', N'F1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (437, N'F120', N'方针政策及其阐述', N'F12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (438, N'F120.2', N'中国社会主义经济基本理论', N'F120')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (439, N'F120.3', N'经济发展道路模式', N'F120')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (440, N'F120.4', N'经济发展基础', N'F120')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (441, N'F121', N'社会经济结构与体制', N'F12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (442, N'F123', N'国民经济计划和管理', N'F12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (443, N'F123.1', N'计划管理', N'F123')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (444, N'F123.13', N'计划调节', N'F123.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (445, N'F123.2', N'远景规划', N'F123')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (446, N'F123.3', N'国民经济发展综合计划', N'F123')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (447, N'F123.7', N'国有资产管理与评估', N'F123')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (448, N'F123.9', N'市场机制与市场调节', N'F123')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (449, N'F124', N'经济建设和发展', N'F12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (450, N'F124.5', N'资源开发与利用', N'F124')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (451, N'F124.6', N'提高经济效益', N'F124')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (452, N'F124.7', N'国民收入、国民财富', N'F124')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (453, N'F124.8', N'经济波动', N'F124')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (454, N'F125', N'对外经济关系', N'F12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (455, N'F126', N'人民生活状况', N'F12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (456, N'F127', N'地方经济', N'F12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (457, N'F127.9', N'特区经济、经济技术开发区经济', N'F127')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (458, N'F129', N'中国经济史', N'F12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (459, N'F129.9', N'中国经济地理', N'F129')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (460, N'F13', N'亚洲经济', N'F1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (461, N'F131.3', N'日本经济', N'F131')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (462, N'F14', N'非洲经济', N'F1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (463, N'F15', N'欧洲经济', N'F1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (464, N'F151.2', N'前苏联经济', N'F151')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (465, N'F151.6', N'德国经济', N'F151')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (466, N'F156.1', N'英国经济', N'F156')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (467, N'F156.5', N'法国经济', N'F156')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (468, N'F16', N'大洋洲经济', N'F1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (469, N'F17', N'美洲经济', N'F1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (470, N'F171.2', N'美国经济', N'F171')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (471, N'F2', N'经济计划与管理', N'F')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (472, N'F20', N'国民经济管理', N'F2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (473, N'F21', N'经济计划', N'F2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (474, N'F22', N'经济计算、经济数学方法', N'F2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (475, N'F221', N'经济核算', N'F22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (476, N'F222', N'经济统计学', N'F22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (477, N'F223', N'投入产出分析', N'F22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (478, N'F224', N'经济数学方法', N'F22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (479, N'F23', N'会计', N'F2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (480, N'F230', N'会计学', N'F23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (481, N'F231', N'会计簿记方法', N'F23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (482, N'F232', N'会计设备', N'F23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (483, N'F233', N'会议工作组织与制度', N'F23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (484, N'F234', N'各种会计和簿记', N'F23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (485, N'F234.1', N'社会会计', N'F234')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (486, N'F234.2', N'成本会计', N'F234')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (487, N'F234.3', N'管理会计', N'F234')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (488, N'F234.4', N'财务会计', N'F234')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (489, N'F234.5', N'国际会计', N'F234')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (490, N'F235', N'各部门会计和簿记', N'F23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (491, N'F239', N'审计', N'F23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (492, N'F24', N'劳动经济', N'F2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (493, N'F241.2', N'劳动力市场', N'F241')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (494, N'F241.21', N'劳动力需求', N'F241.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (495, N'F241.23', N'劳动力市场类型', N'F241.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (496, N'F25', N'物资经济', N'F2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (497, N'F27', N'企业经济', N'F2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (498, N'F270', N'企业经济理论和方法', N'F27')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (499, N'F271', N'企业体制', N'F27')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (500, N'F272', N'企业计划与经营决策', N'F27')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (501, N'F272.9', N'企业行政管理', N'F272')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (502, N'F273', N'企业生产管理', N'F27')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (503, N'F275', N'企业财务管理', N'F27')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (504, N'F276', N'各种企业经济', N'F27')
GO
print 'Processed 500 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (505, N'F276.6', N'公司', N'F276')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (506, N'F279', N'世界各国企业经济', N'F27')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (507, N'F28', N'基本建设经济', N'F2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (508, N'F29', N'城市与市政经济', N'F2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (509, N'F293', N'城市经济管理', N'F29')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (510, N'F293.3', N'房地产经济', N'F293')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (511, N'F293.30', N'房地产经济理论', N'F293.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (512, N'F293.31', N'房地产制度', N'F293.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (513, N'F293.33', N'房地产管理', N'F293.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (514, N'F293.35', N'房地产市场', N'F293.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (515, N'F3', N'农业经济', N'F')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (516, N'F32', N'中国农业经济', N'F3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (517, N'F321', N'农村经济结构与体制', N'F32')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (518, N'F321.1', N'土地问题', N'F321')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (519, N'F323', N'农业经济建设与发展', N'F32')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (520, N'F324', N'农业企业组织与管理', N'F32')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (521, N'F326', N'农业部门经济', N'F32')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (522, N'F327', N'地方农业经济', N'F32')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (523, N'F4', N'工业经济', N'F')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (524, N'F49', N'信息产业经济(总论)', N'F4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (525, N'F5', N'交通运输经济', N'F')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (526, N'F59', N'旅游经济', N'F5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (527, N'F590', N'旅游经济理论与方法', N'F59')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (528, N'F590.8', N'旅游市场', N'F590')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (529, N'F6', N'邮电经济', N'F')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (530, N'F61', N'邮政', N'F6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (531, N'F62', N'电信', N'F6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (532, N'F626', N'电信企业组织与经营管理', N'F62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (533, N'F626.5', N'通信网络企业', N'F626')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (534, N'F7', N'贸易经济', N'F')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (535, N'F71', N'国内贸易经济', N'F7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (536, N'F713', N'商品流通与市场', N'F71')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (537, N'F713.33', N'城乡贸易、集市贸易', N'F713.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (538, N'F713.34', N'民族贸易', N'F713.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (539, N'F713.35', N'期货贸易', N'F713.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (540, N'F713.359', N'拍卖', N'F713.35')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (541, N'F713.36', N'电子贸易、网上贸易', N'F713.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (542, N'F713.5', N'市场', N'F713')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (543, N'F713.50', N'市场学', N'F713.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (544, N'F713.51', N'商业信息', N'F713.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (545, N'F713.52', N'市场供需关系', N'F713.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (546, N'F713.53', N'商品供需关系', N'F713.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (547, N'F713.54', N'市场预测', N'F713.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (548, N'F713.55', N'商业心理学、市场心理学', N'F713.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (549, N'F713.56', N'市场管理', N'F713.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (550, N'F713.58', N'各种市场', N'F713.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (551, N'F713.581', N'城市市场', N'F713.58')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (552, N'F713.582', N'农村市场', N'F713.58')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (553, N'F713.584', N'技术市场', N'F713.58')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (554, N'F713.6', N'经纪人', N'F713')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (555, N'F713.7', N'商品陈列布置', N'F713')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (556, N'F713.8', N'广告', N'F713')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (557, N'F714', N'商品价格', N'F71')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (558, N'F714.1', N'物价', N'F714')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (559, N'F715', N'商业企业组织与管理', N'F71')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (560, N'F715.1', N'商业企业计划和管理体制', N'F715')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (561, N'F715.2', N'商业组织领导与劳动管理', N'F715')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (562, N'F717', N'各种商业企业', N'F71')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (563, N'F717.4', N'商业垄断组织', N'F717')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (564, N'F717.49', N'股份制商业企业', N'F717.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (565, N'F717.6', N'超级市场、连锁店、专卖店', N'F717')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (566, N'F718', N'商业工作者', N'F71')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (567, N'F719', N'服务业', N'F71')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (568, N'F719.2', N'旅馆业', N'F719')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (569, N'F719.3', N'餐饮业', N'F719')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (570, N'F719.5', N'娱乐业', N'F719')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (571, N'F719.9', N'其他', N'F719')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (572, N'F72', N'中国国内贸易经济', N'F7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (573, N'F721', N'商业经济体制和组织', N'F72')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (574, N'F721.1', N'国有商业企业', N'F721')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (575, N'F721.2', N'供销合作社、集体商业', N'F721')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (576, N'F721.3', N'公私合营商业', N'F721')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (577, N'F721.4', N'私营商业', N'F721')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (578, N'F721.5', N'股份制商业企业', N'F721')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (579, N'F721.6', N'承包、租赁', N'F721')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (580, N'F721.7', N'超级市场、连锁店、专卖店', N'F721')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (581, N'F721.8', N'专业贸易企业', N'F721')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (582, N'F724', N'商品流通', N'F72')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (583, N'F724.3', N'城乡贸易、集市贸易', N'F724')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (584, N'F724.4', N'少数民族地区贸易', N'F724')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (585, N'F724.5', N'期货贸易', N'F724')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (586, N'F724.59', N'拍卖', N'F724.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (587, N'F724.6', N'电子贸易、网上贸易', N'F724')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (588, N'F726', N'物价', N'F72')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (589, N'F74', N'国际贸易', N'F7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (590, N'F740', N'国际贸易理论与方法', N'F74')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (591, N'F740.2', N'世界市场', N'F740')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (592, N'F740.4', N'国际贸易实务', N'F740')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (593, N'F741', N'政策', N'F74')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (594, N'F742', N'国际贸易关系', N'F74')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (595, N'F743', N'国际贸易组织与会议', N'F74')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (596, N'F744', N'国际贸易条约和协定', N'F74')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (597, N'F745', N'海关及关税', N'F74')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (598, N'F746', N'世界进出口贸易概况', N'F74')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (599, N'F75', N'各国对外贸易', N'F7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (600, N'F752', N'中国对外贸易', N'F75')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (601, N'F753', N'亚洲对外贸易', N'F75')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (602, N'F754', N'非洲对外贸易', N'F75')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (603, N'F755', N'欧洲对外贸易', N'F75')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (604, N'F756', N'大洋洲对外贸易', N'F75')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (605, N'F757', N'美洲对外贸易', N'F75')
GO
print 'Processed 600 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (606, N'F76', N'商品学', N'F7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (607, N'F760.5', N'商标', N'F760')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (608, N'F8', N'财政、金融', N'F')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (609, N'F81', N'财政', N'F8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (610, N'F810', N'财政理论', N'F81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (611, N'F811', N'世界财政', N'F81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (612, N'F812', N'中国财政', N'F81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (613, N'F82', N'货币', N'F8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (614, N'F820', N'货币理论', N'F82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (615, N'F821', N'世界货币', N'F82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (616, N'F822', N'中国货币', N'F82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (617, N'F83', N'金融、银行', N'F8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (618, N'F830', N'金融、银行理论', N'F83')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (619, N'F831', N'世界金融、银行', N'F83')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (620, N'F832', N'中国金融、银行', N'F83')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (621, N'F84', N'保险', N'F8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (622, N'F840', N'保险理论', N'F84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (623, N'F840.67', N'养老保险', N'F840.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (624, N'F840.681', N'工商企业、工程保险', N'F840.68')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (625, N'F840.682', N'金融信贷保险', N'F840.68')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (626, N'F840.684', N'医疗保险', N'F840.68')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (627, N'F840.685', N'涉外保险', N'F840.68')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (628, N'F840.69', N'其他', N'F840.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (629, N'F841', N'世界保险业', N'F84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (630, N'F842', N'中国保险业', N'F84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (631, N'F842.7', N'地方保险', N'F842')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (632, N'G', N'文化、科学、教育、体育', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (633, N'G0', N'文化理论', N'G')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (634, N'G1', N'世界各国文化事业概况', N'G')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (635, N'G11', N'世界', N'G1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (636, N'G112', N'专题文化研究', N'G11')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (637, N'G114', N'文化产业、文化市场', N'G11')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (638, N'G12', N'中国', N'G1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (639, N'G122', N'文化专题研究', N'G12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (640, N'G124', N'文化产业、文化市场', N'G12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (641, N'G2', N'信息与知识传播', N'G')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (642, N'G20', N'信息与传播理论', N'G2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (643, N'G21', N'新闻学、新闻事业', N'G2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (644, N'G22', N'广播、电视事业', N'G2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (645, N'G23', N'出版事业', N'G2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (646, N'G24', N'群众文化事业', N'G2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (647, N'G241.1', N'宣传工作', N'G241')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (648, N'G25', N'图书馆学、图书馆事业', N'G2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (649, N'G254.1', N'分类法', N'G254')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (650, N'G26', N'博物馆、博物馆事业', N'G2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (651, N'G27', N'档案学、档案事业', N'G2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (652, N'G3', N'科学、科学研究', N'G')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (653, N'G302', N'知识学', N'G30')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (654, N'G303', N'未来学', N'G30')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (655, N'G305', N'科学发明、发现研究（创造学）', N'G30')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (656, N'G35', N'情报学', N'G3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (657, N'G4', N'教育', N'G')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (658, N'G40', N'教育学', N'G4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (659, N'G40012', N'全面发展教育', N'G400')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (660, N'G41', N'思想政治教育', N'G4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (661, N'G410', N'德育理论', N'G41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (662, N'G411', N'马列主义毛泽东思想教育', N'G41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (663, N'G412', N'人生观、世界观与理想教育', N'G41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (664, N'G413', N'阶级教育、革命传统教育', N'G41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (665, N'G414', N'国际主义、爱国主义教育', N'G41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (666, N'G414.1', N'形势教育', N'G414')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (667, N'G415', N'纪律、民主与法制教育', N'G41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (668, N'G416', N'思想品德教育', N'G41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (669, N'G417', N'社会公德教育', N'G41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (670, N'G418', N'军事训练教育', N'G41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (671, N'G42', N'教学理论', N'G4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (672, N'G424.7', N'学绩管理和考试', N'G424')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (673, N'G43', N'电化教育', N'G4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (674, N'G44', N'教育心理学', N'G4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (675, N'G449', N'教育心理测验与评估', N'G44')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (676, N'G45', N'教师与学生', N'G4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (677, N'G451', N'教师', N'G45')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (678, N'G455', N'学生', N'G45')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (679, N'G459', N'学校与家庭', N'G45')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (680, N'G46', N'教育行政', N'G4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (681, N'G47', N'学校管理', N'G4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (682, N'G48', N'学校建筑与设备', N'G4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (683, N'G5', N'世界各国教育事业', N'G')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (684, N'G51', N'世界', N'G5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (685, N'G52', N'中国', N'G5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (686, N'G527', N'地方教育', N'G52')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (687, N'G529', N'教育史', N'G52')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (688, N'G61', N'学前教育、幼儿教育', N'G6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (689, N'G62', N'初等教育（小学教育）', N'G6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (690, N'G620', N'初等教育理论', N'G62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (691, N'G621', N'思想政治教育', N'G62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (692, N'G622', N'教学理论、教学法', N'G62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (693, N'G623', N'各科教学法、教学参考书', N'G62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (694, N'G623.1', N'政治', N'G623')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (695, N'G623.15', N'思想品德课', N'G623.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (696, N'G623.2', N'语文', N'G623')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (697, N'G623.21', N'汉语拼音', N'G623.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (698, N'G623.22', N'识字', N'G623.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (699, N'G623.23', N'阅读', N'G623.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (700, N'G623.24', N'作文', N'G623.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (701, N'G623.29', N'少数民族语文', N'G623.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (702, N'G623.3', N'外语', N'G623')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (703, N'G623.31', N'英语', N'G623.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (704, N'G623.4', N'历史、地理', N'G623')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (705, N'G623.41', N'历史', N'G623.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (706, N'G623.45', N'地理', N'G623.4')
GO
print 'Processed 700 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (707, N'G623.5', N'数学', N'G623')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (708, N'G623.56', N'算术', N'G623.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (709, N'G623.57', N'珠算', N'G623.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (710, N'G623.58', N'计算机', N'G623.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (711, N'G623.6', N'自然常识', N'G623')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (712, N'G623.7', N'美育', N'G623')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (713, N'G623.71', N'音乐', N'G623.7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (714, N'G623.75', N'美术', N'G623.7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (715, N'G623.8', N'体育、游戏。', N'G623')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (716, N'G624', N'教材、课本、辅助教材', N'G62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (717, N'G625', N'教师与学生', N'G62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (718, N'G625.1', N'教师、班主任', N'G625')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (719, N'G625.5', N'学生', N'G625')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (720, N'G626', N'学校与家庭、学校与社会', N'G62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (721, N'G627', N'学校管理', N'G62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (722, N'G628', N'各类型小学概况', N'G62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (723, N'G629', N'世界各国初等教育概况', N'G62')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (724, N'G63', N'中等教育', N'G6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (725, N'G630', N'中等教育理论', N'G63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (726, N'G631', N'思想政治教育、德育', N'G63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (727, N'G632', N'教学理论', N'G63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (728, N'G632.479', N'试题与题解', N'G632.47')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (729, N'G633', N'各科教学法、教学参考书', N'G63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (730, N'G633.2', N'政治', N'G633')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (731, N'G633.21', N'辩证唯物主义', N'G633.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (732, N'G633.22', N'社会发展史', N'G633.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (733, N'G633.23', N'政治经济学', N'G633.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (734, N'G633.24', N'科学社会主义', N'G633.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (735, N'G633.25', N'青少年修养', N'G633.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (736, N'G633.26', N'法律常识', N'G633.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (737, N'G633.3', N'汉语语文', N'G633')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (738, N'G633.33', N'阅读', N'G633.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (739, N'G633.34', N'作文', N'G633.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (740, N'G633.39', N'中国少数民族语文', N'G633.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (741, N'G633.4', N'外语', N'G633')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (742, N'G633.41', N'英语', N'G633.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (743, N'G633.42', N'法语', N'G633.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (744, N'G633.43', N'德语', N'G633.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (745, N'G633.44', N'西班牙语', N'G633.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (746, N'G633.45', N'俄语', N'G633.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (747, N'G633.46', N'日本', N'G633.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (748, N'G633.5', N'历史、地理', N'G633')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (749, N'G633.51', N'历史', N'G633.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (750, N'G633.52', N'世界历史', N'G633.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (751, N'G633.53', N'中国历史', N'G633.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (752, N'G633.55', N'地理', N'G633.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (753, N'G633.56', N'世界地理', N'G633.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (754, N'G633.57', N'中国地理', N'G633.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (755, N'G633.58', N'其他各国地理', N'G633.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (756, N'G633.59', N'其他', N'G633.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (757, N'G633.6', N'数学', N'G633')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (758, N'G633.61', N'算术', N'G633.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (759, N'G633.62', N'代数', N'G633.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (760, N'G633.63', N'几何', N'G633.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (761, N'G633.64', N'三角', N'G633.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (762, N'G633.65', N'解析几何', N'G633.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (763, N'G633.66', N'高等数学初步', N'G633.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (764, N'G633.67', N'计算机', N'G633.6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (765, N'G633.7', N'物理', N'G633')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (766, N'G633.8', N'化学', N'G633')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (767, N'G633.91', N'生物', N'G633.9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (768, N'G633.92', N'生理卫生', N'G633.9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (769, N'G633.93', N'专业技术知识', N'G633.9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (770, N'G633.95', N'美育', N'G633.9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (771, N'G633.951', N'音乐、舞蹈', N'G633.95')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (772, N'G633.955', N'美术', N'G633.95')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (773, N'G633.96', N'体育', N'G633.9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (774, N'G634', N'课本、教材、辅助教材', N'G63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (775, N'G635', N'教师与学生', N'G63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (776, N'G635.1', N'教师、班主任', N'G635')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (777, N'G635.5', N'学生', N'G635')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (778, N'G636', N'学校与家庭、学校与社会', N'G63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (779, N'G637', N'学校管理', N'G63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (780, N'G638', N'各类型中等学校', N'G63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (781, N'G639', N'世界各国中等教育概况', N'G63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (782, N'G64', N'高等教育', N'G6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (783, N'G648', N'各类型高等学校', N'G64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (784, N'G649', N'世界各国高等教育概况', N'G64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (785, N'G65', N'师范教育', N'G6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (786, N'G71', N'职业技术教育', N'G7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (787, N'G72', N'成人教育、业余教育', N'G7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (788, N'G726.9', N'自学考试', N'G726')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (789, N'G74', N'华侨教育、侨民教育', N'G7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (790, N'G75', N'少数民族教育', N'G7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (791, N'G76', N'特殊教育', N'G7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (792, N'G77', N'社会教育', N'G7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (793, N'G78', N'家庭教育', N'G7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (794, N'G785', N'家庭教师', N'G78')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (795, N'G79', N'自学', N'G7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (796, N'G8', N'体育', N'G')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (797, N'G80', N'体育理论', N'G8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (798, N'G81', N'世界各国体育事业', N'G8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (799, N'G811', N'世界体育', N'G81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (800, N'G812', N'中国体育', N'G81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (801, N'G818', N'运动场地与设备', N'G81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (802, N'G819', N'体育运动技术（总论）', N'G81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (803, N'G82', N'田径运动', N'G8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (804, N'G83', N'体操运动', N'G8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (805, N'G84', N'球类运动', N'G8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (806, N'G841', N'篮球', N'G84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (807, N'G842', N'排球', N'G84')
GO
print 'Processed 800 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (808, N'G843', N'足球', N'G84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (809, N'G846', N'乒乓球', N'G84')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (810, N'G85', N'武术及民族形式体育', N'G8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (811, N'G852', N'中国武术', N'G85')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (812, N'G86', N'水上、冰上与雪上运动', N'G8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (813, N'G87', N'其他体育运动', N'G8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (814, N'G89', N'文体运动', N'G8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (815, N'G891', N'棋类', N'G89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (816, N'G891.1', N'国际象棋', N'G891')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (817, N'G891.2', N'中国象棋', N'G891')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (818, N'G891.3', N'围棋', N'G891')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (819, N'G891.9', N'其他', N'G891')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (820, N'G892', N'牌类', N'G89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (821, N'G893', N'康乐球、台球、弹子', N'G89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (822, N'G894', N'私人收藏', N'G89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (823, N'G894.1', N'集邮', N'G894')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (824, N'G895', N'旅行', N'G89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (825, N'G896', N'狩猎运动', N'G89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (826, N'G897', N'钓鱼', N'G89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (827, N'G898', N'游戏', N'G89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (828, N'G898.1', N'活动性游戏', N'G898')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (829, N'G898.2', N'智力游戏', N'G898')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (830, N'G899', N'其他文体活动', N'G89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (831, N'H', N'语言、文字', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (832, N'H0', N'语言学', N'H')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (833, N'H01', N'语音学', N'H0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (834, N'H019', N'朗诵法、演讲术', N'H01')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (835, N'H02', N'文字学', N'H0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (836, N'H03', N'语义学、词汇学、词义学', N'H0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (837, N'H033', N'熟语', N'H03')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (838, N'H034', N'俗语', N'H03')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (839, N'H04', N'语法学', N'H0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (840, N'H05', N'写作学、修辞学', N'H0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (841, N'H059', N'翻译学', N'H05')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (842, N'H06', N'词典学', N'H0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (843, N'H061', N'词典', N'H06')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (844, N'H1', N'汉语', N'H')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (845, N'H102', N'汉语的规范化、标准化、推广普通话', N'H10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (846, N'H109.2', N'古代汉语', N'H109')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (847, N'H109.4', N'现代汉语', N'H109')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (848, N'H11', N'语音（音韵学）', N'H1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (849, N'H12', N'文字学', N'H1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (850, N'H125.4', N'拼音读物', N'H125')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (851, N'H126', N'特种文字', N'H12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (852, N'H13', N'语义、词汇、词义（训诂学）', N'H1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (853, N'H131', N'古代词汇', N'H13')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (854, N'H136', N'现代词汇', N'H13')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (855, N'H136.3', N'成语', N'H136')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (856, N'H136.4', N'俗语', N'H136')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (857, N'H139', N'词源学（字源学）', N'H13')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (858, N'H14', N'语法', N'H1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (859, N'H141', N'古代语法（文言语法）', N'H14')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (860, N'H146', N'近现代语法', N'H14')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (861, N'H15', N'写作、修辞', N'H1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (862, N'H151', N'风格论', N'H15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (863, N'H152', N'文体论', N'H15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (864, N'H155', N'标点法', N'H15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (865, N'H159', N'翻译', N'H15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (866, N'H16', N'字典、词典、古代字书', N'H1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (867, N'H161《', N'说文》', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (868, N'H162', N'其他字书', N'H16')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (869, N'H163', N'字典', N'H16')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (870, N'H164', N'词典', N'H16')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (871, N'H17', N'方言', N'H1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (872, N'H19', N'汉语教学', N'H1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (873, N'H194', N'汉语读物', N'H19')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (874, N'H194.1', N'古代汉语读物', N'H194')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (875, N'H194.3', N'现代汉语读物', N'H194')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (876, N'H194.4', N'初级学校读物', N'H194')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (877, N'H194.5', N'中级学校读物', N'H194')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (878, N'H2', N'中国少数民族语言', N'H')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (879, N'H3', N'常用外国语', N'H')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (880, N'H31', N'英语', N'H3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (881, N'H310.1', N'非标准英语', N'H310')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (882, N'H310.4', N'英语水平考试', N'H310')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (883, N'H310.41', N'世界', N'H310.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (884, N'H310.42', N'中国', N'H310.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (885, N'H311', N'语音', N'H31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (886, N'H312', N'文字', N'H31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (887, N'H313', N'语义、词汇、词义', N'H31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (888, N'H314', N'语法', N'H31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (889, N'H315', N'写作修辞', N'H31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (890, N'H316', N'英语词典', N'H31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (891, N'H317', N'方言', N'H31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (892, N'H319', N'英语语文教学', N'H31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (893, N'H319.4', N'英语读物', N'H319')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (894, N'H319.6', N'习题、试题', N'H319')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (895, N'H319.9', N'会话', N'H319')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (896, N'H32', N'法语', N'H3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (897, N'H33', N'德语', N'H3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (898, N'H35', N'俄语', N'H3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (899, N'H36', N'日语', N'H3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (900, N'H4', N'汉藏语系', N'H')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (901, N'H5', N'阿尔泰语系', N'H')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (902, N'H7', N'印欧语系', N'H')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (903, N'H91', N'世界语', N'H9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (904, N'I', N'文学', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (905, N'I0', N'文学理论', N'I')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (906, N'I01', N'文艺美学', N'I0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (907, N'I02', N'文学理论的基本问题', N'I0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (908, N'I03', N'文艺工作者', N'I0')
GO
print 'Processed 900 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (909, N'I04', N'文学创作论', N'I0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (910, N'I05', N'各体文学理论和创作方法', N'I0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (911, N'I06', N'文学评论、文学欣赏', N'I0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (912, N'I1', N'世界文学', N'I')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (913, N'I161', N'文学词典', N'I16')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (914, N'I106', N'各体文学评论与研究', N'I10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (915, N'I109', N'文学史、文学思想史', N'I10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (916, N'I11', N'作品集', N'I1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (917, N'I12', N'诗歌集', N'I1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (918, N'I13', N'戏剧', N'I1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (919, N'I14', N'小说集', N'I1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (920, N'I15', N'报告文学集', N'I1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (921, N'I16', N'散文集', N'I1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (922, N'I17', N'民间文学集', N'I1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (923, N'I18', N'儿童文学', N'I1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (924, N'I2', N'中国文学', N'I')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (925, N'I249', N'中国文学普及读物', N'I24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (926, N'I261', N'中国文学词典', N'I26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (927, N'I262', N'中国文学手册、指南', N'I26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (928, N'I200', N'方针政策及其阐述', N'I20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (929, N'I206', N'文学评论和研究', N'I20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (930, N'I206.09', N'文学批评史', N'I206.0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (931, N'I207', N'各体文学评论和研究', N'I20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (932, N'I207.2', N'诗歌、韵文', N'I207')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (933, N'I207.3', N'戏剧', N'I207')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (934, N'I207.4', N'小说', N'I207')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (935, N'I207.411《', N'红楼梦》评论与研究', N'I207.411')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (936, N'I207.412《', N'水浒》的评论与研究', N'I207.412')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (937, N'I207.413《', N'三国演义》评论与研究', N'I207.413')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (938, N'I207.5', N'报告文学', N'I207')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (939, N'I207.6', N'散文', N'I207')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (940, N'I207.7', N'民间文学', N'I207')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (941, N'I207.8', N'儿童文学', N'I207')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (942, N'I209', N'文学史、文学思想史', N'I20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (943, N'I21', N'文学作品集', N'I2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (944, N'I210', N'鲁迅作品及研究', N'I21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (945, N'I210.1', N'全集', N'I210')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (946, N'I210.2', N'选集、文集、语录', N'I210')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (947, N'I210.4', N'杂文、散文', N'I210')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (948, N'I210.5', N'诗', N'I210')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (949, N'I210.6', N'小说', N'I210')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (950, N'I210.7', N'日记、书信', N'I210')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (951, N'I210.96', N'鲁迅思想的学习和研究', N'I210.9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (952, N'I210.97', N'著作研究', N'I210.9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (953, N'I211', N'作品综合集', N'I21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (954, N'I212/217', N'各时代作品集', N'I212/21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (955, N'I218', N'地方作品综合集', N'I21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (956, N'I219', N'群众文艺演唱材料', N'I21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (957, N'I22', N'诗歌、韵文', N'I2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (958, N'I222', N'古代作品', N'I22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (959, N'I226', N'现代作品（19111949）', N'I22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (960, N'I227', N'当代作品（1949）', N'I22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (961, N'I23', N'戏剧', N'I2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (962, N'I230', N'综合集', N'I23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (963, N'I232', N'京剧', N'I23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (964, N'I233', N'歌剧、歌舞剧、秧歌剧', N'I23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (965, N'I234', N'话剧', N'I23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (966, N'I235', N'电影、电视、广播剧本', N'I23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (967, N'I236', N'地方剧', N'I23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (968, N'I237', N'古代戏曲', N'I23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (969, N'I239', N'曲艺', N'I23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (970, N'I239.8', N'评书', N'I239')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (971, N'I24', N'小说', N'I2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (972, N'I242', N'古代至近代作品（1919年）', N'I24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (973, N'I242.1', N'笔记小说', N'I242')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (974, N'I242.3', N'话本、评话', N'I242')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (975, N'I242.4', N'章回小说', N'I242')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (976, N'I242.7', N'短篇小说', N'I242')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (977, N'I246', N'现代作品（19191949）', N'I24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (978, N'I246.1', N'笔记小说', N'I246')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (979, N'I246.3', N'评话', N'I246')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (980, N'I246.4', N'章回小说', N'I246')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (981, N'I246.5', N'新体长篇、中篇小说', N'I246')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (982, N'I246.7', N'新体短篇小说', N'I246')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (983, N'I246.8', N'故事', N'I246')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (984, N'I247', N'当代作品（1949）', N'I24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (985, N'I247.4', N'章回小说', N'I247')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (986, N'I247.5', N'新体长、中篇小说', N'I247')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (987, N'I247.51', N'革命斗争小说', N'I247.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (988, N'I247.52', N'军事小说', N'I247.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (989, N'I247.53', N'史传小说', N'I247.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (990, N'I247.54', N'经济、政治建设小说', N'I247.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (991, N'I247.55', N'科幻小说', N'I247.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (992, N'I247.56', N'惊险推理小说', N'I247.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (993, N'I247.57', N'社会言情小说', N'I247.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (994, N'I247.58', N'武侠小说', N'I247.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (995, N'I247.59', N'其他题材小说', N'I247.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (996, N'I247.7', N'新体短篇小说', N'I247')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (997, N'I247.8', N'故事、微型小说', N'I247')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (998, N'I25', N'报告文学', N'I2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (999, N'I251', N'回忆录', N'I25')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1000, N'I252', N'厂史、村史、家史', N'I25')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1001, N'I253', N'通讯、特写', N'I25')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1002, N'I253.1', N'政治、法律', N'I253')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1003, N'I253.2', N'军事、国防建设', N'I253')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1004, N'I253.3', N'经济', N'I253')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1005, N'I253.4', N'文化、教育、体育', N'I253')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1006, N'I253.5', N'文学、艺术', N'I253')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1007, N'I253.6', N'科学与工程技术', N'I253')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1008, N'I253.7', N'社会生活与社会问题', N'I253')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1009, N'I253.9', N'其他', N'I253')
GO
print 'Processed 1000 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1010, N'I26', N'散文', N'I2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1011, N'I262', N'古代作品（公元前21世纪公元前475年）', N'I26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1012, N'I263', N'封建社会作品（公元前4751840）', N'I26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1013, N'I265', N'近代作品（18401919）', N'I26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1014, N'I266', N'现代作品（19191949）', N'I26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1015, N'I266.1', N'随笔、杂文', N'I266')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1016, N'I266.3', N'小品文', N'I266')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1017, N'I266.4', N'游记', N'I266')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1018, N'I266.5', N'书信、日记', N'I266')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1019, N'I267', N'当代作品(1949)', N'I26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1020, N'I269', N'杂著', N'I26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1021, N'I27', N'民间文学', N'I2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1022, N'I276', N'古代至现代作品（1949年）', N'I27')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1023, N'I277', N'当代作品（1949）', N'I27')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1024, N'I277.2', N'民间歌谣', N'I277')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1025, N'I277.3', N'民间故事、传说', N'I277')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1026, N'I277.4', N'寓言', N'I277')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1027, N'I277.5', N'神话', N'I277')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1028, N'I277.7', N'谚语', N'I277')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1029, N'I277.8', N'谜语、笑话、幽默', N'I277')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1030, N'I28', N'儿童文学', N'I2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1031, N'I286', N'古代至现代作品（1949年）', N'I28')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1032, N'I287', N'当代作品（1949）', N'I28')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1033, N'I287.2', N'诗歌、童谣', N'I287')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1034, N'I287.3', N'儿童戏剧、歌舞剧', N'I287')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1035, N'I287.4', N'儿童小说', N'I287')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1036, N'I287.45', N'长篇、中篇小说', N'I287.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1037, N'I287.47', N'短篇小说、微型小说', N'I287.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1038, N'I287.5', N'儿童故事', N'I287')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1039, N'I287.6', N'儿童散文', N'I287')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1040, N'I287.7', N'童话、寓言', N'I287')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1041, N'I287.8', N'图画故事', N'I287')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1042, N'I29', N'少数民族文学', N'I2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1043, N'I3', N'亚洲文学', N'I')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1044, N'I4', N'非洲文学', N'I')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1045, N'I5', N'欧洲文学', N'I')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1046, N'I6', N'大洋洲文学', N'I')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1047, N'I7', N'美洲文学', N'I')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1048, N'I313', N'日本文学', N'I31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1049, N'I312', N'朝鲜文学', N'I31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1050, N'I333', N'越南文学', N'I33')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1051, N'I336', N'泰国文学', N'I33')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1052, N'I339', N'新加坡文学', N'I33')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1053, N'I351', N'印度文学', N'I35')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1054, N'I371', N'阿拉伯地区文学', N'I37')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1055, N'I512', N'前苏联文学', N'I51')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1056, N'I513', N'波兰文学', N'I51')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1057, N'I514', N'捷克文学', N'I51')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1058, N'I515', N'匈牙利文学', N'I51')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1059, N'I516', N'德国文学', N'I51')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1060, N'I561', N'英国文学', N'I56')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1061, N'I521', N'奥地利文学', N'I52')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1062, N'I532', N'瑞典文学', N'I53')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1063, N'I533', N'挪威文学', N'I53')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1064, N'I534', N'丹麦文学', N'I53')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1065, N'I545', N'希腊文学', N'I54')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1066, N'I546', N'意大利文学', N'I54')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1067, N'I562', N'爱尔兰文学', N'I56')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1068, N'I565', N'法国文学', N'I56')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1069, N'I611', N'澳大利亚文学', N'I61')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1070, N'I711', N'加拿大文学', N'I71')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1071, N'I712', N'美国文学', N'I71')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1072, N'I777', N'巴西文学', N'I77')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1073, N'I775', N'哥伦比亚文学', N'I77')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1074, N'I783', N'阿根廷文学', N'I78')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1075, N'J', N'艺术', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1076, N'J0', N'艺术理论', N'J')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1077, N'J01', N'艺术美学', N'J0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1078, N'J02', N'艺术理论的基本问题', N'J0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1079, N'J03', N'艺术工作者', N'J0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1080, N'J04', N'艺术创作方法和经验', N'J0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1081, N'J05', N'艺术评论欣赏', N'J0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1082, N'J1', N'世界各国艺术概况', N'J')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1083, N'J11', N'世界艺术', N'J1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1084, N'J12', N'中国艺术', N'J1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1085, N'J120.9', N'中国艺术史', N'J120')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1086, N'J2', N'绘画', N'J')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1087, N'J261', N'美术辞典', N'J26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1088, N'J20', N'绘画理论', N'J2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1089, N'J201', N'绘画美学', N'J20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1090, N'J202', N'绘画艺术理论的基本问题', N'J20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1091, N'J203', N'绘画工作者', N'J20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1092, N'J204', N'绘画创作方法和经验', N'J20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1093, N'J205', N'绘画评论与欣赏', N'J20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1094, N'J21', N'绘画技法', N'J2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1095, N'J211', N'一般技法', N'J21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1096, N'J212', N'中国画画技法', N'J21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1097, N'J213', N'油画技法', N'J21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1098, N'J214', N'素描、速写技法', N'J21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1099, N'J215', N'粉画、蜡笔画技法', N'J21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1100, N'J217', N'版画技法', N'J21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1101, N'J218', N'各种用途画技法', N'J21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1102, N'J22', N'中国绘画', N'J2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1103, N'J221', N'作品综合集', N'J22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1104, N'J222', N'国画', N'J22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1105, N'J223', N'油画、漆画、涂料画', N'J22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1106, N'J224', N'素描、速写', N'J22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1107, N'J225', N'水彩、水粉画', N'J22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1108, N'J226', N'粉画、蜡笔画', N'J22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1109, N'J227', N'版画', N'J22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1110, N'J228', N'各种用途画', N'J22')
GO
print 'Processed 1100 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1111, N'J228.1', N'宣传画', N'J228')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1112, N'J228.2', N'漫画', N'J228')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1113, N'J228.3', N'年画', N'J228')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1114, N'J228.4', N'连环画', N'J228')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1115, N'J228.7', N'动画（卡通）', N'J228')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1116, N'J23', N'各国绘画', N'J2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1117, N'J231', N'作品综合集', N'J23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1118, N'J232', N'民族技法画', N'J23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1119, N'J233', N'油画、漆画、涂料画', N'J23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1120, N'J234', N'素描、速写', N'J23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1121, N'J235', N'水彩、水粉画', N'J23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1122, N'J236', N'粉画、蜡笔画', N'J23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1123, N'J237', N'版画', N'J23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1124, N'J238', N'各种用途画', N'J23')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1125, N'J238.1', N'漫画、宣传画', N'J238')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1126, N'J238.7', N'动画（卡通）', N'J238')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1127, N'J29', N'书法篆刻', N'J2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1128, N'J292', N'中国书法、篆刻', N'J29')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1129, N'J292.11', N'毛笔字', N'J292.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1130, N'J292.12', N'硬笔字', N'J292.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1131, N'J292.13', N'美术字', N'J292.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1132, N'J292.2', N'碑贴、书法作品：按时代分', N'J292')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1133, N'J292.21', N'碑贴丛刻', N'J292.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1134, N'J292.3', N'书法作品：按书体分', N'J292')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1135, N'J292.4', N'篆刻、治印及作品', N'J292')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1136, N'J293', N'外文书法', N'J29')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1137, N'J3', N'雕塑', N'J')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1138, N'J305', N'雕塑评论、欣赏', N'J30')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1139, N'J31', N'雕塑技法', N'J3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1140, N'J32', N'中国雕塑', N'J3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1141, N'J33', N'各国雕塑', N'J3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1142, N'J4', N'摄影艺术', N'J')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1143, N'J40', N'摄影艺术理论', N'J4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1144, N'J41', N'摄影技术', N'J4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1145, N'J42', N'中国摄影艺术', N'J4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1146, N'J43', N'各国摄影艺术', N'J4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1147, N'J5', N'工艺美术', N'J')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1148, N'J51', N'图案学', N'J5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1149, N'J52', N'中国工艺美术', N'J5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1150, N'J522', N'图案集', N'J52')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1151, N'J523', N'染织、刺绣、服装', N'J52')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1152, N'J524', N'工商工艺美术', N'J52')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1153, N'J525', N'装饰美术', N'J52')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1154, N'J526', N'金属工艺美术', N'J52')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1155, N'J527', N'陶瓷、漆器', N'J52')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1156, N'J528', N'民间工艺美术', N'J52')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1157, N'J6', N'音乐', N'J')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1158, N'J661', N'音乐词典', N'J66')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1159, N'J60', N'音乐理论', N'J6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1160, N'J61', N'音乐技术理论与方法', N'J6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1161, N'J613', N'基本乐科', N'J61')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1162, N'J613.1', N'视唱练耳', N'J613')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1163, N'J613.2', N'读谱法、记谱法', N'J613')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1164, N'J616', N'声乐理论', N'J61')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1165, N'J616.1', N'发声法', N'J616')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1166, N'J616.2', N'歌唱法', N'J616')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1167, N'J617', N'戏剧音乐理论', N'J61')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1168, N'J62', N'器乐理论与演奏法', N'J6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1169, N'J63', N'民族器乐理论与方法', N'J6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1170, N'J632', N'中国民族器乐', N'J63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1171, N'J64', N'中国音乐作品', N'J6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1172, N'J642', N'歌曲（综合性歌曲集）', N'J64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1173, N'J642.1', N'群众歌曲', N'J642')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1174, N'J642.2', N'民族歌曲、地方歌曲', N'J642')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1175, N'J642.3', N'练声曲', N'J642')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1176, N'J642.4', N'戏剧电影歌曲', N'J642')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1177, N'J642.5', N'创作歌曲', N'J642')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1178, N'J642.6', N'儿童歌曲', N'J642')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1179, N'J642.7', N'古代歌曲', N'J642')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1180, N'J643', N'戏剧音乐、配乐音乐曲谱', N'J64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1181, N'J647', N'器乐曲', N'J64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1182, N'J648', N'民族器乐曲', N'J64')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1183, N'J65', N'世界各国音乐作品', N'J6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1184, N'J652', N'歌曲', N'J65')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1185, N'J7', N'舞蹈', N'J')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1186, N'J70', N'舞蹈理论', N'J7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1187, N'J71', N'舞蹈技术、方法', N'J7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1188, N'J72', N'中国舞蹈、舞剧', N'J7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1189, N'J721', N'舞蹈图谱', N'J72')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1190, N'J722', N'舞蹈', N'J72')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1191, N'J722.1', N'集体舞蹈', N'J722')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1192, N'J722.2', N'民族舞蹈', N'J722')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1193, N'J722.3', N'儿童舞蹈', N'J722')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1194, N'J722.5', N'芭蕾舞蹈', N'J722')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1195, N'J722.8', N'交际舞', N'J722')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1196, N'J73', N'各国舞蹈、舞剧', N'J7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1197, N'J79', N'舞蹈事业', N'J7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1198, N'J8', N'戏剧艺术', N'J')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1199, N'J82', N'中国戏剧', N'J8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1200, N'J821', N'京剧艺术', N'J82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1201, N'J83', N'各国戏剧艺术', N'J8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1202, N'J9', N'电影、电视艺术', N'J')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1203, N'J905', N'电影、电视的评论、欣赏', N'J90')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1204, N'J991.7', N'世界电影评奖', N'J991')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1205, N'J992.7', N'中国电视评奖', N'J992')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1206, N'K', N'历史、地理', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1207, N'K0', N'史学理论', N'K')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1208, N'K03', N'史学专论', N'K0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1209, N'K09', N'史学史', N'K0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1210, N'K1', N'世界史', N'K')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1211, N'K10', N'通史', N'K1')
GO
print 'Processed 1200 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1212, N'K101', N'革命史', N'K10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1213, N'K103', N'文化史', N'K10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1214, N'K105', N'历史事件', N'K10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1215, N'K106', N'史料', N'K10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1216, N'K107', N'研究、考订、评论', N'K10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1217, N'K108', N'年表', N'K10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1218, N'K109', N'世界历史普及读物', N'K10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1219, N'K11', N'上古史', N'K1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1220, N'K12', N'古代史', N'K1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1221, N'K13', N'中世纪史', N'K1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1222, N'K14', N'近代史（16401917）', N'K1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1223, N'K15', N'现代史（1917）', N'K1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1224, N'K152', N'第二次世界大战', N'K15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1225, N'K18', N'民族史志', N'K1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1226, N'K2', N'中国史', N'K')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1227, N'K20', N'通史', N'K2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1228, N'K201', N'革命史', N'K20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1229, N'K203', N'文化史', N'K20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1230, N'K204', N'古代史籍', N'K20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1231, N'K205', N'历史事件', N'K20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1232, N'K206', N'史料', N'K20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1233, N'K206.5', N'诏令、奏议', N'K206')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1234, N'K206.6', N'笔记、掌故、回忆录', N'K206')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1235, N'K207', N'历史研究、考订、评论', N'K20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1236, N'K208', N'年表', N'K20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1237, N'K209', N'中国历史普及读物', N'K20')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1238, N'K21', N'原始社会', N'K2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1239, N'K22', N'奴隶社会（公元前21世纪公元前475年）', N'K2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1240, N'K23', N'封建社会（公元前475公元581年）', N'K2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1241, N'K24', N'隋唐至清前朝（5811840年）', N'K2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1242, N'K241', N'隋', N'K24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1243, N'K242', N'唐', N'K24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1244, N'K243', N'五代、十国', N'K24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1245, N'K244', N'北宋', N'K24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1246, N'K245', N'南宋', N'K24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1247, N'K246', N'辽、金', N'K24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1248, N'K247', N'元', N'K24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1249, N'K248', N'明', N'K24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1250, N'K249', N'清', N'K24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1251, N'K25', N'半殖民地、半封建社会（18401949）', N'K2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1252, N'K258', N'中华民国早期', N'K25')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1253, N'K26', N'新民主主义革命时期（19191949）', N'K2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1254, N'K261', N'五四运动和中国共产党成立后（19191924）', N'K26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1255, N'K262', N'第一次国内革命战争时期（19241927）', N'K26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1256, N'K263', N'第二次国内革命战争（土地革命战争）时期（19271937）', N'K26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1257, N'K264', N'日本帝国主义入侵及全国抗日民主运动', N'K26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1258, N'K265', N'抗日战争时期', N'K26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1259, N'K266', N'第三次国内革命（解放战争）时期（19451949）', N'K26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1260, N'K269', N'解放区的革命建设和发展', N'K26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1261, N'K27', N'中华人民共和国：社会主义革命和社会主义建设时期（1949）', N'K2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1262, N'K28', N'民族史志', N'K2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1263, N'K29', N'地方史志', N'K2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1264, N'K296.58', N'香港', N'K296.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1265, N'K296.59', N'澳门', N'K296.5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1266, N'K295.8', N'台湾', N'K295')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1267, N'K3', N'亚洲各国历史', N'K')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1268, N'K4', N'非洲各国历史', N'K')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1269, N'K5', N'欧洲各国历史', N'K')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1270, N'K6', N'大洋洲各国历史', N'K')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1271, N'K7', N'美洲各国历史', N'K')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1272, N'K81', N'人物传记', N'K8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1273, N'K810', N'传记研究与编写', N'K81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1274, N'K810.1', N'传记写作法', N'K810')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1275, N'K810.2', N'谱系学', N'K810')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1276, N'K811', N'世界人物传记', N'K81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1277, N'K81161', N'人名词典、姓氏词典', N'K811')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1278, N'K81164', N'生卒年表、疑年表、年谱', N'K811')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1279, N'K812', N'人物总传：按时代分', N'K81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1280, N'K815', N'人物总传：按学科分', N'K81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1281, N'K82', N'中国人物传记', N'K8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1282, N'K8261', N'人名词典、姓氏词典', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1283, N'K8264', N'生卒年表、疑年表、年谱', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1284, N'K820', N'人物总传：按时代分', N'K82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1285, N'K820.8', N'人物总传：按地区分', N'K820')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1286, N'K825', N'人物传记：按学科分', N'K82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1287, N'K825.1', N'哲学', N'K825')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1288, N'K825.19', N'法律', N'K825.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1289, N'K825.2', N'军事', N'K825')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1290, N'K825.3', N'经济', N'K825')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1291, N'K825.31', N'经济学家', N'K825.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1292, N'K825.34', N'金融、保险', N'K825.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1293, N'K825.38', N'企业家', N'K825.3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1294, N'K825.4', N'文化、教育、体育', N'K825')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1295, N'K825.42', N'新闻、广播、出版', N'K825.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1296, N'K825.46', N'教育', N'K825.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1297, N'K825.47', N'体育', N'K825.4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1298, N'K825.5', N'语言、文字', N'K825')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1299, N'K825.6', N'文学', N'K825')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1300, N'K825.7', N'艺术', N'K825')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1301, N'K825.72', N'美术', N'K825.7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1302, N'K825.76', N'音乐、舞蹈', N'K825.7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1303, N'K825.78', N'戏剧、电影、电视', N'K825.7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1304, N'K825.8', N'历史、地理', N'K825')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1305, N'K826.1', N'自然技术、工程技术', N'K826')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1306, N'K826.11', N'数理科学', N'K826.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1307, N'K826.13', N'化学', N'K826.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1308, N'K826.14', N'天文、地球科学', N'K826.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1309, N'K826.15', N'生物学', N'K826.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1310, N'K826.16', N'工程技术', N'K826.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1311, N'K826.2', N'医学、卫生', N'K826')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1312, N'K826.3', N'农业、林业、畜牧业、渔业', N'K826')
GO
print 'Processed 1300 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1313, N'K827', N'社会政治人物传', N'K82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1314, N'K828', N'社会各界人物', N'K82')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1315, N'K828.1', N'工人、农民', N'K828')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1316, N'K828.2', N'公务员', N'K828')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1317, N'K828.3', N'个体劳动者', N'K828')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1318, N'K828.4', N'青年、学生', N'K828')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1319, N'K828.5', N'妇女', N'K828')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1320, N'K828.6', N'残疾人', N'K828')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1321, N'K828.8', N'华侨', N'K828')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1322, N'K828.9', N'其他人物', N'K828')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1323, N'K833', N'亚洲人物传记', N'K83')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1324, N'K834', N'非洲人物传记', N'K83')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1325, N'K835', N'欧洲人物传记', N'K83')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1326, N'K836', N'大洋洲人物传记', N'K83')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1327, N'K837', N'美洲人物传记', N'K83')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1328, N'K85', N'文物考古', N'K8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1329, N'K86', N'世界文物考古', N'K8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1330, N'K87', N'中国文物考古', N'K8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1331, N'K873', N'出土文物图录', N'K87')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1332, N'K875', N'各种用品器物', N'K87')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1333, N'K876', N'各种材料器物', N'K87')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1334, N'K877', N'古书契', N'K87')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1335, N'K878', N'遗址', N'K87')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1336, N'K879', N'美术考古', N'K87')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1337, N'K89', N'风俗习惯', N'K8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1338, N'K890', N'民俗学', N'K89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1339, N'K891', N'世界风俗习惯', N'K89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1340, N'K892', N'中国风俗习惯', N'K89')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1341, N'K892.21', N'生育、诞辰', N'K892.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1342, N'K892.26', N'礼仪、礼节', N'K892.2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1343, N'K892.9', N'古代礼制', N'K892')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1344, N'K9', N'地理', N'K')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1345, N'K90', N'地理学', N'K9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1346, N'K91', N'世界地理', N'K9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1347, N'K92', N'中国地理', N'K9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1348, N'K928', N'专类地理', N'K92')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1349, N'K928.1', N'疆界（包括海疆）', N'K928')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1350, N'K928.2', N'政治区划', N'K928')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1351, N'K928.3', N'山', N'K928')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1352, N'K928.4', N'水', N'K928')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1353, N'K928.5', N'城市、村落', N'K928')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1354, N'K928.6', N'历史地理', N'K928')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1355, N'K928.7', N'名胜古迹', N'K928')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1356, N'K928.70', N'各地名胜古迹汇编', N'K928.7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1357, N'K928.8', N'现代著名建筑', N'K928')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1358, N'K928.9', N'旅行、游记', N'K928')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1359, N'K93', N'亚洲各国地理', N'K9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1360, N'K94', N'非洲各国地理', N'K9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1361, N'K95', N'欧洲各国地理', N'K9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1362, N'K96', N'大洋洲各国地理', N'K9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1363, N'K97', N'美洲各国地理', N'K9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1364, N'K99', N'地图', N'K9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1365, N'K991', N'世界', N'K99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1366, N'K992', N'中国', N'K99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1367, N'K993', N'亚洲各国地图', N'K99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1368, N'K994', N'非洲各国地图', N'K99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1369, N'K995', N'欧洲各国地图', N'K99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1370, N'K996', N'大洋洲各国地图', N'K99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1371, N'K997', N'美洲各国地图', N'K99')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1372, N'N', N'自然科学总论', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1373, N'N0', N'自然科学理论与方法论', N'N')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1374, N'N01', N'科学研究的方针、政策及其阐述', N'N0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1375, N'N02', N'科学的哲学原理', N'N0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1376, N'N03', N'科学的方法论', N'N0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1377, N'N04', N'术语规范及交流', N'N0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1378, N'N06', N'学派与学说', N'N0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1379, N'N09', N'自然科学史', N'N0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1380, N'N1', N'自然科学现状、状况', N'N')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1381, N'N2', N'自然科学机关、团体、会议', N'N')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1382, N'N3', N'自然科学研究方法', N'N')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1383, N'N4', N'自然科学教育与普及', N'N')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1384, N'N49', N'科学普及读物', N'N4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1385, N'N5', N'自然科学丛书、文集、连续出版物', N'N')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1386, N'N51', N'丛书、文库', N'N5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1387, N'N52', N'全集、选集', N'N5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1388, N'N53', N'论文集', N'N5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1389, N'N54', N'年鉴、年刊', N'N5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1390, N'N55', N'连续出版物', N'N5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1391, N'N56', N'政府出版物、团体出版物', N'N5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1392, N'N6', N'自然科学参考工具书', N'N')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1393, N'N61', N'名词术语、辞典、百科全书', N'N6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1394, N'N62', N'手册、指南、名录、一览表、年表', N'N6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1395, N'N63', N'产品目录、产品说明书', N'N6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1396, N'N64', N'图解、图册', N'N6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1397, N'N65', N'条例、规程、标准', N'N6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1398, N'N66', N'统计资料', N'N6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1399, N'N67', N'参考资料', N'N6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1400, N'N8', N'自然科学调查、考察', N'N')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1401, N'N91', N'自然研究、自然历史', N'N9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1402, N'N93', N'非线性科学', N'N9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1403, N'N94', N'系统学', N'N9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1404, N'N941', N'系统学、现代系统理论', N'N94')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1405, N'N945', N'系统工程', N'N94')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1406, N'N949', N'系统科学在各方面的应用', N'N94')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1407, N'O', N'数理科学和化学', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1408, N'O18', N'计算工具', N'O1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1409, N'O11', N'古典数学', N'O1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1410, N'O119', N'中国数学', N'O11')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1411, N'O12', N'初等数学', N'O1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1412, N'O121', N'算术', N'O12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1413, N'O122', N'初等代数', N'O12')
GO
print 'Processed 1400 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1414, N'O123', N'初等几何', N'O12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1415, N'O124', N'三角', N'O12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1416, N'O13', N'高等数学', N'O1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1417, N'O14', N'数理逻辑、数学基础', N'O1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1418, N'O15', N'代数、数论、组合理论', N'O1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1419, N'O151', N'代数方程式论、，线性代数', N'O15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1420, N'O152', N'群论', N'O15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1421, N'O153', N'抽象代数（近世代数）', N'O15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1422, N'O154', N'范畴论', N'O15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1423, N'O155', N'微分代数、差分代数', N'O15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1424, N'O156', N'数论', N'O15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1425, N'O157', N'组合数学', N'O15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1426, N'O158', N'离散数学', N'O15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1427, N'O159', N'模糊数学', N'O15')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1428, N'O17', N'数学分析', N'O1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1429, N'O171', N'分析基础', N'O17')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1430, N'O172', N'微积分', N'O17')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1431, N'O173', N'无穷极数论', N'O17')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1432, N'O174', N'函数论', N'O17')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1433, N'O175', N'微分方程', N'O17')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1434, N'O176', N'变分法', N'O17')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1435, N'O177', N'泛函分析', N'O17')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1436, N'O178', N'不等式及其他', N'O17')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1437, N'O18', N'几何、拓扑', N'O1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1438, N'O181', N'几何基础', N'O18')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1439, N'O182', N'解析几何', N'O18')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1440, N'O183', N'向量和张量分析', N'O18')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1441, N'O184', N'非欧几何、多维空间几何', N'O18')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1442, N'O185', N'画法几何', N'O18')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1443, N'O186', N'微分几何和积分几何', N'O18')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1444, N'O187', N'代数几何', N'O18')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1445, N'O188', N'拓扑（形势几何学）', N'O18')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1446, N'O21', N'概率论与数理统计', N'O2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1447, N'O211', N'概率论', N'O21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1448, N'O212', N'数理统计', N'O21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1449, N'O213', N'应用统计数学', N'O21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1450, N'O22', N'运筹学', N'O2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1451, N'O23', N'控制论、信息论', N'O2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1452, N'O24', N'计算数学', N'O2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1453, N'O29', N'应用数学', N'O2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1454, N'O3', N'力学', N'O')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1455, N'O31', N'理论力学', N'O3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1456, N'O32', N'振动理论', N'O3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1457, N'O34', N'固体力学', N'O3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1458, N'O35', N'流体力学', N'O3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1459, N'O38', N'爆炸力学', N'O3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1460, N'O39', N'应用力学', N'O3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1461, N'O4', N'物理学', N'O')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1462, N'O433', N'物理学实验方法与设备', N'O43')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1463, N'O439', N'电子计算机在物理学中的应用', N'O43')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1464, N'O461', N'物理学词典', N'O46')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1465, N'O41', N'理论物理学', N'O4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1466, N'O42', N'声学', N'O4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1467, N'O412', N'相对论', N'O41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1468, N'O413', N'量子论', N'O41')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1469, N'O43', N'光学', N'O4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1470, N'O44', N'电磁学、电动力学', N'O4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1471, N'O45', N'无线物理学', N'O4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1472, N'O46', N'真空无线电子学', N'O4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1473, N'O47', N'半导体物理学', N'O4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1474, N'O48', N'固体物理学', N'O4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1475, N'O51', N'低温物理学', N'O5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1476, N'O52', N'高压与高温物理学', N'O5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1477, N'O53', N'等离子体物理学', N'O5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1478, N'O55', N'热学与物质分子运动论', N'O5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1479, N'O56', N'分子物理学、原子物理学', N'O5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1480, N'O57', N'原子核物理学、高能物理学', N'O5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1481, N'O59', N'应用物理学', N'O5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1482, N'O6', N'化学', N'O')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1483, N'O661', N'化学词典', N'O66')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1484, N'O63', N'化学实验（实验化学）', N'O6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1485, N'O639', N'电子计算机在化学中的应用', N'O63')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1486, N'O664', N'化学用表', N'O66')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1487, N'O61', N'无机化学', N'O6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1488, N'O62', N'有机化学', N'O6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1489, N'O63', N'高分子化学（高聚物）', N'O6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1490, N'O64', N'物理化学（理论化学）、化学物理', N'O6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1491, N'O65', N'分析化学', N'O6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1492, N'O69', N'应用化学', N'O6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1493, N'O7', N'晶体学', N'O')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1494, N'P', N'天文学、地理科学', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1495, N'P1', N'天文学', N'P')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1496, N'P109', N'天文学史', N'P10')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1497, N'P11', N'天文观测设备与观测资料', N'P1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1498, N'P12', N'天体测量学', N'P1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1499, N'P13', N'天体力学', N'P1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1500, N'P14', N'天体物理学', N'P1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1501, N'P15', N'恒星天文学、星系天文学、宇宙学', N'P1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1502, N'P16', N'射电天文学（无线电天文学）', N'P1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1503, N'P17', N'空间天文学', N'P1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1504, N'P18', N'太阳系', N'P1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1505, N'P19', N'时间、历法', N'P1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1506, N'P194', N'历法', N'P19')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1507, N'P195', N'历书', N'P19')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1508, N'P197', N'天文年历', N'P19')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1509, N'P2', N'测绘学', N'P')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1510, N'P3', N'地球物理学', N'P')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1511, N'P315', N'地震学', N'P31')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1512, N'P4', N'大气科学（气象学）', N'P')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1513, N'P5', N'地质学', N'P')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1514, N'P7', N'海洋学', N'P')
GO
print 'Processed 1500 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1515, N'P9', N'自然地理学', N'P')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1516, N'P93', N'部门自然地理学', N'P9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1517, N'P94', N'区域自然地理学', N'P9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1518, N'P96', N'自然资源学', N'P9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1519, N'P98', N'自然地理图', N'P9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1520, N'Q', N'生物科学', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1521, N'Q49', N'生物学的普及读物', N'Q4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1522, N'Q61', N'物理学词典', N'Q6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1523, N'Q1', N'普通生物学', N'Q')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1524, N'Q10', N'生命的起源', N'Q1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1525, N'Q11', N'生物演化和发展', N'Q1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1526, N'Q13', N'生物形态学', N'Q1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1527, N'Q14', N'生态学', N'Q1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1528, N'Q15', N'生物分布与生物地理学', N'Q1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1529, N'Q16', N'保护生物学', N'Q1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1530, N'Q17', N'水生生物学', N'Q1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1531, N'Q18', N'寄生生物学', N'Q1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1532, N'Q19', N'生物分类学', N'Q1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1533, N'Q2', N'细胞生物学', N'Q')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1534, N'Q3', N'遗传学', N'Q')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1535, N'Q4', N'生理学', N'Q')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1536, N'Q5', N'生物化学', N'Q')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1537, N'Q6', N'生物物理学', N'Q')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1538, N'Q7', N'分子生物学', N'Q')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1539, N'Q75', N'分子遗传学', N'Q7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1540, N'Q78', N'基因工程（遗传工程）', N'Q7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1541, N'Q81', N'生物工程学（生物技术）', N'Q8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1542, N'Q91', N'古生物学', N'Q9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1543, N'Q93', N'微生物学', N'Q9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1544, N'Q939.1', N'细菌学', N'Q939')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1545, N'Q94', N'植物学', N'Q9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1546, N'Q9449', N'普及读物', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1547, N'Q9461', N'植物学词典', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1548, N'Q95', N'动物学', N'Q9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1549, N'Q9549', N'普及读物', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1550, N'Q9561', N'动物学词典', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1551, N'Q96', N'昆虫学', N'Q9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1552, N'Q98', N'人类学', N'Q9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1553, N'Q981.1', N'人类起源论', N'Q981')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1554, N'Q987', N'人类遗传学', N'Q98')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1555, N'R', N'医学、卫生', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1556, N'R61', N'医药卫生词典', N'R6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1557, N'R62', N'医药卫生手册', N'R6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1558, N'R1', N'预防医学、卫生学', N'R')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1559, N'R11', N'卫生基础科学', N'R1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1560, N'R12', N'环境卫生、环境医学', N'R1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1561, N'R13', N'劳动卫生', N'R1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1562, N'R14', N'放射卫生', N'R1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1563, N'R15', N'营养卫生、食品卫生', N'R1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1564, N'R16', N'个人卫生', N'R1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1565, N'R161', N'一般保健法', N'R16')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1566, N'R163', N'生活制度与卫生', N'R16')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1567, N'R167', N'性卫生', N'R16')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1568, N'R169', N'计划生育与卫生', N'R16')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1569, N'R17', N'妇幼卫生', N'R1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1570, N'R179', N'儿童、少年卫生', N'R17')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1571, N'R18', N'流行病学与防疫', N'R1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1572, N'R19', N'保健组织事业（卫生事业管理）', N'R1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1573, N'R2', N'中国医学', N'R')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1574, N'R21', N'中医预防、卫生学', N'R2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1575, N'R212', N'养生', N'R21')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1576, N'R22', N'中医基础理论', N'R2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1577, N'R24', N'中医临床学', N'R2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1578, N'R241', N'中医诊断学', N'R24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1579, N'R243', N'中草药治疗学', N'R24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1580, N'R244', N'外治法（物理疗法）', N'R24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1581, N'R245', N'针灸疗法', N'R24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1582, N'R247', N'其他疗法', N'R24')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1583, N'R278', N'中医急症学', N'R27')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1584, N'R28', N'中药学', N'R2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1585, N'R289', N'方剂学', N'R28')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1586, N'R262', N'中医各科手册', N'R26')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1587, N'R3', N'基础医学', N'R')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1588, N'R32', N'人体形态学', N'R3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1589, N'R33', N'人体生理学', N'R3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1590, N'R338', N'神经生理', N'R33')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1591, N'R339', N'感觉器官生理学', N'R33')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1592, N'R36', N'病理学', N'R3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1593, N'R392', N'医学免疫学', N'R39')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1594, N'R394', N'医学遗传学', N'R39')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1595, N'R395', N'医学心理学、病理心理学', N'R39')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1596, N'R4', N'临床医学', N'R')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1597, N'R44', N'诊断学', N'R4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1598, N'R45', N'治疗学', N'R4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1599, N'R47', N'护理学', N'R4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1600, N'R48', N'临终关怀学', N'R4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1601, N'R49', N'康复医学', N'R4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1602, N'R5', N'内科学', N'R')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1603, N'R51', N'传染病', N'R5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1604, N'R52', N'结核病', N'R5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1605, N'R53', N'寄生虫病', N'R5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1606, N'R54', N'心脏、血管疾病', N'R5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1607, N'R55', N'血液及淋巴系疾病', N'R5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1608, N'R56', N'呼吸及胸部疾病', N'R5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1609, N'R57', N'消化系及腹部疾病', N'R5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1610, N'R58', N'内分泌腺疾病及代谢病', N'R5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1611, N'R59', N'全身性疾病', N'R5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1612, N'R592', N'老年病学', N'R59')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1613, N'R599', N'地方病学', N'R59')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1614, N'R6', N'外科学', N'R')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1615, N'R62', N'整形外科学', N'R6')
GO
print 'Processed 1600 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1616, N'R64', N'创伤外科学', N'R6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1617, N'R68', N'骨科学', N'R6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1618, N'R69', N'泌尿科学', N'R6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1619, N'R71', N'妇产科学', N'R7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1620, N'R72', N'儿科学', N'R7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1621, N'R73', N'肿瘤学', N'R7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1622, N'R74', N'神经病学与精神病学', N'R7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1623, N'R75', N'皮肤病学与性病学', N'R7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1624, N'R76', N'耳鼻咽喉科学', N'R7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1625, N'R77', N'眼科学', N'R7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1626, N'R78', N'口腔科学', N'R7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1627, N'R8', N'特种医学', N'R')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1628, N'R9', N'药学', N'R')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1629, N'S', N'农业科学', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1630, N'S0', N'一般性理论', N'S')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1631, N'S01', N'农业科学研究方针、政策及其阐述', N'S0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1632, N'S1', N'农业基础科学', N'S')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1633, N'S11', N'农业数学', N'S1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1634, N'S12', N'农业物理学', N'S1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1635, N'S13', N'农业化学', N'S1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1636, N'S14', N'肥料学', N'S1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1637, N'S15', N'土壤学', N'S1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1638, N'S16', N'农业气象学', N'S1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1639, N'S18', N'农业生物学', N'S1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1640, N'S2', N'农业工程', N'S')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1641, N'S21', N'农业动力、农村能源', N'S2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1642, N'S22', N'农业机械及农具', N'S2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1643, N'S23', N'农业机械化', N'S2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1644, N'S27', N'农田水利', N'S2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1645, N'S28', N'农田基本建设、农垦', N'S2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1646, N'S3', N'农学（农艺）', N'S')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1647, N'S31', N'作物生物学原理、栽培技术与方法', N'S3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1648, N'S32', N'作物品种与种质资源', N'S3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1649, N'S33', N'作物遗传育种与良种繁殖', N'S3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1650, N'S34', N'耕作学与有机农业', N'S3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1651, N'S35', N'播种、栽植', N'S3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1652, N'S36', N'田间管理', N'S3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1653, N'S37', N'农产品收获、贮藏与加工', N'S3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1654, N'S38', N'农产品的综合利用', N'S3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1655, N'S4', N'植物保护', N'S')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1656, N'S41', N'植物检疫', N'S4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1657, N'S42', N'气象灾害预防', N'S4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1658, N'S43', N'病虫害及其防治', N'S4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1659, N'S44', N'鸟兽害与防治', N'S4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1660, N'S45', N'有害植物及其清除', N'S4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1661, N'S46', N'其他灾害及其防治', N'S4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1662, N'S48', N'农药防治（化学防治）', N'S4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1663, N'S49', N'植物保护机械', N'S4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1664, N'S5', N'农作物', N'S')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1665, N'S51', N'禾谷类作物', N'S5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1666, N'S52', N'豆类作物', N'S5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1667, N'S53', N'薯类作物', N'S5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1668, N'S54', N'饲料作物、牧草', N'S5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1669, N'S55', N'绿肥作物', N'S5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1670, N'S56', N'经济作物', N'S5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1671, N'S58', N'野生植物', N'S5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1672, N'S59', N'热带、亚热带作物', N'S5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1673, N'S6', N'园艺', N'S')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1674, N'S60', N'一般性问题', N'S6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1675, N'S60', N'苗圃学', N'S6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1676, N'S62', N'设施园艺（保护地栽培）', N'S6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1677, N'S63', N'蔬菜园艺', N'S6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1678, N'S65', N'瓜果园艺', N'S6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1679, N'S66', N'果树园艺', N'S6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1680, N'S68', N'观赏园艺（花卉和观赏树木）', N'S6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1681, N'S7', N'林业', N'S')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1682, N'S72', N'造林学、林木育种及造林技术', N'S7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1683, N'S73', N'绿化建设', N'S7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1684, N'S76', N'森林保护学', N'S7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1685, N'S78', N'森林采运与利用', N'S7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1686, N'S8', N'畜牧、动物医学、狩猎、蚕峰', N'S')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1687, N'S81', N'普通畜牧学', N'S8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1688, N'S82', N'家畜', N'S8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1689, N'S83', N'家禽', N'S8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1690, N'S85', N'兽医学', N'S8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1691, N'S86', N'狩猎、野生动物驯养', N'S8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1692, N'S87', N'畜产品的综合利用', N'S8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1693, N'S88', N'蚕桑', N'S8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1694, N'S89', N'养蜂、益虫饲养', N'S8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1695, N'S9', N'水产、渔业', N'S')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1696, N'S96', N'水产养殖技术', N'S9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1697, N'S98', N'水产物运输、保鲜、贮藏、加工、包装', N'S9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1698, N'T', N'工业技术', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1699, N'T0', N'工业技术理论', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1700, N'T1', N'工业技术现状与发展', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1701, N'T18', N'专利', N'T1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1702, N'T2', N'机构、团体、会议', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1703, N'T29', N'工程技术人员', N'T2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1704, N'T6', N'参考工具书', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1705, N'T62', N'工程师手册、技术手册', N'T6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1706, N'T63', N'产品目录、样本', N'T6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1707, N'T65', N'工业规程与标准', N'T6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1708, N'TB', N'一般工业技术', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1709, N'TB1', N'工程基础科学', N'TB')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1710, N'TB2', N'工程设计与测绘', N'TB')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1711, N'TB3', N'工程材料学', N'TB')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1712, N'TB4', N'工业通用技术与设备', N'TB')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1713, N'TB5', N'声学工程', N'TB')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1714, N'TB6', N'制冷工程', N'TB')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1715, N'TB7', N'真空技术', N'TB')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1716, N'TB8', N'摄影技术', N'TB')
GO
print 'Processed 1700 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1717, N'TB81', N'摄影理论', N'TB8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1718, N'TB82', N'拍摄技术', N'TB8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1719, N'TB84', N'感光材料', N'TB8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1720, N'TB85', N'摄影机具与设备', N'TB8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1721, N'TB86', N'各种摄影技术', N'TB8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1722, N'TB88', N'洗印技术', N'TB8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1723, N'TB89', N'拍摄技术的应用', N'TB8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1724, N'TB9', N'计量学', N'TB')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1725, N'TB91', N'计量单位与单位制', N'TB9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1726, N'TB9164', N'度量衡换算法和换算表', N'TB91')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1727, N'TD', N'矿业工程', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1728, N'TD1', N'矿山地质与测量', N'TD')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1729, N'TD2', N'矿山设计与建设', N'TD')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1730, N'TD3', N'矿山压力与支护', N'TD')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1731, N'TD4', N'矿山机械', N'TD')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1732, N'TD5', N'矿山运输与设备', N'TD')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1733, N'TD6', N'矿山电工', N'TD')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1734, N'TD7', N'矿山安全与劳动保护', N'TD')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1735, N'TD8', N'矿山开采', N'TD')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1736, N'TD9', N'选矿', N'TD')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1737, N'TD98', N'矿产资源的综合利用', N'TD9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1738, N'TE', N'石油、天然气', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1739, N'TE0', N'能源与节能', N'TE')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1740, N'TE1', N'石油、天然气地质与勘探', N'TE')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1741, N'TE2', N'钻井工程', N'TE')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1742, N'TE3', N'油气田开发与开采', N'TE')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1743, N'TE4', N'油气田建设', N'TE')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1744, N'TE5', N'海上油气田勘探与开发', N'TE')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1745, N'TE6', N'石油、天然气加工工业', N'TE')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1746, N'TE8', N'石油、天然气储存与运输', N'TE')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1747, N'TE9', N'石油机械设备与自动化', N'TE')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1748, N'TF', N'冶金工业', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1749, N'TF0', N'一般性问题', N'TF')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1750, N'TF1', N'冶金技术', N'TF')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1751, N'TF3', N'冶金机械、冶金生产自动化', N'TF')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1752, N'TF4', N'钢铁冶炼（黑色金属冶炼）', N'TF')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1753, N'TF5', N'炼铁', N'TF')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1754, N'TF6', N'铁合金冶炼', N'TF')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1755, N'TF7', N'炼钢', N'TF')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1756, N'TF8', N'有色金属冶炼', N'TF')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1757, N'TG', N'金属学与金属工艺', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1758, N'TG1', N'金属学与热处理', N'TG')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1759, N'TG11', N'金属学', N'TG1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1760, N'TG13', N'合金学与各种性质合金', N'TG1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1761, N'TG14', N'金属材料', N'TG1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1762, N'TG15', N'热处理', N'TG1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1763, N'TG17', N'金属腐蚀与保护、金属表面处理', N'TG1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1764, N'TG2', N'铸造', N'TG')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1765, N'TG3', N'金属压力加工', N'TG')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1766, N'TG4', N'焊接、金属切割及金属粘接', N'TG')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1767, N'TG5', N'金属切削加工及机床', N'TG')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1768, N'TG61', N'齿轮加工及齿轮机床', N'TG6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1769, N'TG7', N'刀具、磨料、磨具、夹具、模具和手工具', N'TG')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1770, N'TG8', N'公差与技术测量及机械量仪', N'TG')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1771, N'TH', N'机械仪表工业', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1772, N'TH11', N'机械学（机械设计基础理论）', N'TH1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1773, N'TH12', N'机械设计、计算与制图', N'TH1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1774, N'TH13', N'机械零件及传动装置', N'TH1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1775, N'TH14', N'机械制造用材料', N'TH1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1776, N'TH16', N'机械制造工艺', N'TH1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1777, N'TH17', N'机械运行与维修', N'TH1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1778, N'TH18', N'机械工厂', N'TH1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1779, N'TH2', N'起重机械与运输机械', N'TH')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1780, N'TH3', N'泵', N'TH')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1781, N'TH4', N'气体压缩与输送机械', N'TH')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1782, N'TH6', N'专用机械与设备', N'TH')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1783, N'TH7', N'仪器、仪表', N'TH')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1784, N'TH71', N'计量仪器', N'TH7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1785, N'TH72', N'坐标器、计算机具、计数器', N'TH7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1786, N'TH73', N'物理学与力学一般仪器', N'TH7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1787, N'TH74', N'光学仪器', N'TH7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1788, N'TH75', N'天文仪器', N'TH7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1789, N'TH76', N'地球科学仪器', N'TH7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1790, N'TH77', N'医药卫生器械', N'TH7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1791, N'TH79', N'生物科学与农林科学仪器', N'TH7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1792, N'TH81', N'热工量的测量仪表', N'TH8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1793, N'TH82', N'力学量测量仪表', N'TH8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1794, N'TH83', N'成分分析仪器', N'TH8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1795, N'TH841', N'波谱仪', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1796, N'TH842', N'能谱仪', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1797, N'TH843', N'质谱仪', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1798, N'TH85', N'显示仪表', N'TH8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1799, N'TH86', N'工业自动化仪表', N'TH8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1800, N'TH87', N'材料试验与试验仪器', N'TH8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1801, N'TH89', N'其他仪器仪表', N'TH8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1802, N'TJ', N'武器工业', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1803, N'TJ0', N'一般性问题', N'TJ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1804, N'TJ2', N'枪械', N'TJ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1805, N'TJ3', N'火炮', N'TJ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1806, N'TJ4', N'弹药、引信、火工品', N'TJ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1807, N'TJ5', N'爆破器材、烟火器材、火炸药', N'TJ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1808, N'TJ6', N'水中兵器', N'TJ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1809, N'TJ7', N'火箭、导弹', N'TJ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1810, N'TJ71', N'火箭筒、火箭炮、火箭弹', N'TJ7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1811, N'TJ76', N'导弹', N'TJ7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1812, N'TJ8', N'战车、战舰、战机、航天武器', N'TJ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1813, N'TJ9', N'核武器与其他特种武器及其防护设备', N'TJ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1814, N'TK', N'能源与动力工程', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1815, N'TK0', N'一般性问题', N'TK')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1816, N'TK01', N'能源', N'TK0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1817, N'TK02', N'蓄能技术', N'TK0')
GO
print 'Processed 1800 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1818, N'TK05', N'动力机械', N'TK0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1819, N'TK08', N'动力厂', N'TK0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1820, N'TK1', N'热力工程、热机', N'TK')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1821, N'TK2', N'蒸汽动力工程', N'TK')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1822, N'TK22', N'蒸汽锅炉', N'TK2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1823, N'TK24', N'蒸汽机', N'TK2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1824, N'TK26', N'蒸汽轮机', N'TK2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1825, N'TK28', N'蒸汽动力工厂', N'TK2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1826, N'TK3', N'热工量测和热工自动控制', N'TK')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1827, N'TK4', N'内燃机', N'TK')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1828, N'TK5', N'特殊热能及其机械', N'TK')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1829, N'TK6', N'生物能及其利用', N'TK')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1830, N'TK7', N'水能、水力机械', N'TK')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1831, N'TK8', N'风能、风力机械', N'TK')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1832, N'TK91', N'氢能及其利用', N'TK9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1833, N'TL', N'原子能技术', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1834, N'TL1', N'基础理论', N'TL')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1835, N'TL2', N'核燃料及其生产', N'TL')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1836, N'TL3', N'核反应堆工程', N'TL')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1837, N'TL4', N'各种核反应堆、核电厂', N'TL')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1838, N'TL5', N'加速器', N'TL')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1839, N'TL6', N'受控热核反应（聚变反应理论及实验装置）', N'TL')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1840, N'TL7', N'辐射防护', N'TL')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1841, N'TL8', N'粒子探测技术、辐射探测技术与核仪器仪表', N'TL')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1842, N'TL91', N'核爆炸', N'TL9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1843, N'TL92', N'放射性同位素的生产与制备', N'TL9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1844, N'TL93', N'放射性物质的包装、运输和贮存', N'TL9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1845, N'TL94', N'放射性废物管理及综合利用', N'TL9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1846, N'TL99', N'原子能技术的应用', N'TL9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1847, N'TM', N'电工技术', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1848, N'TM0', N'一般性问题', N'TM')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1849, N'TM1', N'电工基础理论', N'TM')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1850, N'TM11', N'电工单位、电工计算', N'TM1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1851, N'TM13', N'电路理论', N'TM1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1852, N'TM14', N'磁路', N'TM1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1853, N'TM15', N'电磁场理论的应用', N'TM1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1854, N'TM2', N'电工材料', N'TM')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1855, N'TM3', N'电机', N'TM')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1856, N'TM4', N'变压器、变流器及电抗器', N'TM')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1857, N'TM5', N'电器', N'TM')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1858, N'TM6', N'发电、发电厂', N'TM')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1859, N'TM7', N'输配电工程、电力网及电力系统', N'TM')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1860, N'TM8', N'高电压技术', N'TM')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1861, N'TM91', N'独立电源技术（直接发电）', N'TM9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1862, N'TM92', N'电气化、电能应用', N'TM9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1863, N'TM921', N'电力拖动（电气传动）', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1864, N'TM922', N'电力牵引', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1865, N'TM923', N'电气照明', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1866, N'TM924', N'电热', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1867, N'TM925', N'家用电器及其他电器设备', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1868, N'TM925.1', N'空气调节用电器', N'TM925.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1869, N'TM925.2', N'冷藏用电器', N'TM925.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1870, N'TM925.3', N'清洁卫生用电器', N'TM925.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1871, N'TM925.4', N'整容、保健用电器', N'TM925.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1872, N'TN925.5', N'厨房用电器、电炊具', N'TN925.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1873, N'TM925.6', N'取暖电器', N'TM925.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1874, N'TM925.9', N'其他电器', N'TM925.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1875, N'TM93', N'电气测量技术及仪器', N'TM9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1876, N'TN', N'无线电电子学、电信技术', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1877, N'TN0', N'一般性问题', N'TN')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1878, N'TN1', N'真空电子技术', N'TN')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1879, N'TN2', N'光电子技术、激光技术', N'TN')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1880, N'TN3', N'半导体技术', N'TN')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1881, N'TN4', N'微电子学、集成电路（IC）', N'TN')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1882, N'TN6', N'电子元件、组件', N'TN')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1883, N'TN7', N'基本电子电路', N'TN')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1884, N'TN70', N'一般性问题', N'TN7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1885, N'TN710', N'电子电路', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1886, N'TN711', N'网络', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1887, N'TN713', N'滤波器', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1888, N'TN715', N'均衡器', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1889, N'TN72', N'放大技术、放大器', N'TN7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1890, N'TN73', N'功率合成器', N'TN7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1891, N'TN75', N'振荡技术、振荡器', N'TN7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1892, N'TN76', N'调制技术与调制器、解调技术与解调器', N'TN7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1893, N'TN78', N'脉冲技术、脉冲电路', N'TN7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1894, N'TN79', N'数字电路', N'TN7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1895, N'TN8', N'无线电设备、电信设备', N'TN')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1896, N'TN82', N'天线', N'TN8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1897, N'TN85', N'接收设备、无线电收音机', N'TN8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1898, N'TN86', N'电源', N'TN8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1899, N'TN87', N'终端设备', N'TN8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1900, N'TN91', N'通信', N'TN9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1901, N'TN911', N'通信理论', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1902, N'TN912', N'电声技术和语音信号处理', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1903, N'TN913', N'有线通信、通信线路工程', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1904, N'TN914', N'通信系统（传输系统）', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1905, N'TN915', N'通信网', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1906, N'TN916', N'电话', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1907, N'TN917', N'电报、传真', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1908, N'TN918', N'通信保密与通信安全', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1909, N'TN919', N'数据通信', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1910, N'TN919.8', N'图像通信、多媒体通信', N'TN919.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1911, N'TN92', N'无线通信', N'TN9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1912, N'TN927', N'卫星通信和宇宙通信', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1913, N'TN929.5', N'移动通信', N'TN929.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1914, N'TN93', N'广播', N'TN9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1915, N'TN94', N'电视', N'TN9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1916, N'TN95', N'雷达', N'TN9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1917, N'TN96', N'无线电导航', N'TN9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1918, N'TN97', N'电子对抗（干扰及抗干扰）', N'TN9')
GO
print 'Processed 1900 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1919, N'TN99', N'无线电电子学的应用', N'TN9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1920, N'TP', N'自动化技术、计算机技术', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1921, N'TP1', N'自动化基础理论', N'TP')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1922, N'TP2', N'自动化技术及设备', N'TP')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1923, N'TP3', N'计算技术、计算机技术', N'TP')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1924, N'TP30', N'一般性问题', N'TP3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1925, N'TP309', N'安全保密', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1926, N'TP31', N'计算机软件', N'TP3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1927, N'TP311', N'程序设计、软件工程', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1928, N'TP312', N'程序语言、算法语言', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1929, N'TP313', N'汇编语言', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1930, N'TP314', N'编译程序、解释系统', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1931, N'TP315', N'管理程序、管理系统', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1932, N'TP316', N'操作系统', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1933, N'TP317', N'程序包（应用软件）', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1934, N'TP317.1', N'办公自动化系统', N'TP317.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1935, N'TP317.2', N'文字处理软件', N'TP317.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1936, N'TP317.3', N'表处理软件', N'TP317.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1937, N'TP317.4', N'图像处理软件', N'TP317.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1938, N'TP319', N'专用应用软件', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1939, N'TP32', N'一般计算器和计算机', N'TP3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1940, N'TP33', N'电子数字计算机（连续作用电子计算机）', N'TP3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1941, N'TP34', N'电子模拟计算机（连续作用电子计算机）', N'TP3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1942, N'TP35', N'混合电子计算机', N'TP3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1943, N'TP36', N'微型计算机', N'TP3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1944, N'TP368', N'各种微型计算机', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1945, N'TP37', N'多媒体技术与多媒体计算机', N'TP3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1946, N'TP38', N'其他计算机', N'TP3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1947, N'TP39', N'计算机的应用', N'TP3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1948, N'TP391', N'信息处理（信息加工）', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1949, N'TP391.1', N'文字信息处理', N'TP391.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1950, N'TP391.12', N'汉字处理系统', N'TP391.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1951, N'TP391.13', N'表格处理系统', N'TP391.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1952, N'TP391.14', N'文字录入技术', N'TP391.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1953, N'TP391.7', N'机器辅助技术', N'TP391.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1954, N'TP393', N'计算机网络', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1955, N'TP393.08', N'计算机网络安全', N'TP393.0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1956, N'TP393.09', N'网络应用程序', N'TP393.0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1957, N'TP393.1', N'局域网、城域网', N'TP393.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1958, N'TP393.2', N'广域网', N'TP393.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1959, N'TP393.4', N'国际互联网', N'TP393.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1960, N'TP6', N'射流技术（流控技术）', N'TP')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1961, N'TP7', N'遥感技术', N'TP')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1962, N'TP73', N'探测仪器及系统', N'TP7')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1963, N'TP8', N'远动技术', N'TP')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1964, N'TQ', N'化学工业', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1965, N'TQ0', N'一般性问题', N'TQ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1966, N'TQ11', N'基本无机化学工业', N'TQ1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1967, N'TQ12', N'非金属无机化合物化学工业', N'TQ1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1968, N'TQ15', N'电化学工业', N'TQ1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1969, N'TQ151', N'电解工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1970, N'TQ153', N'电镀工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1971, N'TQ16', N'电热工业、高温制品工业', N'TQ1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1972, N'TQ17', N'硅酸盐工业', N'TQ1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1973, N'TQ171', N'玻璃工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1974, N'TQ172', N'水泥工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1975, N'TQ173', N'搪瓷工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1976, N'TQ174', N'陶瓷工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1977, N'TQ175', N'耐火材料', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1978, N'TQ176', N'石棉工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1979, N'TQ177', N'人造石及其他胶凝材料', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1980, N'TQ2', N'基本有机化学工业', N'TQ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1981, N'TQ31', N'高分子化合物（高聚物工业）', N'TQ3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1982, N'TQ32', N'合成树指与塑料工业', N'TQ3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1983, N'TQ33', N'橡胶工业', N'TQ3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1984, N'TQ34', N'化学纤维工业', N'TQ3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1985, N'TQ35', N'纤维素质的化学加工工业', N'TQ3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1986, N'TQ41', N'溶剂与增塑剂的生产', N'TQ4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1987, N'TQ42', N'试剂与纯化学品的生产', N'TQ4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1988, N'TQ43', N'胶粘剂工业', N'TQ4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1989, N'TQ44', N'化学肥料工业', N'TQ4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1990, N'TQ45', N'农药工业', N'TQ4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1991, N'TQ46', N'制药化学工业', N'TQ4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1992, N'TQ51', N'燃料化学工业', N'TQ5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1993, N'TQ52', N'炼焦化学工业', N'TQ5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1994, N'TQ53', N'煤化学及煤的加工利用', N'TQ5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1995, N'TQ54', N'煤炭气化工业', N'TQ5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1996, N'TQ55', N'燃料照明工业', N'TQ5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1997, N'TQ56', N'爆炸物工业、火柴工业', N'TQ5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1998, N'TQ57', N'感光材料工业', N'TQ5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (1999, N'TQ58', N'磁性记录材料工业', N'TQ5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2000, N'TQ59', N'光学记录材料工业', N'TQ5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2001, N'TQ61', N'染料及中间体工业', N'TQ6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2002, N'TQ62', N'颜料工业', N'TQ6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2003, N'TQ63', N'涂料工业', N'TQ6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2004, N'TQ64', N'油脂和蜡的化学加工工业、肥皂工业', N'TQ6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2005, N'TQ65', N'香料及化妆品工业', N'TQ6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2006, N'TQ9', N'其他化学工业', N'TQ')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2007, N'TS', N'轻工业、手工业', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2008, N'TS0', N'一般性问题', N'TS')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2009, N'TS1', N'纺织工业、染整工业', N'TS')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2010, N'TS2', N'食品工业', N'TS')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2011, N'TS21', N'粮食加工工业', N'TS2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2012, N'TS22', N'食用油脂加工工业', N'TS2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2013, N'TS23', N'淀粉工业', N'TS2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2014, N'TS24', N'制糖工业', N'TS2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2015, N'TS251', N'屠宰及肉类加工工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2016, N'TS252', N'乳品加工工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2017, N'TS253', N'蛋品加工工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2018, N'TS254', N'水产加工工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2019, N'TS255', N'水果、蔬菜、坚果加工工业', NULL)
GO
print 'Processed 2000 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2020, N'TS26', N'酿造工业', N'TS2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2021, N'TS27', N'饮料冷食制造工业', N'TS2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2022, N'TS29', N'罐头工业', N'TS2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2023, N'TS3', N'制盐工业', N'TS')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2024, N'TS4', N'烟草工业', N'TS')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2025, N'TS5', N'皮革工业', N'TS')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2026, N'TS6', N'木材加工工业、家具制造工业', N'TS')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2027, N'TS66464', N'家具图谱', N'TS6646')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2028, N'TS7', N'造纸工业', N'TS')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2029, N'TS8', N'印刷工业', N'TS')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2030, N'TS91', N'五金制品工业', N'TS9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2031, N'TS93', N'工艺美术制品工业', N'TS9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2032, N'TS932', N'雕塑工艺品', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2033, N'TS933', N'石料美术制品', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2034, N'TS934', N'金属工艺美术制品', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2035, N'TS935', N'刺绣、编结、制毯', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2036, N'TS935.1', N'中国刺绣', N'TS935.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2037, N'TS935.5', N'编结', N'TS935.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2038, N'TS938', N'民间工艺美术制品', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2039, N'TS94', N'服装工业、制鞋工业', N'TS9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2040, N'TS941', N'服装工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2041, N'TS943', N'制鞋工业', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2042, N'TS95', N'其他轻工业、手工业', N'TS9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2043, N'TS97', N'生活服务技术', N'TS9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2044, N'TS971', N'美食学', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2045, N'TS972', N'饮食调制技术及设备', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2046, N'TS972.1', N'烹饪法、食谱、菜谱', N'TS972.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2047, N'TS972.19', N'调酒技术', N'TS972.1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2048, N'TS972.2', N'饮食设备与管理', N'TS972.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2049, N'TS972.3', N'饮食管理', N'TS972.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2050, N'TS973', N'洗染、缝补', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2051, N'TS974', N'美容、沐浴、清洁', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2052, N'TS974.1', N'美容', N'TS974.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2053, N'TS975', N'居住管理', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2054, N'TS976', N'家庭管理、家庭生活、家庭服务', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2055, N'TS976.1', N'家庭管理', N'TS976.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2056, N'TS976.3', N'家庭生活知识', N'TS976.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2057, N'TS976.4', N'穿着', N'TS976.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2058, N'TS976.7', N'家庭服务', N'TS976.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2059, N'TS976.8', N'家庭用品与设备', N'TS976.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2060, N'TS976.9', N'家庭自动化', N'TS976.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2061, N'TU', N'建筑科学', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2062, N'TU0', N'建筑理论', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2063, N'TU09', N'建筑史', N'TU0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2064, N'TU8', N'建筑艺术', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2065, N'TU88', N'建筑艺术图集', N'TU8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2066, N'TU1', N'建筑基础科学', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2067, N'TU19', N'建筑勘测', N'TU1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2068, N'TU2', N'建筑设计', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2069, N'TU24', N'民用建筑', N'TU2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2070, N'TU26', N'农业建筑', N'TU2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2071, N'TU27', N'工业建筑', N'TU2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2072, N'TU3', N'建筑结构', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2073, N'TU4', N'土力学、地基基础工程', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2074, N'TU5', N'建筑材料', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2075, N'TU6', N'建筑施工机械和设备', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2076, N'TU7', N'建筑施工', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2077, N'TU8', N'房屋建筑设备', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2078, N'TU82', N'管道设备', N'TU8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2079, N'TU82', N'房屋卫生技术设备', N'TU8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2080, N'TU89', N'安全设备', N'TU8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2081, N'TU9', N'地下建筑', N'TU')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2082, N'TU97', N'高层建筑', N'TU9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2083, N'TU98', N'区域规划、城乡规划', N'TU9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2084, N'TU984', N'城市规划', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2085, N'TU985', N'绿化规划', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2086, N'TU986', N'园林规划与建设', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2087, N'TU99', N'市政工程', N'TU9')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2088, N'TU991', N'给水工程', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2089, N'TU992', N'排水工程', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2090, N'TU993', N'公共卫生工程', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2091, N'TU994', N'城市供电和通信', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2092, N'TU995', N'城市集中供热', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2093, N'TU996', N'城市燃气供应', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2094, N'TU998', N'其他市政工程及公用设备', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2095, N'TV', N'水利工程', N'T')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2096, N'TV1', N'水利工程基础科学', N'TV')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2097, N'TV21', N'水资源调查与不利规划', N'TV2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2098, N'TV22', N'水工勘测、水工设计', N'TV2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2099, N'TV3', N'水工结构', N'TV')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2100, N'TV4', N'水工材料', N'TV')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2101, N'TV5', N'水利工程施工', N'TV')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2102, N'TV6', N'水利枢纽、水工建筑物', N'TV')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2103, N'TV7', N'水能利用、水电站工程', N'TV')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2104, N'TV8', N'治河工程与防洪工程', N'TV')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2105, N'TV85', N'治河方法（河道整治）', N'TV8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2106, N'TV86', N'整治建筑', N'TV8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2107, N'TV87', N'防洪工程', N'TV8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2108, N'TV88', N'世界各国河流治理', N'TV8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2109, N'TV882', N'中国', NULL)
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2110, N'TV882.1', N'黄河', N'TV882.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2111, N'TV882.2', N'长江', N'TV882.')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2112, N'U', N'交通运输', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2113, N'U1', N'综合运输', N'U')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2114, N'U2', N'铁路运输', N'U')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2115, N'U21', N'铁路线路工程', N'U2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2116, N'U22', N'电气化铁路', N'U2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2117, N'U23', N'特种铁路', N'U2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2118, N'U26', N'机车工程', N'U2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2119, N'U27', N'车辆工程', N'U2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2120, N'U28', N'铁路通信、信号', N'U2')
GO
print 'Processed 2100 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2121, N'U29', N'铁路运输管理工程', N'U2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2122, N'U4', N'公路运输', N'U')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2123, N'U41', N'道路工程', N'U4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2124, N'U44', N'桥涵工程', N'U4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2125, N'U45', N'隧道工程', N'U4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2126, N'U46', N'汽车工程', N'U4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2127, N'U471', N'汽车驾驶与使用', N'U47')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2128, N'U48', N'其他道路运输工具', N'U4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2129, N'U49', N'交通工程与公路运输技术管理', N'U4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2130, N'U6', N'水路运输', N'U')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2131, N'U61', N'航道工程', N'U6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2132, N'U64', N'通航建筑物与助航设备', N'U6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2133, N'U65', N'港口工程', N'U6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2134, N'U66', N'船舶工程', N'U6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2135, N'U674', N'各种船舶', N'U67')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2136, N'U69', N'水路运输技术管理', N'U6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2137, N'V', N'航空、航天', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2138, N'V1', N'航空、航天技术的研究与探索', N'V')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2139, N'V11', N'航空、航天的发展与空间探索', N'V1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2140, N'V19', N'航空、航天的应用', N'V1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2141, N'V2', N'航空', N'V')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2142, N'V21', N'基础理论及实验', N'V2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2143, N'V22', N'飞机构造与设计', N'V2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2144, N'V23', N'航空发动机（推进系统）', N'V2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2145, N'V24', N'航空仪表、航空设备、飞行控制与导航', N'V2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2146, N'V25', N'航空用材料', N'V2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2147, N'V26', N'航空制造工艺', N'V2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2148, N'V27', N'各类型航空器', N'V2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2149, N'V32', N'航空飞行术', N'V3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2150, N'V35', N'航空港、机场及技术管理', N'V3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2151, N'V37', N'航空系统', N'V3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2152, N'V4', N'航天（宇宙航行）', N'V')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2153, N'V41', N'基础理论及实验', N'V4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2154, N'V42', N'火箭、航天器构造', N'V4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2155, N'V43', N'推进系统（发动机）', N'V4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2156, N'V44', N'航天仪表、航天器设备、航天器制导与控制', N'V4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2157, N'V45', N'航空用材料', N'V4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2158, N'V46', N'制造工艺', N'V4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2159, N'V47', N'航天器及其运载工具', N'V4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2160, N'V52', N'航天飞行术', N'V5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2161, N'V55', N'地面设备、试验场、发射场、航天基地', N'V5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2162, N'V57', N'航天系统工程', N'V5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2163, N'X', N'环境科学、劳动保护科学（安全科学）', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2164, N'X01', N'环境保护政策及其阐述', N'X0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2165, N'X019', N'环境保护法', N'X01')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2166, N'X1', N'环境科学技术现状与发展', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2167, N'X4', N'环境保护宣传教育及普及', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2168, N'X6', N'环境保护参考工具书', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2169, N'X65', N'环境保护标准', N'X6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2170, N'X1', N'环境科学基础理论', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2171, N'X196', N'环境经济学', N'X19')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2172, N'X2', N'社会与环境', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2173, N'X21', N'环境与环境系统', N'X2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2174, N'X22', N'环境与发展', N'X2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2175, N'X24', N'人类、资源、能源与环境的关系', N'X2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2176, N'X3', N'环境保护管理', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2177, N'X4', N'灾害及防治', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2178, N'X5', N'环境污染及其防治', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2179, N'X7', N'三废处理与综合理用', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2180, N'X8', N'环境质量评价与监测', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2181, N'X9', N'安全科学', N'X')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2182, N'Z', N'综合性图书', N'0')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2183, N'Z1', N'丛书', N'Z')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2184, N'Z12', N'中国丛书', N'Z1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2185, N'Z126', N'旧经籍', N'Z12')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2186, N'Z13', N'亚洲各国丛书', N'Z1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2187, N'Z14', N'非洲各国丛书', N'Z1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2188, N'Z15', N'欧洲各国丛书', N'Z1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2189, N'Z16', N'大洋洲各国丛书', N'Z1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2190, N'Z17', N'美洲各国丛书', N'Z1')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2191, N'Z2', N'百科全书、类书', N'Z')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2192, N'Z22', N'中国百科全书、类书', N'Z2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2193, N'Z227', N'现代', N'Z22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2194, N'Z228', N'综合性普及读物', N'Z22')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2195, N'Z228.1', N'少年儿童读物', N'Z228')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2196, N'Z228.2', N'青年读物', N'Z228')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2197, N'Z228.3', N'中老年读物', N'Z228')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2198, N'Z228.4', N'女性读物', N'Z228')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2199, N'Z228.5', N'男性读物', N'Z228')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2200, N'Z23', N'亚洲各国百科全书', N'Z2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2201, N'Z24', N'非洲各国百科全书', N'Z2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2202, N'Z25', N'欧洲各国百科全书', N'Z2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2203, N'Z26', N'大洋洲各国百科全书', N'Z2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2204, N'Z27', N'美洲各国百科全书', N'Z2')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2205, N'Z3', N'辞典', N'Z')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2206, N'Z32', N'中国辞典', N'Z3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2207, N'Z33', N'亚洲各国辞典', N'Z3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2208, N'Z34', N'非洲各国辞典', N'Z3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2209, N'Z35', N'欧洲各国辞典', N'Z3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2210, N'Z36', N'大洋洲各国辞典', N'Z3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2211, N'Z37', N'美洲各国辞典', N'Z3')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2212, N'Z4', N'论文集、全集、选集、杂著', N'Z')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2213, N'Z42', N'中国论文集、全集、选集、杂著', N'Z4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2214, N'Z429', N'杂著', N'Z42')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2215, N'Z43', N'亚洲各国论文集、全集、选集、杂著', N'Z4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2216, N'Z44', N'非洲各国论文集、全集、选集、杂著', N'Z4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2217, N'Z45', N'欧洲各国论文集、全集、选集、杂著', N'Z4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2218, N'Z46', N'大洋洲各国论文集、全集、选集、杂著', N'Z4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2219, N'Z47', N'美洲各国论文集、全集、选集、杂著', N'Z4')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2220, N'Z5', N'年鉴、年刊', N'Z')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2221, N'Z52', N'中国年鉴、年刊', N'Z5')
GO
print 'Processed 2200 total records'
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2222, N'Z53', N'亚洲各国年鉴、年刊', N'Z5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2223, N'Z54', N'非洲各国年鉴、年刊', N'Z5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2224, N'Z55', N'欧洲各国年鉴、年刊', N'Z5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2225, N'Z56', N'大洋洲各国年鉴、年刊', N'Z5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2226, N'Z57', N'美洲各国年鉴、年刊', N'Z5')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2227, N'Z6', N'期刊、连续性出版物', N'Z')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2228, N'Z62', N'中国期刊、连续性出版物', N'Z6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2229, N'Z63', N'亚洲各国期刊、连续性出版物', N'Z6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2230, N'Z64', N'非洲各国期刊、连续性出版物', N'Z6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2231, N'Z65', N'欧洲各国期刊、连续性出版物', N'Z6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2232, N'Z66', N'大洋洲各国期刊、连续性出版物', N'Z6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2233, N'Z67', N'美洲各国期刊、连续性出版物', N'Z6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2234, N'Z68', N'专科期刊、连续出版物', N'Z6')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2235, N'Z8', N'图书目录、文摘索引', N'Z')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2236, N'Z81', N'国家总目录', N'Z8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2237, N'Z812', N'中国总目录', N'Z81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2238, N'Z813', N'亚洲总目录', N'Z81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2239, N'Z814', N'非洲各国总目录', N'Z81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2240, N'Z815', N'欧洲各国总目录', N'Z81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2241, N'Z816', N'大洋洲各国总目录', N'Z81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2242, N'Z817', N'美洲各国总目录', N'Z81')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2243, N'Z82', N'图书馆藏书目录', N'Z8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2244, N'Z83', N'各类型目录', N'Z8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2245, N'Z84', N'私家藏书目录', N'Z8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2246, N'Z85', N'出版发行目录', N'Z8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2247, N'Z86', N'个人著作目录', N'Z8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2248, N'Z87', N'期刊目录、报纸目录', N'Z8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2249, N'Z88', N'专科目录', N'Z8')
INSERT [dbo].[tb_book_type] ([id], [no], [name], [parent_no]) VALUES (2250, N'Z89', N'文摘、索引', N'Z8')
SET IDENTITY_INSERT [dbo].[tb_book_type] OFF
/****** Object:  StoredProcedure [dbo].[tb_book_manager_Update]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	tb_book_manager_Update
-- Create date:	2016/9/26 10:47:06
-- Description:	This stored procedure is intended for updating tb_book_manager table
-- ==========================================================================================
Create Procedure [dbo].[tb_book_manager_Update]
	@id varchar(50),
	@book_id varchar(50),
	@putin_time datetime,
	@status int
As
Begin
	Update tb_book_manager
	Set
		[book_id] = @book_id,
		[putin_time] = @putin_time,
		[status] = @status
	Where		
		[id] = @id

End
GO
/****** Object:  StoredProcedure [dbo].[tb_book_manager_SelectRow]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	tb_book_manager_SelectRow
-- Create date:	2016/9/26 10:47:06
-- Description:	This stored procedure is intended for selecting a specific row from tb_book_manager table
-- ==========================================================================================
Create Procedure [dbo].[tb_book_manager_SelectRow]
	@id varchar(50)
As
Begin
	Select 
		[id],
		[book_id],
		[putin_time],
		[status]
	From tb_book_manager
	Where
		[id] = @id
End
GO
/****** Object:  StoredProcedure [dbo].[tb_book_manager_SelectAll]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	tb_book_manager_SelectAll
-- Create date:	2016/9/26 10:47:05
-- Description:	This stored procedure is intended for selecting all rows from tb_book_manager table
-- ==========================================================================================
Create Procedure [dbo].[tb_book_manager_SelectAll]
As
Begin
	Select 
		[id],
		[book_id],
		[putin_time],
		[status]
	From tb_book_manager
End
GO
/****** Object:  StoredProcedure [dbo].[tb_book_manager_Insert]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	tb_book_manager_Insert
-- Create date:	2016/9/26 10:47:06
-- Description:	This stored procedure is intended for inserting values to tb_book_manager table
-- ==========================================================================================
Create Procedure [dbo].[tb_book_manager_Insert]
	@id varchar(50),
	@book_id varchar(50),
	@putin_time datetime,
	@status int
As
Begin
	Insert Into tb_book_manager
		([id],[book_id],[putin_time],[status])
	Values
		(@id,@book_id,@putin_time,@status)

End
GO
/****** Object:  StoredProcedure [dbo].[tb_book_manager_DeleteRow]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	tb_book_manager_DeleteRow
-- Create date:	2016/9/26 10:47:06
-- Description:	This stored procedure is intended for deleting a specific row from tb_book_manager table
-- ==========================================================================================
Create Procedure [dbo].[tb_book_manager_DeleteRow]
	@id varchar(50)
As
Begin
	Delete tb_book_manager
	Where
		[id] = @id

End
GO
/****** Object:  Table [dbo].[tb_book_lost]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_book_lost](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[borrow_id] [nchar](50) NULL,
	[borrow_name] [nchar](10) NULL,
	[book_id] [nchar](50) NULL,
	[book_ISBN] [nchar](10) NULL,
	[book_name] [nchar](10) NULL,
	[book_publisher] [nchar](10) NULL,
	[book_author] [nchar](10) NULL,
	[book_price] [float] NULL,
	[submit_date] [datetime] NULL,
	[fine_money] [float] NULL,
	[manager] [nchar](10) NULL,
 CONSTRAINT [PK_tb_book_lost] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_book_lost] ON
INSERT [dbo].[tb_book_lost] ([id], [borrow_id], [borrow_name], [book_id], [book_ISBN], [book_name], [book_publisher], [book_author], [book_price], [submit_date], [fine_money], [manager]) VALUES (1, N'8b585734-5c58-43da-b306-2a4cc0d7e67f              ', N'王五        ', N'f239a63d-004e-4369-99c5-73e0e3e7339d              ', N'9787533667', N'木偶奇遇记     ', N'安徽教育出版社   ', N'卡洛.科洛迪著   ', 25, CAST(0x0000A6A50102B100 AS DateTime), NULL, N'admin     ')
INSERT [dbo].[tb_book_lost] ([id], [borrow_id], [borrow_name], [book_id], [book_ISBN], [book_name], [book_publisher], [book_author], [book_price], [submit_date], [fine_money], [manager]) VALUES (2, N'8b585734-5c58-43da-b306-2a4cc0d7e67f              ', N'王五        ', N'f239a63d-004e-4369-99c5-73e0e3e7339d              ', N'9787533667', N'木偶奇遇记     ', N'安徽教育出版社   ', N'卡洛.科洛迪著   ', 25, CAST(0x0000A6A50102B6DC AS DateTime), NULL, N'admin     ')
INSERT [dbo].[tb_book_lost] ([id], [borrow_id], [borrow_name], [book_id], [book_ISBN], [book_name], [book_publisher], [book_author], [book_price], [submit_date], [fine_money], [manager]) VALUES (3, N'8b585734-5c58-43da-b306-2a4cc0d7e67f              ', N'王五        ', N'f239a63d-004e-4369-99c5-73e0e3e7339d              ', N'9787533667', N'木偶奇遇记     ', N'安徽教育出版社   ', N'卡洛.科洛迪著   ', 25, CAST(0x0000A6A50102CD20 AS DateTime), NULL, N'admin     ')
INSERT [dbo].[tb_book_lost] ([id], [borrow_id], [borrow_name], [book_id], [book_ISBN], [book_name], [book_publisher], [book_author], [book_price], [submit_date], [fine_money], [manager]) VALUES (4, N'8b585734-5c58-43da-b306-2a4cc0d7e67f              ', N'王五        ', N'f239a63d-004e-4369-99c5-73e0e3e7339d              ', N'9787533667', N'木偶奇遇记     ', N'安徽教育出版社   ', N'卡洛.科洛迪著   ', 25, CAST(0x0000A6A50102DA04 AS DateTime), 25, N'admin     ')
INSERT [dbo].[tb_book_lost] ([id], [borrow_id], [borrow_name], [book_id], [book_ISBN], [book_name], [book_publisher], [book_author], [book_price], [submit_date], [fine_money], [manager]) VALUES (5, N'8b585734-5c58-43da-b306-2a4cc0d7e67f              ', N'王五        ', N'f239a63d-004e-4369-99c5-73e0e3e7339d              ', N'9787533667', N'木偶奇遇记     ', N'安徽教育出版社   ', N'卡洛.科洛迪著   ', 25, CAST(0x0000A6A50107D054 AS DateTime), 123, N'admin     ')
INSERT [dbo].[tb_book_lost] ([id], [borrow_id], [borrow_name], [book_id], [book_ISBN], [book_name], [book_publisher], [book_author], [book_price], [submit_date], [fine_money], [manager]) VALUES (6, N'2a343560-cb79-4111-8384-76ec2042a711              ', N'赵柳        ', N'118d000f-7ddf-4a91-ba10-b935301f1563              ', N'9787533667', N'西游记       ', N'安徽教育出版社   ', N'吴承恩著      ', 25, CAST(0x0000A6A50115B9A8 AS DateTime), 25, N'admin     ')
SET IDENTITY_INSERT [dbo].[tb_book_lost] OFF
/****** Object:  Table [dbo].[tb_book_info]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_book_info](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[spell] [nvarchar](50) NULL,
	[author] [nvarchar](50) NULL,
	[ISBN] [nvarchar](100) NULL,
	[publisher] [nvarchar](50) NULL,
	[language] [nvarchar](50) NULL,
	[price] [float] NULL,
	[lost] [bit] NULL,
	[type] [nvarchar](50) NULL,
	[putin_time] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tb_book_info] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'0d55efc9-c7fc-4a69-b2ee-d0fc9eedbbab', N'科普知识博览.动植物百科：狮子', N'KPZSBL.DZWBK：SZ', N'王经胜', N'9787550219004', N'人民教育出版社', N'汉语', 76.8, 0, N'N', CAST(0x0000A69A00D9E798 AS DateTime), 0)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'0f9c5999-0673-4582-8aa7-52b98e1e710f', N'百科全书', N'BKQS', N'人民出版社', N'7100012345123', N'人民文学出版社', N'汉语', 49.4, 0, N'A', CAST(0x0000A69000D92F9C AS DateTime), 0)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'118d000f-7ddf-4a91-ba10-b935301f1563', N'西游记', N'XYJ', N'吴承恩著', N'9787533667467', N'安徽教育出版社', N'汉语', 25, 1, N'A', CAST(0x0000A69A00D9E798 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'1461f752-ce0c-4d9d-82c1-462653506df4', N'西游记', N'XYJ', N'吴承恩著', N'9787533667467', N'安徽教育出版社', N'汉语', 25, 0, N'A', CAST(0x0000A69A00DA04E4 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'24a6e96a-ccb5-4fd2-85d3-8943f192accb', N'水浒传', N'SHC', N'施耐庵著', N'9787533667474', N'安徽教育出版社', N'汉语', 25, 0, N'A', CAST(0x0000A69A00D84FC8 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'251e86a2-a503-4e02-9796-6284972acfd5', N'岳飞传', N'YFC', N'钱彩著', N'9787533667443', N'安徽教育出版社', N'汉语', 25, 0, N'I18', CAST(0x0000A6A300C27540 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'32b6adfe-68c1-43ef-8e63-3221f450d1da', N'名人传', N'MRC', N'罗兰著', N'9787533667412', N'安徽教育出版社', N'汉语', 25, 0, N'A', CAST(0x0000A69A00D9E798 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'3e051ec9-e362-44b0-9227-7e0650edfed7', N'科普知识博览.动植物百科：狮子', N'KPZSBL.DZWBK：SZ', N'王经胜', N'9787550219004', N'人民教育出版社', N'汉语', 76.8, 0, N'B', CAST(0x0000A69A00DA04E4 AS DateTime), 0)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'40f4ed61-2984-4a96-b76b-fc874c6f7c30', N'钢铁是怎样炼成的', N'GTSZYLCD', N'奥斯特洛夫斯基著', N'9787533667306', N'安徽教育出版社', N'汉语', 25, 0, N'I18', CAST(0x0000A6A300BF2D04 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'5816ec1e-308d-46ca-935f-c3d021a19f8e', N'科普知识博览.动植物百科：树懒', N'KPZSBL.DZWBK：SL', N'王经胜', N'9787550219006', N'人民教育出版社', N'汉语', 76.8, 0, N'B', CAST(0x0000A69A00DA04E4 AS DateTime), 0)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'58b240ec-4074-47bf-b31d-fb66a7087112', N'西游记', N'XYJ', N'吴承恩著', N'9787533667467', N'安徽教育出版社', N'汉语', 25, 0, N'B', CAST(0x0000A69A00D84FC8 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'6b93ba18-a926-4598-9e0b-f5030cd1dea7', N'童年 在人间 我的大学', N'TN ZRJ WDDX', N'高尔基著', N'9787533667290', N'安徽教育出版社', N'汉语', 25, 0, N'I18', CAST(0x0000A6A300C20BC8 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'78577971-9e27-4239-965f-3e320334c28a', N'科普知识博览.动植物百科：剧毒植物', N'KPZSBL.DZWBK：JDZW', N'王经胜', N'9787550219003', N'人民教育出版社', N'汉语', 76.8, 0, N'B', CAST(0x0000A69A00DA04E4 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'805b370f-29fe-494b-855f-9d2d4a6f0948', N'科普知识博览.兵器百科：火炮', N'KPZSBL.BQBK：HP', N'王经胜编著', N'9787550218963', N'人民教育出版社', N'汉语', 29.8, 0, N'C', CAST(0x0000A69D00F1DF88 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'80eca1df-1870-4a2a-9857-0fd328d960f7', N'科普知识博览.动植物百科：剧毒植物', N'KPZSBL.DZWBK：JDZW', N'王经胜', N'9787550219003', N'人民教育出版社', N'汉语', 76.8, 0, N'B', CAST(0x0000A69A00D9E798 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'8fef0fd0-e54c-4ee5-b2d7-e35114030bd1', N'十万个为什么', N'SWGWSM', N'商务印书馆', N'7100084793123', N'商务印书馆', N'汉语', 35.7, 0, N'B', CAST(0x0000A69000D92F9C AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'91f5a055-c5df-4747-a6c9-75cb5a0b055d', N'植物百科', N'ZWBK', N'人民出版社', N'7100084792123', N'人民出版社', N'汉语', 69, 0, N'C', CAST(0x0000A68C00D92F9C AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'963771f0-c061-4a93-a320-b9fc4a67fb2b', N'安妮日记', N'ANRJ', N'安妮.弗兰克著', N'9787533667276', N'安徽教育出版社', N'汉语', 25, 0, N'I18', CAST(0x0000A6A300BC2E9C AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'9de71a9e-9f97-4ece-8392-7c39569a6f80', N'科普知识博览.动植物百科：树懒', N'KPZSBL.DZWBK：SL', N'王经胜', N'9787550219006', N'人民教育出版社', N'汉语', 76.8, 0, N'C', CAST(0x0000A69A00D84FC8 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'9e79f803-6c83-45cd-830e-33b3c85f23e3', N'水浒传', N'SHC', N'施耐庵著', N'9787533667474', N'安徽教育出版社', N'汉语', 25, 0, N'C', CAST(0x0000A69A00D9E798 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'9ff20b67-a310-4ff0-be0e-363509517cc7', N'科普知识博览.动植物百科：爬行动物', N'KPZSBL.DZWBK：PHDW', N'王经胜', N'9787550219002', N'人民教育出版社', N'汉语', 76.8, 0, N'C', CAST(0x0000A69A00D9E798 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'a98dd8a5-cdbc-48ba-a042-dcd8670f18f0', N'水浒传', N'SHC', N'施耐庵著', N'9787533667474', N'安徽教育出版社', N'汉语', 25, 0, N'C', CAST(0x0000A69A00DA04E4 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'aa990988-c3a9-471d-8c12-42d26d035deb', N'科普知识博览.动植物百科：蛇', N'KPZSBL.DZWBK：S', N'王经胜', N'9787550219005', N'人民教育出版社', N'汉语', 76.8, 0, N'C', CAST(0x0000A69A00D84FC8 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'b8eb2feb-591c-49f8-9256-bddedc56860f', N'科普知识博览.动植物百科：剧毒植物', N'KPZSBL.DZWBK：JDZW', N'王经胜', N'9787550219003', N'人民教育出版社', N'汉语', 76.8, 0, N'C', CAST(0x0000A69A00D84FC8 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'bb19defd-f00d-4a28-b822-259d542f00f3', N'科普知识博览.动植物百科：狮子', N'KPZSBL.DZWBK：SZ', N'王经胜', N'9787550219004', N'人民教育出版社', N'汉语', 76.8, 0, N'D', CAST(0x0000A69A00D84FC8 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'c948b9b0-5b73-4841-bd33-ae501c9469a9', N'围城', N'WC', N'钱钟书', N'7100084792123', N'人民文学出版社', N'汉语', 39.8, 0, N'D', CAST(0x0000A68F01037E14 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'cbd83fc8-3b3a-424f-a4e5-b0db09a5fb3f', N'科普知识博览.动植物百科：爬行动物', N'KPZSBL.DZWBK：PHDW', N'王经胜', N'9787550219002', N'人民教育出版社', N'汉语', 76.8, 0, N'D', CAST(0x0000A69A00D8453C AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'ce5ac67e-1364-452b-8fd2-5776c9d99f48', N'科普知识博览.动植物百科：蛇', N'KPZSBL.DZWBK：S', N'王经胜', N'9787550219005', N'人民教育出版社', N'汉语', 76.8, 0, N'D', CAST(0x0000A69A00DA04E4 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'cf6a28b9-bfcf-4bd8-8f4f-bbca32241082', N'爱的教育', N'ADJY', N'亚米契斯著', N'9787533667283', N'安徽教育出版社', N'汉语', 25, 0, N'I18', CAST(0x0000A6A300BFCFE8 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'DB3756E0-2157-46C7-9483-66036E7B76BB', N'英语书', N'YYS', N'人民出版社', N'7100084798123', N'人民出版社', N'汉语', 36.9, 0, N'D', CAST(0x0000A69000D92F9C AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'e6c2c4f5-e81a-422a-bfe5-21e40da20ef3', N'科普知识博览.动植物百科：蛇', N'KPZSBL.DZWBK：S', N'王经胜', N'9787550219005', N'人民教育出版社', N'汉语', 76.8, 0, N'D', CAST(0x0000A69A00D9E798 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'ebfd482c-eb47-487d-ae54-4c64e3214fc1', N'科普知识博览.动植物百科：树懒', N'KPZSBL.DZWBK：SL', N'王经胜', N'9787550219006', N'人民教育出版社', N'汉语', 76.8, 0, N'Q1', CAST(0x0000A69A00D9E798 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'f1131322-7f3b-4747-9597-b001832c15e9', N'科普知识博览.动植物百科：爬行动物', N'KPZSBL.DZWBK：PHDW', N'王经胜', N'9787550219002', N'人民教育出版社', N'汉语', 76.8, 0, N'Q1', CAST(0x0000A69A00DA04E4 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'f1cdbad6-e4a9-4cc2-9133-855931a5f738', N'名人传', N'MRC', N'罗兰著', N'9787533667412', N'安徽教育出版社', N'汉语', 25, 0, N'I11', CAST(0x0000A69A00D84FC8 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'f239a63d-004e-4369-99c5-73e0e3e7339d', N'木偶奇遇记', N'MOQYJ', N'卡洛.科洛迪著', N'9787533667368', N'安徽教育出版社', N'汉语', 25, 1, N'I18', CAST(0x0000A6A300BDE3B8 AS DateTime), 0)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'f28f2252-e85b-48db-9917-960c8c39f6c0', N'名人传', N'MRC', N'罗兰著', N'9787533667412', N'安徽教育出版社', N'汉语', 25, 0, N'I11', CAST(0x0000A69A00DA04E4 AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'f6be51fd-719a-41a5-bdd7-642dc9df4540', N'海燕', N'HY', N'高尔基著', N'9787533667231', N'安徽教育出版社', N'汉语', 25, 0, N'I18', CAST(0x0000A6A600B7915C AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'FA00377A-A252-440C-ABBF-159F4E57B173', N'现代汉语词典', N'XDHYCD', N'人民出版社', N'7100084679123', N'人民出版社', N'汉语', 0.3, 0, N'Z32', CAST(0x0000A69000D92F9C AS DateTime), 1)
INSERT [dbo].[tb_book_info] ([id], [name], [spell], [author], [ISBN], [publisher], [language], [price], [lost], [type], [putin_time], [status]) VALUES (N'faeaf265-7d23-4a3e-8dda-9783f349f47e', N'格林通话', N'GLTH', N'格林', N'7100084712345', N'人民教育出版社', N'汉语', 390, 0, N'I18', CAST(0x0000A69000D92F9C AS DateTime), 1)
/****** Object:  Table [dbo].[tb_book_borrow]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_book_borrow](
	[id] [nvarchar](50) NOT NULL,
	[book_id] [nvarchar](50) NULL,
	[borrow_id] [nvarchar](50) NULL,
	[out_time] [datetime] NULL,
	[in_time] [datetime] NULL,
	[reality_time] [datetime] NULL,
	[again_count] [int] NULL,
 CONSTRAINT [PK_tb_book_borrow] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'297bc3ea-1115-4c93-a165-8ecde926daad', N'0f9c5999-0673-4582-8aa7-52b98e1e710f', N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A69C00000000 AS DateTime), CAST(0x0000A6D800000000 AS DateTime), NULL, 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'2cd68094-dc69-4b3a-9082-cf9f7604ceb3', N'faeaf265-7d23-4a3e-8dda-9783f349f47e', N'84406527-bf26-4ff4-a476-75fbe0d38be8', CAST(0x0000A69000000000 AS DateTime), CAST(0x0000A70800000000 AS DateTime), CAST(0x0000A69C00000000 AS DateTime), 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'429fc50f-b2dc-4859-9052-fa8561188224', N'FA00377A-A252-440C-ABBF-159F4E57B173', N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A68E01070B74 AS DateTime), CAST(0x0000A69B01070B74 AS DateTime), CAST(0x0000A69C00000000 AS DateTime), 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'432cdb36-73c7-4a3d-be62-8fa6707cc9e6', N'118d000f-7ddf-4a91-ba10-b935301f1563', N'2a343560-cb79-4111-8384-76ec2042a711', CAST(0x0000A69C00000000 AS DateTime), CAST(0x0000A6D800000000 AS DateTime), CAST(0x0000A69C00000000 AS DateTime), 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'5182010f-8e1a-4992-8c06-5890fc1719eb', N'24a6e96a-ccb5-4fd2-85d3-8943f192accb', N'7599df44-644d-4a0d-ac5b-0f72ef2147c5', CAST(0x0000A69C00000000 AS DateTime), CAST(0x0000A6D800000000 AS DateTime), CAST(0x0000A69C00000000 AS DateTime), 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'7503cca2-a5cd-488d-98e7-ab0c757b5c3a', N'faeaf265-7d23-4a3e-8dda-9783f349f47e', N'84406527-bf26-4ff4-a476-75fbe0d38be8', CAST(0x0000A69100000000 AS DateTime), CAST(0x0000A6CD00000000 AS DateTime), NULL, 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'772bc149-d165-4f04-87cd-08c884801f19', N'DB3756E0-2157-46C7-9483-66036E7B76BB', N'8b585734-5c58-43da-b306-2a4cc0d7e67f', CAST(0x0000A69F00000000 AS DateTime), CAST(0x0000A6DB00000000 AS DateTime), CAST(0x0000A6A300000000 AS DateTime), 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'7f0736fe-251e-4ef6-8f2b-9f33f3a6b472', N'faeaf265-7d23-4a3e-8dda-9783f349f47e', N'66846336-3d8e-4a0c-8a6c-79d2770c46ea', CAST(0x0000A69900000000 AS DateTime), CAST(0x0000A6D500000000 AS DateTime), CAST(0x0000A69900000000 AS DateTime), 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'84e40c48-d172-48e4-9448-9668dd800812', N'faeaf265-7d23-4a3e-8dda-9783f349f47e', N'84406527-bf26-4ff4-a476-75fbe0d38be8', CAST(0x0000A69000000000 AS DateTime), CAST(0x0000A6CC00000000 AS DateTime), NULL, 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'8e2a79ab-59f1-4c2b-9bf3-148e4806c4a8', N'FA00377A-A252-440C-ABBF-159F4E57B173', N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A68E010863FC AS DateTime), CAST(0x0000A6CA01086528 AS DateTime), CAST(0x0000A68E00000000 AS DateTime), 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'969418ae-650f-47be-a150-1a6ef4eb7710', N'0d55efc9-c7fc-4a69-b2ee-d0fc9eedbbab', N'00558b9d-fb5a-441b-bd2a-8d90c11be8e0', CAST(0x0000A69C00000000 AS DateTime), CAST(0x0000A6D800000000 AS DateTime), NULL, 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'99c6da63-a30c-4236-9053-fa9c0e47a813', N'1461f752-ce0c-4d9d-82c1-462653506df4', N'66846336-3d8e-4a0c-8a6c-79d2770c46ea', CAST(0x0000A69C00000000 AS DateTime), CAST(0x0000A6D800000000 AS DateTime), CAST(0x0000A69C00000000 AS DateTime), 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'b6418239-52a2-4b31-a963-9af3b11e78a9', N'32b6adfe-68c1-43ef-8e63-3221f450d1da', N'8b585734-5c58-43da-b306-2a4cc0d7e67f', CAST(0x0000A69C00000000 AS DateTime), CAST(0x0000A6D800000000 AS DateTime), CAST(0x0000A69C00000000 AS DateTime), 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'd4cd42dc-f9be-4086-b0da-06236c12d107', N'3e051ec9-e362-44b0-9227-7e0650edfed7', N'1F747F89-11AF-479E-9392-6528E1F0ED57', CAST(0x0000A69C00000000 AS DateTime), CAST(0x0000A6D800000000 AS DateTime), NULL, 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'dcc826b8-c9bd-45a7-a587-92a690cf9e49', N'f239a63d-004e-4369-99c5-73e0e3e7339d', N'8b585734-5c58-43da-b306-2a4cc0d7e67f', CAST(0x0000A6A300000000 AS DateTime), CAST(0x0000A6DF00000000 AS DateTime), NULL, 0)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'ef854421-fe60-424e-a795-1f2d13067778', N'faeaf265-7d23-4a3e-8dda-9783f349f47e', N'8b585734-5c58-43da-b306-2a4cc0d7e67f', CAST(0x0000A6A500000000 AS DateTime), CAST(0x0000A6E100000000 AS DateTime), CAST(0x0000A6A500000000 AS DateTime), 2)
INSERT [dbo].[tb_book_borrow] ([id], [book_id], [borrow_id], [out_time], [in_time], [reality_time], [again_count]) VALUES (N'fbde6b93-102e-4031-877f-049bc553364d', N'5816ec1e-308d-46ca-935f-c3d021a19f8e', N'2a343560-cb79-4111-8384-76ec2042a711', CAST(0x0000A69C00000000 AS DateTime), CAST(0x0000A6D800000000 AS DateTime), NULL, 0)
/****** Object:  StoredProcedure [dbo].[sp_tb_book_type_MyGetList]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_tb_book_type_SelectAll
-- Author:	Mehdi Keramati
-- Create date:	2016/10/11 16:43:46
-- Description:	This stored procedure is intended for selecting all rows from tb_book_type table
-- ==========================================================================================
CREATE Procedure [dbo].[sp_tb_book_type_MyGetList]
as
     declare @sql nvarchar(max)
     set @sql='
select a.no,a.name,
sum( (case when b.type is not null then 1 else 0 end )) times
from
tb_book_type a left join tb_book_info b on a.no=b.type
group by 
a.no,a.name,b.type
having sum(case when b.type is not null then 1 else 0 end )<>0
order by a.no asc
	 '
     print (@sql) 
	 exec sp_executesql @sql

	 return @@RowCount
GO
/****** Object:  StoredProcedure [dbo].[MyGetBorrowList]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MyGetBorrowList]
@dtBegin varchar(50),
@dtEnd varchar(50),
@orderBy varchar(50),
@strWhere varchar(50)
     AS 
     declare @sql nvarchar(max)
     set @sql=
	 'with t
	as
	(
	select
	a.id,
	a.name,
	a.author,
	a.ISBN,
	a.publisher,
	b.name as typename
	from
	 [tb_book_info] a
	inner join 
	[tb_book_type] b
	on 
	a.type=b.no
	)
	
		select * from (select ROW_NUMBER() over(order by sum(case when s.book_id is not null then 1 else 0 end ) '+@orderBy+') as row,
	t.id,t.name,t.author,t.ISBN,t.publisher,t.typename,
	sum(case when s.book_id is not null then 1 else 0 end ) times
	from
	t left join
	[tb_book_borrow] s
	on
	t.id=s.book_id 
		where '+'s.out_time>'''+@dtBegin+''' and s.out_time <'''+@dtEnd
	+'''group by
    t.id,t.name,t.author,t.ISBN,t.publisher,t.typename
	) as TT '+@strwhere

     print (@sql) 
	 exec sp_executesql @sql

	 return @@RowCount
GO
/****** Object:  StoredProcedure [dbo].[a_Login]    Script Date: 02/13/2017 09:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[a_Login] 
( @na varchar(30), 
@pa varchar(32), 
@id int out, 
@utype smallint out
 ) as
/*登录，根据@na和@pa登录，返回用户编号@id和用户类型，@utype=1是管理员，@utype=2是普通用户*/

if @na = '' or @pa = ''
   begin
     raiserror('请输入用户名或密码',16,1)
     return
   end

select @id = id from tb_manager where account = @na and password = @pa
if @@rowcount > 0
   begin
     select @utype = 1
     return
   end

select @id = id from tb_borrow_card where id = @na 
if @@rowcount > 0
   begin
     select @utype = 2
     return
   end

select @id = 0, @utype = 0
raiserror('用户名或密码错误',16,1)
GO
/****** Object:  View [dbo].[测试用的，才发现可以这么使用视图]    Script Date: 02/13/2017 09:29:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[测试用的，才发现可以这么使用视图]
AS
SELECT   dbo.tb_book_borrow.book_id, dbo.tb_borrow_card.handle_time, dbo.tb_borrow_card.valid_time, 
                dbo.tb_borrow_card.ic_card, dbo.tb_borrow_card.phone, dbo.tb_book_info.name, dbo.tb_book_info.author, 
                dbo.tb_book_info.ISBN, dbo.tb_book_info.publisher, dbo.tb_book_borrow.out_time
FROM      dbo.tb_book_borrow INNER JOIN
                dbo.tb_book_info ON dbo.tb_book_borrow.book_id = dbo.tb_book_info.id INNER JOIN
                dbo.tb_borrow_card ON dbo.tb_book_borrow.borrow_id = dbo.tb_borrow_card.id
GO
/****** Object:  View [dbo].[View_3]    Script Date: 02/13/2017 09:29:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_3]
AS
SELECT   dbo.tb_book_info.name, dbo.tb_book_borrow.out_time, dbo.tb_book_borrow.in_time, dbo.tb_book_borrow.reality_time, 
                dbo.tb_book_borrow.again_count, dbo.tb_book_info.author, dbo.tb_book_info.ISBN, dbo.tb_book_info.publisher, 
                dbo.tb_borrower_info.name AS Expr1, dbo.tb_borrower_info.grade, dbo.tb_borrow_again.again_date, 
                dbo.tb_borrow_again.again_intime, dbo.tb_borrow_again.manager, dbo.tb_borrow_again.id
FROM      dbo.tb_borrow_card INNER JOIN
                dbo.tb_book_borrow INNER JOIN
                dbo.tb_book_info ON dbo.tb_book_borrow.book_id = dbo.tb_book_info.id ON 
                dbo.tb_borrow_card.id = dbo.tb_book_borrow.borrow_id INNER JOIN
                dbo.tb_borrower_info ON dbo.tb_borrow_card.id = dbo.tb_borrower_info.card_id LEFT OUTER JOIN
                dbo.tb_borrow_again ON dbo.tb_book_borrow.id = dbo.tb_borrow_again.book_borrow_id
GO
/****** Object:  View [dbo].[View_2]    Script Date: 02/13/2017 09:29:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_2]
AS
SELECT   TOP (100) PERCENT dbo.tb_borrow_card.phone, dbo.tb_borrow_card.ic_card, dbo.tb_book_borrow.out_time, 
                dbo.tb_book_borrow.in_time, dbo.tb_book_info.name, dbo.tb_book_info.author, dbo.tb_book_info.id
FROM      dbo.tb_book_borrow INNER JOIN
                dbo.tb_book_info ON dbo.tb_book_borrow.book_id = dbo.tb_book_info.id INNER JOIN
                dbo.tb_borrow_card ON dbo.tb_book_borrow.borrow_id = dbo.tb_borrow_card.id
ORDER BY dbo.tb_book_info.id DESC
GO
/****** Object:  View [dbo].[View_1]    Script Date: 02/13/2017 09:29:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT   TOP (100) PERCENT dbo.tb_book_info.id, dbo.tb_book_borrow.out_time, dbo.tb_book_borrow.in_time, 
                dbo.tb_book_info.name, dbo.tb_book_info.author, dbo.tb_book_borrow.borrow_id
FROM      dbo.tb_book_borrow INNER JOIN
                dbo.tb_book_info ON dbo.tb_book_borrow.book_id = dbo.tb_book_info.id
ORDER BY dbo.tb_book_info.id DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_book_info_Update]    Script Date: 02/13/2017 09:29:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_tb_book_info_Update
-- Author:	Mehdi Keramati
-- Create date:	2016/10/10 11:41:16
-- Description:	This stored procedure is intended for updating tb_book_info table
-- ==========================================================================================
Create Procedure [dbo].[sp_tb_book_info_Update]
	@id nvarchar(50),
	@name nvarchar(50),
	@author nvarchar(50),
	@ISBN nvarchar(100),
	@publisher nvarchar(50),
	@language nvarchar(50),
	@price float,
	@type nvarchar(50),
	@putin_time datetime,
	@status bit
As
Begin
	Update tb_book_info
	Set
		[name] = @name,
		[author] = @author,
		[ISBN] = @ISBN,
		[publisher] = @publisher,
		[language] = @language,
		[price] = @price,
		[type] = @type,
		[putin_time] = @putin_time,
		[status] = @status
	Where		
		[id] = @id

End
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_book_info_SelectRow]    Script Date: 02/13/2017 09:29:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_tb_book_info_SelectRow
-- Author:	Mehdi Keramati
-- Create date:	2016/10/10 11:41:16
-- Description:	This stored procedure is intended for selecting a specific row from tb_book_info table
-- ==========================================================================================
Create Procedure [dbo].[sp_tb_book_info_SelectRow]
	@id nvarchar(50)
As
Begin
	Select 
		[id],
		[name],
		[author],
		[ISBN],
		[publisher],
		[language],
		[price],
		[type],
		[putin_time],
		[status]
	From tb_book_info
	Where
		[id] = @id
End
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_book_info_Insert]    Script Date: 02/13/2017 09:29:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_tb_book_info_Insert
-- Author:	Mehdi Keramati
-- Create date:	2016/10/10 11:41:16
-- Description:	This stored procedure is intended for inserting values to tb_book_info table
-- ==========================================================================================
Create Procedure [dbo].[sp_tb_book_info_Insert]
	@id nvarchar(50),
	@name nvarchar(50),
	@author nvarchar(50),
	@ISBN nvarchar(100),
	@publisher nvarchar(50),
	@language nvarchar(50),
	@price float,
	@type nvarchar(50),
	@putin_time datetime,
	@status bit
As
Begin
	Insert Into tb_book_info
		([id],[name],[author],[ISBN],[publisher],[language],[price],[type],[putin_time],[status])
	Values
		(@id,@name,@author,@ISBN,@publisher,@language,@price,@type,@putin_time,@status)

End
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_book_info_DeleteRow]    Script Date: 02/13/2017 09:29:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==========================================================================================
-- Entity Name:	sp_tb_book_info_DeleteRow
-- Author:	Mehdi Keramati
-- Create date:	2016/10/10 11:41:16
-- Description:	This stored procedure is intended for deleting a specific row from tb_book_info table
-- ==========================================================================================
Create Procedure [dbo].[sp_tb_book_info_DeleteRow]
	@id nvarchar(50)
As
Begin
	Delete tb_book_info
	Where
		[id] = @id

End
GO
/****** Object:  Default [DF__tb_down_r__is_do__1367E606]    Script Date: 02/13/2017 09:29:05 ******/
ALTER TABLE [dbo].[tb_down_record] ADD  DEFAULT ((0)) FOR [is_down]
GO
/****** Object:  Default [DF__tb_borrow__statu__0AD2A005]    Script Date: 02/13/2017 09:29:05 ******/
ALTER TABLE [dbo].[tb_borrow_card] ADD  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__tb_book_in__lost__014935CB]    Script Date: 02/13/2017 09:29:07 ******/
ALTER TABLE [dbo].[tb_book_info] ADD  DEFAULT ((0)) FOR [lost]
GO
/****** Object:  Default [DF__tb_book_i__statu__023D5A04]    Script Date: 02/13/2017 09:29:07 ******/
ALTER TABLE [dbo].[tb_book_info] ADD  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__tb_book_b__again__7E6CC920]    Script Date: 02/13/2017 09:29:07 ******/
ALTER TABLE [dbo].[tb_book_borrow] ADD  DEFAULT ((0)) FOR [again_count]
GO
