USE [master]
GO
/****** Object:  Database [CocShop_B3S2]    Script Date: 05/08/2019 16:36:50 ******/
CREATE DATABASE [CocShop_B3S2] ON  PRIMARY 
( NAME = N'CocShop_B3S2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CocShop_B3S2.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CocShop_B3S2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CocShop_B3S2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CocShop_B3S2] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CocShop_B3S2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CocShop_B3S2] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CocShop_B3S2] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CocShop_B3S2] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CocShop_B3S2] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CocShop_B3S2] SET ARITHABORT OFF
GO
ALTER DATABASE [CocShop_B3S2] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CocShop_B3S2] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CocShop_B3S2] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CocShop_B3S2] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CocShop_B3S2] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CocShop_B3S2] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CocShop_B3S2] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CocShop_B3S2] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CocShop_B3S2] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CocShop_B3S2] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CocShop_B3S2] SET  DISABLE_BROKER
GO
ALTER DATABASE [CocShop_B3S2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CocShop_B3S2] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CocShop_B3S2] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CocShop_B3S2] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CocShop_B3S2] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CocShop_B3S2] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CocShop_B3S2] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CocShop_B3S2] SET  READ_WRITE
GO
ALTER DATABASE [CocShop_B3S2] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CocShop_B3S2] SET  MULTI_USER
GO
ALTER DATABASE [CocShop_B3S2] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CocShop_B3S2] SET DB_CHAINING OFF
GO
USE [CocShop_B3S2]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 05/08/2019 16:36:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupID] [varchar](15) NOT NULL,
	[SupName] [varchar](20) NULL,
	[Address] [varchar](50) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Supplier] ([SupID], [SupName], [Address]) VALUES (N'CP', N'Coca-Cola', N'P8,Q9,Pham The Hien')
INSERT [dbo].[Supplier] ([SupID], [SupName], [Address]) VALUES (N'KFC', N'Kentucky', N'P2,Q11, Ba Tang')
INSERT [dbo].[Supplier] ([SupID], [SupName], [Address]) VALUES (N'Nes', N'Nestle', N'P5,Q3 Binh Thanh')
INSERT [dbo].[Supplier] ([SupID], [SupName], [Address]) VALUES (N'Pep', N'PepsiCo', N'P7,Q3,Tan Thai')
INSERT [dbo].[Supplier] ([SupID], [SupName], [Address]) VALUES (N'THP', N'Tan Hiep Phat', N'P5,Q1, Binh An')
/****** Object:  Table [dbo].[Account]    Script Date: 05/08/2019 16:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[Fullname] [varchar](50) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Role] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Account] ON [dbo].[Account] 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Account_1] ON [dbo].[Account] 
(
	[Phone] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password], [Fullname], [Email], [Phone], [Role]) VALUES (N'han', N'1234567', N'ngochan', N'hankhung@gmail.com', N'0987612341', N'User')
INSERT [dbo].[Account] ([Username], [Password], [Fullname], [Email], [Phone], [Role]) VALUES (N'hieu', N'1234567', N'manhhieu', N'hieu@yahoo.com', N'0967854321', N'User')
INSERT [dbo].[Account] ([Username], [Password], [Fullname], [Email], [Phone], [Role]) VALUES (N'khoa', N'1234567', N'minhkhoa', N'mkhoa@gmail.com', N'0912345678', N'Admin')
INSERT [dbo].[Account] ([Username], [Password], [Fullname], [Email], [Phone], [Role]) VALUES (N'tai', N'123456', N'thanhtai', N'taik@gmail.com', N'0987612349', N'User')
INSERT [dbo].[Account] ([Username], [Password], [Fullname], [Email], [Phone], [Role]) VALUES (N'thai', N'1234567', N'asdsada', N'thaiz@mail.com', N'0987612342', N'User')
INSERT [dbo].[Account] ([Username], [Password], [Fullname], [Email], [Phone], [Role]) VALUES (N'tran', N'123456', N'vankhanh', N'khanh2@mail.com', N'0934567123', N'User')
INSERT [dbo].[Account] ([Username], [Password], [Fullname], [Email], [Phone], [Role]) VALUES (N'tuan', N'123456', N'yentuan', N'tuan55@mail.com', N'0987654632', N'User')
/****** Object:  Table [dbo].[CustomerOrder]    Script Date: 05/08/2019 16:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerOrder](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NULL,
	[Customer] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerOrder] ON
INSERT [dbo].[CustomerOrder] ([OrderID], [OrderDate], [Customer]) VALUES (1, CAST(0x133F0B00 AS Date), N'han')
INSERT [dbo].[CustomerOrder] ([OrderID], [OrderDate], [Customer]) VALUES (2, CAST(0x133F0B00 AS Date), N'hieu')
INSERT [dbo].[CustomerOrder] ([OrderID], [OrderDate], [Customer]) VALUES (3, CAST(0x133F0B00 AS Date), N'tai')
INSERT [dbo].[CustomerOrder] ([OrderID], [OrderDate], [Customer]) VALUES (4, CAST(0x133F0B00 AS Date), N'han')
INSERT [dbo].[CustomerOrder] ([OrderID], [OrderDate], [Customer]) VALUES (5, CAST(0x163F0B00 AS Date), N'han')
INSERT [dbo].[CustomerOrder] ([OrderID], [OrderDate], [Customer]) VALUES (6, CAST(0x163F0B00 AS Date), N'han')
INSERT [dbo].[CustomerOrder] ([OrderID], [OrderDate], [Customer]) VALUES (7, CAST(0x543F0B00 AS Date), N'han')
SET IDENTITY_INSERT [dbo].[CustomerOrder] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 05/08/2019 16:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProID] [varchar](15) NOT NULL,
	[ProName] [nvarchar](30) NOT NULL,
	[Price] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Type] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[isAvailable] [bit] NOT NULL,
	[SupID] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'CG', N'ChaGio', 7000, N'ratngondo', N'Food', 0, 0, N'Nes')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'Ck', N'FriedChicken', 20000, N'jijifscdsd', N'Food', 32, 1, N'KFC')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'Coca', N'CocaCola', 10000, N'most recognised drink', N'Drink', 36, 1, N'CP')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'EC', N'CDSC', 32100, N'DSFSDFSD', N'Food', 40, 1, N'CP')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'HA', N'Hamburger', 15000, N'jdisjncsd', N'Food', 36, 1, N'KFC')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'LK', N'Lingys', 5700, N'dasfvresrvc', N'Food', 39, 1, N'CP')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'NM', N'DSFSD', 3000, N'DSDSF', N'Food', 40, 1, N'CP')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'OL', N'O Long Tea', 10000, N'xscsdiiji', N'Food', 40, 0, N'THP')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'Pep', N'Pepsi', 8000, N'djsfsjnfsjns', N'Drink', 38, 1, N'Pep')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'QZ', N'DASDAS', 34500, N'CDSCD', N'Food', 40, 1, N'CP')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'SJR', N'DASDAS', 5000, N'FDSFSDF', N'Food', 39, 1, N'CP')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'SW', N'JFUDSV', 45000, N'DSEFSDCD', N'Food', 40, 1, N'CP')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'test', N'test', 1000, N'testdsd', N'Food', 44, 1, N'CP')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'TV', N'dssa', 35000, N'dsfsdf', N'Drink', 38, 1, N'Nes')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'VG', N'Noodle', 3000, N'DASDS', N'Food', 39, 1, N'CP')
INSERT [dbo].[Product] ([ProID], [ProName], [Price], [Description], [Type], [Quantity], [isAvailable], [SupID]) VALUES (N'ZX', N'ascsa', 123000, N'scsdxsa', N'Food', 40, 1, N'KFC')
/****** Object:  Table [dbo].[OrderedProduct]    Script Date: 05/08/2019 16:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderedProduct](
	[ProID] [varchar](15) NOT NULL,
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderedProduct] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'CG', 1, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'CG', 4, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'Ck', 5, 2)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'Ck', 6, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'Ck', 7, 2)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'Coca', 1, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'Coca', 2, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'Coca', 5, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'HA', 1, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'LK', 3, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'Pep', 3, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'test', 6, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'TV', 6, 1)
INSERT [dbo].[OrderedProduct] ([ProID], [OrderID], [Quantity]) VALUES (N'VG', 2, 1)
/****** Object:  ForeignKey [FK_Order_Account]    Script Date: 05/08/2019 16:36:52 ******/
ALTER TABLE [dbo].[CustomerOrder]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([Customer])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[CustomerOrder] CHECK CONSTRAINT [FK_Order_Account]
GO
/****** Object:  ForeignKey [FK_Product_Supplier]    Script Date: 05/08/2019 16:36:52 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([SupID])
REFERENCES [dbo].[Supplier] ([SupID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
/****** Object:  ForeignKey [FK_OrderedProduct_Order]    Script Date: 05/08/2019 16:36:52 ******/
ALTER TABLE [dbo].[OrderedProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderedProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[CustomerOrder] ([OrderID])
GO
ALTER TABLE [dbo].[OrderedProduct] CHECK CONSTRAINT [FK_OrderedProduct_Order]
GO
/****** Object:  ForeignKey [FK_OrderedProduct_Product]    Script Date: 05/08/2019 16:36:52 ******/
ALTER TABLE [dbo].[OrderedProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderedProduct_Product] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ProID])
GO
ALTER TABLE [dbo].[OrderedProduct] CHECK CONSTRAINT [FK_OrderedProduct_Product]
GO
