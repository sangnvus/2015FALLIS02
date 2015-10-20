USE [DMS]
GO
/****** Object:  Table [dbo].[DrugCompany]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrugCompany](
	[DrugCompanyID] [int] IDENTITY(1,1) NOT NULL,
	[DrugCompanyName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_DrugCompany] PRIMARY KEY CLUSTERED 
(
	[DrugCompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryMan]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryMan](
	[DeliveryManID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](200) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](20) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_DeliveryMan] PRIMARY KEY CLUSTERED 
(
	[DeliveryManID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DeliveryMan] ON
INSERT [dbo].[DeliveryMan] ([DeliveryManID], [FullName], [Address], [Phone], [IsActive]) VALUES (1, N'Trương Võ Thiên Bảo', N'152/27 Nguyễn Trọng Tuyển', N'01227303583', 1)
INSERT [dbo].[DeliveryMan] ([DeliveryManID], [FullName], [Address], [Phone], [IsActive]) VALUES (2, N'Trương Võ Thiên Vũ', N'12512', N'2142135326', 1)
INSERT [dbo].[DeliveryMan] ([DeliveryManID], [FullName], [Address], [Phone], [IsActive]) VALUES (3, N'Thiên Vũ', N'wqe', N'213213', 1)
INSERT [dbo].[DeliveryMan] ([DeliveryManID], [FullName], [Address], [Phone], [IsActive]) VALUES (4, N'Thien Bao213', N'123456', N'12546876879', 1)
SET IDENTITY_INSERT [dbo].[DeliveryMan] OFF
/****** Object:  Table [dbo].[City]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (1, N'Hà Nội')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (4, N' Hồ Chí Minh')
SET IDENTITY_INSERT [dbo].[City] OFF
/****** Object:  Table [dbo].[AccountProfile]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountProfile](
	[ProfileID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Coordinate] [nvarchar](150) NULL,
 CONSTRAINT [PK_AccountProfile] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccountProfile] ON
INSERT [dbo].[AccountProfile] ([ProfileID], [FullName], [Phone], [Address], [Coordinate]) VALUES (4, N'Thiên Vũ', N'', NULL, NULL)
INSERT [dbo].[AccountProfile] ([ProfileID], [FullName], [Phone], [Address], [Coordinate]) VALUES (5, N'Thiên Vũ', N'', NULL, NULL)
INSERT [dbo].[AccountProfile] ([ProfileID], [FullName], [Phone], [Address], [Coordinate]) VALUES (6, N'Tuệ Nhãn', N'123214', NULL, NULL)
INSERT [dbo].[AccountProfile] ([ProfileID], [FullName], [Phone], [Address], [Coordinate]) VALUES (7, N'123456', N'123456', NULL, NULL)
INSERT [dbo].[AccountProfile] ([ProfileID], [FullName], [Phone], [Address], [Coordinate]) VALUES (8, N'Truong Vo Thien ', N'Vu', NULL, NULL)
INSERT [dbo].[AccountProfile] ([ProfileID], [FullName], [Phone], [Address], [Coordinate]) VALUES (9, N'Thiên Vũ', N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[AccountProfile] OFF
/****** Object:  Table [dbo].[DrugType]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrugType](
	[DrugTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DrugTypeName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_DrugType] PRIMARY KEY CLUSTERED 
(
	[DrugTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DrugType] ON
INSERT [dbo].[DrugType] ([DrugTypeID], [DrugTypeName], [IsActive]) VALUES (1, N'TIM MẠCH - TẠO MÁU', 1)
INSERT [dbo].[DrugType] ([DrugTypeID], [DrugTypeName], [IsActive]) VALUES (3, N'GIẢM ĐAU NHỨC - GOUT', 1)
INSERT [dbo].[DrugType] ([DrugTypeID], [DrugTypeName], [IsActive]) VALUES (4, N'KHÁNG NẤM - VIRUS', NULL)
INSERT [dbo].[DrugType] ([DrugTypeID], [DrugTypeName], [IsActive]) VALUES (5, N'KHÁNG VIÊM', NULL)
INSERT [dbo].[DrugType] ([DrugTypeID], [DrugTypeName], [IsActive]) VALUES (6, N'MEN TIÊU HÓA', 1)
INSERT [dbo].[DrugType] ([DrugTypeID], [DrugTypeName], [IsActive]) VALUES (7, N'THUỐC BỔ', 1)
INSERT [dbo].[DrugType] ([DrugTypeID], [DrugTypeName], [IsActive]) VALUES (8, N'Kháng sinh', 1)
SET IDENTITY_INSERT [dbo].[DrugType] OFF
/****** Object:  Table [dbo].[DrugstoreType]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrugstoreType](
	[DrugstoreTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DrugstoreTypeName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DrugstoreType] PRIMARY KEY CLUSTERED 
(
	[DrugstoreTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DrugstoreType] ON
INSERT [dbo].[DrugstoreType] ([DrugstoreTypeID], [DrugstoreTypeName]) VALUES (1, N'Đại lý')
INSERT [dbo].[DrugstoreType] ([DrugstoreTypeID], [DrugstoreTypeName]) VALUES (2, N'Nhà thuốc')
INSERT [dbo].[DrugstoreType] ([DrugstoreTypeID], [DrugstoreTypeName]) VALUES (3, N'Hiệu thuốc')
SET IDENTITY_INSERT [dbo].[DrugstoreType] OFF
/****** Object:  Table [dbo].[Unit]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitId] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Unit] ON
INSERT [dbo].[Unit] ([UnitId], [UnitName]) VALUES (1, N'Hộp')
INSERT [dbo].[Unit] ([UnitId], [UnitName]) VALUES (2, N'Thùng')
SET IDENTITY_INSERT [dbo].[Unit] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Staff')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Salesman')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'DrugstoreUser')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (5, N'DeliveryMan')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (6, N'Manager')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[DeliverySchedule]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliverySchedule](
	[DeliveryScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[DueDate] [date] NOT NULL,
	[DeliveryManID] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_DeliverySchedule] PRIMARY KEY CLUSTERED 
(
	[DeliveryScheduleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DeliverySchedule] ON
INSERT [dbo].[DeliverySchedule] ([DeliveryScheduleID], [CreateDate], [DueDate], [DeliveryManID], [Status]) VALUES (1, CAST(0x843A0B00 AS Date), CAST(0x00000000 AS Date), 2, 4)
INSERT [dbo].[DeliverySchedule] ([DeliveryScheduleID], [CreateDate], [DueDate], [DeliveryManID], [Status]) VALUES (2, CAST(0x843A0B00 AS Date), CAST(0x00000000 AS Date), 2, 4)
INSERT [dbo].[DeliverySchedule] ([DeliveryScheduleID], [CreateDate], [DueDate], [DeliveryManID], [Status]) VALUES (3, CAST(0x863A0B00 AS Date), CAST(0x00000000 AS Date), 1, 4)
SET IDENTITY_INSERT [dbo].[DeliverySchedule] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[ProfileID] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[IsPending] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([AccountID], [RoleID], [ProfileID], [Email], [Password], [IsPending], [IsActive]) VALUES (4, 4, 4, N'nhathuoc12', N'e10adc3949ba59abbe56e057f20f883e', 0, 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [ProfileID], [Email], [Password], [IsPending], [IsActive]) VALUES (6, 4, 6, N'allenskywalker92@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0, 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [ProfileID], [Email], [Password], [IsPending], [IsActive]) VALUES (10, 2, 4, N'staff', N'e10adc3949ba59abbe56e057f20f883e', 0, 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [ProfileID], [Email], [Password], [IsPending], [IsActive]) VALUES (11, 3, 4, N'salesman1@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0, 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [ProfileID], [Email], [Password], [IsPending], [IsActive]) VALUES (12, 3, 4, N'salesman2@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0, 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [ProfileID], [Email], [Password], [IsPending], [IsActive]) VALUES (13, 3, 4, N'salesman3@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0, 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [ProfileID], [Email], [Password], [IsPending], [IsActive]) VALUES (14, 4, 7, N'allenskywalker5411@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0, 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [ProfileID], [Email], [Password], [IsPending], [IsActive]) VALUES (15, 4, 8, N'allenskywalker34@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0, 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [ProfileID], [Email], [Password], [IsPending], [IsActive]) VALUES (16, 4, 9, N'allenskywalkanh20@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 1, 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [ProfileID], [Email], [Password], [IsPending], [IsActive]) VALUES (17, 1, 4, N'admin', N'e10adc3949ba59abbe56e057f20f883e', 0, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Drug]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drug](
	[DrugID] [int] IDENTITY(1,1) NOT NULL,
	[DrugCompanyID] [int] NULL,
	[DrugTypeID] [int] NULL,
	[DrugName] [nvarchar](100) NOT NULL,
	[MiniDescription] [ntext] NULL,
	[Description] [ntext] NULL,
	[ImageUrl] [text] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Drug] PRIMARY KEY CLUSTERED 
(
	[DrugID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Drug] ON
INSERT [dbo].[Drug] ([DrugID], [DrugCompanyID], [DrugTypeID], [DrugName], [MiniDescription], [Description], [ImageUrl], [IsActive]) VALUES (1, NULL, 1, N'Viên Dưỡng Não OPCAN® (Nang mềm)', NULL, N'<p>C&ocirc;ng thức :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">
<div style="max-width: 640px;">cho 1 vi&ecirc;n nang m&ecirc;̀m</div>

<div style="max-width: 640px;">Cao Bạch Quả (Ginkgo biloba extract)&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;40 mg</div>

<div style="max-width: 640px;">T&aacute; dược&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;vừa đủ 1 vi&ecirc;n</div>

<div style="max-width: 640px;">(Dầu đậu n&agrave;nh, gelatin, glycerin, titan dioxyd, nipasol, xanh patent V, v&agrave;ng quinolein)</div>

<div style="max-width: 640px; font-family: Arial, Helvetica, sans-serif !important;">&nbsp;</div>
</div>

<p>Chỉ định :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">
<div style="max-width: 640px;">Giảm tr&iacute; nhớ, k&eacute;m tập trung, đặc biệt ở người lớn tuổi. Thiểu năng tuần ho&agrave;n n&atilde;o.</div>

<div style="max-width: 640px;">&Ugrave; tai, ch&oacute;ng mặt, giảm th&iacute;nh lực.</div>

<div style="max-width: 640px;">Ch&acirc;n đi khập khiễng c&aacute;ch hồi.</div>

<div style="max-width: 640px;">Một số trường hợp thiếu m&aacute;u v&otilde;ng mạc.</div>

<div style="max-width: 640px;">&nbsp;</div>
</div>

<p>Liều lượng &amp; C&aacute;ch d&ugrave;ng :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">Người lớn v&agrave; trẻ em tr&ecirc;n 12 tuổi: Uống mỗi lần 1 vi&ecirc;n, ng&agrave;y 3 lần. Uống trong hoặc sau bữa ăn.</div>

<p>Chống chỉ định :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">
<div style="max-width: 640px;">Kh&ocirc;ng d&ugrave;ng cho trẻ em dưới 12 tuổi, phụ nữ c&oacute; thai v&agrave; cho con b&uacute;, người đang c&oacute; xuất huyết, rối loạn đ&ocirc;ng m&aacute;u.</div>

<div style="max-width: 640px;">Kh&ocirc;ng d&ugrave;ng cho bệnh nh&acirc;n mẫn cảm với bất kỳ th&agrave;nh phần n&agrave;o của thuốc.</div>

<div style="max-width: 640px;">&nbsp;</div>
</div>

<p>Thận trọng :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">Thận trọng với người bệnh rối loạn đ&ocirc;ng m&aacute;u hoặc đang d&ugrave;ng thuốc chống đ&ocirc;ng m&aacute;u.</div>

<p>T&aacute;c dụng kh&ocirc;ng mong muốn :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">
<div style="max-width: 640px;">Nhẹ v&agrave; hiếm gặp, thường do d&ugrave;ng thuốc l&acirc;u ng&agrave;y: rối loạn ti&ecirc;u h&oacute;a, nhức đầu, dị ứng da. C&oacute; thể k&eacute;o d&agrave;i thời gian chảy m&aacute;u.</div>

<div style="max-width: 640px;">Th&ocirc;ng b&aacute;o cho B&aacute;c sĩ những t&aacute;c dụng kh&ocirc;ng mong muốn gặp phải khi sử dụng thuốc.</div>

<div style="max-width: 640px;">&nbsp;</div>
</div>

<p>Tương t&aacute;c thuốc :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">Kh&ocirc;ng được d&ugrave;ng nếu vừa sử dụng thuốc kh&aacute;ng đ&ocirc;ng m&aacute;u v&igrave; Bạch quả l&agrave;m giảm khả năng đ&ocirc;ng m&aacute;u.</div>

<p>Dạng thuốc &amp; Tr&igrave;nh b&agrave;y :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">
<div style="max-width: 640px;">Vi&ecirc;n nang mềm.&nbsp;</div>

<div style="max-width: 640px;">Hộp 4 vỉ x 10 vi&ecirc;n.</div>

<div style="max-width: 640px;">&nbsp;</div>
</div>

<p>Hạn d&ugrave;ng :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">36 th&aacute;ng kể từ ng&agrave;y sản xuất.</div>

<p>Điều kiện bảo quản :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">Nơi kh&ocirc; m&aacute;t, nhiệt độ dưới 30 độC.</div>

<p>Ti&ecirc;u chuẩn :</p>

<div class="productcontent" style="font-size: 16px; max-width: 640px; padding-left: 40px; color: rgb(0, 0, 0); font-family: wf_segoe-ui_normal, Tahoma, Verdana, Arial, sans-serif; text-align: justify; line-height: 22px;">TCCS.</div>
', N'/assets/images/Drugs/300.JPG', 1)
INSERT [dbo].[Drug] ([DrugID], [DrugCompanyID], [DrugTypeID], [DrugName], [MiniDescription], [Description], [ImageUrl], [IsActive]) VALUES (2, NULL, 1, N'FRANDIPIN 5MG', NULL, N'<p><strong>Th&agrave;nh phần:</strong></p>

<p>Amlodipin 5mg</p>

<p><strong>C&ocirc;ng dụng:</strong></p>

<p>Điều trị cao huyết &aacute;p ở những người c&oacute; những biến chứng chuyển h&oacute;a như đ&aacute;i th&aacute;o đường v&agrave; điều trị dự ph&ograve;ng ở người bệnh đau thắt ngực ổ định.</p>

<p><strong>C&aacute;ch d&ugrave;ng:</strong></p>

<p>Khởi đầu với liều d&ugrave;ng l&agrave; 5mg cho 1 lần cho 24 giờ, liều c&oacute; thể tăng đến 10mg cho 1 lần trong 1 ng&agrave;y. Nếu t&aacute;c dụng kh&ocirc;ng đạt hiệu quả sau 4 tuần điều trị c&oacute; thể tăng liều.</p>

<p>Kh&ocirc;ng cần điều chỉnh liều khi phối hợp c&aacute;c thuốc lợi tiểu Thiazid.</p>

<p>Thận trọng với người giảm chức năng Gan, hẹp động mạch chủ, suy&nbsp; Tim sau nhồi m&aacute;u cơ tim thấp.</p>

<p><strong>Quy c&aacute;ch:</strong></p>

<p>Hộp 30 vi&ecirc;n nang</p>
', N'/assets/images/Drugs/Frandipin-5.jpg', 1)
INSERT [dbo].[Drug] ([DrugID], [DrugCompanyID], [DrugTypeID], [DrugName], [MiniDescription], [Description], [ImageUrl], [IsActive]) VALUES (3, NULL, 1, N'TANPONAI 500MG', NULL, N'<p><strong>Th&agrave;nh phần:</strong></p>

<p>N-Acetyl-dl-Leucin 500mg</p>

<p><strong>C&ocirc;ng dụng:</strong></p>

<p>Điều trị c&aacute;c triệu chứng ch&oacute;ng mặt</p>

<p><strong>C&aacute;ch d&ugrave;ng:</strong></p>

<p>Uống v&agrave;o bữa ăn, ng&agrave;y chia l&agrave;m 2-3 lần. Người mang thai v&agrave; cho con b&uacute; kh&ocirc;ng n&ecirc;n d&ugrave;ng thuốc, người lớn 3-4 vi&ecirc;n/ng&agrave;y chia l&agrave;m 2-3 lần, trong 10 ng&agrave;y tới 5-6 tuần. Giai đoạn đầu điều trị hoặc điều trị kh&ocirc;ng hiệu quả c&oacute; thể tăng l&ecirc;n 3 hoặc 4g (6-8 vi&ecirc;n/ng&agrave;y)</p>

<p><strong>Quy c&aacute;ch:</strong></p>

<p>Hộp 30 vi&ecirc;n n&eacute;n d&agrave;i</p>
', N'/assets/images/Drugs/Tanponai-500.jpg', 1)
SET IDENTITY_INSERT [dbo].[Drug] OFF
/****** Object:  Table [dbo].[District]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [nvarchar](250) NOT NULL,
	[SalesmanID] [int] NULL,
	[CityID] [int] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[District] ON
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (1, N'Quận Ba Đình', 11, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (2, N'Quận Hoàn Kiếm', 11, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (3, N'Quận Hai Bà Trưng', 11, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (4, N'Quận Đống Đa', 11, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (5, N'Quận Tây Hồ', 11, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (6, N'Quận Cầu Giấy', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (7, N'Quận Thanh Xuân', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (8, N'Quận Hoàng Mai', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (9, N'Quận Long Biên', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (10, N'Huyện Từ Liêm', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (11, N'Huyện Thanh Trì', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (12, N'Huyện Gia Lâm', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (13, N'Huyện Đông Anh', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (14, N'Huyện Sóc Sơn', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (15, N'Quận Hà Đông', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (16, N'Thị xã Sơn Tây', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (17, N'Huyện Ba Vì', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (18, N'Huyện Phúc Thọ', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (19, N'Huyện Thạch Thất', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (20, N'Huyện Quốc Oai', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (21, N'Huyện Chương Mỹ', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (22, N'Huyện Đan Phượng', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (23, N'Huyện Hoài Đức', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (24, N'Huyện Thanh Oai', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (25, N'Huyện Mỹ Đức', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (26, N'Huyện Ứng Hoà', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (27, N'Huyện Thường Tín', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (28, N'Huyện Phú Xuyên', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (29, N'Huyện Mê Linh', NULL, 1)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (31, N'Quận 1', 11, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (32, N'Quận 2', 13, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (33, N'Quận 3', 13, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (34, N'Quận 4', 12, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (35, N'Quận 5', NULL, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (36, N'Quận 6', NULL, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (37, N'Quận 7', NULL, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (38, N'Quận 8', NULL, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (39, N'Quận 9', 12, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (40, N'Quận 10', NULL, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (41, N'Quận 11', NULL, 4)
INSERT [dbo].[District] ([DistrictID], [DistrictName], [SalesmanID], [CityID]) VALUES (42, N'Quận 12', NULL, 4)
SET IDENTITY_INSERT [dbo].[District] OFF
/****** Object:  Table [dbo].[DiscountRate]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountRate](
	[DrugstoreTypeID] [int] NOT NULL,
	[DrugID] [int] NOT NULL,
	[Discount] [float] NOT NULL,
 CONSTRAINT [PK_DiscountRate] PRIMARY KEY CLUSTERED 
(
	[DrugstoreTypeID] ASC,
	[DrugID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DiscountRate] ([DrugstoreTypeID], [DrugID], [Discount]) VALUES (1, 1, 20)
INSERT [dbo].[DiscountRate] ([DrugstoreTypeID], [DrugID], [Discount]) VALUES (1, 2, 20)
INSERT [dbo].[DiscountRate] ([DrugstoreTypeID], [DrugID], [Discount]) VALUES (1, 3, 20)
INSERT [dbo].[DiscountRate] ([DrugstoreTypeID], [DrugID], [Discount]) VALUES (2, 1, 10)
INSERT [dbo].[DiscountRate] ([DrugstoreTypeID], [DrugID], [Discount]) VALUES (2, 2, 15)
INSERT [dbo].[DiscountRate] ([DrugstoreTypeID], [DrugID], [Discount]) VALUES (2, 3, 15)
INSERT [dbo].[DiscountRate] ([DrugstoreTypeID], [DrugID], [Discount]) VALUES (3, 1, 5)
INSERT [dbo].[DiscountRate] ([DrugstoreTypeID], [DrugID], [Discount]) VALUES (3, 2, 5)
INSERT [dbo].[DiscountRate] ([DrugstoreTypeID], [DrugID], [Discount]) VALUES (3, 3, 5)
/****** Object:  Table [dbo].[Price]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[DrugID] [int] NOT NULL,
	[UnitID] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[DrugID] ASC,
	[UnitID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Price] ([DrugID], [UnitID], [UnitPrice]) VALUES (1, 1, 500000)
INSERT [dbo].[Price] ([DrugID], [UnitID], [UnitPrice]) VALUES (1, 2, 5000000)
INSERT [dbo].[Price] ([DrugID], [UnitID], [UnitPrice]) VALUES (2, 1, 300000)
INSERT [dbo].[Price] ([DrugID], [UnitID], [UnitPrice]) VALUES (2, 2, 50000000)
INSERT [dbo].[Price] ([DrugID], [UnitID], [UnitPrice]) VALUES (3, 1, 60000)
INSERT [dbo].[Price] ([DrugID], [UnitID], [UnitPrice]) VALUES (3, 2, 300000)
/****** Object:  Table [dbo].[Drugstore]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drugstore](
	[DrugstoreID] [int] IDENTITY(1,1) NOT NULL,
	[DrugstoreName] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[Coordinate] [nvarchar](150) NOT NULL,
	[OwnerID] [int] NULL,
	[DrugstoreTypeID] [int] NULL,
	[IsActive] [bit] NULL,
	[Debt] [float] NULL,
	[DistrictID] [int] NULL,
 CONSTRAINT [PK_Drugstore] PRIMARY KEY CLUSTERED 
(
	[DrugstoreID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Drugstore] ON
INSERT [dbo].[Drugstore] ([DrugstoreID], [DrugstoreName], [Address], [Coordinate], [OwnerID], [DrugstoreTypeID], [IsActive], [Debt], [DistrictID]) VALUES (1, N'Thiên Vũ', N'23 đội cấn ,Hà nội', N'21.033598, 105.821449', 4, 3, 1, NULL, 1)
INSERT [dbo].[Drugstore] ([DrugstoreID], [DrugstoreName], [Address], [Coordinate], [OwnerID], [DrugstoreTypeID], [IsActive], [Debt], [DistrictID]) VALUES (3, N'Thiên Tân', N'32 Trung hòa, Hà Nội', N'21.0140897, 105.8022255', 6, 3, 1, -306660000, 1)
INSERT [dbo].[Drugstore] ([DrugstoreID], [DrugstoreName], [Address], [Coordinate], [OwnerID], [DrugstoreTypeID], [IsActive], [Debt], [DistrictID]) VALUES (4, N'Thieen Thanh', N'32 Nguyen Khuyen', N'21.027874, 105.8402875', 14, 3, 1, -5320000, 1)
INSERT [dbo].[Drugstore] ([DrugstoreID], [DrugstoreName], [Address], [Coordinate], [OwnerID], [DrugstoreTypeID], [IsActive], [Debt], [DistrictID]) VALUES (5, N'Thien Thanh', N'32 hàng hành', N'21.0313614, 105.8502044', 15, 3, 1, NULL, 8)
INSERT [dbo].[Drugstore] ([DrugstoreID], [DrugstoreName], [Address], [Coordinate], [OwnerID], [DrugstoreTypeID], [IsActive], [Debt], [DistrictID]) VALUES (6, N'Thiên Thành', N'32 nhân hòa ', N'21.0022675, 105.8100491', 16, 3, 1, NULL, 7)
INSERT [dbo].[Drugstore] ([DrugstoreID], [DrugstoreName], [Address], [Coordinate], [OwnerID], [DrugstoreTypeID], [IsActive], [Debt], [DistrictID]) VALUES (7, N'Minh Châu', N'152 Đội cấn', N'21.034887, 105.824817', NULL, 3, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Drugstore] OFF
/****** Object:  Table [dbo].[Payment]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[DrugstoreID] [int] NULL,
	[PaymentType] [bit] NULL,
	[Amount] [float] NULL,
	[Balance] [float] NULL,
	[Date] [datetime] NOT NULL,
	[IsActive] [bit] NULL,
	[FullName] [nvarchar](150) NULL,
	[PhoneNumber] [nchar](13) NULL,
 CONSTRAINT [PK_Debt] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Payment] ON
INSERT [dbo].[Payment] ([PaymentID], [DrugstoreID], [PaymentType], [Amount], [Balance], [Date], [IsActive], [FullName], [PhoneNumber]) VALUES (1, 4, 1, 5320000, -5320000, CAST(0x0000A5290107A275 AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Payment] ([PaymentID], [DrugstoreID], [PaymentType], [Amount], [Balance], [Date], [IsActive], [FullName], [PhoneNumber]) VALUES (2, 3, 1, 14250000, -14250000, CAST(0x0000A529010A74D9 AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Payment] ([PaymentID], [DrugstoreID], [PaymentType], [Amount], [Balance], [Date], [IsActive], [FullName], [PhoneNumber]) VALUES (3, 3, 1, 292410000, -306660000, CAST(0x0000A52B00DD9620 AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Payment] OFF
/****** Object:  Table [dbo].[DrugOrder]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrugOrder](
	[DrugOrderID] [int] IDENTITY(1,1) NOT NULL,
	[DrugstoreID] [int] NOT NULL,
	[Note] [nvarchar](50) NULL,
	[TotalPrice] [float] NOT NULL,
	[DateOrder] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[DrugOrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DrugOrder] ON
INSERT [dbo].[DrugOrder] ([DrugOrderID], [DrugstoreID], [Note], [TotalPrice], [DateOrder], [IsActive], [Status]) VALUES (1, 3, NULL, 14250000, CAST(0x0000A52300A02E5F AS DateTime), 1, 4)
INSERT [dbo].[DrugOrder] ([DrugOrderID], [DrugstoreID], [Note], [TotalPrice], [DateOrder], [IsActive], [Status]) VALUES (2, 3, NULL, 0, CAST(0x0000A529009752A1 AS DateTime), 1, 5)
INSERT [dbo].[DrugOrder] ([DrugOrderID], [DrugstoreID], [Note], [TotalPrice], [DateOrder], [IsActive], [Status]) VALUES (3, 3, NULL, 0, CAST(0x0000A52900976E41 AS DateTime), 1, 5)
INSERT [dbo].[DrugOrder] ([DrugOrderID], [DrugstoreID], [Note], [TotalPrice], [DateOrder], [IsActive], [Status]) VALUES (4, 4, NULL, 4750000, CAST(0x0000A52900979A02 AS DateTime), 1, 5)
INSERT [dbo].[DrugOrder] ([DrugOrderID], [DrugstoreID], [Note], [TotalPrice], [DateOrder], [IsActive], [Status]) VALUES (5, 4, NULL, 285000, CAST(0x0000A5290097A289 AS DateTime), 1, 5)
INSERT [dbo].[DrugOrder] ([DrugOrderID], [DrugstoreID], [Note], [TotalPrice], [DateOrder], [IsActive], [Status]) VALUES (6, 4, NULL, 5035000, CAST(0x0000A529009BBCC1 AS DateTime), 1, 5)
INSERT [dbo].[DrugOrder] ([DrugOrderID], [DrugstoreID], [Note], [TotalPrice], [DateOrder], [IsActive], [Status]) VALUES (7, 4, NULL, 5320000, CAST(0x0000A529009BD781 AS DateTime), 1, 4)
INSERT [dbo].[DrugOrder] ([DrugOrderID], [DrugstoreID], [Note], [TotalPrice], [DateOrder], [IsActive], [Status]) VALUES (8, 3, NULL, 292410000, CAST(0x0000A52B00DD0B14 AS DateTime), 1, 4)
INSERT [dbo].[DrugOrder] ([DrugOrderID], [DrugstoreID], [Note], [TotalPrice], [DateOrder], [IsActive], [Status]) VALUES (9, 4, NULL, 665570000, CAST(0x0000A52B00E3CE11 AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[DrugOrder] OFF
/****** Object:  Table [dbo].[DrugOrderDetails]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrugOrderDetails](
	[DrugOrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[DrugOrderID] [int] NOT NULL,
	[DrugId] [int] NOT NULL,
	[UnitID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NULL,
	[DeliveryQuantity] [int] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_DrugOrderDetails] PRIMARY KEY CLUSTERED 
(
	[DrugOrderDetailsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DrugOrderDetails] ON
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (1, 1, 1, 2, 1, 4750000, 3, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (2, 2, 3, 1, 1, 57000, NULL, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (3, 2, 2, 1, 1, 285000, NULL, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (4, 3, 2, 2, 1, 47500000, NULL, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (5, 3, 1, 2, 1, 4750000, NULL, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (6, 3, 3, 2, 1, 285000, NULL, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (7, 4, 1, 2, 1, 4750000, NULL, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (8, 5, 3, 2, 1, 285000, NULL, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (9, 6, 1, 2, 1, 4750000, 1, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (10, 6, 3, 2, 1, 285000, 1, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (11, 7, 3, 2, 2, 570000, 1, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (12, 7, 1, 2, 1, 4750000, 1, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (13, 8, 1, 1, 2, 950000, 3, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (14, 8, 2, 2, 3, 142500000, 2, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (15, 8, 3, 2, 4, 1140000, 4, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (16, 9, 2, 2, 14, 665000000, 14, NULL)
INSERT [dbo].[DrugOrderDetails] ([DrugOrderDetailsID], [DrugOrderID], [DrugId], [UnitID], [Quantity], [UnitPrice], [DeliveryQuantity], [Note]) VALUES (17, 9, 3, 2, 2, 570000, 2, NULL)
SET IDENTITY_INSERT [dbo].[DrugOrderDetails] OFF
/****** Object:  Table [dbo].[DeliveryScheduleDetails]    Script Date: 10/20/2015 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryScheduleDetails](
	[DeliveryScheduleDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryScheduleID] [int] NOT NULL,
	[DrugOrderID] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_DeliveryScheduleDetails] PRIMARY KEY CLUSTERED 
(
	[DeliveryScheduleDetailsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DeliveryScheduleDetails] ON
INSERT [dbo].[DeliveryScheduleDetails] ([DeliveryScheduleDetailsID], [DeliveryScheduleID], [DrugOrderID], [Status]) VALUES (1, 1, 7, 4)
INSERT [dbo].[DeliveryScheduleDetails] ([DeliveryScheduleDetailsID], [DeliveryScheduleID], [DrugOrderID], [Status]) VALUES (2, 1, 3, 5)
INSERT [dbo].[DeliveryScheduleDetails] ([DeliveryScheduleDetailsID], [DeliveryScheduleID], [DrugOrderID], [Status]) VALUES (3, 2, 2, 5)
INSERT [dbo].[DeliveryScheduleDetails] ([DeliveryScheduleDetailsID], [DeliveryScheduleID], [DrugOrderID], [Status]) VALUES (4, 2, 1, 4)
INSERT [dbo].[DeliveryScheduleDetails] ([DeliveryScheduleDetailsID], [DeliveryScheduleID], [DrugOrderID], [Status]) VALUES (5, 3, 8, 4)
SET IDENTITY_INSERT [dbo].[DeliveryScheduleDetails] OFF
/****** Object:  ForeignKey [FK_Account_AccountProfile]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_AccountProfile] FOREIGN KEY([ProfileID])
REFERENCES [dbo].[AccountProfile] ([ProfileID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_AccountProfile]
GO
/****** Object:  ForeignKey [FK_Account_Role]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
/****** Object:  ForeignKey [FK_DeliverySchedule_DeliveryMan]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[DeliverySchedule]  WITH CHECK ADD  CONSTRAINT [FK_DeliverySchedule_DeliveryMan] FOREIGN KEY([DeliveryManID])
REFERENCES [dbo].[DeliveryMan] ([DeliveryManID])
GO
ALTER TABLE [dbo].[DeliverySchedule] CHECK CONSTRAINT [FK_DeliverySchedule_DeliveryMan]
GO
/****** Object:  ForeignKey [FK_DeliveryScheduleDetails_DeliverySchedule]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[DeliveryScheduleDetails]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryScheduleDetails_DeliverySchedule] FOREIGN KEY([DeliveryScheduleID])
REFERENCES [dbo].[DeliverySchedule] ([DeliveryScheduleID])
GO
ALTER TABLE [dbo].[DeliveryScheduleDetails] CHECK CONSTRAINT [FK_DeliveryScheduleDetails_DeliverySchedule]
GO
/****** Object:  ForeignKey [FK_DeliveryScheduleDetails_DrugOrder]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[DeliveryScheduleDetails]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryScheduleDetails_DrugOrder] FOREIGN KEY([DrugOrderID])
REFERENCES [dbo].[DrugOrder] ([DrugOrderID])
GO
ALTER TABLE [dbo].[DeliveryScheduleDetails] CHECK CONSTRAINT [FK_DeliveryScheduleDetails_DrugOrder]
GO
/****** Object:  ForeignKey [FK_DiscountRate_Drug]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[DiscountRate]  WITH CHECK ADD  CONSTRAINT [FK_DiscountRate_Drug] FOREIGN KEY([DrugID])
REFERENCES [dbo].[Drug] ([DrugID])
GO
ALTER TABLE [dbo].[DiscountRate] CHECK CONSTRAINT [FK_DiscountRate_Drug]
GO
/****** Object:  ForeignKey [FK_DiscountRate_DrugstoreType]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[DiscountRate]  WITH CHECK ADD  CONSTRAINT [FK_DiscountRate_DrugstoreType] FOREIGN KEY([DrugstoreTypeID])
REFERENCES [dbo].[DrugstoreType] ([DrugstoreTypeID])
GO
ALTER TABLE [dbo].[DiscountRate] CHECK CONSTRAINT [FK_DiscountRate_DrugstoreType]
GO
/****** Object:  ForeignKey [FK_District_Account]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_Account] FOREIGN KEY([SalesmanID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_Account]
GO
/****** Object:  ForeignKey [FK_District_City]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_City]
GO
/****** Object:  ForeignKey [FK_Drug_DrugCompany]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[Drug]  WITH CHECK ADD  CONSTRAINT [FK_Drug_DrugCompany] FOREIGN KEY([DrugCompanyID])
REFERENCES [dbo].[DrugCompany] ([DrugCompanyID])
GO
ALTER TABLE [dbo].[Drug] CHECK CONSTRAINT [FK_Drug_DrugCompany]
GO
/****** Object:  ForeignKey [FK_Drug_DrugType]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[Drug]  WITH CHECK ADD  CONSTRAINT [FK_Drug_DrugType] FOREIGN KEY([DrugTypeID])
REFERENCES [dbo].[DrugType] ([DrugTypeID])
GO
ALTER TABLE [dbo].[Drug] CHECK CONSTRAINT [FK_Drug_DrugType]
GO
/****** Object:  ForeignKey [FK_DrugOrder_Drugstore]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[DrugOrder]  WITH CHECK ADD  CONSTRAINT [FK_DrugOrder_Drugstore] FOREIGN KEY([DrugstoreID])
REFERENCES [dbo].[Drugstore] ([DrugstoreID])
GO
ALTER TABLE [dbo].[DrugOrder] CHECK CONSTRAINT [FK_DrugOrder_Drugstore]
GO
/****** Object:  ForeignKey [FK_DrugOrderDetails_Drug]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[DrugOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_DrugOrderDetails_Drug] FOREIGN KEY([DrugId])
REFERENCES [dbo].[Drug] ([DrugID])
GO
ALTER TABLE [dbo].[DrugOrderDetails] CHECK CONSTRAINT [FK_DrugOrderDetails_Drug]
GO
/****** Object:  ForeignKey [FK_DrugOrderDetails_DrugOrder]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[DrugOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_DrugOrderDetails_DrugOrder] FOREIGN KEY([DrugOrderID])
REFERENCES [dbo].[DrugOrder] ([DrugOrderID])
GO
ALTER TABLE [dbo].[DrugOrderDetails] CHECK CONSTRAINT [FK_DrugOrderDetails_DrugOrder]
GO
/****** Object:  ForeignKey [FK_DrugOrderDetails_Unit]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[DrugOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_DrugOrderDetails_Unit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[Unit] ([UnitId])
GO
ALTER TABLE [dbo].[DrugOrderDetails] CHECK CONSTRAINT [FK_DrugOrderDetails_Unit]
GO
/****** Object:  ForeignKey [FK_Drugstore_Account]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[Drugstore]  WITH CHECK ADD  CONSTRAINT [FK_Drugstore_Account] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Drugstore] CHECK CONSTRAINT [FK_Drugstore_Account]
GO
/****** Object:  ForeignKey [FK_Drugstore_District]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[Drugstore]  WITH CHECK ADD  CONSTRAINT [FK_Drugstore_District] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Drugstore] CHECK CONSTRAINT [FK_Drugstore_District]
GO
/****** Object:  ForeignKey [FK_Drugstore_DrugstoreType]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[Drugstore]  WITH CHECK ADD  CONSTRAINT [FK_Drugstore_DrugstoreType] FOREIGN KEY([DrugstoreTypeID])
REFERENCES [dbo].[DrugstoreType] ([DrugstoreTypeID])
GO
ALTER TABLE [dbo].[Drugstore] CHECK CONSTRAINT [FK_Drugstore_DrugstoreType]
GO
/****** Object:  ForeignKey [FK_Debt_Drugstore]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Debt_Drugstore] FOREIGN KEY([DrugstoreID])
REFERENCES [dbo].[Drugstore] ([DrugstoreID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Debt_Drugstore]
GO
/****** Object:  ForeignKey [FK_Price_Drug]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Drug] FOREIGN KEY([DrugID])
REFERENCES [dbo].[Drug] ([DrugID])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [FK_Price_Drug]
GO
/****** Object:  ForeignKey [FK_Price_Unit]    Script Date: 10/20/2015 13:18:08 ******/
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Unit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[Unit] ([UnitId])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [FK_Price_Unit]
GO
