USE [TinhDauDB]
GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 08/08/2021 3:42:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[MaGioHang] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[Gia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 08/08/2021 3:42:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 08/08/2021 3:42:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGioHang] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 08/08/2021 3:42:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[TinhTrang] [nvarchar](100) NOT NULL,
	[PhiShip] [money] NOT NULL,
	[GhiChu] [ntext] NULL,
	[DcNhanHang] [ntext] NULL,
	[MaGioHang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 08/08/2021 3:42:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDM] [int] NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[NhaSX] [nvarchar](100) NOT NULL,
	[TrongLuong] [float] NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[Gia] [decimal](18, 0) NOT NULL,
	[ChatLuong] [nvarchar](100) NOT NULL,
	[MoTa] [ntext] NULL,
	[Anh] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 08/08/2021 3:42:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [varchar](100) NOT NULL,
	[MatKhau] [varchar](100) NOT NULL,
	[Quyen] [int] NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[DiaChi] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSP], [SoLuongMua], [Gia]) VALUES (5, 5, 5, CAST(70000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSP], [SoLuongMua], [Gia]) VALUES (5, 6, 2, CAST(70000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSP], [SoLuongMua], [Gia]) VALUES (5, 7, 6, CAST(80000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSP], [SoLuongMua], [Gia]) VALUES (5, 13, 3, CAST(170000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSP], [SoLuongMua], [Gia]) VALUES (5, 16, 7, CAST(250000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSP], [SoLuongMua], [Gia]) VALUES (6, 5, 3, CAST(70000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSP], [SoLuongMua], [Gia]) VALUES (6, 7, 2, CAST(80000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSP], [SoLuongMua], [Gia]) VALUES (7, 20, 3, CAST(380000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSP], [SoLuongMua], [Gia]) VALUES (7, 23, 2, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([MaGioHang], [MaSP], [SoLuongMua], [Gia]) VALUES (7, 28, 5, CAST(280000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (1, N'Đèn xông tinh dầu nến')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (2, N'Đèn xông tinh dầu điện')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (3, N'Tinh dầu từ hoa')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (4, N'Tinh dầu từ vỏ, quả, hạt')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (7, N'Tinh dầu từ Nga')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([MaGioHang], [TenTaiKhoan]) VALUES (5, N'doanvu')
INSERT [dbo].[GioHang] ([MaGioHang], [TenTaiKhoan]) VALUES (6, N'doanvu')
INSERT [dbo].[GioHang] ([MaGioHang], [TenTaiKhoan]) VALUES (7, N'ngocnam')
SET IDENTITY_INSERT [dbo].[GioHang] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayDat], [TinhTrang], [PhiShip], [GhiChu], [DcNhanHang], [MaGioHang]) VALUES (1, CAST(N'2021-08-08T15:37:03.417' AS DateTime), N'Chờ xác nhận', 15000.0000, N'', N'Trực Ninh - Nam Định', 6)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayDat], [TinhTrang], [PhiShip], [GhiChu], [DcNhanHang], [MaGioHang]) VALUES (2, CAST(N'2021-08-08T15:39:41.000' AS DateTime), N'Đã hủy', 15000.0000, NULL, NULL, 7)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (3, 1, N'Đèn xông tinh dầu nến TN05', N'Xưởng Haly', 300, 100, CAST(75000 AS Decimal(18, 0)), N'Loại 1', N'Đèn nến đốt tinh dầu hình ấm trà TN05 được thiết kế rất độc đáo với hình ấm trà có họa tiết lá trúc và nắp đỏ. Mang đến sự lãng mạng, ấm áp, giúp ngôi nhà của bạn thêm đẹp và thơm hơn.', N'TN05.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (5, 1, N'Đèn xông tinh dầu nến TN07', N'Xưởng Haly', 500, 200, CAST(70000 AS Decimal(18, 0)), N'Loại 1', N'Đèn xông tinh dầu nến mặt ngố TN07 có thân đèn và miệng đèn được thiết kế như hình một khuôn mặt đang tròn mắt ngạc nhiên rất ngộ nghĩnh. Đèn có thân gắn liền với chén đèn và chứa được rất nhiều nước ở bên trên. Cùng Hương Sắc Việt tìm hiểu thêm về đèn xông này nhé.', N'TN07.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (6, 1, N'Đèn xông tinh dầu nến TN09', N'Xưởng Haly', 400, 50, CAST(70000 AS Decimal(18, 0)), N'Loại 2', N'Đèn nến đốt tinh dầu hình ấm trà TN09 được thiết kế rất độc đáo với hình gần giống với một chùa có họa tiết màu đen và nắp hình bát. Mang đến sự linh thiêng, ấm áp, giúp ngôi nhà của bạn thêm đẹp và thơm hơn.', N'TN09.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (7, 1, N'Đèn xông tinh dầu nến DN06', N'Xưởng Haly', 450, 100, CAST(80000 AS Decimal(18, 0)), N'Loại 1', N'Đèn xông tinh dầu nến DN06 có hình một chú voi màu trắng đang cõng trên lưng tòa lá sen. Khuôn mặt chú voi hạnh phúc tươi cười đến híp mắt, sản phẩm này có thể đem đến cho bạn niềm vui.', N'DN06.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (8, 1, N'Đèn xông tinh dầu nến DN05', N'Xưởng Haly', 360, 200, CAST(130000 AS Decimal(18, 0)), N'Loại 1', N'Đèn xông tinh dầu nến DN05 có hình trụ trắng với họa tiết các bông mai khắc trên thân. Khi ánh nến tỏa ra, những bông mai lấp lánh lung linh thật đẹp mắt.', N'DN05.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (9, 1, N'Đèn nến khung sắt chữ X DN01', N'Xưởng Haly', 300, 250, CAST(120000 AS Decimal(18, 0)), N'Loại 1', N'Đèn xông tinh dầu nến khung sắt chữ X DN01 được thiết kế với khung sắt uốn nghệ thuật xoắn vặn tạo hình chữ X. Đèn vừa có tác dụng xông tinh dầu vừa trang trí nội thất.', N'DN01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (10, 1, N'Đèn xông tinh dầu nến TN02', N'Xưởng Haly', 300, 135, CAST(60000 AS Decimal(18, 0)), N'Loại 1', N'Đèn xông tinh dầu nến chiếc lá TN02 mang hình dáng độc đáo với phần chén hình lá và thân đèn phình to ra. Đèn được thiết kế với chất liệu gốm bền đẹp, dẫn nhiệt tốt, nhiều màu sắc.', N'TN02.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (11, 2, N'Đèn tinh dầu gốm MINI TN34', N'Xưởng Haly', 500, 270, CAST(200000 AS Decimal(18, 0)), N'Loại 1', N'Đèn xông tinh dầu gốm mini TN34 có kích cỡ nhỏ gọn, tiết kiệm diện tích. Thân đèn là gốm màu nâu đất với họa tiết lá me. Khi bật đèn lên, ánh sáng tỏa ra từ những chiếc lá mang đến cảm giác lãng mạn và ấm áp.', N'TN34.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (12, 2, N'Đèn tinh dầu vẽ hoa sen bát trang BT10', N'Xưởng Haly', 500, 120, CAST(170000 AS Decimal(18, 0)), N'Loại 1', N'Đèn xông tinh dầu BT10 sứ thấu quang của Bát Tràng vẽ cảnh đầm Sen với những bông sen đang nở rộ. Đèn có thiết kế đẹp, tinh tế, thích hợp làm đồ trang trí và quà tặng.', N'BT10.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (13, 2, N'Đèn tinh dầu vẽ sông quê bát tràng BT07', N'Xưởng Haly', 500, 321, CAST(170000 AS Decimal(18, 0)), N'Loại 2', N'Đèn xông tinh dầu BT07 của Bát Tràng vẽ cảnh một góc con sông quê với con đò, bến nước. Đèn có thiết kế đẹp, tinh tế, thích hợp làm đồ trang trí và quà tặng.', N'BT07.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (14, 2, N'Đèn tinh dần vẽ sàng gạo bát tràng BT06', N'Xưởng Haly', 500, 100, CAST(170000 AS Decimal(18, 0)), N'Loại 1', N'Đèn tinh dầu Bát Tràng BT06 vẽ cảnh một người phụ nữ đang sàng gạo trong cảnh làng quê yên bình. Khung cảnh quê hương quen thuộc được vẽ lên thân đèn đem lại cảm giác gần gũi, ấm áp.', N'BT06.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (15, 1, N'Đèn tinh dầu mini TN41', N'Xưởng Haly', 420, 80, CAST(200000 AS Decimal(18, 0)), N'Loại 2', N'Đèn xông tinh dầu pha lê mini TN41 có màu sắc rực rỡ, bắt mắt với 2 mảng màu xanh lá và vàng. Kích cỡ mẫu đèn này nhỏ gọn nhưng xông tinh dầu rất tốt, tạo hương thơm nhanh.', N'TN41.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (16, 1, N'Đèn gốm đầu phật TN43', N'Xưởng Haly', 600, 20, CAST(250000 AS Decimal(18, 0)), N'Loại 1', N'Đèn xông tinh dầu gốm tượng Đầu Phật TN43 có thiết kế tinh tế, mang tính thẩm mỹ cao và có ý nghĩa tâm linh. Mẫu đèn này phù hợp với không gian trang trọng như phòng thờ, phòng khách, nhà hàng...', N'TN43.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (17, 1, N'Đèn xông tinh dầu gỗ TN19', N'Xưởng Haly', 1000, 50, CAST(235000 AS Decimal(18, 0)), N'Loại 1', N'Đèn xông tinh dầu gỗ vuông TN19 có khung bằng gỗ sơn đen, 4 mặt đèn dán da dê màu vàng và có họa tiết hoa hướng dương cách điệu. Đèn có tính thẩm mỹ cao, thích hợp làm vật trang trí và quà tặng.', N'TN19.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (18, 3, N'Tinh dầu oải hương Spike', N'Tinh dầu La Champa', 10, 100, CAST(120000 AS Decimal(18, 0)), N'Hương Hoa', N'Tinh dầu Oải Hương Spike (Lavandula latifolia) có xuất xứ từ vùng nam nước Pháp, ven Địa Trung Hải. Trong các loại tinh dầu Oải hương thì đây là loại có mùi hương được ưa chuộng và dễ chịu nhất.', N'spike.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (19, 3, N'Tinh dầu hoa sen trắng', N'Hương Sắc Việt', 10, 70, CAST(170000 AS Decimal(18, 0)), N'Hương Hoa', N'Tinh dầu hoa Sen trắng nguyên chất - White Lotus Essential Oil nhập khẩu Ấn Độ. Hương Hoa Sen mang đến một mùi thơm dìu dịu, nhẹ nhàng, thanh khiết, mát trong tựa hồ như đã thanh lọc cả bầu không khí xung quanh', N'sentrang.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (20, 3, N'Tinh dầu hoa hồng nguyên chất', N'Tinh dầu La Champa', 10, 80, CAST(380000 AS Decimal(18, 0)), N'Hương Hoa', N'Tinh dầu hoa hồng - Rose Essential Oil : được chiết xuất 100% từ hoa hồng Damask của Bulgary, có chất lượng và mùi thơm vượt trội so với các loại tinh dầu hoa hồng của Singapore hay Ấn độ.', N'hoahong.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (22, 4, N'Tinh dầu bưởi hồng', N'Tinh dầu La Champa', 10, 70, CAST(90000 AS Decimal(18, 0)), N'Hương Trái Cây', N'Tinh dầu Bưởi Hồng (Grapefruit) có mùi hương ngọt ngào, thơm mát tựa như hỗn hợp giữa Cam và Nho. Hương thơm từ tinh dầu bưởi hồng giúp giải tỏa căng thẳng, mệt mỏi, tiếp thêm năng lượng sống.', N'buoihong.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (23, 4, N'Tinh dầu cà phê', N'Hương Sắc Việt', 10, 200, CAST(100000 AS Decimal(18, 0)), N'Hương Từ Hạt', N'Tinh dầu Cà Phê - Coffee Oil được chiết xuất từ các hạt cà phê của cây Arabica Arabella. Hương thơm của tinh dầu cà phê giúp tinh thần tỉnh táo, giảm căng thẳng , lo lắng và trầm cảm.', N'caphe.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (24, 4, N'Tinh dầu vỏ quýt tinh chất', N'Tinh dầu La Champa', 10, 100, CAST(90000 AS Decimal(18, 0)), N'Hương Trái Cây', N'Tinh dầu Quýt - Mandarin oil có mùi hương ngọt ngào, rất được yêu thích bởi cả trẻ em và người lớn. giúp làm giảm căng thẳng, thường được dùng trước khi đi ngủ để thư giãn và ngủ ngon.', N'voquyt.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (27, 1, N'Tinh dầu cá', N'Xưởng HN', 300, 200, CAST(170000 AS Decimal(18, 0)), N'Loại 2', N'Tinh dầu được chiết xuất từ các loài cá nước mặn và nước ngọt, dù vậy nhưng không mang mùi tanh của cá, công nghệ lọc mùi xóa bỏ hoàn toàn axit amin, tạo cảm giác dễ chịu ', N'tinhdauca.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [NhaSX], [TrongLuong], [SoLuongTon], [Gia], [ChatLuong], [MoTa], [Anh]) VALUES (28, 1, N'Tinh dầu lúa mạch từ Nga', N'Xưởng Haly', 110, 150, CAST(280000 AS Decimal(18, 0)), N'Loại 1', N'Tinh dầu lúa mạch được sản xuất từ Nga với những  công nghệ tiên tiến nhất hiện nay. Với lượng tinh dầu chiết xuất từ hàm lượng lúa mạch lên đến 30% khối lượng, đây có thể coi là niềm tự hào của công nghệ đi đầu thế giới.', N'luamach.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Quyen], [TinhTrang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi]) VALUES (N'admin', N'admin', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Quyen], [TinhTrang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi]) VALUES (N'doan', N'12345', 1, 1, N'Người quản trị', N'quantrivien@gmail.com', N'0378951234', N'Hà Nội')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Quyen], [TinhTrang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi]) VALUES (N'doan123', N'12345', 0, 1, N'doan123', N'doan123@gmail.com', N'0983419342', N'Nam Định')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Quyen], [TinhTrang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi]) VALUES (N'doan2', N'12345', 0, 1, N'Doan Vũ', N'doan@gmail.com', N'09999123421', N'Nam Định')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Quyen], [TinhTrang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi]) VALUES (N'doannv', N'12345', 2, 1, N'Người quản trị', N'quantrivien@gmail.com', N'0378951234', N'Hà Nội')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Quyen], [TinhTrang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi]) VALUES (N'doanvu', N'doan12345', 0, 1, N'Vũ Văn Doan', N'doanhit1@gmail.com', N'0987328540', N'Trực Ninh - Nam Định')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Quyen], [TinhTrang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi]) VALUES (N'hoang', N'admin', 1, 0, N'Người quản trị', N'quantrivien@gmail.com', N'0378951234', N'Hà Nội')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Quyen], [TinhTrang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi]) VALUES (N'ngocnam', N'nam12345', 0, 1, N'Nguyễn Ngọc Nam1', N'ngocnam2k@gmail.com', N'0955213512', N'Mê Linh - Hà Nội')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [Quyen], [TinhTrang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi]) VALUES (N'ngocnam1', N'12345', 0, 0, N'Nguyễn Ngọc Nam', N'namnguyen2k@gnamil.com', N'0992316236', N'Mê Linh - Hà Nội')
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
