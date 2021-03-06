USE [TS_STORE]
GO
/****** Object:  ForeignKey [FK__Cart__AccountID__173876EA]    Script Date: 03/23/2022 21:42:02 ******/
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK__Cart__AccountID__173876EA]
GO
/****** Object:  ForeignKey [FK__Cart__ProductID__1B0907CE]    Script Date: 03/23/2022 21:42:02 ******/
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK__Cart__ProductID__1B0907CE]
GO
/****** Object:  ForeignKey [FK__product__cateID__1BFD2C07]    Script Date: 03/23/2022 21:42:02 ******/
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__cateID__1BFD2C07]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 03/23/2022 21:42:02 ******/
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK__Cart__AccountID__173876EA]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK__Cart__ProductID__1B0907CE]
GO
DROP TABLE [dbo].[Cart]
GO
/****** Object:  Table [dbo].[product]    Script Date: 03/23/2022 21:42:02 ******/
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__cateID__1BFD2C07]
GO
DROP TABLE [dbo].[product]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/23/2022 21:42:02 ******/
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/23/2022 21:42:02 ******/
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/23/2022 21:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Sang', N'080301', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 03/23/2022 21:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'NHẪN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'LẮC TAY')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'DÂY CHUYỀN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'HOA TAI')
/****** Object:  Table [dbo].[product]    Script Date: 03/23/2022 21:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
	[suplier] [varchar](50) NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (2, N'Nhẫn Nam Thời Trang Đính Đá Lấp Lánh DRING Kuu Clothes Màu Bạc Cá Tính Hàn Quốc - Nhẫn Nam Đẹp Chất Liệu Titan', N'https://cf.shopee.vn/file/6884f72495c37988b99b701f04a48686', 150.0000, N'Nhẫn Nam Đính Đá ', N' Kiểu dáng thiết kế với hai hàng kim cương giả và làm bằng thép titan,
chiếc nhẫn sáng bóng cho làm món quà tốt nhất để giúp giữ mãi mối quan hệ của bạn', 1, 2, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (3, N'Nhẫn Nam Titan Đo Nhiệt Độ Cơ Thể, Nhẫn Nữ Titan Đo Nhiệt Độ Cơ Thể', N'https://cf.shopee.vn/file/797688c02ed16e3ef0cddbb7e2262d25', 120.0000, N'Nhẫn Nam Titan Đo Nhiệt Độ ', N' Nhẫn Cảm Biến Nhiệt Độ Cơ Thể thiết kế trên chất liệu Titanium Steel siêu bền,
vòng hiển thị nhiệt độ bằng độ C, có khả năng chống oxy hóa, rỉ sét và chống ăn mòn cao, vòng cung bên trong trơn, thoải mái khi đeo và không gây dị ứng, thân thiện với da.', 1, 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (4, N'Nhẫn bạc nữ cá tính KYDOPAL đính đá cao cấp siêu sang thời trang sức bạc Ý 925 - 9N20', N'https://cf.shopee.vn/file/47b7de1ff2f2f7dea2c46f33e812c754', 130.0000, N'Nhẫn đính kim cương ', N' Titan hay titani là một kim loại chuyển tiếp có màu trắng bạc, tỉ trọng thấp và độ bền cao. 
Titan không bị ăn mòn trong nước biển, nước cường toan và clo.Titan là kim loại nhẹ, cứng nhất trong hầu như các kim loại, bề mặt bóng láng, chống ăn mòn tốt (giống như platin). Nó có thể chống ăn mòn kể cả với axít, khí clo và với các dung dịch muối thông thường', 1, 4, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (5, N'Vòng đeo tay nam nữ mạ bạc sáng bóng, chất liệu thép titan siêu bền không gỉ', N'https://cf.shopee.vn/file/9a3a6e3cd8fb7d91cfe3ce5ea5b91bb2', 140.0000, N'Vòng Tay Thép Titan', N' Mặc dù trông rất đơn giản nhưng sản phẩm mang một phong cách rất cổ điển. Có hai màu thép bạc và đen. 
Cá nhân chúng tôi khuyên bạn nên chọn màu thép bạc, màu này thực sự phối đẹp với quần áo. Vòng tay được nhiều sinh viên và những bạn trẻ yêu thích, và chúng tôi hy vọng bạn cũng thích. Có nhiều sản phẩm hơn trong cửa hàng, chào mừng bạn đến mua', 1, 1, N'ttttt')
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (6, N'VÒNG TAY CUBAN MẠ BẠC 925 SIÊU LẤP LÁNH, Đính đá Zircon AAA+', N'https://cf.shopee.vn/file/9e7cc6e016c8f14ef59e37ee7dfe363d', 110.0000, N'Vòng Tay Cuban ', N' Vòng tay Cuban March Jewels.Kích thước vòng cuban 15mm mang một phong cách thiết kế cá tính, hip hop 
mạ vàng 18k đính đá zircon tự nhiên chi tiết, tinh xảo ', 2, 2, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (7, N'Vòng Tay Daniel Wellington Classic Cuff V1 DW Chính Hãng - OtisWatch', N'https://cf.shopee.vn/file/9cbb711d0f0d9690a06a87b738101f3e', 160.0000, N'Vòng Tay Cuff DW ', N' Có 3 màu: rose gold, silver, gold
2 size: S (cổ tay dưới 15.5cm), L (cổ tay dưới 18cm) gồm 1 vòng tay, no box dễ phối với mọi loại quần áo, có thể mua làm quà tặng cho gia đình, người yêu hoặc đeo cùng hội bạn thân đều rất đẹp và ý nghĩa ', 2, 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (8, N'Lắc tay bạc nữ cỏ 4 lá may mắn LTN0092 - Trang Sức TSG', N'https://cf.shopee.vn/file/a18135d679f0f601657ace4ae24d20d3', 150.0000, N'Vòng tay nữ, lắc tay gold bar De Coco', N' Vòng tay nữ màu vàng gold rất sáng và dày dặn. 
Vòng tay nữ De Coco là hàng loại 1 cao cấp, không bị xỉn màu hay đứt gãy như các dòng giá rẻ phổ thông khác', 2, 4, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (9, N'Vòng Cổ Nam Nữ Dây Chuyền Cuban Basic Chuỗi Trơn Bản Lớn HipHop Thời Trang Kuu Clothes Màu Bạc Đẹp Chất Liệu Titan', N'https://cf.shopee.vn/file/174eb531a156574b101ea99a681f06d8', 140.0000, N'Dây Chuyền Nam Xoắn Trơn', N' Dây Chuyền Nam Xoắn Trơn HipHop Thời Trang Nam Kuu Clothes Màu Bạc Đồng Đẹp - Vòng Cổ Titan - Vòng Cổ Xoắn Trơn', 3, 1, N'sang1')
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (10, N'Vòng Cổ Cuban Basic 12mm Đính Đá Kim Cương Zircon Thép Không Gỉ', N'https://cf.shopee.vn/file/898cc66d56662a87a5adcd6efd83e74e', 140.0000, N'Vòng Cổ Cuban Basic ', N' Vòng tay nữ màu vàng gold rất sáng và dày dặn. 
Vòng tay nữ De Coco là hàng loại 1 cao cấp, không bị xỉn màu hay đứt gãy như các dòng giá rẻ phổ thông khác', 3, 2, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (11, N'Vòng Cổ Nam Chuỗi Trơn Cuban Basic Thời Trang TSG ACCESSORY Phong Cách Ngầu Hiphop Chất Liệu Titan Đẹp Không Gỉ', N'https://cf.shopee.vn/file/c385683bcb2fa2e5bef09d1798d0cf31', 130.0000, N'Vòng Cổ Mắt Xích Snake 4mm - 14mm Thép Titan Hàn Quốc Chống Han Gỉ', N' Là một kim loại titan mới gần đây đã xuất hiện trong ngành công nghiệp trang sức. 
Trên thực tế, nó là một thuật ngữ dùng để chỉ một loại thép không gỉ chiều dài vòng cổ: 50cm chiều rộng mắc xích: 12mm', 3, 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (12, N'Vòng cổ nữ bạc 925 đẹp đính đá DCN0268 - Trang Sức TSG', N'https://cf.shopee.vn/file/326310fcfb30fbf2d25db20c0222a950', 160.0000, N'Vòng cổ nữ bạc', N' Thiết kế mặt ngôi sao đính đá mang lại vẻ đẹp cuốn hút và nổi bật cho người đeo 
dây chuyền nữ bạc mặt ngôi sao là món quà tặng ý nghĩa cho gia đình, người thân và bạn bè trong các dịp lễ, sinh nhật', 3, 4, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (13, N'XiaoboACC 1 Chiếc Bông Tai Khoen Tròn Bằng Thép Titan Không Gây Dị Ứng Phong Cách Hàn Quốc', N'https://cf.shopee.vn/file/620492307efe5962fac13573168d9636', 90.0000, N'Khuyên tai nam G-dragon ', N' Khuyên tai dành cho Nam, phong cách Idol Hàn Quốc cá tính
chất liệu Titan- hợp kim cao cấp chống gỉ cảm giác thoải mái không gây dị ứng phong cách trẻ trung, thời thượng', 4, 1, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (14, N'Bông tai Barbell Hiphop Rock hình quả tạ (1 chiếc) - TSG ACCESSORY', N'https://cf.shopee.vn/file/380dc094f0be07be881a8029b46c30da', 80.0000, N'Bông tai Barbell ', N'  Bông tai Barbell Hiphop Rock hình quả tạ được thiết kế như 1 chiếc cúc áo màu đen, bạc giúp bạn dễ dàng phối đồ cá tính
chất liệu Titan không gỉ, không kích ứng dễ dàng tháo rời hai đầu khi đeo', 4, 2, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (15, N'Bông tai nữ ngọc trai nhân tạo đính đá TSG ACCESSORY chuôi bạc 925 kiểu Hàn Quốc phụ kiện trang sức thời trang đẹp', N'https://cf.shopee.vn/file/c4e2aeb54aca5851fe3815c6d2fff61c', 100.0000, N'Bông tai nữ ngọc trai ', N' Với mẫu mã đa dạng, kiểu dáng theo phong cách bông tai Hàn Quốc
dễ dàng để các bạn lựa chọn trong các dịp đi sinh nhật, sự kiện, hoặc là các món quà tặng ý nghĩa cho những dịp đặc biệt dành tặng người thân, bạn bè, đối tác.', 4, 3, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (16, N'Bông Tai Bạc Hanada Đá CZ 6A Chuẩn 120 6 Chấu Lát Cắt Siêu Lấp Lánh Không mờ Khuyên Nụ Trắng Đơn Giản', N'https://cf.shopee.vn/file/0439bbb0bf5d0b09c8e1ae12fd0e3a64', 110.0000, N'Bông tai nữ ngọc HANADA', N' Bông Tai Bạc Hanada  Đá CZ 6A Chuẩn 120 6 Chấu  Lát Cắt Siêu Lấp Lánh Không mờ Khuyên Nụ Trắng Đơn Giản
 Tặng túi zip kín khí bảo quản bạc đầy đủ giấy hướng dẫn sử dụng và bảo quản trong mỗi sản phẩm', 4, 4, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [suplier]) VALUES (22, N'Chú Bé Đần', N'https://cf.shopee.vn/file/8f0cb4fc95342388e5ff8250fe3af824', 200.0000, N'sadd', N'sdad', 1, 1, N'tttt')
SET IDENTITY_INSERT [dbo].[product] OFF
/****** Object:  Table [dbo].[Cart]    Script Date: 03/23/2022 21:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__Cart__AccountID__173876EA]    Script Date: 03/23/2022 21:42:02 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
/****** Object:  ForeignKey [FK__Cart__ProductID__1B0907CE]    Script Date: 03/23/2022 21:42:02 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[product] ([id])
GO
/****** Object:  ForeignKey [FK__product__cateID__1BFD2C07]    Script Date: 03/23/2022 21:42:02 ******/
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
