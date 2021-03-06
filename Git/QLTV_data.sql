USE [THUVIEN]
GO
/****** Object:  Table [dbo].[LoaiSach]    Script Date: 9/22/2021 11:40:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSach](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiSach] [nchar](10) NOT NULL,
	[TenLoaiSach] [nvarchar](200) NULL,
	[TimeUpdate] [datetime] NULL,
	[TimeCreate] [datetime] NULL,
 CONSTRAINT [PK_LoaiSach_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 9/22/2021 11:40:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNXB] [nchar](10) NOT NULL,
	[TenNXB] [nvarchar](150) NULL,
	[TimeUpdate] [datetime] NULL,
	[TimeCreate] [datetime] NULL,
	[DiaChi] [nvarchar](150) NULL,
 CONSTRAINT [PK_NXB_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 9/22/2021 11:40:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaMuon] [nchar](10) NOT NULL,
	[NguoiMuon] [int] NULL,
	[NgayMuon] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[HinhThuc] [nvarchar](150) NULL,
	[TimeUpdate] [datetime] NULL,
	[TimeCreate] [datetime] NULL,
	[SoNgayMuon] [int] NULL,
 CONSTRAINT [PK_PhieuMuon_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 9/22/2021 11:40:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaSach] [nchar](10) NOT NULL,
	[TenSach] [nvarchar](150) NULL,
	[LoaiSach] [int] NULL,
	[NamXB] [nchar](10) NULL,
	[NXB] [int] NULL,
	[TacGia] [int] NULL,
	[ViTri] [int] NULL,
	[SoLuong] [int] NULL,
	[Muon] [int] NULL,
	[NgonNgu] [nvarchar](150) NULL,
	[TimeCreate] [datetime] NULL,
	[TimeUpdate] [datetime] NULL,
 CONSTRAINT [PK_Sach_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 9/22/2021 11:40:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[ID] [int] NOT NULL,
	[MaSV] [nchar](10) NOT NULL,
	[Lop] [nvarchar](150) NULL,
	[TimeUpdate] [datetime] NULL,
	[TimeCreate] [datetime] NULL,
	[HoTen] [nvarchar](150) NULL,
 CONSTRAINT [PK_SinhVien_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 9/22/2021 11:40:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaTacGia] [nchar](10) NOT NULL,
	[TenTacGia] [nvarchar](150) NULL,
	[TimeUpdate] [datetime] NULL,
	[TimeCreate] [datetime] NULL,
	[DiaChi] [nvarchar](250) NULL,
 CONSTRAINT [PK_TacGia_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 9/22/2021 11:40:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Username] [nchar](10) NULL,
	[TimeUpdate] [datetime] NULL,
	[TimeCreate] [datetime] NULL,
	[Password] [nchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViTri]    Script Date: 9/22/2021 11:40:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaViTri] [nchar](10) NOT NULL,
	[Ngan] [nvarchar](150) NULL,
	[Ke] [nvarchar](150) NULL,
	[TimeUpdate] [datetime] NULL,
	[TimeCreate] [datetime] NULL,
	[Khu] [nvarchar](150) NULL,
 CONSTRAINT [PK_ViTri_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LoaiSach] ADD  CONSTRAINT [DF_LoaiSach_TimeUpdate]  DEFAULT (getdate()) FOR [TimeUpdate]
GO
ALTER TABLE [dbo].[NXB] ADD  CONSTRAINT [DF_NXB_TimeUpdate]  DEFAULT (getdate()) FOR [TimeUpdate]
GO
ALTER TABLE [dbo].[PhieuMuon] ADD  CONSTRAINT [DF_PhieuMuon_TimeUpdate]  DEFAULT (getdate()) FOR [TimeUpdate]
GO
ALTER TABLE [dbo].[Sach] ADD  CONSTRAINT [DF_Sach_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[Sach] ADD  CONSTRAINT [DF_Sach_NgayTao]  DEFAULT (getdate()) FOR [TimeUpdate]
GO
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [DF_SinhVien_TimeUpdate]  DEFAULT (getdate()) FOR [TimeUpdate]
GO
ALTER TABLE [dbo].[TacGia] ADD  CONSTRAINT [DF_TacGia_TimeUpdate]  DEFAULT (getdate()) FOR [TimeUpdate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_TimeUpdate]  DEFAULT (getdate()) FOR [TimeUpdate]
GO
ALTER TABLE [dbo].[ViTri] ADD  CONSTRAINT [DF_ViTri_TimeUpdate]  DEFAULT (getdate()) FOR [TimeUpdate]
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon_SinhVien] FOREIGN KEY([NguoiMuon])
REFERENCES [dbo].[SinhVien] ([ID])
GO
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK_PhieuMuon_SinhVien]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_LoaiSach] FOREIGN KEY([LoaiSach])
REFERENCES [dbo].[LoaiSach] ([ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_LoaiSach]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NXB] FOREIGN KEY([NXB])
REFERENCES [dbo].[NXB] ([ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NXB]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_PhieuMuon] FOREIGN KEY([Muon])
REFERENCES [dbo].[PhieuMuon] ([ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_PhieuMuon]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([TacGia])
REFERENCES [dbo].[TacGia] ([ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ViTri] FOREIGN KEY([ViTri])
REFERENCES [dbo].[ViTri] ([ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_ViTri]
GO
