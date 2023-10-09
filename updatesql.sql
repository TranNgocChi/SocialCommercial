USE [master]
GO
/****** Object:  Database [SWP391]    Script Date: 9/10/2023 2:16:53 AM ******/
CREATE DATABASE [SWP391]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP391.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP391_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP391] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP391] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SWP391] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391] SET RECOVERY FULL 
GO
ALTER DATABASE [SWP391] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP391] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP391] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP391] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP391] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP391] SET QUERY_STORE = OFF
GO
USE [SWP391]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](200) NULL,
	[password] [nvarchar](200) NULL,
	[email] [nvarchar](255) NULL,
	[number] [nvarchar](200) NULL,
	[role_id] [int] NULL,
	[image] [nvarchar](max) NULL,
	[fullName] [nvarchar](100) NULL,
	[gender] [nvarchar](10) NULL,
	[statusNow] [nvarchar](50) NULL,
	[school] [nvarchar](100) NULL,
	[favour] [nvarchar](100) NULL,
	[bio] [nvarchar](max) NULL,
 CONSTRAINT [PK__AppUser__3213E83FF445C707] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerOrder]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrder](
	[id] [uniqueidentifier] NOT NULL,
	[customer_id] [uniqueidentifier] NULL,
	[order_subtotal] [decimal](10, 2) NULL,
	[order_total] [decimal](10, 2) NULL,
	[order_date] [date] NULL,
	[order_country] [nvarchar](200) NULL,
	[order_province] [nvarchar](200) NULL,
	[order_district] [nvarchar](200) NULL,
	[order_town] [nvarchar](200) NULL,
	[order_location] [nvarchar](200) NULL,
	[status_id] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItemInfo]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItemInfo](
	[id] [uniqueidentifier] NOT NULL,
	[order_id] [uniqueidentifier] NULL,
	[product_id] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[id] [uniqueidentifier] NOT NULL,
	[status] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[id] [uniqueidentifier] NOT NULL,
	[type] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInfo]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInfo](
	[product_id] [uniqueidentifier] NOT NULL,
	[seller_id] [uniqueidentifier] NULL,
	[type_id] [uniqueidentifier] NULL,
	[product_name] [nvarchar](200) NULL,
	[product_image] [nvarchar](255) NULL,
	[product_available] [int] NULL,
	[product_sales] [int] NULL,
	[product_price] [decimal](10, 2) NULL,
	[product_voucher] [decimal](10, 2) NULL,
	[product_description] [nvarchar](max) NULL,
 CONSTRAINT [PK__ProductI__3213E83F81EA1832] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[requestSetRole]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[requestSetRole](
	[id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NULL,
	[email] [nvarchar](255) NULL,
	[fullName] [nvarchar](200) NULL,
	[shopName] [nvarchar](200) NULL,
	[commoditiesSector] [nvarchar](200) NULL,
	[address] [nvarchar](200) NULL,
	[phone] [nvarchar](200) NULL,
	[status] [nvarchar](200) NULL,
 CONSTRAINT [PK__requestS__3213E83F718D8C48] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopComment]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopComment](
	[id] [uniqueidentifier] NOT NULL,
	[product_id] [uniqueidentifier] NULL,
	[commentor_id] [uniqueidentifier] NULL,
	[comment_content] [nvarchar](max) NULL,
	[comment_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopLike]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopLike](
	[id] [uniqueidentifier] NOT NULL,
	[product_id] [uniqueidentifier] NULL,
	[liker_id] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NULL,
	[cart_quantity] [int] NULL,
	[cart_total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartItem]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItem](
	[id] [uniqueidentifier] NOT NULL,
	[cart_id] [uniqueidentifier] NULL,
	[product_id] [uniqueidentifier] NULL,
	[item_quantity] [int] NULL,
	[item_subtotal] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialComment]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialComment](
	[id] [uniqueidentifier] NOT NULL,
	[post_id] [uniqueidentifier] NULL,
	[commentor_id] [uniqueidentifier] NULL,
	[comment_content] [nvarchar](max) NULL,
	[comment_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialLike]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialLike](
	[id] [uniqueidentifier] NOT NULL,
	[post_id] [uniqueidentifier] NULL,
	[liker_id] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFollow]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFollow](
	[id] [uniqueidentifier] NOT NULL,
	[follower_id] [uniqueidentifier] NULL,
	[following_id] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMessage]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMessage](
	[id] [uniqueidentifier] NOT NULL,
	[sender_id] [uniqueidentifier] NULL,
	[receiver_id] [uniqueidentifier] NULL,
	[context] [nvarchar](max) NULL,
	[message_date] [datetime] NULL,
 CONSTRAINT [PK__UserMess__3213E83F92DBCB22] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNotification]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotification](
	[id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NULL,
	[notification_content] [nvarchar](max) NULL,
	[notification_date] [date] NULL,
	[link_notify] [varchar](255) NULL,
	[reacter] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPost]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPost](
	[id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NULL,
	[post_title] [nvarchar](200) NULL,
	[post_content] [nvarchar](max) NULL,
	[post_image] [nvarchar](255) NULL,
	[post_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 9/10/2023 2:16:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[id] [int] NOT NULL,
	[role] [nvarchar](200) NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'admin', N'admin', NULL, N'12334532', 1, N'SavedImages/Screenshot 2023-08-11 000906.png', N'BigBoss', N'Nam', N'Doc Than', N'FPT UNIVERSITY', N'Play Soccer', N'PLEASE FOLLOW ME I WILL FOLLOW BACK. THANKS >3')
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'trngchnii', N'123456', N'nitnhde160262@fpt.edu.vn', N'02131231276', 3, N'https://scontent.fdad3-1.fna.fbcdn.net/v/t39.30808-6/357690138_827925325720566_7760428929577405935_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=CjjgAboOcLcAX9TZj9N&_nc_ht=scontent.fdad3-1.fna&oh=00_AfBEXlsq2cWtxBJno_pXO4j0ljTt1JHLgYOhhl93PS2Rqg&oe=65223707', N'Han Ni', N'Nu', N'Hen Ho', N'FPT UNIVERSITY', N'Play Soccer', N'PLEASE FOLLOW ME I WILL FOLLOW BACK. THANKS >3')
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'Cap', N'cap', N'asdf@gmail.com', N'023456234234', 2, N'SavedImages/Screenshot 2023-08-11 002110.png', N'Cap Cap', N'Male', N'Alone', N'FPT UNIVERSITY', N'Play Soccer', N'PLEASE FOLLOW ME I WILL FOLLOW BACK. THANKS >3')
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'3393c2bb-1630-4184-ad67-9a789cf770de', N'asd', N'vinh', N'asdf@gmail.com', N'0123123', 2, N'SavedImages/Screenshot 2023-08-01 182140.png', N'Meo Meo', N'Nam', N'Doc Than', N'FPT UNIVERSITY', N'Play Soccer', N'PLEASE FOLLOW ME I WILL FOLLOW BACK. THANKS >3')
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'BigBoss', N'vinh', N'gogogogo1303@gmail.com', N'12334532', 3, N'SavedImages/Screenshot 2023-08-01 182140.png', N'BigBoss', N'Nam', N'Doc Than', N'FPT UNIVERSITY', N'Play Soccer', N'PLEASE FOLLOW ME I WILL FOLLOW BACK. THANKS >3')
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'9c2c5a44-2f57-4f1d-8a4c-bf4ec0615113', N'Ã¡dasd', N'123456', N'gogogogo1303@gmail.com', N'', 2, N'', N'Cạp', N'', N'', N'', N'', N'')
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'1c3ed8de-da68-4d11-8fae-c0469d89ede1', N'hanni', N'123456', N'ni.trnh59@gmail.com', N'023847263234', 2, N'SavedImages/Screenshot 2023-08-11 002110.png', N'Hannie', N'Nam', N'Doc Than', N'FPT UNIVERSITY', N'Play Soccer', N'PLEASE FOLLOW ME I WILL FOLLOW BACK. THANKS >3')
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'Gau', N'password123', N'a@gmail.com', N'023164123412', 3, N'SavedImages/Screenshot 2023-08-11 000906.png', N'Gau Gau', N'Male', N'Doc Than', N'FPT UNIVERSITY', N'Play Soccer', N'PLEASE FOLLOW ME I WILL FOLLOW BACK. THANKS >3')
GO
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'32de7141-e052-4591-a103-2f5f544e01e0', N'Bách hoá online')
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'467e803a-426e-441d-8db8-669ae23a3469', N'Điện thoại & Phụ kiện')
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'eecbd3f1-134e-43b0-a3e1-700edb72a6a4', N'Mỹ phẩm')
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'9bd9c078-7e46-4ba0-be56-7223ee26608b', N'Máy ảnh & Máy quay phim')
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'c9c33aeb-38f4-44a0-89b5-860ba5ae8c23', N'Máy tính & Laptop')
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'2ea22aa1-2368-4742-8d96-994337ed92de', N'Đồ chơi')
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'Thời trang nam')
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'063c4ea1-948f-48ed-87da-d8c9e326f01a', N'Thời trang nữ')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'05f5e5f3-b59e-4aeb-9de6-160df06346b7', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'Đèn trang trí', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQizQDH8Z69ZvchKKEncx_pMs9VY6v-qTt8mA&usqp=CAU', 100, 200, CAST(459000.00 AS Decimal(10, 2)), NULL, N'Đèn trang trí LED, màu sắc đa dạng.')
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'9714198a-d7bb-41cf-a694-1978358dedc6', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'32de7141-e052-4591-a103-2f5f544e01e0', N'Áo Polo Teelab Special', N'https://bizweb.dktcdn.net/100/415/697/products/1-a76844f8-43b5-4ba4-8f94-08ff2f36394a.jpg?v=1657108723990', 10, 3, CAST(79000.00 AS Decimal(10, 2)), CAST(50000.00 AS Decimal(10, 2)), N'Áo thun nam phong cách, size M, L, XL, màu sắc đa dạng.')
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'84077702-76ff-4ce2-b11f-1be82bc20099', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'32de7141-e052-4591-a103-2f5f544e01e0', N'Quần jeans nam', N'https://vn-live-01.slatic.net/p/b0e47989490f904facf60daeaeb3f2a0.jpg', 100, 90, CAST(1147500.00 AS Decimal(10, 2)), NULL, N'Quần jeans nam slim fit, size 32, màu xanh đậm.')
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'e1acff60-41cc-42af-ac59-271adf0cece1', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'063c4ea1-948f-48ed-87da-d8c9e326f01a', N'Áo khoác nữ', N'https://athenas.vn/wp-content/uploads/2022/10/ao-khoac-nu-1.jpg', 10, 60, CAST(804500.00 AS Decimal(10, 2)), NULL, N'Áo khoác nữ phong cách, size S, M, L, màu hồng pastel.')
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'f8e2489d-9c0d-4c23-a0f8-40a4b3807c87', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'467e803a-426e-441d-8db8-669ae23a3469', N'Điện thoại di động', N'https://cdn.thegioididong.com/Products/Images/42/309722/oppo-reno10-xanh-128gb-11.jpg', 50, 50, CAST(13800000.00 AS Decimal(10, 2)), NULL, N'Điện thoại di động mới nhất, màn hình 6 inch, RAM 8GB, bộ nhớ 128GB.')
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'658b8b30-49b1-4a21-9c83-613e63ef177e', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'9bd9c078-7e46-4ba0-be56-7223ee26608b', N'Máy ảnh DSLR', N'https://vietthuong.vn/image/catalog/phong-thu/may-anh-dslr-3.jpg', 10, 40, CAST(16097000.00 AS Decimal(10, 2)), CAST(200000.00 AS Decimal(10, 2)), N'Máy ảnh DSLR chuyên nghiệp, cảm biến Full-frame, 24MP.')
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'b5cc10c9-8d73-46bb-b8a3-86bb8b3bcb6e', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'c9c33aeb-38f4-44a0-89b5-860ba5ae8c23', N'Máy tính xách tay', N'https://bizweb.dktcdn.net/100/410/941/products/annotation-2023-08-30-093406.jpg?v=1693362873563', 10, 30, CAST(20677000.00 AS Decimal(10, 2)), CAST(100000.00 AS Decimal(10, 2)), N'Máy tính xách tay cao cấp, CPU Core i7, màn hình 15 inch, SSD 512GB.')
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'98c51e91-41f4-48ad-96f4-c3b81ecd858e', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'32de7141-e052-4591-a103-2f5f544e01e0', N'Áo thun nam', N'https://aoxuanhe.com/upload/product/axh-142/ao-thun-nam-trang-cotton-cao-cap.jpg', 10, 3, CAST(590000.00 AS Decimal(10, 2)), CAST(50000.00 AS Decimal(10, 2)), N'Áo thun nam phong cách, size M, L, XL, màu sắc đa dạng.')
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'3bf6dc87-2692-436b-8315-c53009c6e806', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'Balo du lịch', N'https://tamma.vn/images/ba-lo-du-lich-co-tay-keo-co-khoa-so.jpg', 100, 120, CAST(919000.00 AS Decimal(10, 2)), CAST(15000.00 AS Decimal(10, 2)), N'Balo du lịch chất liệu chống nước, dung tích 30L.')
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'cfea7031-d304-40f0-8439-f5665a515a6b', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'32de7141-e052-4591-a103-2f5f544e01e0', N'Giày thể thao', N'https://cdn.yeep.vn/2023/03/sg-11134201-22100-duxhdadsa4iv69.jpg', 60, 80, CAST(1837000.00 AS Decimal(10, 2)), NULL, N'Giày thể thao nam, size 42, màu trắng đen.')
GO
INSERT [dbo].[SocialComment] ([id], [post_id], [commentor_id], [comment_content], [comment_date]) VALUES (N'899a6d95-790c-4c9b-ac67-1513e71e633e', N'e10ec9ee-763f-405e-844f-f8b87b773942', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'gnncvbcv', CAST(N'2023-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[SocialComment] ([id], [post_id], [commentor_id], [comment_content], [comment_date]) VALUES (N'708b17d7-7e4d-456c-8f27-188347118762', N'dbc07fdc-e1d5-4ba9-82fa-5677e6936a06', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'sadfsadf', CAST(N'2023-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[SocialComment] ([id], [post_id], [commentor_id], [comment_content], [comment_date]) VALUES (N'6e2e322c-4fb9-4d8f-82bf-1ac51fcfeb79', N'016eb421-547a-4b7b-8921-9e2990a7b6e0', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'hii', CAST(N'2023-10-06T00:00:00.000' AS DateTime))
INSERT [dbo].[SocialComment] ([id], [post_id], [commentor_id], [comment_content], [comment_date]) VALUES (N'466275da-0863-4e13-810c-651df1cf01de', N'b4030e10-956a-46f2-88c2-a07717013169', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'Ã¡dfasdf', CAST(N'2023-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[SocialComment] ([id], [post_id], [commentor_id], [comment_content], [comment_date]) VALUES (N'2f4e431f-6802-46bb-a841-7e40d5124aa0', N'b4030e10-956a-46f2-88c2-a07717013169', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'bxxb', CAST(N'2023-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[SocialComment] ([id], [post_id], [commentor_id], [comment_content], [comment_date]) VALUES (N'45e62f9a-6887-4197-aefb-abddb946becf', N'dbc07fdc-e1d5-4ba9-82fa-5677e6936a06', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'yhgtfv,htgcmhfg', CAST(N'2023-10-07T00:00:00.000' AS DateTime))
INSERT [dbo].[SocialComment] ([id], [post_id], [commentor_id], [comment_content], [comment_date]) VALUES (N'5e0e4bb3-ac24-442c-83e2-b4f4c5173469', N'39975ae8-18d5-46c2-a01d-b5cc3a91d74b', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'fdsdf', CAST(N'2023-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[SocialComment] ([id], [post_id], [commentor_id], [comment_content], [comment_date]) VALUES (N'5970607a-c71c-446a-a7b3-da1760ad41ba', N'dbc07fdc-e1d5-4ba9-82fa-5677e6936a06', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'Ã¡dasd', CAST(N'2023-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[SocialComment] ([id], [post_id], [commentor_id], [comment_content], [comment_date]) VALUES (N'83ff73df-9237-475b-abcf-e5163f467e18', N'dbc07fdc-e1d5-4ba9-82fa-5677e6936a06', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'Ã¡dfsdfsadf', CAST(N'2023-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[SocialComment] ([id], [post_id], [commentor_id], [comment_content], [comment_date]) VALUES (N'64812fec-9577-4b0b-be0d-f9653b85146b', N'e10ec9ee-763f-405e-844f-f8b87b773942', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'sdfsdafasdf', CAST(N'2023-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'ef5b1e9c-e726-4545-8ab6-08e04a229f9b', N'016eb421-547a-4b7b-8921-9e2990a7b6e0', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'0736813a-6679-43d9-adca-14503402ec05', N'b4030e10-956a-46f2-88c2-a07717013169', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'b471451a-4333-4a0d-a868-1fd05c661d1e', N'dbc07fdc-e1d5-4ba9-82fa-5677e6936a06', N'3393c2bb-1630-4184-ad67-9a789cf770de')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'dadc2fe6-1f20-408d-b491-29fa045d0ccc', N'39975ae8-18d5-46c2-a01d-b5cc3a91d74b', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'5f88b692-fe0c-4c5f-893d-4e56ce6677d4', N'b4030e10-956a-46f2-88c2-a07717013169', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'fde98417-1df1-4536-aad3-83680802324e', N'39975ae8-18d5-46c2-a01d-b5cc3a91d74b', N'3393c2bb-1630-4184-ad67-9a789cf770de')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'4f71a14c-4f1a-434d-a117-84d97e249be0', N'016eb421-547a-4b7b-8921-9e2990a7b6e0', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'de14a427-1fcc-4618-9469-93492b937827', N'b4030e10-956a-46f2-88c2-a07717013169', N'fd9a34a3-205b-4051-b14f-421ef9f4a011')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'64bd3042-2972-42f0-98cc-9752108239bb', N'016eb421-547a-4b7b-8921-9e2990a7b6e0', N'3393c2bb-1630-4184-ad67-9a789cf770de')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'e467e376-3b64-4fef-8eae-e6388d0d196a', N'e10ec9ee-763f-405e-844f-f8b87b773942', N'3393c2bb-1630-4184-ad67-9a789cf770de')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'd93bf305-f5b6-42a4-9282-f6717e867366', N'39975ae8-18d5-46c2-a01d-b5cc3a91d74b', N'fd9a34a3-205b-4051-b14f-421ef9f4a011')
INSERT [dbo].[SocialLike] ([id], [post_id], [liker_id]) VALUES (N'bdd83fef-bde4-404e-9277-fc6c63d78acd', N'dbc07fdc-e1d5-4ba9-82fa-5677e6936a06', N'fd9a34a3-205b-4051-b14f-421ef9f4a011')
GO
INSERT [dbo].[UserFollow] ([id], [follower_id], [following_id]) VALUES (N'01686897-9548-459b-9de7-0b96281cb5e5', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f')
INSERT [dbo].[UserFollow] ([id], [follower_id], [following_id]) VALUES (N'b4b94df0-7973-43c3-a3ef-4082ed62bcbe', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f')
INSERT [dbo].[UserFollow] ([id], [follower_id], [following_id]) VALUES (N'4f98070e-d46b-42e7-960d-73777a34878f', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0')
INSERT [dbo].[UserFollow] ([id], [follower_id], [following_id]) VALUES (N'd4aaae78-8f46-461e-adb4-7bf609459e6b', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f')
INSERT [dbo].[UserFollow] ([id], [follower_id], [following_id]) VALUES (N'f0bf329a-be85-463f-b487-7ddc04380fbc', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea')
INSERT [dbo].[UserFollow] ([id], [follower_id], [following_id]) VALUES (N'67cac5ae-8a8b-47cd-b00b-a0842d2a061a', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0')
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'a1ec9787-2184-4474-bbce-133ed782908a', NULL, N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'hello', CAST(N'2023-10-06T09:14:04.990' AS DateTime))
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'a4973461-7157-4838-a510-32705c08c3ee', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'asdfasdf', CAST(N'2023-10-06T08:28:22.213' AS DateTime))
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'd1e0462e-f95c-4502-b1f1-6276b5c20d0e', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'abc', CAST(N'2023-10-06T08:10:08.007' AS DateTime))
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'08225221-0cef-4f44-ab0a-8770afeeb5d6', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'sadfsadf', CAST(N'2023-10-06T09:14:34.917' AS DateTime))
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'9f694f89-4ca2-40e3-b357-b1794fb05153', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'ydrddfdfgnd', CAST(N'2023-10-06T08:28:50.263' AS DateTime))
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'7212bb7c-6ebe-41f2-aeea-d1e1464c7e04', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'Noi dung so 1', CAST(N'2023-10-07T01:02:35.053' AS DateTime))
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'80efb757-2d8e-4169-bac9-eaacb4ebb51f', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'asdfasdfasdf', CAST(N'2023-10-06T08:28:26.750' AS DateTime))
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'35e99c9d-7f4e-418f-992d-f66b224b269a', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'asdasda', CAST(N'2023-10-06T08:28:19.003' AS DateTime))
GO
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'84460311-93b8-4c9d-a76b-05d9434ec1fd', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'Cap Cap đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=41EAB62F-A954-4AAB-B7C4-6F11D301D2D0', N'SavedImages/Screenshot 2023-08-11 002110.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'a9c1e0f5-e1f3-4093-9a51-1722f19aba97', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'28d39283-4a5c-45b5-9c60-21f027ee800d', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'Cap Cap đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=41EAB62F-A954-4AAB-B7C4-6F11D301D2D0', N'SavedImages/Screenshot 2023-08-11 002110.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'cbe72174-2002-4e04-8f54-2c9515062d79', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'BigBoss đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3897A0A3-0822-4464-B3E2-AD272E42E7EA', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'556ba2e3-726e-4b09-8ca8-3092a50427ab', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'291c9fa2-3fd8-4dc4-954f-3557f20b398a', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'BigBoss đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3897A0A3-0822-4464-B3E2-AD272E42E7EA', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'ab915b18-5683-4ad8-844a-367d51fc4ba8', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'f7fa980b-e7ba-4890-94ba-36e5c75b27c7', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'BigBoss đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3897A0A3-0822-4464-B3E2-AD272E42E7EA', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'829041c2-2adc-4f65-95a8-3d73b03aab95', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'69184f8f-8f9f-4470-8302-409cdb844736', N'1c3ed8de-da68-4d11-8fae-c0469d89ede1', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'ce9bc669-a086-4d7b-937f-4517a4d5e7f0', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'06cf6527-3362-44a2-9781-4dd3c7b3029b', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'Gau Gau đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=1CAF9AD4-AFEA-4EE9-BFC1-E0AFC556370F', N'SavedImages/Screenshot 2023-08-11 000906.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'19b0b9f0-dc7b-4f48-9a17-5f2e41a23259', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'BigBoss đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3897A0A3-0822-4464-B3E2-AD272E42E7EA', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'dccff6c1-20f5-48b3-9924-5f8a0dd06c9f', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'BigBoss đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3897A0A3-0822-4464-B3E2-AD272E42E7EA', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'da2a798e-996a-4e24-a2f2-6917dd0958e1', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'5c87e9cb-fbcd-42bf-b3de-6a2142c5b115', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'Cap Cap đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=41EAB62F-A954-4AAB-B7C4-6F11D301D2D0', N'SavedImages/Screenshot 2023-08-11 002110.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'72b0c7ee-2099-4bc2-a6db-724c8689fe39', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'9957bf04-70f9-437b-acad-805cf2d6bfda', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'BigBoss đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3897A0A3-0822-4464-B3E2-AD272E42E7EA', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'4cc52734-8dcd-4b0f-9eb1-8567232313af', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'Cap Cap đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=41EAB62F-A954-4AAB-B7C4-6F11D301D2D0', N'SavedImages/Screenshot 2023-08-11 002110.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'fa6ddd5e-c2c5-4c23-9b8a-8b9e68a99ac2', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'cfe74005-c3dc-4435-a255-9613bf7b4b50', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'b3d6d433-1a85-41e2-a015-9929a9f2608b', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'BigBoss đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3897A0A3-0822-4464-B3E2-AD272E42E7EA', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'dd943d21-1aea-47ef-994f-99b5f2f5bfcd', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'Cap Cap đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=41EAB62F-A954-4AAB-B7C4-6F11D301D2D0', N'SavedImages/Screenshot 2023-08-11 002110.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'c675ec9d-ea4b-4a98-973f-9aa2c7269a66', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'Gau Gau đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=1CAF9AD4-AFEA-4EE9-BFC1-E0AFC556370F', N'SavedImages/Screenshot 2023-08-11 000906.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'9ca2b84d-bb9d-4cd8-9a5e-9fb9aea1c807', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'b38c61de-c3cf-4cc4-8e50-b4a979fe28b7', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'6ba186d6-2b13-464c-ac5f-b613305f124b', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'BigBoss đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3897A0A3-0822-4464-B3E2-AD272E42E7EA', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'f149327a-25e5-4cbb-8696-b62a26623a25', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'Cap Cap đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=41EAB62F-A954-4AAB-B7C4-6F11D301D2D0', N'SavedImages/Screenshot 2023-08-11 002110.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'0173111d-5bfa-497a-a0ef-bd0f36ebfa48', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'5332b801-e4b5-4ab5-bd1a-bfe15a7cac8a', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'BigBoss đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3897A0A3-0822-4464-B3E2-AD272E42E7EA', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'7abf90ec-5320-43a4-aca5-dfebca3eaa3b', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'240610f6-90d7-4e5e-b412-f9cf8c89f45f', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'Cap Cap đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=41EAB62F-A954-4AAB-B7C4-6F11D301D2D0', N'SavedImages/Screenshot 2023-08-11 002110.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'258365a3-fb4a-43d6-b5e6-fcc66f9b777b', N'9c2c5a44-2f57-4f1d-8a4c-bf4ec0615113', N'Meo Meo đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3393C2BB-1630-4184-AD67-9A789CF770DE', N'SavedImages/Screenshot 2023-08-01 182140.png')
INSERT [dbo].[UserNotification] ([id], [user_id], [notification_content], [notification_date], [link_notify], [reacter]) VALUES (N'4805ac8e-8805-43c6-a36b-fed5af9ecf40', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'BigBoss đã theo dõi bạn ngày hôm nay', CAST(N'2023-10-09' AS Date), N'UserProfileSocial?user_id=3897A0A3-0822-4464-B3E2-AD272E42E7EA', N'SavedImages/Screenshot 2023-08-01 182140.png')
GO
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'dbc07fdc-e1d5-4ba9-82fa-5677e6936a06', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', NULL, N'Noi dung so 1', N'SavedImages/Screenshot 2023-08-01 182140.png', CAST(N'2023-10-06' AS Date))
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'016eb421-547a-4b7b-8921-9e2990a7b6e0', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', NULL, N'Noi dung so 2', N'SavedImages/Screenshot 2023-08-01 182140.png', CAST(N'2023-10-06' AS Date))
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'b4030e10-956a-46f2-88c2-a07717013169', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', NULL, N'Noi dung so 2', N'SavedImages/Screenshot 2023-08-11 002110.png', CAST(N'2023-10-06' AS Date))
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'39975ae8-18d5-46c2-a01d-b5cc3a91d74b', N'3393c2bb-1630-4184-ad67-9a789cf770de', NULL, N'Noi dung so 1', N'SavedImages/Screenshot 2023-09-10 224523.png', CAST(N'2023-10-06' AS Date))
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'5a80ab53-05db-4451-aa91-b910c8149e7a', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', NULL, N'Noi dung so 1', N'SavedImages/Screenshot 2023-08-01 182140.png', CAST(N'2023-10-06' AS Date))
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'465b2b71-3bfb-4d2a-9f88-e89f10ee47c1', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'cvzxcvxzcvzxcv', N'xczxzxv', N'C:\Users\Admin\Documents\NetBeansProjects\SocialCommercial\build\web\SavedImages/Screenshot 2023-08-01 182140.png', CAST(N'2023-09-21' AS Date))
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'e10ec9ee-763f-405e-844f-f8b87b773942', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', NULL, N'Noi dung so 1', N'SavedImages/Screenshot 2023-08-09 024724.png', CAST(N'2023-10-06' AS Date))
GO
INSERT [dbo].[UserRole] ([id], [role]) VALUES (1, N'admin')
INSERT [dbo].[UserRole] ([id], [role]) VALUES (2, N'User ')
INSERT [dbo].[UserRole] ([id], [role]) VALUES (3, N'Seller ')
INSERT [dbo].[UserRole] ([id], [role]) VALUES (4, N'Shipper ')
GO
ALTER TABLE [dbo].[AppUser] ADD  CONSTRAINT [DF__AppUser__id__276EDEB3]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[CustomerOrder] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[OrderItemInfo] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[OrderStatus] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ProductInfo] ADD  CONSTRAINT [DF__ProductInfo__id__5CD6CB2B]  DEFAULT (newid()) FOR [product_id]
GO
ALTER TABLE [dbo].[requestSetRole] ADD  CONSTRAINT [DF__requestSetRo__id__5DCAEF64]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ShopComment] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ShopComment] ADD  DEFAULT (getdate()) FOR [comment_date]
GO
ALTER TABLE [dbo].[ShopLike] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ShoppingCart] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ShoppingCartItem] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[SocialComment] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[SocialComment] ADD  DEFAULT (getdate()) FOR [comment_date]
GO
ALTER TABLE [dbo].[SocialLike] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[UserFollow] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[UserMessage] ADD  CONSTRAINT [DF__UserMessage__id__6754599E]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[UserMessage] ADD  CONSTRAINT [DF__UserMessa__messa__68487DD7]  DEFAULT (getdate()) FOR [message_date]
GO
ALTER TABLE [dbo].[UserNotification] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[UserNotification] ADD  DEFAULT (getdate()) FOR [notification_date]
GO
ALTER TABLE [dbo].[UserPost] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[AppUser]  WITH CHECK ADD  CONSTRAINT [FK_AppUser_UserRole] FOREIGN KEY([role_id])
REFERENCES [dbo].[UserRole] ([id])
GO
ALTER TABLE [dbo].[AppUser] CHECK CONSTRAINT [FK_AppUser_UserRole]
GO
ALTER TABLE [dbo].[CustomerOrder]  WITH CHECK ADD  CONSTRAINT [FK__CustomerO__custo__3E52440B] FOREIGN KEY([customer_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[CustomerOrder] CHECK CONSTRAINT [FK__CustomerO__custo__3E52440B]
GO
ALTER TABLE [dbo].[CustomerOrder]  WITH CHECK ADD  CONSTRAINT [FK_CustomerOrder_OrderStatus] FOREIGN KEY([status_id])
REFERENCES [dbo].[OrderStatus] ([id])
GO
ALTER TABLE [dbo].[CustomerOrder] CHECK CONSTRAINT [FK_CustomerOrder_OrderStatus]
GO
ALTER TABLE [dbo].[OrderItemInfo]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[CustomerOrder] ([id])
GO
ALTER TABLE [dbo].[OrderItemInfo]  WITH CHECK ADD  CONSTRAINT [FK__OrderItem__produ__6FE99F9F] FOREIGN KEY([product_id])
REFERENCES [dbo].[ProductInfo] ([product_id])
GO
ALTER TABLE [dbo].[OrderItemInfo] CHECK CONSTRAINT [FK__OrderItem__produ__6FE99F9F]
GO
ALTER TABLE [dbo].[ProductInfo]  WITH CHECK ADD  CONSTRAINT [FK__ProductIn__selle__2F10007B] FOREIGN KEY([seller_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[ProductInfo] CHECK CONSTRAINT [FK__ProductIn__selle__2F10007B]
GO
ALTER TABLE [dbo].[ProductInfo]  WITH CHECK ADD  CONSTRAINT [FK__ProductIn__type___71D1E811] FOREIGN KEY([type_id])
REFERENCES [dbo].[ProductCategory] ([id])
GO
ALTER TABLE [dbo].[ProductInfo] CHECK CONSTRAINT [FK__ProductIn__type___71D1E811]
GO
ALTER TABLE [dbo].[requestSetRole]  WITH CHECK ADD  CONSTRAINT [FK__requestSe__user___6FE99F9F] FOREIGN KEY([user_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[requestSetRole] CHECK CONSTRAINT [FK__requestSe__user___6FE99F9F]
GO
ALTER TABLE [dbo].[ShopComment]  WITH CHECK ADD  CONSTRAINT [FK__ShopComme__comme__5812160E] FOREIGN KEY([commentor_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[ShopComment] CHECK CONSTRAINT [FK__ShopComme__comme__5812160E]
GO
ALTER TABLE [dbo].[ShopComment]  WITH CHECK ADD  CONSTRAINT [FK__ShopComme__produ__74AE54BC] FOREIGN KEY([product_id])
REFERENCES [dbo].[ProductInfo] ([product_id])
GO
ALTER TABLE [dbo].[ShopComment] CHECK CONSTRAINT [FK__ShopComme__produ__74AE54BC]
GO
ALTER TABLE [dbo].[ShopLike]  WITH CHECK ADD  CONSTRAINT [FK__ShopLike__liker___5CD6CB2B] FOREIGN KEY([liker_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[ShopLike] CHECK CONSTRAINT [FK__ShopLike__liker___5CD6CB2B]
GO
ALTER TABLE [dbo].[ShopLike]  WITH CHECK ADD  CONSTRAINT [FK__ShopLike__produc__76969D2E] FOREIGN KEY([product_id])
REFERENCES [dbo].[ProductInfo] ([product_id])
GO
ALTER TABLE [dbo].[ShopLike] CHECK CONSTRAINT [FK__ShopLike__produc__76969D2E]
GO
ALTER TABLE [dbo].[ShoppingCartItem]  WITH CHECK ADD FOREIGN KEY([cart_id])
REFERENCES [dbo].[ShoppingCart] ([id])
GO
ALTER TABLE [dbo].[ShoppingCartItem]  WITH CHECK ADD  CONSTRAINT [FK__ShoppingC__produ__787EE5A0] FOREIGN KEY([product_id])
REFERENCES [dbo].[ProductInfo] ([product_id])
GO
ALTER TABLE [dbo].[ShoppingCartItem] CHECK CONSTRAINT [FK__ShoppingC__produ__787EE5A0]
GO
ALTER TABLE [dbo].[SocialComment]  WITH CHECK ADD  CONSTRAINT [FK__SocialCom__comme__4D94879B] FOREIGN KEY([commentor_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[SocialComment] CHECK CONSTRAINT [FK__SocialCom__comme__4D94879B]
GO
ALTER TABLE [dbo].[SocialComment]  WITH CHECK ADD FOREIGN KEY([post_id])
REFERENCES [dbo].[UserPost] ([id])
GO
ALTER TABLE [dbo].[SocialLike]  WITH CHECK ADD  CONSTRAINT [FK__SocialLik__liker__52593CB8] FOREIGN KEY([liker_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[SocialLike] CHECK CONSTRAINT [FK__SocialLik__liker__52593CB8]
GO
ALTER TABLE [dbo].[SocialLike]  WITH CHECK ADD FOREIGN KEY([post_id])
REFERENCES [dbo].[UserPost] ([id])
GO
ALTER TABLE [dbo].[UserFollow]  WITH CHECK ADD  CONSTRAINT [FK__UserFollo__follo__60A75C0F] FOREIGN KEY([follower_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[UserFollow] CHECK CONSTRAINT [FK__UserFollo__follo__60A75C0F]
GO
ALTER TABLE [dbo].[UserFollow]  WITH CHECK ADD  CONSTRAINT [FK__UserFollo__follo__619B8048] FOREIGN KEY([following_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[UserFollow] CHECK CONSTRAINT [FK__UserFollo__follo__619B8048]
GO
ALTER TABLE [dbo].[UserMessage]  WITH CHECK ADD  CONSTRAINT [FK__UserMessa__recei__6C190EBB] FOREIGN KEY([receiver_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[UserMessage] CHECK CONSTRAINT [FK__UserMessa__recei__6C190EBB]
GO
ALTER TABLE [dbo].[UserMessage]  WITH CHECK ADD  CONSTRAINT [FK__UserMessa__sende__6B24EA82] FOREIGN KEY([sender_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[UserMessage] CHECK CONSTRAINT [FK__UserMessa__sende__6B24EA82]
GO
ALTER TABLE [dbo].[UserNotification]  WITH CHECK ADD  CONSTRAINT [FK__UserNotif__user___66603565] FOREIGN KEY([user_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[UserNotification] CHECK CONSTRAINT [FK__UserNotif__user___66603565]
GO
ALTER TABLE [dbo].[UserPost]  WITH CHECK ADD  CONSTRAINT [FK__UserPost__user_i__47DBAE45] FOREIGN KEY([user_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[UserPost] CHECK CONSTRAINT [FK__UserPost__user_i__47DBAE45]
GO
USE [master]
GO
ALTER DATABASE [SWP391] SET  READ_WRITE 
GO
