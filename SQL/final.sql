USE [TTcoso]
GO
/****** Object:  Table [dbo].[BaiDoXe]    Script Date: 4/15/2022 3:57:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiDoXe](
	[Ma_bai_do_xe] [nvarchar](50) NOT NULL,
	[Ten_bai_do_xe] [nvarchar](max) NULL,
	[Dia_chi_bai_do_xe] [nvarchar](max) NULL,
	[Trang_thai_bai_do_xe] [int] NULL,
 CONSTRAINT [PK_BaiDoXe] PRIMARY KEY CLUSTERED 
(
	[Ma_bai_do_xe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/15/2022 3:57:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Ma_khach_hang] [int] IDENTITY(1,1) NOT NULL,
	[Ten_khach_hang] [nvarchar](max) NULL,
	[CMND] [nvarchar](max) NULL,
	[Dia_chi_khach_hang] [nvarchar](max) NULL,
	[Tai_khoan] [nvarchar](max) NULL,
	[Mat_khau] [nvarchar](max) NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Ma_khach_hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinGuiXe]    Script Date: 4/15/2022 3:57:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinGuiXe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma_bai_do_xe] [nvarchar](50) NULL,
	[Ma_khach_hang] [nvarchar](50) NULL,
	[Ngay_gui] [datetime] NULL,
	[Ngay_lay] [datetime] NULL,
	[Bien_so_xe] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThongTinGuiXe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1000', N'KHU A1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1001', N'KHU A2', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1002', N'KHU B1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1003', N'KHU A1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1004', N'KHU A2', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1005', N'KHU B1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1006', N'KHU A1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1007', N'KHU A2', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1008', N'KHU B1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1009', N'KHU A1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1010', N'KHU A2', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1011', N'KHU B1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1012', N'KHU A1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1013', N'KHU A2', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1014', N'KHU B1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1015', N'KHU A1', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1016', N'KHU A2', N'ICTU', 0)
INSERT [dbo].[BaiDoXe] ([Ma_bai_do_xe], [Ten_bai_do_xe], [Dia_chi_bai_do_xe], [Trang_thai_bai_do_xe]) VALUES (N'DTC1017', N'KHU A1', N'ICTU', 0)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Ma_khach_hang], [Ten_khach_hang], [CMND], [Dia_chi_khach_hang], [Tai_khoan], [Mat_khau], [Role]) VALUES (1, N'Nguyen Quang Khai', N'123456789', N'HN', N'kai123', N'123', 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongTinGuiXe] ON 

INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (1, N'DTC1000', N'9', CAST(N'2022-04-14T20:50:06.180' AS DateTime), CAST(N'2022-04-14T21:13:26.127' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (2, N'DTC1002', N'1', CAST(N'2022-04-14T21:12:30.243' AS DateTime), CAST(N'2022-04-14T21:20:57.003' AS DateTime), N'asdasdsa')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (3, N'DTC1000', N'9', CAST(N'2022-04-14T21:21:14.123' AS DateTime), CAST(N'2022-04-14T22:33:18.643' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (4, N'DTC1002', N'1', CAST(N'2022-04-14T21:57:01.690' AS DateTime), CAST(N'2022-04-14T21:57:36.887' AS DateTime), N'asdasdsa')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (5, N'DTC1001', N'9', CAST(N'2022-04-14T22:33:57.260' AS DateTime), CAST(N'2022-04-14T22:57:14.373' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (6, N'DTC1014', N'9', CAST(N'2022-04-14T23:49:54.033' AS DateTime), CAST(N'2022-04-15T00:21:01.400' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (7, N'DTC1008', N'9', CAST(N'2022-04-15T11:43:41.893' AS DateTime), CAST(N'2022-04-15T12:01:33.487' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (8, N'DTC1016', N'9', CAST(N'2022-04-15T11:43:46.960' AS DateTime), CAST(N'2022-04-15T12:01:33.487' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (9, N'DTC1016', N'9', CAST(N'2022-04-15T12:02:02.940' AS DateTime), CAST(N'2022-04-15T12:10:34.030' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (10, N'DTC1000', N'9', CAST(N'2022-04-15T12:21:43.127' AS DateTime), CAST(N'2022-04-15T12:25:51.583' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (11, N'DTC1000', N'9', CAST(N'2022-04-15T12:30:51.860' AS DateTime), CAST(N'2022-04-15T12:31:17.007' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (12, N'DTC1009', N'1', CAST(N'2022-04-15T12:33:38.513' AS DateTime), CAST(N'2022-04-15T13:50:49.430' AS DateTime), N'55555')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (13, N'DTC1000', N'9', CAST(N'2022-04-15T15:13:43.187' AS DateTime), CAST(N'2022-04-15T15:18:04.510' AS DateTime), N'55555')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (14, N'DTC1008', N'1', CAST(N'2022-04-15T15:14:42.760' AS DateTime), CAST(N'2022-04-15T15:22:24.183' AS DateTime), N'55555')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (15, N'DTC1013', N'10', CAST(N'2022-04-15T15:16:09.150' AS DateTime), CAST(N'2022-04-15T15:48:27.580' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (16, N'DTC1016', N'9', CAST(N'2022-04-15T15:18:40.433' AS DateTime), CAST(N'2022-04-15T15:46:36.917' AS DateTime), N'12345')
INSERT [dbo].[ThongTinGuiXe] ([Id], [Ma_bai_do_xe], [Ma_khach_hang], [Ngay_gui], [Ngay_lay], [Bien_so_xe]) VALUES (17, N'DTC1015', N'1', CAST(N'2022-04-15T15:47:16.573' AS DateTime), CAST(N'2022-04-15T15:48:08.163' AS DateTime), N'12345')
SET IDENTITY_INSERT [dbo].[ThongTinGuiXe] OFF
GO
ALTER TABLE [dbo].[BaiDoXe] ADD  DEFAULT ((0)) FOR [Trang_thai_bai_do_xe]
GO
ALTER TABLE [dbo].[ThongTinGuiXe]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinGuiXe_BaiDoXe] FOREIGN KEY([Ma_bai_do_xe])
REFERENCES [dbo].[BaiDoXe] ([Ma_bai_do_xe])
GO
ALTER TABLE [dbo].[ThongTinGuiXe] CHECK CONSTRAINT [FK_ThongTinGuiXe_BaiDoXe]
GO
