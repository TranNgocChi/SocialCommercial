USE [SWP391]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[Feedback]    Script Date: 31/10/2023 10:20:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedBack_id] [uniqueidentifier] NOT NULL,
	[rated_star] [float] NULL,
	[feedback] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[status] [bit] NULL,
	[product_id] [uniqueidentifier] NULL,
	[userId] [uniqueidentifier] NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[feedBack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hint]    Script Date: 31/10/2023 10:20:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hint](
	[id] [int] NULL,
	[userid] [uniqueidentifier] NULL,
	[context] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 31/10/2023 10:20:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [uniqueidentifier] NOT NULL,
	[customer_id] [uniqueidentifier] NULL,
	[seller_id] [uniqueidentifier] NULL,
	[fullname] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[order_total] [decimal](10, 2) NULL,
	[order_date] [date] NULL,
	[order_town] [nvarchar](200) NULL,
	[order_location] [nvarchar](200) NULL,
	[status] [nvarchar](max) NULL,
	[stt] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Customer__3213E83FFAA05241] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 31/10/2023 10:20:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [uniqueidentifier] NOT NULL,
	[order_id] [uniqueidentifier] NULL,
	[product_id] [uniqueidentifier] NULL,
	[quantity] [int] NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK__OrderIte__3213E83FF2231EE5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[ProductInfo]    Script Date: 31/10/2023 10:20:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInfo](
	[product_id] [uniqueidentifier] NOT NULL,
	[seller_id] [uniqueidentifier] NULL,
	[type_id] [uniqueidentifier] NULL,
	[product_name] [nvarchar](200) NULL,
	[product_image] [nvarchar](max) NOT NULL,
	[product_available] [int] NULL,
	[product_sales] [int] NULL,
	[product_price] [decimal](10, 0) NULL,
	[product_voucher] [decimal](10, 2) NULL,
	[product_description] [nvarchar](max) NULL,
 CONSTRAINT [PK__ProductI__3213E83F81EA1832] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[requestSetRole]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[ShopComment]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[ShopLike]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[ShoppingCartItem]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[SocialComment]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[SocialLike]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[UserFollow]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[UserMessage]    Script Date: 31/10/2023 10:20:43 SA ******/
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
 CONSTRAINT [PK__UserMess__3213E83FF2A55861] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNotification]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[UserPost]    Script Date: 31/10/2023 10:20:43 SA ******/
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
/****** Object:  Table [dbo].[UserRole]    Script Date: 31/10/2023 10:20:43 SA ******/
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
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'admin', N'admin@', NULL, NULL, 1, NULL, N'Admin', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'trngchnii', N'123456', N'nitnhde160262@fpt.edu.vn', N'', 3, N'SavedImages/247072100_1645233715684635_5486762546021638645_n.png', N'', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'vinh123', N'vinh123', N'vinhdqde170663@fpt.edu.vn', N'', 3, N'SavedImages/Untitled.png', N'Dinh Quang Vinh', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'aaa840e7-65ad-4361-a8fd-65092d35a500', N'shipperhanoi', N'123456', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'Cap', N'chi123', N'asdf@gmail.com', N'0905145624', 2, NULL, N'Trần Ngọc Chí', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'vinh123', N'vinh@@', N'themy0205@gmail.com', NULL, 3, NULL, N'Quang Vinh', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'3393c2bb-1630-4184-ad67-9a789cf770de', N'abcd123', N'vinh@@', N'asdf@gmail.com', N'12334532', 2, N'C:\Users\Admin\Documents\NetBeansProjects\SocialCommercial\build\web\SavedImages/Screenshot 2023-08-09 024724.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'521d6f96-c5d2-4079-b7f1-9fbcb6d7eed9', N'vinh3', N'vinh@@', N'vinhdqde170663@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'BigBoss', N'vinh', N'gogogogo1303@gmail.com', N'12334532', 3, N'C:\Users\Admin\Documents\NetBeansProjects\SocialCommercial\build\web\SavedImages/Screenshot 2023-08-01 182140.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'9c2c5a44-2f57-4f1d-8a4c-bf4ec0615113', N'hungabc', N'123456', N'gogogogo1303@gmail.com', N'0701242456', 2, N'C:\Users\Admin\Documents\NetBeansProjects\SocialCommercial\build\web\SavedImages/Screenshot 2023-08-11 000906.png', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'014fae35-e084-4641-a976-c08e122a7798', N'shipperhanoi1', N'123456', NULL, N'', 6, N'SavedImages/Screenshot (12).png', N'', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'ca8aaff4-79e3-4654-96ec-c6448f70d702', N'shippergl', N'123456', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'Gau', N'password123', N'a@gmail.com', N'123456', 3, NULL, N'Trần Ngọc Chí', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([id], [name], [password], [email], [number], [role_id], [image], [fullName], [gender], [statusNow], [school], [favour], [bio]) VALUES (N'96a77b88-ce4f-4854-8e21-f7c594b4556b', N'shipperdn12', N'123456', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Feedback] ([feedBack_id], [rated_star], [feedback], [image], [status], [product_id], [userId], [date]) VALUES (N'fd9a34a3-205b-4051-b14f-421ef9f4a022', 4, N'very good', N'setofshop\img\ao.png', NULL, N'9714198a-d7bb-41cf-a694-1978358dedc6', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', CAST(N'2023-10-17T01:32:38.360' AS DateTime))
GO
INSERT [dbo].[Feedback] ([feedBack_id], [rated_star], [feedback], [image], [status], [product_id], [userId], [date]) VALUES (N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', 3, N'rất đẹp', N'setofshop\img\ao.png', NULL, N'9714198a-d7bb-41cf-a694-1978358dedc6', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', CAST(N'2023-10-14T20:20:11.987' AS DateTime))
GO
INSERT [dbo].[Feedback] ([feedBack_id], [rated_star], [feedback], [image], [status], [product_id], [userId], [date]) VALUES (N'3897a0a3-0822-4464-b3e2-ad272e42e7ef', 4, N'đẹp', N'setofshop\img\ao.png', NULL, N'9714198a-d7bb-41cf-a694-1978358dedc6', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', NULL)
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'186e746c-730e-4606-9a6b-0b7c708d574b')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'186e746c-730e-4606-9a6b-0b7c708d574b')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'9abe62d4-128f-4cd9-89fc-c183035dc40a')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'9abe62d4-128f-4cd9-89fc-c183035dc40a')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'd0b1e822-0f16-487f-98bd-4e432c1c1740')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'186e746c-730e-4606-9a6b-0b7c708d574b')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'186e746c-730e-4606-9a6b-0b7c708d574b')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'9abe62d4-128f-4cd9-89fc-c183035dc40a')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'9abe62d4-128f-4cd9-89fc-c183035dc40a')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'd0b1e822-0f16-487f-98bd-4e432c1c1740')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'186e746c-730e-4606-9a6b-0b7c708d574b')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'9abe62d4-128f-4cd9-89fc-c183035dc40a')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'd0b1e822-0f16-487f-98bd-4e432c1c1740')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'98c51e91-41f4-48ad-96f4-c3b81ecd858e')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'9714198a-d7bb-41cf-a694-1978358dedc6')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'98c51e91-41f4-48ad-96f4-c3b81ecd858e')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'9714198a-d7bb-41cf-a694-1978358dedc6')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'9714198a-d7bb-41cf-a694-1978358dedc6')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'658b8b30-49b1-4a21-9c83-613e63ef177e')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'98c51e91-41f4-48ad-96f4-c3b81ecd858e')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'98c51e91-41f4-48ad-96f4-c3b81ecd858e')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'9714198a-d7bb-41cf-a694-1978358dedc6')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'093112cd-abd1-41e7-81f9-0248396ab202')
GO
INSERT [dbo].[Hint] ([id], [userid], [context]) VALUES (NULL, N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'186e746c-730e-4606-9a6b-0b7c708d574b')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([id], [customer_id], [seller_id], [fullname], [phone], [order_total], [order_date], [order_town], [order_location], [status], [stt]) VALUES (N'54dfbc2e-6fdf-4f0a-bf53-00ae2fe7da8c', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'Trịnh Ngọc Hàn Ni', N'0705355331', CAST(37000.00 AS Decimal(10, 2)), CAST(N'2023-10-30' AS Date), N'danang', N'207 Thái Văn Lung', N'Da huy by customer', 6)
GO
INSERT [dbo].[Order] ([id], [customer_id], [seller_id], [fullname], [phone], [order_total], [order_date], [order_town], [order_location], [status], [stt]) VALUES (N'ee9dd304-347a-4659-bca6-08ba0bd8b252', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'Đinh Quang Vinh', N'0705355331', CAST(37000.00 AS Decimal(10, 2)), CAST(N'2023-10-24' AS Date), N'danang', N'207 Thái Văn Lung', N'Da huy by customer', 2)
GO
INSERT [dbo].[Order] ([id], [customer_id], [seller_id], [fullname], [phone], [order_total], [order_date], [order_town], [order_location], [status], [stt]) VALUES (N'b0c647c4-3b83-438c-8edf-2287ef4a7449', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'Trịnh Ngọc Hàn Ni', N'0705355331', CAST(37000.00 AS Decimal(10, 2)), CAST(N'2023-10-31' AS Date), N'danang', N'207 Thái Văn Lung', NULL, 8)
GO
INSERT [dbo].[Order] ([id], [customer_id], [seller_id], [fullname], [phone], [order_total], [order_date], [order_town], [order_location], [status], [stt]) VALUES (N'27ffbee1-5070-4267-af9f-3b4fde22078b', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'Đinh Quang Vinh', N'0705355331', CAST(187000.00 AS Decimal(10, 2)), CAST(N'2023-10-24' AS Date), N'danang', N'207 Thái Văn Lung', N'Hoan thanh', 1)
GO
INSERT [dbo].[Order] ([id], [customer_id], [seller_id], [fullname], [phone], [order_total], [order_date], [order_town], [order_location], [status], [stt]) VALUES (N'9995bd0b-ffb5-402f-bbf8-4b848a28b49e', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'Đinh Quang Vinh', N'0705355331', CAST(85000.00 AS Decimal(10, 2)), CAST(N'2023-10-30' AS Date), N'gialai', N'207 Thái Văn Lung, Đà  Nẵng', N'Da huy by customer', 3)
GO
INSERT [dbo].[Order] ([id], [customer_id], [seller_id], [fullname], [phone], [order_total], [order_date], [order_town], [order_location], [status], [stt]) VALUES (N'feced5f7-f82a-4efa-b821-8ab6bea31bc4', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'Trịnh Ngọc Hàn Ni', N'0705355331', CAST(37000.00 AS Decimal(10, 2)), CAST(N'2023-10-30' AS Date), N'danang', N'207 Thái Văn Lung', N'Da huy by customer', 5)
GO
INSERT [dbo].[Order] ([id], [customer_id], [seller_id], [fullname], [phone], [order_total], [order_date], [order_town], [order_location], [status], [stt]) VALUES (N'890aa1d9-6b8d-4390-86b2-984ff12bc5a3', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'Đinh Quang Vinh', N'0705355331', CAST(39000.00 AS Decimal(10, 2)), CAST(N'2023-10-30' AS Date), N'gialai', N'207 Thái Văn Lung, Đà  Nẵng', N'Da huy by customer', 4)
GO
INSERT [dbo].[Order] ([id], [customer_id], [seller_id], [fullname], [phone], [order_total], [order_date], [order_town], [order_location], [status], [stt]) VALUES (N'c3204335-7def-472e-a4e1-d8b66316fed9', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'Đinh Quang Vinh', N'0705355331', CAST(16132000.00 AS Decimal(10, 2)), CAST(N'2023-10-30' AS Date), N'gialai', N'sdfs', N'Dang giao', 7)
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [product_id], [quantity], [price]) VALUES (N'875b9421-0c46-432a-b182-4f2cc61b8d8a', N'54dfbc2e-6fdf-4f0a-bf53-00ae2fe7da8c', N'093112cd-abd1-41e7-81f9-0248396ab202', 1, 2000)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [product_id], [quantity], [price]) VALUES (N'ddfe342c-ccf6-4888-811d-5507ec559ce5', N'27ffbee1-5070-4267-af9f-3b4fde22078b', N'9abe62d4-128f-4cd9-89fc-c183035dc40a', 2, 1000)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [product_id], [quantity], [price]) VALUES (N'08a1bfed-4cad-4678-978a-76bc76aa6149', N'27ffbee1-5070-4267-af9f-3b4fde22078b', N'186e746c-730e-4606-9a6b-0b7c708d574b', 3, 50000)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [product_id], [quantity], [price]) VALUES (N'a1b046d5-504c-42c1-9458-7bd8f5499c2f', N'feced5f7-f82a-4efa-b821-8ab6bea31bc4', N'093112cd-abd1-41e7-81f9-0248396ab202', 1, 2000)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [product_id], [quantity], [price]) VALUES (N'ea991ebb-76ae-42b0-b02e-8015f0ea93aa', N'ee9dd304-347a-4659-bca6-08ba0bd8b252', N'd0b1e822-0f16-487f-98bd-4e432c1c1740', 1, 2000)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [product_id], [quantity], [price]) VALUES (N'0a33acf4-7251-4051-9897-881e08221d19', N'9995bd0b-ffb5-402f-bbf8-4b848a28b49e', N'186e746c-730e-4606-9a6b-0b7c708d574b', 1, 50000)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [product_id], [quantity], [price]) VALUES (N'2f2039e7-0842-423a-a51c-c3d8b0e920aa', N'c3204335-7def-472e-a4e1-d8b66316fed9', N'658b8b30-49b1-4a21-9c83-613e63ef177e', 1, 16097000)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [product_id], [quantity], [price]) VALUES (N'f33a4845-4cb1-43ea-98b2-d47499c525b2', N'b0c647c4-3b83-438c-8edf-2287ef4a7449', N'093112cd-abd1-41e7-81f9-0248396ab202', 1, 2000)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [product_id], [quantity], [price]) VALUES (N'a362b6ac-b172-4139-aac3-dab46424e346', N'890aa1d9-6b8d-4390-86b2-984ff12bc5a3', N'093112cd-abd1-41e7-81f9-0248396ab202', 2, 2000)
GO
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'32de7141-e052-4591-a103-2f5f544e01e0', N'Bách hoá online')
GO
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'467e803a-426e-441d-8db8-669ae23a3469', N'Điện thoại & Phụ kiện')
GO
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'eecbd3f1-134e-43b0-a3e1-700edb72a6a4', N'Mỹ phẩm')
GO
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'9bd9c078-7e46-4ba0-be56-7223ee26608b', N'Máy ảnh & Máy quay phim')
GO
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'c9c33aeb-38f4-44a0-89b5-860ba5ae8c23', N'Máy tính & Laptop')
GO
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'2ea22aa1-2368-4742-8d96-994337ed92de', N'Đồ chơi')
GO
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'Thời trang nam')
GO
INSERT [dbo].[ProductCategory] ([id], [type]) VALUES (N'063c4ea1-948f-48ed-87da-d8c9e326f01a', N'Thời trang nữ')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'093112cd-abd1-41e7-81f9-0248396ab202', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'mặt nạ', N'https://cdn.tgdd.vn/Files/2020/08/27/1284399/tong-hop-cac-loai-mat-na-ban-chay-nhat-tren-thi-truong-202008272322493886.jpg', 995, NULL, CAST(2000 AS Decimal(10, 0)), NULL, N'1')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'186e746c-730e-4606-9a6b-0b7c708d574b', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'2ea22aa1-2368-4742-8d96-994337ed92de', N'Bàn ăn ', N'https://sudospaces.com/babycuatoi/uploads/09122018/889-126.jpg', 977, NULL, CAST(50000 AS Decimal(10, 0)), NULL, N'chuột')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'05f5e5f3-b59e-4aeb-9de6-160df06346b7', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'32de7141-e052-4591-a103-2f5f544e01e0', N'Đèn trang trí', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQizQDH8Z69ZvchKKEncx_pMs9VY6v-qTt8mA&usqp=CAU', 100, 200, CAST(459000 AS Decimal(10, 0)), NULL, N'Đèn trang trí LED, màu sắc đa dạng.')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'9714198a-d7bb-41cf-a694-1978358dedc6', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'Áo Polo Teelab Special', N'https://bizweb.dktcdn.net/100/415/697/products/1-a76844f8-43b5-4ba4-8f94-08ff2f36394a.jpg?v=1657108723990', 6, 3, CAST(81000 AS Decimal(10, 0)), CAST(50000.00 AS Decimal(10, 2)), N'Áo thun nam phong cách, size M, L, XL, màu sắc đa dạng.')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'84077702-76ff-4ce2-b11f-1be82bc20099', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'Quần jeans nam', N'https://vn-live-01.slatic.net/p/b0e47989490f904facf60daeaeb3f2a0.jpg', 100, 90, CAST(1147500 AS Decimal(10, 0)), NULL, N'Quần jeans nam slim fit, size 32, màu xanh đậm.')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'e1acff60-41cc-42af-ac59-271adf0cece1', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'063c4ea1-948f-48ed-87da-d8c9e326f01a', N'Áo khoác nữ', N'https://athenas.vn/wp-content/uploads/2022/10/ao-khoac-nu-1.jpg', 10, 60, CAST(804500 AS Decimal(10, 0)), NULL, N'Áo khoác nữ phong cách, size S, M, L, màu hồng pastel.')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'f8e2489d-9c0d-4c23-a0f8-40a4b3807c87', N'3897a0a3-0822-4464-b3e2-ad272e42e7ea', N'467e803a-426e-441d-8db8-669ae23a3469', N'Điện thoại di động', N'https://cdn.thegioididong.com/Products/Images/42/309722/oppo-reno10-xanh-128gb-11.jpg', 50, 50, CAST(13800000 AS Decimal(10, 0)), NULL, N'Điện thoại di động mới nhất, màn hình 6 inch, RAM 8GB, bộ nhớ 128GB.')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'd0b1e822-0f16-487f-98bd-4e432c1c1740', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'son', N'https://vcdn-giadinh.vnecdn.net/2021/04/19/son-li-min-moi-maybelline-crea-6205-1477-1618797599.jpg', 986, NULL, CAST(2000 AS Decimal(10, 0)), NULL, N'1')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'16f62431-0913-42ea-ab7f-5943de81d86f', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'Bóng Chày Có Mũ Trùm', N'https://cdn.yeep.vn/2023/05/a2dd2e259801fcaa0f9bc3dfd78aebfd.jpg', 9, 3, CAST(79000 AS Decimal(10, 0)), CAST(50000.00 AS Decimal(10, 2)), N'️️️ Kích thước: M-2XL
Màu sắc: xanh dương, trắng
Chất liệu: sợi polyester
Phiên bản: dáng rộng
Chiều dài tay áo: dài tay
Độ dày: thông thường
Độ co giãn: co giãn nhẹ
Loại quần áo: quần áo nam
Phong cách cơ bản: phiên bản Hàn Quốc
Phong cách phân khu: đơn giản và thời trang
Các dịp phù hợp: giải trí khác
Đối tượng thích hợp: thanh thiếu niên
Dành cho: unisex
Mùa phù hợp: mùa xuân và mùa thu')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'658b8b30-49b1-4a21-9c83-613e63ef177e', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'9bd9c078-7e46-4ba0-be56-7223ee26608b', N'Máy ảnh DSLR', N'https://vietthuong.vn/image/catalog/phong-thu/may-anh-dslr-3.jpg', 7, 40, CAST(16097000 AS Decimal(10, 0)), CAST(200000.00 AS Decimal(10, 2)), N'Máy ảnh DSLR chuyên nghiệp, cảm biến Full-frame, 24MP.')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'dadc365c-f0c0-459a-9472-6f72543ec062', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'Tee basic ss1 CREWZ', N'https://cf.shopee.vn/file/81db3aec45e555ada18535a4f2383b88', 10, 3, CAST(79000 AS Decimal(10, 0)), CAST(50000.00 AS Decimal(10, 2)), N'Áo thun nam phong cách, size M, L, XL, màu sắc đa dạng.')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'b5cc10c9-8d73-46bb-b8a3-86bb8b3bcb6e', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'c9c33aeb-38f4-44a0-89b5-860ba5ae8c23', N'Máy tính xách tay', N'https://bizweb.dktcdn.net/100/410/941/products/annotation-2023-08-30-093406.jpg?v=1693362873563', 10, 30, CAST(20677000 AS Decimal(10, 0)), CAST(100000.00 AS Decimal(10, 2)), N'Máy tính xách tay cao cấp, CPU Core i7, màn hình 15 inch, SSD 512GB.')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'e803d7df-e21b-4402-ab36-a3c0cc3fc2da', N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'2ea22aa1-2368-4742-8d96-994337ed92de', N'cốc nước', N'https://imgs.vietnamnet.vn/Images/vnn/2015/07/21/12/20150721120534-nuoc.jpg', 891, NULL, CAST(3000 AS Decimal(10, 0)), NULL, N'2')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'9abe62d4-128f-4cd9-89fc-c183035dc40a', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'2ea22aa1-2368-4742-8d96-994337ed92de', N'mèo con', N'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Golden_tabby_and_white_kitten_n01.jpg/1200px-Golden_tabby_and_white_kitten_n01.jpg', 979, NULL, CAST(1000 AS Decimal(10, 0)), NULL, N'bàn ăn cơm')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'98c51e91-41f4-48ad-96f4-c3b81ecd858e', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'Áo thun namm', N'https://aoxuanhe.com/upload/product/axh-142/ao-thun-nam-trang-cotton-cao-cap.jpg', 9, 3, CAST(690000 AS Decimal(10, 0)), CAST(50000.00 AS Decimal(10, 2)), N'Áo thun nam phong cách, size M, L, XL, màu sắc đa dạng.')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'3bf6dc87-2692-436b-8315-c53009c6e806', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'32de7141-e052-4591-a103-2f5f544e01e0', N'Balo du lịch', N'https://tamma.vn/images/ba-lo-du-lich-co-tay-keo-co-khoa-so.jpg', 100, 120, CAST(919000 AS Decimal(10, 0)), CAST(15000.00 AS Decimal(10, 2)), N'Balo du lịch chất liệu chống nước, dung tích 30L.')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'230d334c-ff01-464e-8570-d49bd27d5435', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'2ea22aa1-2368-4742-8d96-994337ed92de', N'Bàn ăn ', N'data:image/webp;base64,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', 1000, NULL, CAST(2000 AS Decimal(10, 0)), NULL, N'chuột')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'160b65fb-647c-414c-b3e0-d7200b98a360', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'2ea22aa1-2368-4742-8d96-994337ed92de', N'Kiến con', N'data:image/jpeg;base64,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', 992, NULL, CAST(1000 AS Decimal(10, 0)), NULL, N'chuột')
GO
INSERT [dbo].[ProductInfo] ([product_id], [seller_id], [type_id], [product_name], [product_image], [product_available], [product_sales], [product_price], [product_voucher], [product_description]) VALUES (N'213de719-bb4a-485c-9c1f-dde38e048bf7', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'1818e9a8-52cd-4538-9512-ad9234bd1eea', N'Quần Short unisex', N'https://img.ws.mms.shopee.vn/6331a79731c3de9fb121b4b809c17362', 10, 3, CAST(79000 AS Decimal(10, 0)), CAST(50000.00 AS Decimal(10, 2)), N'Quần Short trơn, Quần Short Comp chất tổ ong cao cấp, quần Short đai lưng túi hộp, quần Short Essentials')
GO
INSERT [dbo].[requestSetRole] ([id], [user_id], [email], [fullName], [shopName], [commoditiesSector], [address], [phone], [status]) VALUES (N'5a3ffc5e-5912-437f-bbde-54b7ae53877a', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'vinhdqde170663@fpt.edu.vn', N'huynl', N'VINH1 SHOP', N'2EA22AA1-2368-4742-8D96-994337ED92DE', N'da nang', N'0990131233213', N'OK')
GO
INSERT [dbo].[requestSetRole] ([id], [user_id], [email], [fullName], [shopName], [commoditiesSector], [address], [phone], [status]) VALUES (N'651c8f60-5073-429e-b9d6-6e031e8bd17d', N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'themy0205@gmail.com', N'Quang Vinh', N'10.9 Shop', N'2EA22AA1-2368-4742-8D96-994337ED92DE', N'CAM LE', N'0918900356', N'OK')
GO
INSERT [dbo].[requestSetRole] ([id], [user_id], [email], [fullName], [shopName], [commoditiesSector], [address], [phone], [status]) VALUES (N'cf1de6b9-7e7f-4892-ae73-6f297dd78b3b', N'1caf9ad4-afea-4ee9-bfc1-e0afc556370f', N'a@gmail.com', N'Quang Vinh', N'Gau SHOP', N'Choose...', N'CAM LE', N'0918900356', N'OK')
GO
INSERT [dbo].[requestSetRole] ([id], [user_id], [email], [fullName], [shopName], [commoditiesSector], [address], [phone], [status]) VALUES (N'37714eae-2cf9-44e7-a616-cd059951ccff', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'', N'Quang Vinh', N'ADMIN SHOP', N'1818E9A8-52CD-4538-9512-AD9234BD1EEA', N'CAM LE', N'0918900356', N'OK')
GO
INSERT [dbo].[ShoppingCart] ([id], [user_id], [cart_quantity], [cart_total]) VALUES (N'febc19c6-24c2-4c0b-ad10-308c685b2c2d', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', NULL, NULL)
GO
INSERT [dbo].[ShoppingCart] ([id], [user_id], [cart_quantity], [cart_total]) VALUES (N'816c088a-df4c-4327-9835-71547546640b', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', NULL, NULL)
GO
INSERT [dbo].[ShoppingCart] ([id], [user_id], [cart_quantity], [cart_total]) VALUES (N'8fc18f7e-04f4-446b-8a20-9161d1661a2d', N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', NULL, NULL)
GO
INSERT [dbo].[ShoppingCart] ([id], [user_id], [cart_quantity], [cart_total]) VALUES (N'5e2a47c0-87c5-43b5-93d1-9c60f3c84d7a', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', NULL, NULL)
GO
INSERT [dbo].[ShoppingCart] ([id], [user_id], [cart_quantity], [cart_total]) VALUES (N'98b32723-899c-43c8-822b-a9de174eef71', N'014fae35-e084-4641-a976-c08e122a7798', NULL, NULL)
GO
INSERT [dbo].[ShoppingCart] ([id], [user_id], [cart_quantity], [cart_total]) VALUES (N'ad7a061e-9551-4b26-91f8-ca7a62413ae8', N'd62d58ac-ce1e-4b7b-9a52-480e8591ff3b', NULL, NULL)
GO
INSERT [dbo].[ShoppingCart] ([id], [user_id], [cart_quantity], [cart_total]) VALUES (N'43337be1-fb39-46e6-8471-db4e9eebd7ba', N'b05bfcf6-cf82-43d6-904e-6e27959221f5', NULL, NULL)
GO
INSERT [dbo].[ShoppingCartItem] ([id], [cart_id], [product_id], [item_quantity], [item_subtotal]) VALUES (N'0d20fe06-c94d-482a-b0f3-0cf185d7e4e6', N'8fc18f7e-04f4-446b-8a20-9161d1661a2d', N'093112cd-abd1-41e7-81f9-0248396ab202', 1, NULL)
GO
INSERT [dbo].[ShoppingCartItem] ([id], [cart_id], [product_id], [item_quantity], [item_subtotal]) VALUES (N'6ca95e7a-c03f-4cc3-8f8b-38dc448e5f60', N'5e2a47c0-87c5-43b5-93d1-9c60f3c84d7a', N'093112cd-abd1-41e7-81f9-0248396ab202', 1, NULL)
GO
INSERT [dbo].[ShoppingCartItem] ([id], [cart_id], [product_id], [item_quantity], [item_subtotal]) VALUES (N'd21b378f-3266-478c-9b88-401149731057', N'febc19c6-24c2-4c0b-ad10-308c685b2c2d', N'9714198a-d7bb-41cf-a694-1978358dedc6', 1, NULL)
GO
INSERT [dbo].[ShoppingCartItem] ([id], [cart_id], [product_id], [item_quantity], [item_subtotal]) VALUES (N'c8bdf059-6c1d-494f-a72b-5318d57884e6', N'febc19c6-24c2-4c0b-ad10-308c685b2c2d', N'093112cd-abd1-41e7-81f9-0248396ab202', 1, NULL)
GO
INSERT [dbo].[ShoppingCartItem] ([id], [cart_id], [product_id], [item_quantity], [item_subtotal]) VALUES (N'53e62153-d485-4d3f-9b50-babd5dfebfac', N'816c088a-df4c-4327-9835-71547546640b', N'9714198a-d7bb-41cf-a694-1978358dedc6', 5, NULL)
GO
INSERT [dbo].[UserFollow] ([id], [follower_id], [following_id]) VALUES (N'1ee2a193-6703-4341-84ff-8d04d2ababa9', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2')
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'e4464f21-0d23-461d-9a1b-0b5ae36e9958', N'521d6f96-c5d2-4079-b7f1-9fbcb6d7eed9', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'alo123', CAST(N'2023-10-06T07:50:47.220' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'f95538dc-86a0-40ac-bc67-117bb7060baf', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'vinh', CAST(N'2023-10-04T08:32:07.700' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'59cca704-a85a-47cd-baff-1e93aa6eb3d6', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'sfsdf', CAST(N'2023-10-04T09:05:56.080' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'cbb2a835-af90-4b1f-a71e-4f869ac42f7c', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'testvinh', CAST(N'2023-10-04T08:32:12.297' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'295fbb51-8a5a-4ed9-9e35-620022e5dd2a', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'hi admin', CAST(N'2023-10-04T10:53:21.867' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'4965d64f-cd44-4b00-a4f0-715856c1f4c1', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa', CAST(N'2023-10-04T09:01:26.827' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'437d5eb6-e9ad-4576-ae86-71b6554b17d9', N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'sad', CAST(N'2023-10-08T20:38:55.860' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'd1704e50-aa45-4d4c-8fd7-8dc51420bac0', N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'', CAST(N'2023-10-08T20:38:56.897' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'ba48b07c-cba7-486f-b985-a03398838d2d', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'hello', CAST(N'2023-10-04T08:32:21.677' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'40a854b3-f052-4a38-a837-b6306549f6cb', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'sfssfd', CAST(N'2023-10-04T09:05:47.187' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'f2034f75-6f8e-4fed-bb75-ba5febca1522', N'521d6f96-c5d2-4079-b7f1-9fbcb6d7eed9', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', N'hi', CAST(N'2023-10-06T07:50:43.590' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'f911d096-ff56-4971-9489-c4bfc8217eeb', N'014fae35-e084-4641-a976-c08e122a7798', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'hi ni', CAST(N'2023-10-24T01:12:39.697' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'b227b182-adf4-4b7e-ae21-e20719ae9585', N'e293fdc3-4b7a-48a8-93dd-830c81f4f1ad', N'41eab62f-a954-4aab-b7c4-6f11d301d2d0', N'hi cap', CAST(N'2023-10-08T20:37:51.563' AS DateTime))
GO
INSERT [dbo].[UserMessage] ([id], [sender_id], [receiver_id], [context], [message_date]) VALUES (N'138aba02-04a9-4504-bebe-e846f0451a31', N'014fae35-e084-4641-a976-c08e122a7798', N'fd9a34a3-205b-4051-b14f-421ef9f4a011', N'hi', CAST(N'2023-10-24T01:08:54.787' AS DateTime))
GO
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'5e68d903-78a0-4ea9-b73d-174dc497cca6', NULL, NULL, N'abc', N'SavedImages/shopping.png', CAST(N'2023-10-31' AS Date))
GO
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'7e169b9c-7a47-478b-9818-1ac754416994', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', NULL, N'Happy', N'SavedImages/Untitled.png', CAST(N'2023-10-31' AS Date))
GO
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'394049ff-2640-426b-82e7-327d94c8179d', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', NULL, N'abc', N'SavedImages/shopping.png', CAST(N'2023-10-30' AS Date))
GO
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'95b3f789-2061-4146-9b9c-c3df97ad9422', N'f122c4a5-c570-46d8-9d60-61c01bc480d6', NULL, N'abc', N'SavedImages/shopping.png', CAST(N'2023-10-30' AS Date))
GO
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'222fbe3e-b21e-4904-a10a-cf65d72ab69c', N'014fae35-e084-4641-a976-c08e122a7798', NULL, N'vvv', N'SavedImages/Screenshot (6).png', CAST(N'2023-10-23' AS Date))
GO
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'68b47a2b-7e37-4bf2-a358-d9d5209226d2', N'59b5896f-98b2-4699-82ec-1b8b99cebcb2', NULL, N'abc', N'SavedImages/shopping.png', CAST(N'2023-10-30' AS Date))
GO
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'2424505e-ef0b-453f-acc5-e0c53c0dc8e2', N'014fae35-e084-4641-a976-c08e122a7798', NULL, N'vvv', N'SavedImages/Screenshot (1).png', CAST(N'2023-10-23' AS Date))
GO
INSERT [dbo].[UserPost] ([id], [user_id], [post_title], [post_content], [post_image], [post_date]) VALUES (N'465b2b71-3bfb-4d2a-9f88-e89f10ee47c1', N'3393c2bb-1630-4184-ad67-9a789cf770de', N'cvzxcvxzcvzxcv', N'xczxzxv', N'C:\Users\Admin\Documents\NetBeansProjects\SocialCommercial\build\web\SavedImages/Screenshot 2023-08-01 182140.png', CAST(N'2023-09-21' AS Date))
GO
INSERT [dbo].[UserRole] ([id], [role]) VALUES (1, N'admin')
GO
INSERT [dbo].[UserRole] ([id], [role]) VALUES (2, N'User ')
GO
INSERT [dbo].[UserRole] ([id], [role]) VALUES (3, N'Seller ')
GO
INSERT [dbo].[UserRole] ([id], [role]) VALUES (4, N'Shipper đà nẵng')
GO
INSERT [dbo].[UserRole] ([id], [role]) VALUES (5, N'Shipper HCM')
GO
INSERT [dbo].[UserRole] ([id], [role]) VALUES (6, N'Shipper HN')
GO
INSERT [dbo].[UserRole] ([id], [role]) VALUES (7, N'Shipper Gia Lai')
GO
INSERT [dbo].[UserRole] ([id], [role]) VALUES (8, N'Shipper Vũng Tàu')
GO
ALTER TABLE [dbo].[AppUser] ADD  CONSTRAINT [DF__AppUser__id__276EDEB3]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_feedBack_id]  DEFAULT (newid()) FOR [feedBack_id]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_date]  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__CustomerOrde__id__45F365D3]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF__OrderItemInf__id__46E78A0C]  DEFAULT (newid()) FOR [id]
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
ALTER TABLE [dbo].[UserMessage] ADD  CONSTRAINT [DF__UserMessage__id__5441852A]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[UserMessage] ADD  CONSTRAINT [DF__UserMessa__messa__5535A963]  DEFAULT (getdate()) FOR [message_date]
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
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__CustomerO__custo__3E52440B] FOREIGN KEY([customer_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__CustomerO__custo__3E52440B]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Order] FOREIGN KEY([id])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderItem__order__5BE2A6F2] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderItem__order__5BE2A6F2]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderItem__produ__6FE99F9F] FOREIGN KEY([product_id])
REFERENCES [dbo].[ProductInfo] ([product_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderItem__produ__6FE99F9F]
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
ALTER TABLE [dbo].[requestSetRole]  WITH CHECK ADD  CONSTRAINT [FK_requestSetRole_AppUser] FOREIGN KEY([user_id])
REFERENCES [dbo].[AppUser] ([id])
GO
ALTER TABLE [dbo].[requestSetRole] CHECK CONSTRAINT [FK_requestSetRole_AppUser]
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
