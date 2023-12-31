USE [master]
GO
/****** Object:  Database [db_duanmau1]    Script Date: 7/10/2023 1:21:23 PM ******/
CREATE DATABASE [db_duanmau1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_duanmau1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\db_duanmau1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_duanmau1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\db_duanmau1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_duanmau1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_duanmau1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_duanmau1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_duanmau1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_duanmau1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_duanmau1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_duanmau1] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_duanmau1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db_duanmau1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_duanmau1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_duanmau1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_duanmau1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_duanmau1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_duanmau1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_duanmau1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_duanmau1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_duanmau1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_duanmau1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_duanmau1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_duanmau1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_duanmau1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_duanmau1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_duanmau1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_duanmau1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_duanmau1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_duanmau1] SET  MULTI_USER 
GO
ALTER DATABASE [db_duanmau1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_duanmau1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_duanmau1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_duanmau1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_duanmau1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_duanmau1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_duanmau1] SET QUERY_STORE = OFF
GO
USE [db_duanmau1]
GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[Id] [uniqueidentifier] NOT NULL,
	[IdSP] [uniqueidentifier] NULL,
	[IdTacGia] [uniqueidentifier] NULL,
	[IdDanhMuc] [uniqueidentifier] NULL,
	[IdNxb] [uniqueidentifier] NULL,
	[NamBH] [int] NULL,
	[MoTa] [nvarchar](50) NULL,
	[SoLuongTon] [int] NULL,
	[GiaNhap] [decimal](20, 0) NULL,
	[GiaBan] [decimal](20, 0) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[VaiTro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](50) NULL,
	[Ten] [nvarchar](200) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[GiamGiaPhanTram] [int] NULL,
	[GiamGiaTienMat] [int] NULL,
	[LoaiGiamGia] [int] NULL,
	[DieuKienGiamGia] [nvarchar](200) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [uniqueidentifier] NOT NULL,
	[IdKH] [uniqueidentifier] NULL,
	[IdNV] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK__HoaDon__3214EC0750E8EFAE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[IdHoaDon] [uniqueidentifier] NOT NULL,
	[IdChiTietSP] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](20, 0) NULL,
 CONSTRAINT [PK_HoaDonCT] PRIMARY KEY CLUSTERED 
(
	[IdHoaDon] ASC,
	[IdChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NOT NULL,
	[Ten] [nvarchar](200) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [int] NULL,
	[Email] [varchar](50) NULL,
	[Sdt] [varchar](30) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DiemTichLuy] [int] NULL,
	[MatKhau] [varchar](max) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK__KhachHan__3214EC0703AEE088] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](200) NULL,
	[GioiTinh] [int] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[Email] [varchar](50) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[MatKhau] [varchar](max) NULL,
	[IdCV] [uniqueidentifier] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK__NhanVien__3214EC07C94DDFE0] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPGiamGia]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPGiamGia](
	[Id] [uniqueidentifier] NOT NULL,
	[IdSanPham] [uniqueidentifier] NULL,
	[IdGiamGia] [uniqueidentifier] NULL,
	[DonGia] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_SPGiamGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 7/10/2023 1:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdTacGia], [IdDanhMuc], [IdNxb], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [AnhDaiDien], [TrangThai]) VALUES (N'd61adab0-1701-47c2-8a23-4df0295b991e', N'027b422a-a280-4ed2-8742-55dd5a280f29', N'81e2936c-4c62-4245-b4ba-194437e9dc64', N'28abdd48-7781-467d-a671-c33cb34670ec', N'0a49670d-8da6-46b5-8146-2550b72399fe', NULL, N'sách tiếng anh lớp 6 tập 1', 43, CAST(45 AS Decimal(20, 0)), CAST(60 AS Decimal(20, 0)), N'', 1)
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdTacGia], [IdDanhMuc], [IdNxb], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [AnhDaiDien], [TrangThai]) VALUES (N'10f5591e-bc51-4beb-b59e-aed6014e548d', N'5a6661d7-7322-457f-b9c2-4a22f1e39e63', N'78445f93-e4fb-4a7b-8b68-900282ad35c6', N'f9a0be00-ed48-4096-81c4-d918aca553f8', N'c737c710-b701-4def-88f2-3ccc290ba6e1', NULL, N'sách toán lớp 6 tập 1', 5, CAST(55 AS Decimal(20, 0)), CAST(76 AS Decimal(20, 0)), N'', 1)
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdTacGia], [IdDanhMuc], [IdNxb], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [AnhDaiDien], [TrangThai]) VALUES (N'f066112b-5e14-42a3-8124-c718aa250743', N'4bb42604-d4fc-408f-8871-5ca9db79398f', N'78445f93-e4fb-4a7b-8b68-900282ad35c6', N'f9a0be00-ed48-4096-81c4-d918aca553f8', N'c737c710-b701-4def-88f2-3ccc290ba6e1', NULL, N'sách toán lớp 6 tập 1', 10, CAST(55 AS Decimal(20, 0)), CAST(76 AS Decimal(20, 0)), N'', 0)
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdTacGia], [IdDanhMuc], [IdNxb], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [AnhDaiDien], [TrangThai]) VALUES (N'bdc216ec-0f8e-417e-b7a3-d93c783e2c86', N'd6a3d352-5be2-4e7a-9b21-0f030eb41ec7', N'81e2936c-4c62-4245-b4ba-194437e9dc64', N'1a946b2c-4e1a-4514-8368-4444bd9b181c', N'c737c710-b701-4def-88f2-3ccc290ba6e1', NULL, N'4', 60, CAST(774 AS Decimal(20, 0)), CAST(74 AS Decimal(20, 0)), N'', 0)
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdTacGia], [IdDanhMuc], [IdNxb], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [AnhDaiDien], [TrangThai]) VALUES (N'b82bb2e5-e6e6-46ac-9175-ff6db4948458', N'aac441a7-9580-4f1f-a2a7-5804399a4ccc', N'41975f25-3bb5-4f3a-b355-bb8a721f80a8', N'1a946b2c-4e1a-4514-8368-4444bd9b181c', N'5d84c245-db12-4a5f-a675-be4fafb12046', NULL, N'sách toán lớp 6 tập 1', 38, CAST(55 AS Decimal(20, 0)), CAST(76 AS Decimal(20, 0)), N'', 1)
GO
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten], [VaiTro]) VALUES (N'49a6f8e8-a5c8-4ab4-9f5f-00b07c5688bf', N'cv05', N'bảo vệ', 0)
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten], [VaiTro]) VALUES (N'0ca9943e-0dbc-44d3-8c27-18a3655b18ce', N'cv01', N'nhân viên 213', 0)
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten], [VaiTro]) VALUES (N'60c86413-af71-438b-993a-36defa4304fc', N'cv06', N'vệ sinh', 0)
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten], [VaiTro]) VALUES (N'6ddf0c5e-06af-4ea7-bacf-56b0c0acc955', N'cv03', N'quản lý', 1)
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten], [VaiTro]) VALUES (N'56460d0e-6982-461d-aead-c97f1a1ec73a', N'cv08', N'quản lý cấp cao', 1)
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten], [VaiTro]) VALUES (N'ff60388b-5a2c-4d46-9e30-d1974d51b6c7', N'cv063', N'lễ tân', 0)
GO
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten]) VALUES (N'1a946b2c-4e1a-4514-8368-4444bd9b181c', N'DM01', N'Toan')
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten]) VALUES (N'd2fe5faf-12e7-42e3-b0a1-83571f8fb35f', N'DM02', N'Van')
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten]) VALUES (N'821a4bef-e920-473e-8a2e-b30080412216', N'DM08', N'chinh tri')
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten]) VALUES (N'28abdd48-7781-467d-a671-c33cb34670ec', N'Dm03', N'Anh')
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten]) VALUES (N'f9a0be00-ed48-4096-81c4-d918aca553f8', N'DM031', N'ngoại ngữ')
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'5e51057b-aa9a-4109-87d9-0876916da47e', NULL, N'01e30612-88a0-475b-a1af-8d3c35bd0980', N'HD8', CAST(N'2023-07-07' AS Date), CAST(N'2023-07-08' AS Date), NULL, N'thanh pho HCM', N'0987121', N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'a112d6a2-ac19-4fae-b4b5-1c554ec8e065', NULL, NULL, N'HD12', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), NULL, N'thanh pho HCM', N'0987121', N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'a1d41ff4-99eb-4c6e-84f4-1f5659cdc87d', NULL, N'01e30612-88a0-475b-a1af-8d3c35bd0980', N'HD10', CAST(N'2023-07-07' AS Date), CAST(N'2023-07-08' AS Date), NULL, NULL, NULL, N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'd6cc1cf4-bfe8-43d3-8742-235a29a4da2e', NULL, NULL, N'HD16', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), NULL, NULL, NULL, N'', 2)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'71757428-2c3e-4e20-ad58-2d7476d7572a', N'f9afd41c-7b78-47f4-997d-92f82b49a281', NULL, N'HD18', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), N'tueye4', NULL, NULL, N'', 2)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'b5bcb392-a319-46e7-8f89-2f32b95addff', N'f9afd41c-7b78-47f4-997d-92f82b49a281', NULL, N'HD20', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), N'tueye4', NULL, NULL, N'', 2)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'b8580d69-5e69-4c53-b536-2fdcff7344c7', N'f9afd41c-7b78-47f4-997d-92f82b49a281', NULL, N'HD21', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), N'tueye4', N'hn31', N'08999888', N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'8293c49d-fbad-40db-928a-3053ec5eda50', N'efd5c6dc-2834-4fc1-92ab-b108e0617af1', NULL, N'HD17', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), N'Nguyễn tThanh Hưng', N'thanh pho HCM', N'0987121', N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'425f913b-19c9-4a5c-b6f5-37021764a97d', NULL, NULL, N'HD27', CAST(N'2023-07-10' AS Date), CAST(N'2023-07-10' AS Date), NULL, NULL, NULL, N'', 2)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'e40e7d61-a18d-4d62-a67e-3da881309507', NULL, N'8e6880ed-c8e0-4ebd-a6b4-59fa8124bb66', N'HD9', CAST(N'2023-07-07' AS Date), CAST(N'2023-07-08' AS Date), NULL, N'thanh pho HCM', N'0987121', N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'77fd135d-2c8e-475f-a76f-4a2344ef2bfa', N'f9afd41c-7b78-47f4-997d-92f82b49a281', NULL, N'HD24', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), N'tueye4', NULL, NULL, N'', 2)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'cf203027-b30c-406d-be76-4d522636846d', N'efd5c6dc-2834-4fc1-92ab-b108e0617af1', NULL, N'HD19', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), N'Nguyễn tThanh Hưng', NULL, NULL, N'', 2)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'3423b80e-e001-40e8-83b9-5d6cb7652652', NULL, NULL, N'HD11', CAST(N'2023-07-07' AS Date), CAST(N'2023-07-08' AS Date), NULL, N'hn', N'089998881', N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'41df3da3-1d4e-4897-972a-5f50ee4b1827', N'f9afd41c-7b78-47f4-997d-92f82b49a281', NULL, N'HD23', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), N'tueye4', NULL, NULL, N'', 2)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'02fe0179-6750-4486-ae68-6908b26979d4', N'8bbfb4ba-1f76-456f-94cf-d15f102ea960', NULL, N'HD22', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), N'tvăn', N'hn', N'089998881', N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'98f3ee9c-83e7-47ac-b43b-794d7a032e38', N'f9afd41c-7b78-47f4-997d-92f82b49a281', NULL, N'HD14', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), N'tueye4', N'hn31', N'08999888', N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'9d3024f2-73cf-4d75-93c0-a963788d7314', NULL, NULL, N'HD25', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-10' AS Date), NULL, NULL, NULL, N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'a42f9388-ccf6-44b0-bc84-af62875cf730', N'efd5c6dc-2834-4fc1-92ab-b108e0617af1', NULL, N'HD7', CAST(N'2023-07-07' AS Date), CAST(N'2023-07-08' AS Date), N'Nguyễn tThanh Hưng', N'thanh pho HCM', N'0987121', N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'106acb05-3cec-44d6-9c58-b6c91229b1d7', N'de498e30-b0d1-4506-ac84-12b553e8b252', NULL, N'HD13', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), N'tueye', N'', N'0987121', N'', 2)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'8bffab49-2dfd-44fc-bff4-c2df91597fe2', NULL, NULL, N'HD15', CAST(N'2023-07-08' AS Date), CAST(N'2023-07-08' AS Date), NULL, NULL, NULL, N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'de1414f4-b346-4506-be39-d3e1852f0227', N'f9afd41c-7b78-47f4-997d-92f82b49a281', NULL, N'HD28', CAST(N'2023-07-10' AS Date), NULL, N'tueye4', NULL, NULL, NULL, 0)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'7ab24b78-1f04-43a6-bf28-d776ef0b7743', NULL, NULL, N'HD26', CAST(N'2023-07-10' AS Date), CAST(N'2023-07-10' AS Date), NULL, NULL, NULL, N'', 1)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'dc4c03b5-6e33-4012-971a-e1771f515dd3', NULL, NULL, N'HD29', CAST(N'2023-07-10' AS Date), NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenKhachHang], [DiaChi], [Sdt], [GhiChu], [TrangThai]) VALUES (N'bb2881fc-08ae-41c9-b52c-f0708a366369', NULL, NULL, N'h11', CAST(N'2022-07-08' AS Date), NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'a1d41ff4-99eb-4c6e-84f4-1f5659cdc87d', N'd61adab0-1701-47c2-8a23-4df0295b991e', 2, CAST(60 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'425f913b-19c9-4a5c-b6f5-37021764a97d', N'10f5591e-bc51-4beb-b59e-aed6014e548d', 1, CAST(76 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'e40e7d61-a18d-4d62-a67e-3da881309507', N'bdc216ec-0f8e-417e-b7a3-d93c783e2c86', 5, CAST(74 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'e40e7d61-a18d-4d62-a67e-3da881309507', N'b82bb2e5-e6e6-46ac-9175-ff6db4948458', 4, CAST(76 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'3423b80e-e001-40e8-83b9-5d6cb7652652', N'd61adab0-1701-47c2-8a23-4df0295b991e', 5, CAST(60 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'3423b80e-e001-40e8-83b9-5d6cb7652652', N'bdc216ec-0f8e-417e-b7a3-d93c783e2c86', 3, CAST(74 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'98f3ee9c-83e7-47ac-b43b-794d7a032e38', N'bdc216ec-0f8e-417e-b7a3-d93c783e2c86', 2, CAST(74 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'9d3024f2-73cf-4d75-93c0-a963788d7314', N'd61adab0-1701-47c2-8a23-4df0295b991e', 2, CAST(60 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'a42f9388-ccf6-44b0-bc84-af62875cf730', N'd61adab0-1701-47c2-8a23-4df0295b991e', 1, CAST(60 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'106acb05-3cec-44d6-9c58-b6c91229b1d7', N'd61adab0-1701-47c2-8a23-4df0295b991e', 2, CAST(60 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'8bffab49-2dfd-44fc-bff4-c2df91597fe2', N'bdc216ec-0f8e-417e-b7a3-d93c783e2c86', 1, CAST(74 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'de1414f4-b346-4506-be39-d3e1852f0227', N'f066112b-5e14-42a3-8124-c718aa250743', 2, CAST(76 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'de1414f4-b346-4506-be39-d3e1852f0227', N'bdc216ec-0f8e-417e-b7a3-d93c783e2c86', 1, CAST(74 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'7ab24b78-1f04-43a6-bf28-d776ef0b7743', N'10f5591e-bc51-4beb-b59e-aed6014e548d', 2, CAST(76 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'dc4c03b5-6e33-4012-971a-e1771f515dd3', N'bdc216ec-0f8e-417e-b7a3-d93c783e2c86', 2, CAST(74 AS Decimal(20, 0)))
GO
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [NgaySinh], [GioiTinh], [Email], [Sdt], [DiaChi], [DiemTichLuy], [MatKhau], [TrangThai]) VALUES (N'de498e30-b0d1-4506-ac84-12b553e8b252', N'kh12', N'tueye', CAST(N'2002-07-10' AS Date), 1, N'', N'08999888', N'hn', 0, N'123', 1)
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [NgaySinh], [GioiTinh], [Email], [Sdt], [DiaChi], [DiemTichLuy], [MatKhau], [TrangThai]) VALUES (N'f9afd41c-7b78-47f4-997d-92f82b49a281', N'kh1231', N'tueye4', CAST(N'2002-07-11' AS Date), 0, N'', N'08999888', N'hn31', 9, N'12312', 1)
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [NgaySinh], [GioiTinh], [Email], [Sdt], [DiaChi], [DiemTichLuy], [MatKhau], [TrangThai]) VALUES (N'efd5c6dc-2834-4fc1-92ab-b108e0617af1', N'kh88', N'Nguyễn tThanh Hưng', CAST(N'2002-05-08' AS Date), 0, N'hnug@gmail.com', N'0987121', N'thanh pho HCM', 0, N'111', 0)
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [NgaySinh], [GioiTinh], [Email], [Sdt], [DiaChi], [DiemTichLuy], [MatKhau], [TrangThai]) VALUES (N'8bbfb4ba-1f76-456f-94cf-d15f102ea960', N'kh121', N'tvăn', CAST(N'2002-07-10' AS Date), 1, N'', N'089998881', N'hn', 10, N'123', 1)
GO
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [AnhDaiDien], [MatKhau], [IdCV], [TrangThai]) VALUES (N'3fee507f-3395-4162-bf3e-08c5e88fe6e2', N'nv99', N'123', 0, NULL, N'', N'', N'', N'', N'123', N'60c86413-af71-438b-993a-36defa4304fc', 1)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [AnhDaiDien], [MatKhau], [IdCV], [TrangThai]) VALUES (N'2c534580-e481-42ee-890d-23c33ede8387', N'nv023', N'nguyễn thị  thúy', 0, CAST(N'2023-06-09' AS Date), N'HN23', N'123456777', N'thuy223@gmail.com', N'', N'1233', N'49a6f8e8-a5c8-4ab4-9f5f-00b07c5688bf', 1)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [AnhDaiDien], [MatKhau], [IdCV], [TrangThai]) VALUES (N'1a5a38bc-41ac-4a4e-90c4-3a5ab901fd20', N'nv013432', N'phạm văn tú', 1, CAST(N'2000-05-12' AS Date), N'HN', N'1231231', N'', N'', N'123', N'0ca9943e-0dbc-44d3-8c27-18a3655b18ce', 1)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [AnhDaiDien], [MatKhau], [IdCV], [TrangThai]) VALUES (N'8e6880ed-c8e0-4ebd-a6b4-59fa8124bb66', N'nv02', N'nguyễn thị khang', 0, CAST(N'2001-05-18' AS Date), N'HN', N'1234567', N'jhg', N'', N'123', N'0ca9943e-0dbc-44d3-8c27-18a3655b18ce', 0)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [AnhDaiDien], [MatKhau], [IdCV], [TrangThai]) VALUES (N'01e30612-88a0-475b-a1af-8d3c35bd0980', N'admin', N'Chủ đây', 1, CAST(N'2000-05-12' AS Date), N'Hà Nội', N'099999999', N'', N'', N'123', N'6ddf0c5e-06af-4ea7-bacf-56b0c0acc955', 1)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [Email], [AnhDaiDien], [MatKhau], [IdCV], [TrangThai]) VALUES (N'a7881ed1-92a6-48fd-b2fc-de111c3b3867', N'nv01', N'phạm văn tú', 1, CAST(N'2000-05-12' AS Date), N'HN', N'1231231', N'', N'', N'12345', N'6ddf0c5e-06af-4ea7-bacf-56b0c0acc955', 1)
GO
INSERT [dbo].[NXB] ([Id], [Ma], [Ten]) VALUES (N'0a49670d-8da6-46b5-8146-2550b72399fe', N'nxb05', N'Nhà sách giáo dục')
INSERT [dbo].[NXB] ([Id], [Ma], [Ten]) VALUES (N'c737c710-b701-4def-88f2-3ccc290ba6e1', N'kim do', N'nxb kim don')
INSERT [dbo].[NXB] ([Id], [Ma], [Ten]) VALUES (N'5d84c245-db12-4a5f-a675-be4fafb12046', N'nxb02', N'nxb Kim đồng')
GO
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'c1705610-f138-4051-bcab-0924ab5e7697', N'sp09', N'dia ly lop 7')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'd6a3d352-5be2-4e7a-9b21-0f030eb41ec7', N'77', N'774')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'5a6661d7-7322-457f-b9c2-4a22f1e39e63', N'sp0541', N'ngu van 2')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'027b422a-a280-4ed2-8742-55dd5a280f29', N'sp03', N'tiếng anh tập 1 lớp 6')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'aac441a7-9580-4f1f-a2a7-5804399a4ccc', N'sp054', N'ngu van 8')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'4bb42604-d4fc-408f-8871-5ca9db79398f', N'sp059', N'ngu van 1111')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'15f7b24e-cf1e-480f-a6c0-8e120342fc4b', N'665', N'55')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'19ef4ab0-cdbb-44c1-a254-b0d1911395d9', N'666', N'66')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'da565fe3-45ea-49a1-b5b5-b9718fb13a8f', N'sp05412', N'ngu van 12')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'762c8814-0ab1-4000-8937-bbf10e774593', N'sp05', N'ngu van 8')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'1e99336d-a85f-40ca-8a92-c19b45fef7b5', N'SP01', N'sach toan 2')
GO
INSERT [dbo].[TacGia] ([Id], [Ma], [Ten]) VALUES (N'81e2936c-4c62-4245-b4ba-194437e9dc64', N'gtd', N'tac gia nh')
INSERT [dbo].[TacGia] ([Id], [Ma], [Ten]) VALUES (N'257ca59f-8605-4188-a9d7-1beba35f9487', N'TG033', N'tac gia 1')
INSERT [dbo].[TacGia] ([Id], [Ma], [Ten]) VALUES (N'78445f93-e4fb-4a7b-8b68-900282ad35c6', N'TG03', N'tac gia 11')
INSERT [dbo].[TacGia] ([Id], [Ma], [Ten]) VALUES (N'41975f25-3bb5-4f3a-b355-bb8a721f80a8', N'tg02', N'Bùi Ngọc A')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChucVu__3214CC9EA25D3FD7]    Script Date: 7/10/2023 1:21:23 PM ******/
ALTER TABLE [dbo].[ChucVu] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DongSP__3214CC9E980CB7E3]    Script Date: 7/10/2023 1:21:23 PM ******/
ALTER TABLE [dbo].[DanhMuc] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HoaDon__3214CC9E5CC6AAF5]    Script Date: 7/10/2023 1:21:23 PM ******/
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [UQ__HoaDon__3214CC9E5CC6AAF5] UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__3214CC9E64E9144F]    Script Date: 7/10/2023 1:21:23 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [UQ__KhachHan__3214CC9E64E9144F] UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__3214CC9E1385B7FE]    Script Date: 7/10/2023 1:21:23 PM ******/
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [UQ__NhanVien__3214CC9E1385B7FE] UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NSX__3214CC9EEA67036A]    Script Date: 7/10/2023 1:21:23 PM ******/
ALTER TABLE [dbo].[NXB] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SanPham__3214CC9E615EA4F1]    Script Date: 7/10/2023 1:21:23 PM ******/
ALTER TABLE [dbo].[SanPham] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__MauSac__3214CC9E2AC01FBB]    Script Date: 7/10/2023 1:21:23 PM ******/
ALTER TABLE [dbo].[TacGia] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (NULL) FOR [NamBH]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (NULL) FOR [MoTa]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT ((0)) FOR [GiaNhap]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[DanhMuc] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[GiamGia] ADD  CONSTRAINT [DF_GiamGia_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__Id__5BE2A6F2]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__NgayTao__5CD6CB2B]  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__NgayThan__5DCAEF64]  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__TenNguoi__619B8048]  DEFAULT (NULL) FOR [TenKhachHang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__DiaChi__628FA481]  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__Sdt__6383C8BA]  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__TinhTran__60A75C0F]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF__KhachHang__Id__5070F446]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF__KhachHang__NgayS__534D60F1]  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF__KhachHang__Sdt__5441852A]  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF__KhachHang__DiaCh__5535A963]  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF__KhachHang__MatKh__5812160E]  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF__NhanVien__Id__440B1D61]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF__NhanVien__Ten__44FF419A]  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF__NhanVien__GioiTi__47DBAE45]  DEFAULT (NULL) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF__NhanVien__NgaySi__48CFD27E]  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF__NhanVien__DiaChi__49C3F6B7]  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF__NhanVien__Sdt__4AB81AF0]  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF__NhanVien__MatKha__4BAC3F29]  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF__NhanVien__TrangT__4CA06362]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NXB] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SPGiamGia] ADD  CONSTRAINT [DF_SPGiamGia_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[TacGia] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdSP])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_DanhMuc] FOREIGN KEY([IdDanhMuc])
REFERENCES [dbo].[DanhMuc] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_DanhMuc]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_NXB] FOREIGN KEY([IdNxb])
REFERENCES [dbo].[NXB] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_NXB]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_TacGia] FOREIGN KEY([IdTacGia])
REFERENCES [dbo].[TacGia] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_TacGia]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__IdKH__114A936A] FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__IdKH__114A936A]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__IdNV__1332DBDC] FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__IdNV__1332DBDC]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK1]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK2] FOREIGN KEY([IdChiTietSP])
REFERENCES [dbo].[ChiTietSP] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK2]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__IdCV__0F624AF8] FOREIGN KEY([IdCV])
REFERENCES [dbo].[ChucVu] ([Id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK__NhanVien__IdCV__0F624AF8]
GO
ALTER TABLE [dbo].[SPGiamGia]  WITH CHECK ADD  CONSTRAINT [FK_SPGiamGia_ChiTietSP] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[ChiTietSP] ([Id])
GO
ALTER TABLE [dbo].[SPGiamGia] CHECK CONSTRAINT [FK_SPGiamGia_ChiTietSP]
GO
ALTER TABLE [dbo].[SPGiamGia]  WITH CHECK ADD  CONSTRAINT [FK_SPGiamGia_GiamGia] FOREIGN KEY([IdGiamGia])
REFERENCES [dbo].[GiamGia] ([Id])
GO
ALTER TABLE [dbo].[SPGiamGia] CHECK CONSTRAINT [FK_SPGiamGia_GiamGia]
GO
USE [master]
GO
ALTER DATABASE [db_duanmau1] SET  READ_WRITE 
GO
