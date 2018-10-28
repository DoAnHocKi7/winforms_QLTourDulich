USE [master]
GO
/****** Object:  Database [QlTourDuLich]    Script Date: 10/29/2018 2:48:25 AM ******/
CREATE DATABASE [QlTourDuLich]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QlTourDuLich', FILENAME = N'F:\InstalledProgram\SQL Express 2012\MSSQL11.SQLEXPRESS\MSSQL\DATA\QlTourDuLich.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QlTourDuLich_log', FILENAME = N'F:\InstalledProgram\SQL Express 2012\MSSQL11.SQLEXPRESS\MSSQL\DATA\QlTourDuLich_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QlTourDuLich] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QlTourDuLich].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QlTourDuLich] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QlTourDuLich] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QlTourDuLich] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QlTourDuLich] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QlTourDuLich] SET ARITHABORT OFF 
GO
ALTER DATABASE [QlTourDuLich] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QlTourDuLich] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QlTourDuLich] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QlTourDuLich] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QlTourDuLich] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QlTourDuLich] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QlTourDuLich] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QlTourDuLich] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QlTourDuLich] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QlTourDuLich] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QlTourDuLich] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QlTourDuLich] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QlTourDuLich] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QlTourDuLich] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QlTourDuLich] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QlTourDuLich] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QlTourDuLich] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QlTourDuLich] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QlTourDuLich] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QlTourDuLich] SET  MULTI_USER 
GO
ALTER DATABASE [QlTourDuLich] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QlTourDuLich] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QlTourDuLich] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QlTourDuLich] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QlTourDuLich]
GO
/****** Object:  Table [dbo].[ChiTietHopDong]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHopDong](
	[MaCT_HopDong] [varchar](10) NOT NULL,
	[MaHopDong] [varchar](10) NULL,
	[MaTour] [varchar](10) NULL,
	[SLTreEm] [int] NULL,
	[SLNguoiLon] [int] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_ChiTietHopDong] PRIMARY KEY CLUSTERED 
(
	[MaCT_HopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTPHIEUNHAP_TOUR]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTPHIEUNHAP_TOUR](
	[SLTreEm] [int] NULL,
	[Ma_CTPNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaTour] [varchar](10) NULL,
	[SLNguoiLon] [int] NULL,
	[MaPNhap] [varchar](10) NULL,
 CONSTRAINT [PK_CTPHIEUNHAP_TOUR] PRIMARY KEY CLUSTERED 
(
	[Ma_CTPNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DIADANH]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIADANH](
	[MaDiaDanh] [varchar](10) NOT NULL,
	[TenDiaDanh] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DiaDanh] PRIMARY KEY CLUSTERED 
(
	[MaDiaDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DIADIEM]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIADIEM](
	[MaDiaDiem] [int] IDENTITY(1,1) NOT NULL,
	[TenDiaDiem] [nvarchar](100) NOT NULL,
	[MaDiaDanh] [varchar](10) NULL,
 CONSTRAINT [PK_DD] PRIMARY KEY CLUSTERED 
(
	[MaDiaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HANHTRINH]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HANHTRINH](
	[MaHanhTrinh] [varchar](11) NOT NULL,
	[NoiDi] [int] NULL,
	[NoiDen] [int] NULL,
 CONSTRAINT [PK_HT] PRIMARY KEY CLUSTERED 
(
	[MaHanhTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOPDONG]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOPDONG](
	[MaHD] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NULL,
	[ThoiGianDat] [datetime] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TongTien] [money] NULL,
 CONSTRAINT [PK_MaHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HUONGDANVIEN]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HUONGDANVIEN](
	[MaHDV] [int] IDENTITY(1,1) NOT NULL,
	[TenHDV] [nvarchar](50) NULL,
	[SDT] [nvarchar](12) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[AnhDaiDien] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[NgayVaoLam] [datetime] NULL,
	[NgonNgu] [nvarchar](50) NULL,
 CONSTRAINT [PK_HDV] PRIMARY KEY CLUSTERED 
(
	[MaHDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[NgSinh] [datetime] NULL,
	[GioiTinh] [int] NULL,
	[Email] [varchar](50) NULL,
	[SDTKH] [char](11) NULL,
	[DCKH] [nvarchar](100) NULL,
	[MaLoaiKH] [varchar](10) NULL,
	[TenDoanhNghiep] [nvarchar](100) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_KH] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHSAN]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHSAN](
	[MaKS] [varchar](10) NOT NULL,
	[TenKS] [nvarchar](50) NULL,
	[MaLoaiKS] [varchar](10) NULL,
	[MaDiaDiem] [int] NULL,
	[GiaTien] [money] NULL,
 CONSTRAINT [PK_KS] PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIKHACHHANG]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIKHACHHANG](
	[MaLoaiKH] [varchar](10) NOT NULL,
	[TenLoaiKH] [nvarchar](50) NULL,
	[UuDai] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LKH] PRIMARY KEY CLUSTERED 
(
	[MaLoaiKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIKHACHSAN]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIKHACHSAN](
	[MaLoaiKS] [varchar](10) NOT NULL,
	[TenLoaiKS] [nvarchar](50) NULL,
 CONSTRAINT [PK_LKS] PRIMARY KEY CLUSTERED 
(
	[MaLoaiKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAITOUR]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAITOUR](
	[MaLoaiTour] [varchar](10) NOT NULL,
	[TenLoaiTour] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_LT] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MANHINH]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MANHINH](
	[MaMH] [int] IDENTITY(1,1) NOT NULL,
	[TenMH] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_MH] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[MaNV] [varchar](10) NOT NULL,
	[TenDangNhap] [varchar](30) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[AnhDaiDien] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](11) NULL,
	[TrangThai] [int] NULL,
	[MatKhauCap2] [nvarchar](50) NULL,
 CONSTRAINT [PK_ND] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHOMNGUOIDUNG]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMNGUOIDUNG](
	[MaNhom] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NND] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MaNhom] [int] NOT NULL,
	[MaMH] [int] NOT NULL,
	[CoQuyen] [bit] NULL,
 CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUNHAPTOUR]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUNHAPTOUR](
	[MaPN] [varchar](10) NOT NULL,
	[TenPN] [nvarchar](50) NULL,
	[Ngaynhap] [date] NULL,
	[MaNV] [varchar](10) NULL,
 CONSTRAINT [PK_PNT] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QUANLINHOMNGUOIDUNG]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QUANLINHOMNGUOIDUNG](
	[MaQlNguoiDung] [varchar](10) NOT NULL,
	[MaNhom] [int] NULL,
	[MaNV] [varchar](10) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_QLNND] PRIMARY KEY CLUSTERED 
(
	[MaQlNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TOUR]    Script Date: 10/29/2018 2:48:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TOUR](
	[MaTour] [varchar](10) NOT NULL,
	[MaKS] [varchar](10) NULL,
	[TenTour] [nvarchar](100) NULL,
	[NgayKhoiHanh] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[GiaTreEm] [money] NULL,
	[GiaNguoiLon] [money] NULL,
	[MoTa] [nvarchar](100) NULL,
	[MaLoaiTour] [varchar](10) NULL,
	[MaHanhTrinh] [varchar](11) NULL,
	[MaHDV] [int] NULL,
	[AnhDaiDien] [varchar](50) NULL,
	[SoLuongDuKhach] [int] NULL,
 CONSTRAINT [PK_TOUR] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'107', N'263', N'10', 0, 1, 5500000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'108', N'935', N'11', 0, 1, 8200000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'186', N'546', N'13', 0, 1, 30500000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'195', N'566', N'12', 0, 1, 17700000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'285', N'935', N'12', 2, 1, 37700000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'446', N'546', N'12', 0, 1, 17700000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'577', N'847', N'12', 0, 2, 35400000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'63', N'866', N'12', 0, 1, 17700000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'653', N'847', N'11', 1, 2, 21400000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'688', N'322307', N'14', 2, NULL, 40000000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'7382', N'876603', N'11', 2, NULL, 13000000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'784', N'566', N'13', 0, 1, 30500000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'799', N'263', N'11', 0, 12, 98400000.0000)
INSERT [dbo].[ChiTietHopDong] ([MaCT_HopDong], [MaHopDong], [MaTour], [SLTreEm], [SLNguoiLon], [ThanhTien]) VALUES (N'821', N'866', N'13', 0, 1, 30500000.0000)
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'1', N'Địa đạo Củ Chi')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'10', N'Thánh địa Mỹ Sơn')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'11', N'Cầu Rồng')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'12', N'Bà Nà Hill')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'13', N'Chợ Đà Lạt')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'14', N'Cánh đồng hoa Lavender')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'15', N'Chùa Ve Chai')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'16', N'Nhà thờ đá Sapa')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'17', N'Thung lũng Mường Hoa Núi')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'18', N'Nhà thờ đá Sapa')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'19', N'Cáp treo Fansipan')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'2', N'bảo tàng Chứng tích chiến tranh')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'20', N'Núi Hàm Rồng')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'21', N'Vipearl Land')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'22', N'Tháp Po Nagar')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'23', N'Chùa Long Sơn')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'24', N'hòn Lao')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'25', N'Đồi cát bay Mũi Né')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'26', N'Tháp Po Sah Inư')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'27', N'Bãi biển đồi dương')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'28', N'Bãi tắm sao')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'29', N'Vườn quốc gia Phú Quốc')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'3', N'Chợ ấm thực Bến Thành')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'30', N'Kinh thành Huế')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'31', N'Chùa Thiên Mụ')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'32', N'Lăng Tự Đức')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'33', N'Vịnh Hạ Long')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'34', N'Paradise Cruise')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'4', N'Bà Rịa-Vũng Tàu')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'5', N'Nhà hát lớn Hà Nội')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'6', N'Lăng Chủ tịch Hồ Chí Minh')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'7', N'Nhà thờ Hàm Long')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'8', N'Chợ Đồng Xuân')
INSERT [dbo].[DIADANH] ([MaDiaDanh], [TenDiaDanh]) VALUES (N'9', N'Ngũ Hành Sơn')
SET IDENTITY_INSERT [dbo].[DIADIEM] ON 

INSERT [dbo].[DIADIEM] ([MaDiaDiem], [TenDiaDiem], [MaDiaDanh]) VALUES (1, N'TPHCM', NULL)
INSERT [dbo].[DIADIEM] ([MaDiaDiem], [TenDiaDiem], [MaDiaDanh]) VALUES (2, N'Hà Nội', NULL)
INSERT [dbo].[DIADIEM] ([MaDiaDiem], [TenDiaDiem], [MaDiaDanh]) VALUES (3, N'Đà Nẵng', NULL)
INSERT [dbo].[DIADIEM] ([MaDiaDiem], [TenDiaDiem], [MaDiaDanh]) VALUES (4, N'Đà Lạt', NULL)
INSERT [dbo].[DIADIEM] ([MaDiaDiem], [TenDiaDiem], [MaDiaDanh]) VALUES (5, N'Sapa', NULL)
INSERT [dbo].[DIADIEM] ([MaDiaDiem], [TenDiaDiem], [MaDiaDanh]) VALUES (6, N'Nha Trang', NULL)
INSERT [dbo].[DIADIEM] ([MaDiaDiem], [TenDiaDiem], [MaDiaDanh]) VALUES (7, N'Phan Thiết', NULL)
INSERT [dbo].[DIADIEM] ([MaDiaDiem], [TenDiaDiem], [MaDiaDanh]) VALUES (8, N'Phú Quốc', NULL)
INSERT [dbo].[DIADIEM] ([MaDiaDiem], [TenDiaDiem], [MaDiaDanh]) VALUES (9, N'Huế', NULL)
INSERT [dbo].[DIADIEM] ([MaDiaDiem], [TenDiaDiem], [MaDiaDanh]) VALUES (10, N'Hạ Long', NULL)
SET IDENTITY_INSERT [dbo].[DIADIEM] OFF
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'1', 1, 2)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'10', 2, 10)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'11', 3, 1)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'12', 3, 2)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'13', 3, 4)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'14', 3, 5)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'15', 3, 6)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'16', 4, 7)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'17', 4, 8)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'18', 4, 9)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'19', 4, 10)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'2', 1, 3)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'20', 5, 1)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'21', 5, 2)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'22', 5, 3)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'23', 5, 4)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'24', 5, 6)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'25', 6, 7)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'26', 6, 8)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'27', 6, 9)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'28', 6, 10)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'29', 7, 1)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'3', 1, 4)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'30', 7, 2)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'31', 7, 3)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'32', 8, 4)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'33', 8, 5)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'34', 8, 6)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'35', 9, 7)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'36', 9, 8)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'37', 9, 10)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'38', 10, 4)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'39', 10, 7)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'4', 1, 5)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'40', 10, 2)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'5', 1, 6)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'6', 2, 6)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'7', 2, 7)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'8', 2, 8)
INSERT [dbo].[HANHTRINH] ([MaHanhTrinh], [NoiDi], [NoiDen]) VALUES (N'9', 2, 9)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'127363', N'7', CAST(0x0000A98500ADDE8E AS DateTime), NULL, NULL, 13000000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'263', N'478', CAST(0x0000A987013241AA AS DateTime), NULL, NULL, 103900000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'2931', N'6', NULL, NULL, NULL, NULL)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'322307', N'5', CAST(0x0000A98500ADF910 AS DateTime), NULL, NULL, 40000000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'354909', N'1', CAST(0x0000A98500AE2950 AS DateTime), NULL, NULL, 75000000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'357', N'54', CAST(0x0000A98600CB889A AS DateTime), NULL, NULL, 78500000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'546', N'345', CAST(0x0000A98600E408F7 AS DateTime), NULL, NULL, 48200000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'566', N'1083', CAST(0x0000A98600E3D215 AS DateTime), NULL, NULL, 48200000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'847', N'728', CAST(0x0000A98600E2615D AS DateTime), NULL, NULL, 56800000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'866', N'713', CAST(0x0000A98600E3F386 AS DateTime), NULL, NULL, 48200000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'876603', N'3', CAST(0x0000A98500ADA220 AS DateTime), NULL, NULL, 13000000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'918964', N'2', CAST(0x0000A98500AD2910 AS DateTime), NULL, NULL, 49900000.0000)
INSERT [dbo].[HOPDONG] ([MaHD], [MaKH], [ThoiGianDat], [TinhTrang], [GhiChu], [TongTien]) VALUES (N'935', N'412', CAST(0x0000A98600CF1809 AS DateTime), NULL, NULL, 45900000.0000)
SET IDENTITY_INSERT [dbo].[HUONGDANVIEN] ON 

INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (1, N'Nguyễn Trần Chanh Nguyên', N'0908187023', N'', CAST(0x0000713B01105E90 AS DateTime), N'Nữ', N'C:\Users\tranthibay\Desktop\BugCoding\travel\ameri', 1, N'', CAST(0x0000A97E01105E90 AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (2, N'Nguyễn Thị Cẩm Tú', N'', N'', CAST(0x0000A97E01144C08 AS DateTime), N'Nữ', N'C:\Users\tranthibay\Desktop\BugCoding\travel\ameri', 0, N'', CAST(0x0000A97E01144C08 AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (3, N'Dương Văn Hóa', N'', N'', CAST(0x0000A97E01145694 AS DateTime), N'Nữ', N'C:\WNC\DEMO_QLNV\Images\duong.jpg', 1, N'', CAST(0x0000A97E01145694 AS DateTime), N'Viet Nam')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (4, N'Lưu Chí Vỹ', N'', N'', CAST(0x0000A97E01146366 AS DateTime), N'Nữ', N'C:\WNC\DEMO_QLNV\Images\hiep.jpg', 1, N'', CAST(0x0000A97E01146366 AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (5, N'Nguyễn Trần Tuyết Minh', N'0909090909', N'05615156', CAST(0x00007EF401146E04 AS DateTime), N'Nữ', N'C:\Users\tranthibay\Desktop\BugCoding\travel\ameri', 1, N'786546546', CAST(0x0000A97E01146E04 AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (6, N'Nguyễn THị Cẩm Tú', N'', N'', CAST(0x0000A97E011479BC AS DateTime), N'Nữ', N'C:\WNC\DEMO_QLNV\Images\luyen.jpg', 1, N'', CAST(0x0000A97E011479BC AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (7, N'Đặng Thị Nặng', N'', N'', CAST(0x0000A97E01149004 AS DateTime), N'Nữ', N'C:\WNC\DEMO_QLNV\Images\nguyen.jpg', 1, N'', CAST(0x0000A97E01149004 AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (8, N'Trần Minh Châu', N'', N'', CAST(0x0000A97E01149900 AS DateTime), N'Nữ', N'C:\WNC\DEMO_QLNV\Images\phan.jpg', 1, N'', CAST(0x0000A97E01149900 AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (9, N'Trần Chung Chánh', N'', N'', CAST(0x0000A97E0114A300 AS DateTime), N'Nữ', N'C:\WNC\DEMO_QLNV\Images\quang.jpg', 1, N'', CAST(0x0000A97E0114A300 AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (10, N'Trần Trung Nguyên', N'', N'', CAST(0x0000A97E0114AC88 AS DateTime), N'Nữ', N'C:\WNC\DEMO_QLNV\Images\thoai.jpg', 1, N'', CAST(0x0000A97E0114AC89 AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (14, N'bachbach', N'7897897897', N'fhfhfhf', CAST(0xFFFFF899010EA71C AS DateTime), N'Nam', N'C:\WNC\DEMO_QLNV\Images\bach.jpg', 0, N'fghfghf', CAST(0x0000A981010EA71C AS DateTime), N'6546546')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (15, N'', N'', N'', CAST(0x0000A98300AE12E4 AS DateTime), N'Nữ', N'', 1, N'', CAST(0x0000A98300AE12E4 AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (16, N'', N'', N'', CAST(0x0000A98300AFF1F4 AS DateTime), N'Nữ', N'', 0, N'', CAST(0x0000A98300AFF1F4 AS DateTime), N'')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (17, N'gjghjh', N'gjgh', N'jljlk', CAST(0xFFFFF04D00B01300 AS DateTime), N'Nữ', N'', 0, N'jlkjl', CAST(0x0000A98300B0133C AS DateTime), N'ljklkj')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (18, N'kkk', N'0908187023', N'hkhjkh', CAST(0x0000A98300B0A915 AS DateTime), N'Nữ', N'', 0, N'hkhjk', CAST(0x0000A98300B0A915 AS DateTime), N'hkjhjk')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (19, N'khjkhj', N'jhkhjk', N'hkhjkh', CAST(0x0000A98300B1EDBB AS DateTime), N'Nữ', N'', 0, N'hkhjk', CAST(0x0000A98300B1EDBB AS DateTime), N'hjkhjk')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (20, N'ghgfhfgh', N'fhgfhg', N'fhfhf', CAST(0x0000A98300B236E9 AS DateTime), N'Nữ', N'', 0, N'hgfhgf', CAST(0x0000A98300B236E9 AS DateTime), N'fhgfhfgh')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (21, N'voduyquang', N'234567', N'234566', CAST(0x00007EF40106CE84 AS DateTime), N'Nữ', N'', 0, N'', CAST(0x0000A9870106CE84 AS DateTime), N'2345678')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [SDT], [DiaChi], [NgaySinh], [GioiTinh], [AnhDaiDien], [TrangThai], [GhiChu], [NgayVaoLam], [NgonNgu]) VALUES (22, N'bạch bạch', N'090909092654', N'667868', CAST(0x00007EF401215588 AS DateTime), N'Nam', N'C:\Users\tranthibay\Desktop\BugCoding\android\bg.j', 0, N'alalalla', CAST(0x0000A98701215588 AS DateTime), N'hahahâh')
SET IDENTITY_INSERT [dbo].[HUONGDANVIEN] OFF
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'1', N'Trần Trung Chánh', CAST(0x00009B8000BFF7C0 AS DateTime), 1, N'', N'hjkhj      ', N'kjkhj', N'1', N'Chưa xác định', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'1083', N'Trần Thanh Khoa', NULL, NULL, N'khoa@gmail.com', N'0914875414 ', N'Hồ Chính Minh', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'14570', N'', CAST(0x0000A98701262D60 AS DateTime), 1, N'', N'           ', N'', N'1', N'Chưa xác định', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'2', N'Trần Trung Nguyên', NULL, 1, NULL, NULL, NULL, N'1', N'Chưa xác định', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'3', N'Nguyễn Trần Chanh Nguyên', CAST(0x00007EF400E48784 AS DateTime), 1, N'jhjhjhj', N'           ', N'', N'1', N'Chưa xác định', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'345', N'Trần Thanh Khoa', NULL, NULL, N'khoa@gmail.com', N'0914875414 ', N'Hồ Chính Minh', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'4', N'Nguyễn Thị Cẩm Tú', NULL, 1, NULL, NULL, NULL, N'1', N'Chưa xác định', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'412', N'Dương Võ Thanh Bạch', NULL, NULL, N'DuongBachg@gmail.com', N'963541042  ', N'Cần Thơ', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'478', N'bo duy quang', NULL, NULL, N'quang@gmail.com', N'0908186132 ', N'tphcm', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'5', N'Dương Văn Hòa', NULL, 1, NULL, NULL, NULL, N'1', N'Chưa xác định', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'54', N'võ duy quang', NULL, NULL, N'quangvoduy32@gmail.com', N'963541042  ', N'100/06 nguyễn quí anh', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'6', N'Trần Tuấn Lợi', CAST(0x0000A98500AD9086 AS DateTime), 1, N'1234567', N'1234567    ', N'1234567', N'1', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'7', N'Nguyễn Trần Tuyết Minh', NULL, 1, NULL, NULL, NULL, N'2', N'Chưa xác định', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'713', N'Trần Thanh Khoa', NULL, NULL, N'khoa@gmail.com', N'0914875414 ', N'Hồ Chính Minh', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'728', N'Nguyễn Thái Bảo', NULL, NULL, N'bao32@gmail.com', N'963541042  ', N'100/06 nguyễn quí anh', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'8', N'Lưu Chí Vỹ', NULL, 1, NULL, NULL, NULL, N'2', N'Chưa xác định', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgSinh], [GioiTinh], [Email], [SDTKH], [DCKH], [MaLoaiKH], [TenDoanhNghiep], [Password]) VALUES (N'9', N'Trần Minh Châu', NULL, 1, NULL, NULL, NULL, N'2', N'Chưa xác định', NULL)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'1', N'Liberty Central SaiGon', N'5', 1, 2500000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'10', N'Ponys', N'1', 6, 300000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'11', N'Ocean Place Muine Resort', N'4', 7, 1099000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'12', N'Ocean Pearl', N'4', 8, 1320000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'13', N'Valentine', N'2', 9, 500000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'14', N'Royal Lotus', N'5', 10, 2500000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'2', N'SaiGon Inn', N'1', 1, 200000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'3', N'O Gallery Premier Hotel & Spa', N'5', 2, 2700000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'4', N'Splendid', N'3', 2, 500000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'5', N'Legacy', N'3', 3, 3500000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'6', N'Mường Thanh', N'1', 3, 1200000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'7', N'An An', N'2', 4, 3900000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'8', N'Sài Gòn-Đà Lạt', N'1', 4, 1375000.0000)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [MaLoaiKS], [MaDiaDiem], [GiaTien]) VALUES (N'9', N'Diamond Sapa', N'3', 5, 900000.0000)
INSERT [dbo].[LOAIKHACHHANG] ([MaLoaiKH], [TenLoaiKH], [UuDai], [GhiChu]) VALUES (N'1', N'Khách cá nhân', N'Không có chương trình', N'Không có ghi chú gì')
INSERT [dbo].[LOAIKHACHHANG] ([MaLoaiKH], [TenLoaiKH], [UuDai], [GhiChu]) VALUES (N'2', N'Khách đoàn thể', N'Không có chương trình', N'Không có ghi chú gì')
INSERT [dbo].[LOAIKHACHSAN] ([MaLoaiKS], [TenLoaiKS]) VALUES (N'1', N'*')
INSERT [dbo].[LOAIKHACHSAN] ([MaLoaiKS], [TenLoaiKS]) VALUES (N'2', N'**')
INSERT [dbo].[LOAIKHACHSAN] ([MaLoaiKS], [TenLoaiKS]) VALUES (N'3', N'***')
INSERT [dbo].[LOAIKHACHSAN] ([MaLoaiKS], [TenLoaiKS]) VALUES (N'4', N'****')
INSERT [dbo].[LOAIKHACHSAN] ([MaLoaiKS], [TenLoaiKS]) VALUES (N'5', N'*****')
INSERT [dbo].[LOAITOUR] ([MaLoaiTour], [TenLoaiTour]) VALUES (N'1', N'Trong nước')
INSERT [dbo].[LOAITOUR] ([MaLoaiTour], [TenLoaiTour]) VALUES (N'2', N'Ngoài nước')
SET IDENTITY_INSERT [dbo].[MANHINH] ON 

INSERT [dbo].[MANHINH] ([MaMH], [TenMH], [GhiChu]) VALUES (1, N'Quản lí nhân viên', N'')
INSERT [dbo].[MANHINH] ([MaMH], [TenMH], [GhiChu]) VALUES (2, N'Quản lí phân quyền', N'')
INSERT [dbo].[MANHINH] ([MaMH], [TenMH], [GhiChu]) VALUES (3, N'Quản lí hướng dẫn viên', N'')
INSERT [dbo].[MANHINH] ([MaMH], [TenMH], [GhiChu]) VALUES (4, N'Quản lí bán tour', N'')
INSERT [dbo].[MANHINH] ([MaMH], [TenMH], [GhiChu]) VALUES (5, N'Quản lí hợp đồng', N'')
INSERT [dbo].[MANHINH] ([MaMH], [TenMH], [GhiChu]) VALUES (6, N'Quản lí doanh thu', N'')
INSERT [dbo].[MANHINH] ([MaMH], [TenMH], [GhiChu]) VALUES (7, N'Quản lí danh sách khách hàng', N'')
INSERT [dbo].[MANHINH] ([MaMH], [TenMH], [GhiChu]) VALUES (8, N'Quản lí hợp đồng', N'')
INSERT [dbo].[MANHINH] ([MaMH], [TenMH], [GhiChu]) VALUES (9, N'Quản lí danh mục tour', N'')
INSERT [dbo].[MANHINH] ([MaMH], [TenMH], [GhiChu]) VALUES (11, N'Quản lí các danh mục dịch vụ đi kèm', NULL)
SET IDENTITY_INSERT [dbo].[MANHINH] OFF
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'1', N'Duong Võ Thanh Bach', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nữ', N'Images\bach.jpg', N'TPHCM', N'0906580274', 0, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'10', N'1', N'1', CAST(0x00009FCB00000000 AS DateTime), N'Nữ', N'C:\WNC\DEMO_QLNV\Images\anh.jpg', N'bb', N'3456', 0, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'11', N'Võ Duy Quang', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nam', N'C:\WNC\DEMO_QLNV\Images\quang.jpg', N'B?n Tre', N'0902879933', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'1127', N'456', N'1111', CAST(0x0000A98300B82039 AS DateTime), N'Nữ', N'', N'456', N'456', 0, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'12', N'Võ Duy Quang', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nữ', N'C:\WNC\DEMO_QLNV\Images\quang.jpg', N'B?n Tre', N'0902879933', 0, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'13', N'Võ Duy Quang', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nữ', N'Images\quang.jpg', N'B?n Tre', N'0902879933', 0, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'2', N'Tran Kha', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nam', N'Images\kha.jpg', N'TPHCM', N'0908187023', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'204', N'uiui', N'1111', CAST(0x0000A9870107C28A AS DateTime), N'Nữ', N'', N'jhiuiuiui', N'gyuytuytu', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'3', N'Võ Duy Quang', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nam', N'Images\quang.jpg', N'B?n Tre', N'0902879933', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'4', N'Trinh Thi Anh', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nữ', N'Images\anh.jpg', N'Ti?n Giang', N'0906580274', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'5', N'Nguyen Kim Luyen', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nữ', N'Images\luyen.jpg', N'Cà Mau', N'0906580274', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'5560', N'123', N'1111', CAST(0x00009D1000BD8274 AS DateTime), N'Nữ', N'', N'123', N'123', 0, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'6', N'To Thi Phuong Nguyen', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nữ', N'Images\nguyen.jpg', N'C?n Tho', N'0906581587', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'6784', N'11', N'1111', CAST(0x0000A98300B7FE58 AS DateTime), N'Nữ', N'', N'1', N'1', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'7', N'Dang Minh Duong', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nam', N'Images\duong.jpg', N'C?n Tho', N'0906580876', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'8', N'Tran Quang Thoai', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nữ', N'Images\thoai.jpg', N'TPHCM', N'0906580274', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'9', N'Le Tan Hiep', N'1111', CAST(0x0000000000000000 AS DateTime), N'Nữ', N'Images\hiep.jpg', N'TPHCM', N'0906580274', 1, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'9127', N'chodiren', N'1111', CAST(0x0000A984010839CC AS DateTime), N'Nam', N'', N'jljkl', N'ljkl', 0, N'2222')
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'admin', N'admin', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[NGUOIDUNG] ([MaNV], [TenDangNhap], [MatKhau], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [SDT], [TrangThai], [MatKhauCap2]) VALUES (N'user', N'user', N'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NHOMNGUOIDUNG] ON 

INSERT [dbo].[NHOMNGUOIDUNG] ([MaNhom], [TenNhom], [GhiChu]) VALUES (1, N'Phòng kế hoạch', N'')
INSERT [dbo].[NHOMNGUOIDUNG] ([MaNhom], [TenNhom], [GhiChu]) VALUES (2, N'Phòng kinh doanh', N'')
INSERT [dbo].[NHOMNGUOIDUNG] ([MaNhom], [TenNhom], [GhiChu]) VALUES (3, N'Phòng nhân sự', N'')
INSERT [dbo].[NHOMNGUOIDUNG] ([MaNhom], [TenNhom], [GhiChu]) VALUES (4, N'Phòng tự do', NULL)
INSERT [dbo].[NHOMNGUOIDUNG] ([MaNhom], [TenNhom], [GhiChu]) VALUES (5, N'chuaxacdinh', NULL)
INSERT [dbo].[NHOMNGUOIDUNG] ([MaNhom], [TenNhom], [GhiChu]) VALUES (6, N'user', NULL)
INSERT [dbo].[NHOMNGUOIDUNG] ([MaNhom], [TenNhom], [GhiChu]) VALUES (7, N'admin', NULL)
SET IDENTITY_INSERT [dbo].[NHOMNGUOIDUNG] OFF
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (2, 4, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (2, 5, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (2, 6, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (2, 7, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (2, 8, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (2, 9, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (2, 11, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (6, 2, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (6, 3, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (7, 1, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (7, 4, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhom], [MaMH], [CoQuyen]) VALUES (7, 5, 1)
INSERT [dbo].[PHIEUNHAPTOUR] ([MaPN], [TenPN], [Ngaynhap], [MaNV]) VALUES (N'1', N'', CAST(0xCB3E0B00 AS Date), N'4')
INSERT [dbo].[PHIEUNHAPTOUR] ([MaPN], [TenPN], [Ngaynhap], [MaNV]) VALUES (N'2', N'', CAST(0xCB3E0B00 AS Date), N'5')
INSERT [dbo].[PHIEUNHAPTOUR] ([MaPN], [TenPN], [Ngaynhap], [MaNV]) VALUES (N'3', N'', CAST(0xCB3E0B00 AS Date), N'6')
INSERT [dbo].[PHIEUNHAPTOUR] ([MaPN], [TenPN], [Ngaynhap], [MaNV]) VALUES (N'4', N'', CAST(0xCB3E0B00 AS Date), N'1')
INSERT [dbo].[PHIEUNHAPTOUR] ([MaPN], [TenPN], [Ngaynhap], [MaNV]) VALUES (N'5', N'', CAST(0xCB3E0B00 AS Date), N'2')
INSERT [dbo].[QUANLINHOMNGUOIDUNG] ([MaQlNguoiDung], [MaNhom], [MaNV], [GhiChu]) VALUES (N'11', 6, N'user', NULL)
INSERT [dbo].[QUANLINHOMNGUOIDUNG] ([MaQlNguoiDung], [MaNhom], [MaNV], [GhiChu]) VALUES (N'12', 7, N'admin', NULL)
INSERT [dbo].[QUANLINHOMNGUOIDUNG] ([MaQlNguoiDung], [MaNhom], [MaNV], [GhiChu]) VALUES (N'13', 6, N'admin', NULL)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'10', N'1', N'Thành phố tham quan', CAST(0x0000A96900000000 AS DateTime), CAST(0x0000A96C00000000 AS DateTime), 3000000.0000, 3000000.0000, N'', N'1', N'25', 8, N'sapa.jpg', 20)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'11', N'2', N'Thành phố tham quan', CAST(0x0000A97100000000 AS DateTime), CAST(0x0000A97600000000 AS DateTime), 5000000.0000, 8000000.0000, N'', N'1', N'39', 8, N'halong.jpg', 20)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'12', N'3', N'Đất nước sạch nhất thế giới', CAST(0x0000AC7400000000 AS DateTime), CAST(0x0000A99F00000000 AS DateTime), 10000000.0000, 15000000.0000, N'', N'2', N'38', 1, NULL, 15)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'13', N'4', N'Đất nước du lịch tôn giáo', CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000A9C800000000 AS DateTime), 19900000.0000, 30000000.0000, N'', N'2', N'16', 10, N'phuquoc.jpg', 20)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'14', N'5', N'Thiên đường Kohrong ', CAST(0x0000AA6D00000000 AS DateTime), CAST(0x0000AA7200000000 AS DateTime), 15000000.0000, 25000000.0000, N'', N'2', N'2', 1, N'danang1.png', 15)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'3', N'6', N'Thành phố đáng sống nhất Việt Nam', CAST(0x0000A97A00000000 AS DateTime), CAST(0x0000A97A00000000 AS DateTime), 5000000.0000, 8000000.0000, N'', N'1', N'2', 1, N'danang.png', 20)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'300', N'10', NULL, CAST(0x0000A98700FEF4EF AS DateTime), CAST(0x0000A98700FEF4EF AS DateTime), 12345.0000, 123456.0000, NULL, N'1', NULL, 1, NULL, NULL)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'4', N'7', N'Thành phố hải sản', CAST(0x0000A97B00000000 AS DateTime), CAST(0x0000A97F00000000 AS DateTime), 3000000.0000, 7000000.0000, N'', N'1', N'1', 2, N'tphcm2.png', 20)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'4760', N'10', NULL, CAST(0x0000A98700FE98C9 AS DateTime), CAST(0x0000A98700FE98C9 AS DateTime), 1221.0000, 2121.0000, NULL, N'1', NULL, 1, NULL, NULL)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'5', N'8', N'Thành phố ngàn hoa', CAST(0x0000A98400000000 AS DateTime), CAST(0x0000A98B00000000 AS DateTime), 7000000.0000, 1100000.0000, N'', N'1', N'9', 3, N'dalat.png', 20)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'6', N'9', N'Thành phố nhộn nhịp', CAST(0x0000A91600000000 AS DateTime), CAST(0x0000B05B00000000 AS DateTime), 2500000.0000, 6000000.0000, N'', N'1', N'10', 1, NULL, 20)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'7', N'10', N'Thành phố du lịch', CAST(0x0000A8D700000000 AS DateTime), CAST(0x0001709A00000000 AS DateTime), 3500000.0000, 7500000.0000, N'', N'1', N'25', 1, NULL, 20)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'7598', N'1', N'543533454', CAST(0x0000A988002A4794 AS DateTime), CAST(0x0000A988002A4794 AS DateTime), 54354.0000, 5454.0000, NULL, N'1', N'1', 1, NULL, NULL)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'7833', N'13', N'khả khả', CAST(0x0000A9870120C7DE AS DateTime), CAST(0x0000A9870120C7DE AS DateTime), 9000000.0000, 900000.0000, NULL, N'1', N'1', 1, NULL, NULL)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'9', NULL, N'Thủ đô Việt Nam', CAST(0x0000A9C000000000 AS DateTime), CAST(0x0000A9C600000000 AS DateTime), 6000000.0000, 8500000.0000, N'', N'1', N'22', 7, N'hanoi.png', 20)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'985', N'1', NULL, CAST(0x0000A987010336DC AS DateTime), CAST(0x0000A987010336DC AS DateTime), 123456789.0000, 12345678.0000, NULL, N'1', NULL, 1, NULL, NULL)
INSERT [dbo].[TOUR] ([MaTour], [MaKS], [TenTour], [NgayKhoiHanh], [NgayKetThuc], [GiaTreEm], [GiaNguoiLon], [MoTa], [MaLoaiTour], [MaHanhTrinh], [MaHDV], [AnhDaiDien], [SoLuongDuKhach]) VALUES (N'9959', N'1', N'tranquang', CAST(0x0000A98701057FED AS DateTime), CAST(0x0000A98701057FED AS DateTime), 0.0000, 7777.0000, NULL, N'1', N'1', 1, NULL, NULL)
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [DF__KHACHHANG__GioiT__30F848ED]  DEFAULT ((1)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [DF_MALOAI]  DEFAULT ('1') FOR [MaLoaiKH]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [DF__KHACHHANG__TenDo__31EC6D26]  DEFAULT (N'Chưa xác định') FOR [TenDoanhNghiep]
GO
ALTER TABLE [dbo].[LOAIKHACHHANG] ADD  CONSTRAINT [DF__LOAIKHACH__UuDai__32E0915F]  DEFAULT (N'Không có chương trình') FOR [UuDai]
GO
ALTER TABLE [dbo].[LOAIKHACHHANG] ADD  CONSTRAINT [DF__LOAIKHACH__GhiCh__33D4B598]  DEFAULT (N'Không có ghi chú gì') FOR [GhiChu]
GO
ALTER TABLE [dbo].[PHANQUYEN] ADD  CONSTRAINT [DF_CoQuyen]  DEFAULT ((0)) FOR [CoQuyen]
GO
ALTER TABLE [dbo].[ChiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHopDong_HOPDONG] FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[HOPDONG] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHopDong] CHECK CONSTRAINT [FK_ChiTietHopDong_HOPDONG]
GO
ALTER TABLE [dbo].[ChiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHopDong_TOUR] FOREIGN KEY([MaTour])
REFERENCES [dbo].[TOUR] ([MaTour])
GO
ALTER TABLE [dbo].[ChiTietHopDong] CHECK CONSTRAINT [FK_ChiTietHopDong_TOUR]
GO
ALTER TABLE [dbo].[CTPHIEUNHAP_TOUR]  WITH CHECK ADD  CONSTRAINT [FK_CTPHIEUNHAP_MaPN] FOREIGN KEY([MaPNhap])
REFERENCES [dbo].[PHIEUNHAPTOUR] ([MaPN])
GO
ALTER TABLE [dbo].[CTPHIEUNHAP_TOUR] CHECK CONSTRAINT [FK_CTPHIEUNHAP_MaPN]
GO
ALTER TABLE [dbo].[CTPHIEUNHAP_TOUR]  WITH CHECK ADD  CONSTRAINT [FK_CTPHIEUNHAP_MaTour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[TOUR] ([MaTour])
GO
ALTER TABLE [dbo].[CTPHIEUNHAP_TOUR] CHECK CONSTRAINT [FK_CTPHIEUNHAP_MaTour]
GO
ALTER TABLE [dbo].[DIADIEM]  WITH CHECK ADD  CONSTRAINT [FK_DIADIEM_DIADANH] FOREIGN KEY([MaDiaDanh])
REFERENCES [dbo].[DIADANH] ([MaDiaDanh])
GO
ALTER TABLE [dbo].[DIADIEM] CHECK CONSTRAINT [FK_DIADIEM_DIADANH]
GO
ALTER TABLE [dbo].[HANHTRINH]  WITH CHECK ADD  CONSTRAINT [FK_HT_NDen] FOREIGN KEY([NoiDen])
REFERENCES [dbo].[DIADIEM] ([MaDiaDiem])
GO
ALTER TABLE [dbo].[HANHTRINH] CHECK CONSTRAINT [FK_HT_NDen]
GO
ALTER TABLE [dbo].[HANHTRINH]  WITH CHECK ADD  CONSTRAINT [FK_HT_NDi] FOREIGN KEY([NoiDi])
REFERENCES [dbo].[DIADIEM] ([MaDiaDiem])
GO
ALTER TABLE [dbo].[HANHTRINH] CHECK CONSTRAINT [FK_HT_NDi]
GO
ALTER TABLE [dbo].[HOPDONG]  WITH CHECK ADD  CONSTRAINT [FK_HD_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOPDONG] CHECK CONSTRAINT [FK_HD_MaKH]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [PK_KH_LOAI] FOREIGN KEY([MaLoaiKH])
REFERENCES [dbo].[LOAIKHACHHANG] ([MaLoaiKH])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [PK_KH_LOAI]
GO
ALTER TABLE [dbo].[KHACHSAN]  WITH CHECK ADD  CONSTRAINT [FK_KS_DD] FOREIGN KEY([MaDiaDiem])
REFERENCES [dbo].[DIADIEM] ([MaDiaDiem])
GO
ALTER TABLE [dbo].[KHACHSAN] CHECK CONSTRAINT [FK_KS_DD]
GO
ALTER TABLE [dbo].[KHACHSAN]  WITH CHECK ADD  CONSTRAINT [FK_KS_LKS] FOREIGN KEY([MaLoaiKS])
REFERENCES [dbo].[LOAIKHACHSAN] ([MaLoaiKS])
GO
ALTER TABLE [dbo].[KHACHSAN] CHECK CONSTRAINT [FK_KS_LKS]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PQ_MH] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MANHINH] ([MaMH])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PQ_MH]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PQ_MN] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NHOMNGUOIDUNG] ([MaNhom])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PQ_MN]
GO
ALTER TABLE [dbo].[PHIEUNHAPTOUR]  WITH CHECK ADD  CONSTRAINT [FK_PNT_MANV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NGUOIDUNG] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAPTOUR] CHECK CONSTRAINT [FK_PNT_MANV]
GO
ALTER TABLE [dbo].[QUANLINHOMNGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_QLNND_NND] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NHOMNGUOIDUNG] ([MaNhom])
GO
ALTER TABLE [dbo].[QUANLINHOMNGUOIDUNG] CHECK CONSTRAINT [FK_QLNND_NND]
GO
ALTER TABLE [dbo].[QUANLINHOMNGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_QUANLINHOMNGUOIDUNG_NGUOIDUNG] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NGUOIDUNG] ([MaNV])
GO
ALTER TABLE [dbo].[QUANLINHOMNGUOIDUNG] CHECK CONSTRAINT [FK_QUANLINHOMNGUOIDUNG_NGUOIDUNG]
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_HDV] FOREIGN KEY([MaHDV])
REFERENCES [dbo].[HUONGDANVIEN] ([MaHDV])
GO
ALTER TABLE [dbo].[TOUR] CHECK CONSTRAINT [FK_TOUR_HDV]
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_HT] FOREIGN KEY([MaHanhTrinh])
REFERENCES [dbo].[HANHTRINH] ([MaHanhTrinh])
GO
ALTER TABLE [dbo].[TOUR] CHECK CONSTRAINT [FK_TOUR_HT]
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_KHACHSAN] FOREIGN KEY([MaKS])
REFERENCES [dbo].[KHACHSAN] ([MaKS])
GO
ALTER TABLE [dbo].[TOUR] CHECK CONSTRAINT [FK_TOUR_KHACHSAN]
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_LOAI] FOREIGN KEY([MaLoaiTour])
REFERENCES [dbo].[LOAITOUR] ([MaLoaiTour])
GO
ALTER TABLE [dbo].[TOUR] CHECK CONSTRAINT [FK_TOUR_LOAI]
GO
USE [master]
GO
ALTER DATABASE [QlTourDuLich] SET  READ_WRITE 
GO
