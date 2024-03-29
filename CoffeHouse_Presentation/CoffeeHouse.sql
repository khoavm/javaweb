USE [master]
GO
/****** Object:  Database [CoffeeHouse_Presentation]    Script Date: 05/08/2019 16:40:10 ******/
CREATE DATABASE [CoffeeHouse_Presentation] ON  PRIMARY 
( NAME = N'CoffeeHouse_Presentation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CoffeeHouse_Presentation.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CoffeeHouse_Presentation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CoffeeHouse_Presentation_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CoffeeHouse_Presentation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET ARITHABORT OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET  DISABLE_BROKER
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET  READ_WRITE
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET  MULTI_USER
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CoffeeHouse_Presentation] SET DB_CHAINING OFF
GO
USE [CoffeeHouse_Presentation]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 05/08/2019 16:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupID] [varchar](10) NOT NULL,
	[SupName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Suppliers] ([SupID], [SupName], [Address]) VALUES (N'DN', N'Delivery Now', N'6B Vạn Kiếp, Phường Phước Tân, Nha Trang')
INSERT [dbo].[Suppliers] ([SupID], [SupName], [Address]) VALUES (N'KFC', N'Kentucky Chicken', N'49-551 Đường Hậu Giang, Phường 11, Quận 6')
INSERT [dbo].[Suppliers] ([SupID], [SupName], [Address]) VALUES (N'Kik', N'Kitoku', N'P2 Q3, Cao Lỗ')
INSERT [dbo].[Suppliers] ([SupID], [SupName], [Address]) VALUES (N'NB1', N'Number 1', N'Thôn 3, Hàm Thắng, Hàm Thuận Bắc')
INSERT [dbo].[Suppliers] ([SupID], [SupName], [Address]) VALUES (N'THP', N'Tân Hiệp Phát', N'219 Đại lộ Bình Dương, Vĩnh Phú')
/****** Object:  Table [dbo].[DiscountCodes]    Script Date: 05/08/2019 16:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiscountCodes](
	[CodeValue] [varchar](50) NOT NULL,
	[DiscountValue] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_DiscountCodes] PRIMARY KEY CLUSTERED 
(
	[CodeValue] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DiscountCodes] ([CodeValue], [DiscountValue], [Quantity]) VALUES (N'abc321', 15, 47)
INSERT [dbo].[DiscountCodes] ([CodeValue], [DiscountValue], [Quantity]) VALUES (N'abcxyz', 10, 48)
INSERT [dbo].[DiscountCodes] ([CodeValue], [DiscountValue], [Quantity]) VALUES (N'asdfgh', 5, 49)
INSERT [dbo].[DiscountCodes] ([CodeValue], [DiscountValue], [Quantity]) VALUES (N'qwerty', 20, 50)
INSERT [dbo].[DiscountCodes] ([CodeValue], [DiscountValue], [Quantity]) VALUES (N'test', 50, 5)
/****** Object:  Table [dbo].[Accounts]    Script Date: 05/08/2019 16:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[FullName] [nvarchar](30) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[Role] [varchar](20) NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'dat', N'123456', N'Phát Đạt', N'dat@cdsvdscds.com', N'09321123456', N'user', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'dxasd', N'asd', N'cds fsdfs', N'xdcsc@gmail.com', N'0987665432', N'user', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'hien', N'123456', N'van hien', N'hien@gmail.com', N'0967854323', N'user', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'john', N'123456', N'John Snow', N'john@gmail.com', N'0978263541', N'user', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'khanh', N'123456', N'Minh Khánh', N'khanh@gmail.con', N'0932145678', N'user', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'khoa', N'123456', N'Minh Khoa', N'khoa@gmail.com', N'0987654321', N'admin', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'quang', N'123456', N'Thanh Quang', N'quangxyz@gmail.com', N'0567894321', N'user', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'tai', N'123456', N'Lê Tài', N'tai@gmail.com', N'0945678123', N'user', 0)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'test', N'123456', N'kdfbdv', N'test@gmail.com', N'0987123645', N'user', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'thien', N'123456', N'Bảo Thiện', N'thien@gmail.com', N'0987345621', N'user', 0)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'thoai', N'123456', N'Than Thoai', N'thoai@gmail.com', N'0967834521', N'user', 1)
INSERT [dbo].[Accounts] ([Username], [Password], [FullName], [Email], [Phone], [Role], [isActive]) VALUES (N'zhou', N'123456', N'Zhang Zhou', N'hou@gmail.com', N'0981234567', N'user', 1)
/****** Object:  Table [dbo].[UsedCodes]    Script Date: 05/08/2019 16:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsedCodes](
	[CodeID] [int] IDENTITY(1,1) NOT NULL,
	[CodeValue] [varchar](50) NULL,
	[Customer] [varchar](20) NULL,
	[UsedDate] [varchar](100) NULL,
 CONSTRAINT [PK_UsedCodes] PRIMARY KEY CLUSTERED 
(
	[CodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UsedCodes] ON
INSERT [dbo].[UsedCodes] ([CodeID], [CodeValue], [Customer], [UsedDate]) VALUES (1, N'abcxyz', N'john', N'30/04/2019 17:22:00')
INSERT [dbo].[UsedCodes] ([CodeID], [CodeValue], [Customer], [UsedDate]) VALUES (2, N'abcxyz', N'zhou', N'30/04/2019 17:23:41')
INSERT [dbo].[UsedCodes] ([CodeID], [CodeValue], [Customer], [UsedDate]) VALUES (3, N'abc321', N'zhou', N'30/04/2019 17:34:41')
INSERT [dbo].[UsedCodes] ([CodeID], [CodeValue], [Customer], [UsedDate]) VALUES (4, N'asdfgh', N'zhou', N'01/05/2019 22:45:54')
INSERT [dbo].[UsedCodes] ([CodeID], [CodeValue], [Customer], [UsedDate]) VALUES (5, N'abc321', N'dat', N'01/05/2019 23:58:35')
SET IDENTITY_INSERT [dbo].[UsedCodes] OFF
/****** Object:  Table [dbo].[CustomerOrders]    Script Date: 05/08/2019 16:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerOrders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [varchar](20) NOT NULL,
	[OrderDate] [varchar](50) NOT NULL,
	[Total_Payment] [int] NOT NULL,
 CONSTRAINT [PK_CustomerOrders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerOrders] ON
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (1, N'john', N'30/04/2019 17:21:59', 101700)
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (2, N'zhou', N'30/04/2019 17:23:41', 52200)
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (3, N'zhou', N'30/04/2019 17:34:41', 41650)
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (4, N'khanh', N'30/04/2019 17:52:28', 95000)
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (5, N'khanh', N'30/04/2019 17:54:48', 29000)
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (6, N'khanh', N'01/05/2019 13:13:55', 58000)
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (7, N'zhou', N'01/05/2019 22:45:53', 56050)
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (8, N'zhou', N'01/05/2019 23:43:13', 48000)
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (9, N'dat', N'01/05/2019 23:58:35', 49300)
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (10, N'test', N'06/05/2019 08:10:07', 108000)
INSERT [dbo].[CustomerOrders] ([OrderID], [Customer], [OrderDate], [Total_Payment]) VALUES (11, N'test', N'06/05/2019 08:10:42', 50000)
SET IDENTITY_INSERT [dbo].[CustomerOrders] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 05/08/2019 16:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Price] [int] NOT NULL,
	[Image] [varchar](200) NULL,
	[Type] [varchar](10) NULL,
	[Quantity] [int] NOT NULL,
	[Supplier] [varchar](10) NOT NULL,
	[isAvailable] [bit] NOT NULL,
 CONSTRAINT [PK_Foods_1] PRIMARY KEY CLUSTERED 
(
	[ProName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'BẠC SỈU', N'Ly sữa trắng kèm một chút cà phê.', 29000, N'img/drink/white_vnese_coffee.jpg', N'drink', 33, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'BANANA', N'it''s so good', 50000, N'img/food/dcv.jpg', N'food', 5798, N'DN', 0)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'BÁNH MÌ GÀ XÉ', N'Bánh mì Việt Nam giòn thơm với nhân gà xé, rau, gia vị hòa quyện cùng nước sốt đặc biệt. ', 19000, N'img/food/bm_ga_nuoc_tuong.jpg', N'food', 49, N'DN', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'BÁNH MÌ THỊT NƯỚNG', N'Đặc sản của Việt Nam! Bánh mì giòn với nhân thịt nướng, rau thơm và gia vị đậm đà, hòa quyện trong lớp nước sốt tuyệt hảo. ', 19000, N'img/food/bm_thit_nuong.jpg', N'food', 48, N'KFC', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'BÁNH MOUSSE ĐÀO', N'Một sự kết hợp khéo léo giữa kem và lớp bánh mềm, được phủ lên trên vài lát đào ngon tuyệ', 29000, N'img/food/banh_mousse_dao.jpg', N'food', 47, N'KFC', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'BÁNH PHÔ MAI TRÀ XANH', N'Một sự sáng tạo mới mẻ, kết hợp giữa trà xanh đậm đà và phô mai ít béo', 29000, N'img/food/pho_mai_tra_xanh.jpg', N'food', 41, N'KFC', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'BÁNH XẾP THƠM (3 CÁI)', N'Bánh Xếp Thơm, dẻo thơm bên trong giòn rụm bên ngoài, đặc trưng với nhân thơm ngọt thanh, bọc ngoài là vỏ bánh phủ thêm lớp cốm xù và được chiên giòn vàng thơm.', 25000, N'img/food/banh_xep.jpg', N'food', 49, N'KFC', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'BURGER GÀ CAY', N'ịt ức Gà giòn cay được thay cho 2 lớp bánh burger truyền thống, kẹp giữa là rau xà-lách tươi và lát thơm ngọt thanh.', 50000, N'img/food/burger_ga_cay.jpg', N'food', 49, N'KFC', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'CÀ PHÊ ĐEN', N'Một tách cà phê đen thơm ngào ngạt, phảng phất mùi cacao là món quà tự thưởng tuyệt vời nhất cho những ai mê đắm tinh chất nguyên bản nhất của cà phê.', 29000, N'img/drink/vnese_coffee.jpg', N'drink', 48, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'CARAMEL MACCHIATO', N'Là sự kết hợp của trà Oolong và trái vải quen thuộc. Là món uống thanh mát, dịu nhẹ rất dễ sử dụng bởi sự hoà quyện của vị chua thanh của vải, hậu vị ngọt kéo dài của trà oolong.', 55000, N'img/drink/caramel_macchiato.jpg', N'drink', 50, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'CHAWAN MUSHI', N'Trứng hấp Nhật Bản thơm ngon cho trẻ em và cả người lớn, ai cũng đều thích.', 65000, N'img/food/egg_japan.jpg', N'food', 45, N'KFC', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'CƠM CHIÊN DƯƠNG CHÂU', N'Cơm chiên dương châu là món ăn ngon có xuất xứ từ thời nhà thanh của Trung Quốc và nhanh chóng nổi tiếng trên khắp thế giới. Món cơm chiên dương châu này vừa thơm ngon lại vừa có rất nhiều màu sắc bắt nữa, đậm đà và giàu chất dinh dưỡng.', 50000, N'img/food/com_chien.jpg', N'food', 49, N'KFC', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'DA CÁ SẤY GIÒN VỊ TRỨNG MUỐI', N'Da cá được chiên giòn tan, cắt ra thành từng miếng nhỏ vừa ăn. Mỗi một miếng da cá được phủ đầy lớp trứng muối mặn mặn ngọt ngọt vừa bùi béo, vừa đậm đà.', 30000, N'img/food/dcv.jpg', N'food', 49, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'KHOAI TÂY QUE CHIÊN', N'Món ăn khoái khẩu của nhiều người.', 20000, N'img/food/fried_potato.jpg', N'food', 49, N'KFC', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'MOCHA', N'Cà phê Mocha được ví von đơn giản là Sốt Sô cô la được pha cùng một tách Espresso.', 49000, N'img/drink/mocha.jpg', N'drink', 50, N'THP', 0)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'OMERA', N'it''s is strange', 50000, N'img/food/dcv.jpg', N'food', 50, N'NB1', 0)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'RONG BIỂN SẤY', N'Rong biển là một món ăn vặt và cũng là nguyên liệu rất tốt đối với sức khỏe con người.', 25000, N'img/food/rong_bien.jpg', N'food', 49, N'KFC', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'SALAD TRỘN', N' Món salad xà lách trộn là sự lựa chọn ưu tiên số một của bạn để giúp kiểm soát tối đa lượng calories có trong bữa ăn mà vẫn đảm bảo dinh dưỡng cần thiết.', 20000, N'img/food/salad_tron.jpg', N'food', 50, N'KFC', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'SINH TỐ CAM XOÀI', N'Vị mứt cam xoài hòa trộn độc đáo với sữa chua, cho cảm giác chua ngọt rất sướng. Điểm nhấn là những mẩu bánh cookie giòn tan giúp sự thưởng thức thêm thú vị.', 59000, N'img/drink/mango_smoothie.jpg', N'drink', 50, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'SINH TỐ VIỆT QUẤT', N'Mứt Việt Quất chua thanh, ngòn ngọt, phối hợp nhịp nhàng với dòng sữa chua bổ dưỡng. Là món sinh tố thơm ngon mà cả đầu lưỡi và làn da đều thích.', 59000, N'img/drink/blueberry_smoothie.jpg', N'drink', 48, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'SÔ-CÔ-LA ĐÁ', N'Cacao nguyên chất hoà cùng sữa tươi béo ngậy. Vị ngọt tự nhiên, không gắt cổ, để lại một chút đắng nhẹ, cay cay trên đầu lưỡi.', 55000, N'img/drink/iced_chocolate.jpg', N'drink', 50, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'TRÀ ĐÀO CAM SẢ', N'Vị thanh ngọt của đào Hy Lạp, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.', 45000, N'img/drink/tra_dao_cam_sa_on_bg.jpg', N'drink', 49, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'TRÀ GẠO RANG MACCHIATO', N'Trà gạo rang, hay còn gọi là Genmaicha, hay Trà xanh gạo lứt có nguồn gốc từ Nhật Bản.', 48000, N'img/drink/genmaicha_macchiato.jpg', N'drink', 50, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'TRÀ MATCHA MACCHIATO', N'Bột trà xanh Matcha thơm lừng hảo hạng cùng lớp Macchiato béo ngậy là một sự kết hợp tuyệt vời.', 45000, N'img/drink/matcha_macchiato.jpg', N'drink', 49, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'TRÀ ỔI THANH LONG MACCHIATO', N'Vị ổi thơm lừng kết hợp cùng thanh long ngọt dịu, quyện vào lớp kem beo béo nữa thì đây đích thị là món giải nhiệt thân thiện nhất trong dòng thức uống Macchiato tại The Coffee House rồi.', 48000, N'img/drink/dragonfruit_macchiato.jpg', N'drink', 50, N'THP', 1)
INSERT [dbo].[Products] ([ProName], [Description], [Price], [Image], [Type], [Quantity], [Supplier], [isAvailable]) VALUES (N'TRÀ OOLONG VẢI NHƯ Ý', N'Là thức uống được lấy cảm hứng từ trái Vải - thức quả tròn đầy, quen thuộc trong cuộc sống người Việt - kết hợp cùng Trà Oolong làm từ những lá trà tươi hảo hạng. ', 45000, N'img/drink/travai.jpg', N'drink', 48, N'THP', 1)
/****** Object:  Table [dbo].[OrderedProducts]    Script Date: 05/08/2019 16:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderedProducts](
	[ProID] [int] IDENTITY(1,1) NOT NULL,
	[ProName] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK_OrderedProducts] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderedProducts] ON
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (1, N'BÁNH MÌ THỊT NƯỚNG', 1, 19000, 1)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (2, N'BẠC SỈU', 1, 29000, 1)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (3, N'CHAWAN MUSHI', 1, 65000, 1)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (4, N'BÁNH MOUSSE ĐÀO', 1, 29000, 2)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (5, N'CÀ PHÊ ĐEN', 1, 29000, 2)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (6, N'KHOAI TÂY QUE CHIÊN', 1, 20000, 3)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (7, N'BẠC SỈU', 1, 29000, 3)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (8, N'TRÀ OOLONG VẢI NHƯ Ý', 1, 45000, 4)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (9, N'BANANA', 1, 50000, 4)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (10, N'BẠC SỈU', 1, 29000, 5)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (11, N'CÀ PHÊ ĐEN', 1, 29000, 6)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (12, N'BẠC SỈU', 1, 29000, 6)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (13, N'SINH TỐ VIỆT QUẤT', 1, 59000, 7)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (14, N'BÁNH MOUSSE ĐÀO', 1, 29000, 8)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (15, N'BÁNH MÌ GÀ XÉ', 1, 19000, 8)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (16, N'BÁNH PHÔ MAI TRÀ XANH', 1, 29000, 9)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (17, N'BẠC SỈU', 1, 29000, 9)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (18, N'BẠC SỈU', 2, 58000, 10)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (19, N'BANANA', 1, 50000, 10)
INSERT [dbo].[OrderedProducts] ([ProID], [ProName], [Quantity], [Price], [OrderID]) VALUES (20, N'CƠM CHIÊN DƯƠNG CHÂU', 1, 50000, 11)
SET IDENTITY_INSERT [dbo].[OrderedProducts] OFF
/****** Object:  ForeignKey [FK_UsedCodes_Accounts]    Script Date: 05/08/2019 16:40:11 ******/
ALTER TABLE [dbo].[UsedCodes]  WITH CHECK ADD  CONSTRAINT [FK_UsedCodes_Accounts] FOREIGN KEY([Customer])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[UsedCodes] CHECK CONSTRAINT [FK_UsedCodes_Accounts]
GO
/****** Object:  ForeignKey [FK_UsedCodes_DiscountCodes]    Script Date: 05/08/2019 16:40:11 ******/
ALTER TABLE [dbo].[UsedCodes]  WITH CHECK ADD  CONSTRAINT [FK_UsedCodes_DiscountCodes] FOREIGN KEY([CodeValue])
REFERENCES [dbo].[DiscountCodes] ([CodeValue])
GO
ALTER TABLE [dbo].[UsedCodes] CHECK CONSTRAINT [FK_UsedCodes_DiscountCodes]
GO
/****** Object:  ForeignKey [FK_CustomerOrders_Accounts1]    Script Date: 05/08/2019 16:40:11 ******/
ALTER TABLE [dbo].[CustomerOrders]  WITH CHECK ADD  CONSTRAINT [FK_CustomerOrders_Accounts1] FOREIGN KEY([Customer])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[CustomerOrders] CHECK CONSTRAINT [FK_CustomerOrders_Accounts1]
GO
/****** Object:  ForeignKey [FK_Products_Suppliers]    Script Date: 05/08/2019 16:40:11 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([Supplier])
REFERENCES [dbo].[Suppliers] ([SupID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
/****** Object:  ForeignKey [FK_OrderedProducts_CustomerOrders]    Script Date: 05/08/2019 16:40:11 ******/
ALTER TABLE [dbo].[OrderedProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderedProducts_CustomerOrders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[CustomerOrders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderedProducts] CHECK CONSTRAINT [FK_OrderedProducts_CustomerOrders]
GO
/****** Object:  ForeignKey [FK_OrderedProducts_Products]    Script Date: 05/08/2019 16:40:11 ******/
ALTER TABLE [dbo].[OrderedProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderedProducts_Products] FOREIGN KEY([ProName])
REFERENCES [dbo].[Products] ([ProName])
GO
ALTER TABLE [dbo].[OrderedProducts] CHECK CONSTRAINT [FK_OrderedProducts_Products]
GO
