USE [master]
GO
/****** Object:  Database [SWP391]    Script Date: 06/10/2023 8:10:59 SA ******/
CREATE DATABASE [SWP391]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.HANI\MSSQL\DATA\SWP391.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.HANI\MSSQL\DATA\SWP391_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
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
EXEC sys.sp_db_vardecimal_storage_format N'SWP391', N'ON'
GO
ALTER DATABASE [SWP391] SET QUERY_STORE = OFF
GO
USE [SWP391]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[CustomerOrder]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[OrderItemInfo]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[ProductInfo]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[requestSetRole]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[ShopComment]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[ShopLike]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[ShoppingCartItem]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[SocialComment]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[SocialLike]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[UserFollow]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[UserMessage]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[UserNotification]    Script Date: 06/10/2023 8:10:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotification](
	[id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NULL,
	[notification_content] [nvarchar](max) NULL,
	[notification_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPost]    Script Date: 06/10/2023 8:10:59 SA ******/
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
/****** Object:  Table [dbo].[UserRole]    Script Date: 06/10/2023 8:10:59 SA ******/
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
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'admin', N'admin', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'trngchnii', N'123456', N'nitnhde160262@fpt.edu.vn', NULL, 3, N'https://scontent.fdad3-1.fna.fbcdn.net/v/t39.30808-6/357690138_827925325720566_7760428929577405935_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=CjjgAboOcLcAX9TZj9N&_nc_ht=scontent.fdad3-1.fna&oh=00_AfBEXlsq2cWtxBJno_pXO4j0ljTt1JHLgYOhhl93PS2Rqg&oe=65223707', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'Cap', N'cap', N'asdf@gmail.com', N'023456', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'3393c2bb-1630-4184-ad67-9a789cf770de', N'asd', N'vinh', N'asdf@gmail.com', N'12334532', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'BigBoss', N'vinh', N'gogogogo1303@gmail.com', N'12334532', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'9c2c5a44-2f57-4f1d-8a4c-bf4ec0615113', N'Ã¡dasd', N'123456', N'gogogogo1303@gmail.com', N'aÃ¡dasd', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'1c3ed8de-da68-4d11-8fae-c0469d89ede1', N'hanni', N'123456', N'ni.trnh59@gmail.com', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'Gau', N'password123', N'a@gmail.com', N'123456', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
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
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'd1e0462e-f95c-4502-b1f1-6276b5c20d0e', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'abc', CAST(N'2023-10-06T08:10:08.007' AS DateTime))
GO
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'465b2b71-3bfb-4d2a-9f88-e89f10ee47c1', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'cvzxcvxzcvzxcv', N'xczxzxv', N'C:\Users\Admin\Documents\NetBeansProjects\SocialCommercial\build\web\SavedImages/Screenshot 2023-08-01 182140.png', CAST(N'2023-09-21' AS Date))
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
