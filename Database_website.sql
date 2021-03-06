CREATE DATABASE SellPhoneDataBase
GO
USE [SellPhoneDataBase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/12/2019 10:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 12/12/2019 10:44:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BillDate] [datetime2](7) NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[CustomerPhoneNumber] [nvarchar](max) NULL,
	[AppointmentDate] [nvarchar](max) NULL,
	[CustomerEmail] [nvarchar](max) NULL,
	[TotalPrice] [int] NOT NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/12/2019 10:44:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 12/12/2019 10:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[ProductsId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[CommentDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/12/2019 10:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Opinion] [nvarchar](max) NULL,
	[ContactDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/12/2019 10:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Memory] [int] NULL,
	[Quantity] [int] NULL,
	[Capacity] [int] NULL,
	[Manufacturer] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SpecialTagId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSelectedForAppointment]    Script Date: 12/12/2019 10:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSelectedForAppointment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppointmentId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductSelectedForAppointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecialTag]    Script Date: 12/12/2019 10:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_SpecialTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/12/2019 10:44:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[DateOfBith] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191108234230_addCategory', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191108234554_addSpecialTag', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191108235036_addProducts', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191112033905_addUsers', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191112043502_addAppointmentsAndProductSelectedForAppointment', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191112075216_addBillAndBillDetails', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191112080352_addDatabase', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191113132915_DatabaseNew', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191115123850_addDatabaseNew', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191206151725_addCommnets', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191206153138_addComments', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191207135927_AddCommnetNew', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191207142048_addCommnets', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191207145452_NewComments', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191208150431_AddCommentNew', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191209031902_AddComments', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191212034406_addCommentNew', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191212151414_addContact', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191212151658_AddNewContact', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191212153744_addContactDate', N'2.2.6-servicing-10079')
SET IDENTITY_INSERT [dbo].[Appointments] ON 

INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (1, CAST(N'2019-11-15T19:41:40.0998688' AS DateTime2), N'Son IT', N'0968806360', N'15/11/2019', N'phandinhson116', 25780000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (2, CAST(N'2019-11-15T19:42:31.0827041' AS DateTime2), NULL, NULL, NULL, NULL, 26060000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (3, CAST(N'2019-11-15T19:49:08.9980767' AS DateTime2), NULL, NULL, NULL, NULL, 25780000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (4, CAST(N'2019-11-16T13:31:45.6865238' AS DateTime2), NULL, NULL, NULL, NULL, 42770000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (5, CAST(N'2019-11-16T13:33:11.8670852' AS DateTime2), NULL, NULL, NULL, NULL, 17580000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (6, CAST(N'2019-11-16T15:07:05.5593640' AS DateTime2), N'Son', N'01283381683', N'16/11/2019', N'phandinhson116@gmail.com', 9010000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (7, CAST(N'2019-11-16T15:34:19.0073814' AS DateTime2), N'Phan Phú Huy', N'01283381683', N'16/11/2019', N'phanphuhuy111@gmail.com', 19280000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (8, CAST(N'2019-11-17T00:03:39.9547260' AS DateTime2), N'Phan Phú Huy', N'01283381683', N'16/11/2019', N'phanphuhuy111@gmail.com', 430000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (9, CAST(N'2019-11-17T15:22:43.6241563' AS DateTime2), N'Duy', N'334343424434', N'17/11/2019', N'phandinhson116@gmail.com', 10490000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (10, CAST(N'2019-11-17T22:38:52.9295684' AS DateTime2), N'Phan Phú Huy', N'01283381683', N'17/11/2019', N'phanphuhuy111@gmail.com', 8790000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (11, CAST(N'2019-11-17T22:49:11.2608371' AS DateTime2), NULL, NULL, NULL, NULL, 10480000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (12, CAST(N'2019-11-17T23:28:37.2394699' AS DateTime2), N'Phan Phú Huy', N'01283381683', N'17/11/2019', N'phanphuhuy111@gmail.com', 19280000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (13, CAST(N'2019-11-17T23:42:53.2536791' AS DateTime2), N'Phan Đình Sơn', N'0968806360', N'17/11/2019', N'phandinhson116@gmail.com', 19280000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (14, CAST(N'2019-11-18T07:28:03.3601327' AS DateTime2), N'Thong', N'23424234234', N'18/11/2019', N'thong@gmail.com', 9010000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (15, CAST(N'2019-11-26T20:15:32.5767892' AS DateTime2), N'Phan Đình Sơn', N'0968806360', N'16/11/2019', N'phandinhson116@gmail.com', 8790000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (16, CAST(N'2019-11-26T20:17:18.8635717' AS DateTime2), N'Phan Đình Sơn', N'0968806360', N'17/11/2019', N'phandinhson116@gmail.com', 25780000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (17, CAST(N'2019-11-29T08:17:57.4722183' AS DateTime2), N'Son IT', N'0968806360', N'17/11/2019', N'phandinhson116@gmail.com', 8490000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (18, CAST(N'2019-12-09T11:20:51.7648316' AS DateTime2), N'Lê Hồng Thái', N'12345632322', N'9/12/2019', N'hongthai@gmail.com', 87280000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (19, CAST(N'2019-12-09T11:39:37.7286178' AS DateTime2), N'Son', N'0968806360', N'9/12/2019', N'phandinhson116@gmail.com', 25780000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (20, CAST(N'2019-12-09T11:43:22.7244109' AS DateTime2), N'Lê Hồng Thái', N'12345632322', N'9/12/2019', N'hongthai@gmail.com', 10880000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (21, CAST(N'2019-12-09T11:45:57.0645311' AS DateTime2), N'Lê Hồng Thái', N'12345632322', N'9/12/2019', N'hongthai@gmail.com', 7370000)
INSERT [dbo].[Appointments] ([Id], [BillDate], [CustomerName], [CustomerPhoneNumber], [AppointmentDate], [CustomerEmail], [TotalPrice]) VALUES (22, CAST(N'2019-12-09T11:54:50.7500113' AS DateTime2), N'Phan Đình Sơn', N'0968806360', N'9/12/2019', N'phandinhson116@gmail.com', 8790000)
SET IDENTITY_INSERT [dbo].[Appointments] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Laptop')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Tablet')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Phụ kiện')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Điện thoại')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentId], [ProductsId], [Content], [Name], [Email], [CommentDate]) VALUES (1, 12, N'Giá cả hợp lý! Good', N'Phan Đình Sơn', N'phandinhson116@gmail.com', CAST(N'2019-12-12T10:48:10.2481298' AS DateTime2))
INSERT [dbo].[Comments] ([CommentId], [ProductsId], [Content], [Name], [Email], [CommentDate]) VALUES (2, 2, N'Sản phẩm chất lượng', N'Huy mập', N'phanphuhuy@gmail.com', CAST(N'2019-12-12T10:52:13.2303678' AS DateTime2))
INSERT [dbo].[Comments] ([CommentId], [ProductsId], [Content], [Name], [Email], [CommentDate]) VALUES (3, 3, N'Điện thoại chất lượng', N'Sơn', N'phandinhson116@gmail.com', CAST(N'2019-12-12T11:03:46.5380538' AS DateTime2))
INSERT [dbo].[Comments] ([CommentId], [ProductsId], [Content], [Name], [Email], [CommentDate]) VALUES (4, 15, N'Âm thanh tương đối tốt', N'Sơn', N'phandinhson116@gmail.com', CAST(N'2019-12-12T11:05:13.7487684' AS DateTime2))
INSERT [dbo].[Comments] ([CommentId], [ProductsId], [Content], [Name], [Email], [CommentDate]) VALUES (5, 13, N'Giá cả hợp lý', N'Sơn', N'phandinhson116@gmail.com', CAST(N'2019-12-12T11:10:40.0892100' AS DateTime2))
INSERT [dbo].[Comments] ([CommentId], [ProductsId], [Content], [Name], [Email], [CommentDate]) VALUES (6, 3, N'Sản phẩm tốt', N'Huy', N'phanphuhuy@gmail.com', CAST(N'2019-12-12T11:12:42.3174634' AS DateTime2))
INSERT [dbo].[Comments] ([CommentId], [ProductsId], [Content], [Name], [Email], [CommentDate]) VALUES (7, 3, N'Sản phẩm ok lắm!!', N'Minh Thu', N'ngominhthu@gmail.com', CAST(N'2019-12-12T11:14:39.3100676' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactId], [Name], [Email], [Opinion], [ContactDate]) VALUES (1, N'Son IT', N'phandinhson116@gmail.com', N' Sản phẩm còn ít phong phú', CAST(N'2019-12-12T22:40:54.3233656' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (1, N'Điện thoại Samsung Galaxy Note 9', N'\images\ProductImage\1.png', 6, 8, 128, N'Samsung', N'Xanh Dương', 16990000, 4, 2)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (2, N'Điện thoại Samsung Galaxy A70', N'\images\ProductImage\2.png', 6, 5, 128, N'Samsung', N'Trắng', 8790000, 4, 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (3, N'Điện thoại iPhone 7 32GB', N'\images\ProductImage\3.png', 2, 2, 32, N'Iphone', N'Vàng', 7000000, 4, 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (5, N'Điện thoại Huawei P30 Lite', N'\images\ProductImage\5.png', 6, 20, 128, N'Huawei', N'Xanh Dương', 6020000, 4, 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (6, N'Điện thoại iPhone 6s Plus 32GB', N'\images\ProductImage\6.png', 2, 2, 32, N'Apple', N'Vàng Đồng', 8490000, 4, 2)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (7, N'Máy tính bảng iPad Mini 7.9 inch Wifi Cellular 64GB', N'\images\ProductImage\7.png', 3, 3, 64, N'Apple', N'Bạc', 14490000, 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (8, N'Tai nghe EP Kanen IP-225', N'\images\ProductImage\8.jpg', 0, 5, 0, N'Kanen', N'Xanh lá', 105000, 3, 4)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (9, N'Loa Bluetooth iCutes MB-M916 Cú Đen', N'\images\ProductImage\9.jpg', 0, 6, 0, N'Thế Giới Di Động', N'Đen', 280000, 3, 4)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (10, N'USB Sandisk SDCZ50 8 GB 2.0', N'\images\ProductImage\10.jpg', 0, 4, 8, N'Sandisk', N'Đen & Đỏ', 150000, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (11, N'Ổ cứng HDD 1TB WD My Passport Xanh Dương', N'\images\ProductImage\11.jpg', 0, 6, 1024, N'Western Digital', N'Xanh Dương', 1690000, 3, 3)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (12, N'Thẻ nhớ MicroSD 16 GB Class 10', N'\images\ProductImage\12.jpg', 0, 1, 16, N' SanDisk, Transcend ', N'Đen', 220000, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (13, N'Thẻ nhớ MicroSD 64 GB Lexar class 10 UHS-I', N'\images\ProductImage\13.jpg', 0, 2, 64, N' Lexar ', N'Đen', 385000, 3, 3)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (14, N'Loa vi tính Fenda V320', N'\images\ProductImage\14.jpg', 0, 4, 0, N'Trung Quốc ', N'Đen', 250000, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (15, N'Loa Bluetooth Fenda W8', N'\images\ProductImage\15.jpg', 0, 7, 0, N'Trung Quốc ', N'Xanh Dương', 500000, 3, 3)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (16, N'Laptop Lenovo Ideapad 330S 14IKBR i5 8250U/4GB/1TB/Win10 (81F400NLVN)', N'\images\ProductImage\16.jpg', 4, 4, 1024, N'Lenovo', N'Xám', 12490000, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (17, N'Laptop Acer Aspire A315 54 558R i5 8265U/4GB/1TB/Win10 (NX.HEFSV.005)', N'\images\ProductImage\17.jpg', 4, 2, 1024, N'Acer', N'Xám', 11990000, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (18, N'Laptop HP Pavilion 14 ce1011TU i3 8145U/4GB/1TB/Win10 (5JN17PA)', N'\images\ProductImage\18.jpg', 4, 3, 1024, N'Hp', N'Xám', 12990000, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (19, N'Laptop Acer Switch 5 SW512 52P 34RS i3 7130U/4GB/128GB/Touch/Pen/Win10 (NT.LDTSV.004)', N'\images\ProductImage\19.jpg', 4, 2, 128, N'Acer', N'Xám', 15740000, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (20, N'Laptop Lenovo Ideapad S145 15IWL i3 8145U/4GB/256GB/2GB MX110/Win10 (81MV00SXVN)', N'\images\ProductImage\20.jpg', 4, 1, 256, N'Lenovo', N'Đen', 11790000, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (21, N'Laptop Asus Gaming ROG Strix G531G i7 9750H/8GB/512GB/4GB GTX1650/Win10 (AL017T)', N'\images\ProductImage\21.jpg', 8, 2, 512, N'Asus', N'Đen', 28990000, 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (22, N'Máy tính bảng Samsung Galaxy Tab A8 8" T295 (2019)', N'\images\ProductImage\22.png', 2, 2, 32, N'Samsung', N'Bạc', 3450000, 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (23, N'Máy tính bảng Lenovo Tab E10 TB-X104L Đen', N'\images\ProductImage\23.png', 2, 3, 16, N'Lenovo', N'Đen', 3990000, 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (24, N'Máy tính bảng iPad Pro 11 inch Wifi 64GB (2018)', N'\images\ProductImage\24.png', 4, 2, 64, N'Apple', N'Xám', 20990000, 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (25, N'Máy tính bảng Samsung Galaxy Tab S6', N'\images\ProductImage\25.png', 6, 3, 128, N'Samsung', N'Xanh Dương', 18490000, 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (26, N'Máy tính bảng Huawei Mediapad T5 10.1 inch', N'\images\ProductImage\26.png', 3, 3, 32, N'Huawei', N'Đen', 5690000, 2, 4)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (27, N'Máy tính bảng iPad Mini 7.9 inch Wifi 64GB (2019)', N'\images\ProductImage\27.png', 3, 1, 64, N'Apple', N'Vàng Đồng', 9990000, 2, 4)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (28, N'Điện thoại Nokia 8.1', N'\images\ProductImage\28.png', 4, 4, 64, N'Nokia', N'Xanh Dương', 6590000, 4, 4)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Memory], [Quantity], [Capacity], [Manufacturer], [Color], [Price], [CategoryId], [SpecialTagId]) VALUES (29, N'Điện thoại OPPO A5 (2020) 128GB', N'\images\ProductImage\29.png', 4, 2, 128, N'Opplo', N'Đen', 5290000, 4, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ProductSelectedForAppointment] ON 

INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (1, 1, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (2, 1, 1)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (3, 2, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (4, 2, 1)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (5, 2, 9)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (6, 3, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (7, 3, 1)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (8, 4, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (9, 4, 1)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (10, 4, 1)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (11, 5, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (12, 5, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (13, 6, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (14, 6, 12)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (15, 7, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (16, 7, 3)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (17, 8, 10)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (18, 8, 9)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (19, 9, 3)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (20, 10, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (21, 11, 11)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (22, 11, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (23, 12, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (24, 12, 3)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (25, 13, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (26, 13, 3)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (27, 14, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (28, 14, 12)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (29, 15, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (30, 16, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (31, 16, 1)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (32, 17, 6)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (33, 18, 1)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (34, 18, 20)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (35, 18, 14)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (36, 19, 1)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (37, 19, 2)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (38, 20, 14)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (39, 20, 11)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (40, 21, 3)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (41, 21, 12)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (42, 21, 10)
INSERT [dbo].[ProductSelectedForAppointment] ([Id], [AppointmentId], [ProductId]) VALUES (43, 22, 2)
SET IDENTITY_INSERT [dbo].[ProductSelectedForAppointment] OFF
SET IDENTITY_INSERT [dbo].[SpecialTag] ON 

INSERT [dbo].[SpecialTag] ([Id], [Name]) VALUES (1, N'Mới ra')
INSERT [dbo].[SpecialTag] ([Id], [Name]) VALUES (2, N'Bán chạy')
INSERT [dbo].[SpecialTag] ([Id], [Name]) VALUES (3, N'Đặc biệt')
INSERT [dbo].[SpecialTag] ([Id], [Name]) VALUES (4, N'Phổ biến')
INSERT [dbo].[SpecialTag] ([Id], [Name]) VALUES (1003, N'None')
SET IDENTITY_INSERT [dbo].[SpecialTag] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Password], [Name], [Email], [Phone], [DateOfBith], [Gender]) VALUES (2, N'phanphuhuy116', N'123456', N'Phan Phú Huy', N'phanphuhuy111@gmail.com', N'01283381683', CAST(N'1998-11-11T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Name], [Email], [Phone], [DateOfBith], [Gender]) VALUES (3, N'phandinhson', N'son116', N'Phan Đình Sơn', N'phandinhson116@gmail.com', N'0968806360', CAST(N'1999-11-06T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Name], [Email], [Phone], [DateOfBith], [Gender]) VALUES (8, N'phandinhsonlp116', N'0123456789', N'Son IT', N'phanphuhuy@gmail.com          ', N'0968806360', CAST(N'1999-11-11T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Name], [Email], [Phone], [DateOfBith], [Gender]) VALUES (9, N'thu12345', N'123456', N'Minh Thu', N'ngominhthu@gmail.com          ', N'0968806360', CAST(N'1999-11-11T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Name], [Email], [Phone], [DateOfBith], [Gender]) VALUES (10, N'lehongthai', N'123456', N'Lê Hồng Thái', N'hongthai@gmail.com', N'12345632322', CAST(N'1999-11-14T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Name], [Email], [Phone], [DateOfBith], [Gender]) VALUES (11, N'letienhoa1998', N'hoa12345', N'Lê Tiến Hòa', N'letienhoa1998@gmail.com       ', N'0123242322', CAST(N'1998-11-09T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Name], [Email], [Phone], [DateOfBith], [Gender]) VALUES (15, N'phandinhson116', N'0968806360', N'sonlongphuoc', N'phandinhsonlp116@gmail.com', N'0968806360', CAST(N'1999-11-06T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Appointments] ADD  DEFAULT ((0)) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[Contact] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [ContactDate]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products_ProductsId] FOREIGN KEY([ProductsId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products_ProductsId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_SpecialTag_SpecialTagId] FOREIGN KEY([SpecialTagId])
REFERENCES [dbo].[SpecialTag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_SpecialTag_SpecialTagId]
GO
ALTER TABLE [dbo].[ProductSelectedForAppointment]  WITH CHECK ADD  CONSTRAINT [FK_ProductSelectedForAppointment_Appointments_AppointmentId] FOREIGN KEY([AppointmentId])
REFERENCES [dbo].[Appointments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSelectedForAppointment] CHECK CONSTRAINT [FK_ProductSelectedForAppointment_Appointments_AppointmentId]
GO
ALTER TABLE [dbo].[ProductSelectedForAppointment]  WITH CHECK ADD  CONSTRAINT [FK_ProductSelectedForAppointment_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSelectedForAppointment] CHECK CONSTRAINT [FK_ProductSelectedForAppointment_Products_ProductId]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Category]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Category]
    (@id INT
     )
AS 
BEGIN
    DELETE dbo.Category
    WHERE Id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_User]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_User]
    (@id INT
     )
AS 
BEGIN
    DELETE FROM Users
    WHERE Id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_Category]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Category](
@name NVARCHAR(50))
AS
BEGIN
INSERT INTO dbo.Category
(
    Name
)
VALUES
(   @name
)

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_SpecialTag]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_SpecialTag]
(
@Name NVARCHAR(50)
)
AS
BEGIN
INSERT INTO dbo.SpecialTag
(
    Name
)
VALUES
(
@Name -- Name - nvarchar(max)
)

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_Users]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Users]
(
@UserName NVARCHAR(30),
@Password NVARCHAR(20),
@Name NVARCHAR(20),
@Email NCHAR(30),
@Phone   NVARCHAR(12),
@DateOfBith DATETIME,
@Gender INT

)
AS
BEGIN
    INSERT INTO dbo.Users
    (
        UserName,
        Password,
        Name,
        Email,
        Phone,
        DateOfBith,
        Gender
    )
    VALUES
    (   @UserName,           -- UserName - nvarchar(max)
        @Password,           -- Password - nvarchar(max)
        @Name,           -- Name - nvarchar(max)
        @Email,           -- Email - nvarchar(max)
       @Phone,           -- Phone - nvarchar(max)
       @DateOfBith, -- DateOfBith - datetime2(7)
       @Gender             -- Gender - int
        )
END
GO
/****** Object:  StoredProcedure [dbo].[Select_All_Category]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_All_Category]
AS
BEGIN
SELECT * FROM Category
END
GO
/****** Object:  StoredProcedure [dbo].[Select_All_Product]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_All_Product]
AS
BEGIN
	SELECT p.Id, c.Id AS CategoryId,st.Id AS SpecialTagId,p.Name,p.Image,p.Memory,p.Quantity,p.Capacity,p.Manufacturer,p.Color,p.Price,c.Name AS Category ,st.Name AS SpecialTag
	 FROM dbo.Products p,dbo.Category c,dbo.SpecialTag st
	 WHERE p.CategoryId=c.Id AND p.SpecialTagId=st.Id
END
GO
/****** Object:  StoredProcedure [dbo].[Select_All_SpecialTag]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Select_All_SpecialTag]
AS
BEGIN
SELECT * FROM dbo.SpecialTag
END
GO
/****** Object:  StoredProcedure [dbo].[Select_All_User]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_All_User]
AS
BEGIN
SELECT * FROM dbo.Users
END
GO
/****** Object:  StoredProcedure [dbo].[Sellect_SpecialTag_Id]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sellect_SpecialTag_Id]
(@Id INT)
AS
BEGIN
SELECT Id,Name
FROM dbo.SpecialTag 
WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[Update_Category]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Category](
@id INT,
@name NVARCHAR(50)
)
AS

BEGIN
UPDATE dbo.Category
SET Name=@name
WHERE Id=@id

END
GO
/****** Object:  StoredProcedure [dbo].[Update_SpecialTag]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Update_SpecialTag]
(@id INT,
@name NVARCHAR(50)
)
AS
BEGIN
UPDATE dbo.SpecialTag
SET Name=@name
WHERE Id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[Update_User]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_User](
@id INT,
@UserName NVARCHAR(MAX),
@Password NVARCHAR(MAX),
@Name NVARCHAR(MAX),
@Email NVARCHAR(MAX),
@Phone NVARCHAR(MAX),
@DateOfBirth datetime2(7),
@Gender INT
)
AS
BEGIN
UPDATE dbo.Users
SET UserName=@UserName, 
	Password=@Password, 
	Name=@Name, 
	Email=@Email, 
	Phone=@Phone, 
	DateOfBith=@DateOfBirth,
	Gender=@Gender
WHERE Id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[User_Login]    Script Date: 12/12/2019 10:44:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Login]
(
	@UserName NVARCHAR(100),
	@Password NVARCHAR(100)
)
AS

    BEGIN
       SELECT *
    FROM dbo.Users
    WHERE UserName=@UserName
        AND
        Password = @Password
    END
GO
