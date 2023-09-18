﻿
  
USE SQL_BAITAP05_06
GO
/****** Object:  Table [dbo].[Ketqua]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ketqua](
	[MaSV] [nvarchar](3) NOT NULL,
	[MaMH] [nvarchar](2) NOT NULL,
	[Diem] [real] NULL,
 CONSTRAINT [Prk_MaSV_MAMH] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKH] [nvarchar](2) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
 CONSTRAINT [Prk_KHOA_khoa] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](2) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[Sotiet] [tinyint] NULL,
 CONSTRAINT [Prk_MONHOC_MaMH] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](3) NOT NULL,
	[HoSV] [nvarchar](15) NOT NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[NoiSinh] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](2) NOT NULL,
	[HocBong] [float] NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [Prk_SINHVIEN_MaSV] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'03', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'04', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'05', 3.9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'01', 4.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'05', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'08', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'01', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'02', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'03', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'04', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'08', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'01', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'04', 4)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'04', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'08', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'01', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'03', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'04', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'05', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'06', 6)
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'AV', N'Anh Văn')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'DT', N'Điện tử')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TH', N'Tin học')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TR', N'Triết')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'01', N'Cơ sở dữ liệu', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'02', N'Trí tuệ nhân tạo', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'03', N'Toán rời rạc ứng dụng', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'04', N'Đồ họa ứng dụng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'05', N'Tiếng Anh cơ bản', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'06', N'Tin học văn phòng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'07', N'Pháp luật đại cương', 30)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'08', N'Anh chuyên Ngành', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'09', N'PTTK Hệ thống', 60)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A01', N'Nguyễn Thị', N'Vân', 0, CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 130000, 5.1800000190734865)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A02', N'Trần Văn', N'Chính', 0, CAST(N'1994-12-20T00:00:00' AS SmallDateTime), N'Bình Định', N'TH', 150000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', 1, CAST(N'1993-02-21T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A04', N'Trần Anh', N'Tuấn', 0, CAST(N'1987-12-20T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A10', N'Trần Thị', N'Mai', 1, CAST(N'1994-10-04T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A11', N'Nguyễn Thành', N'Nam', 0, CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Cà Mau', N'AV', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A12', N'Nguyễn Quang', N'Quyền', 0, CAST(N'2001-01-01T00:00:00' AS SmallDateTime), N'Đồng Nai', N'DT', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B01', N'Hoàng Thanh', N'Mai', 1, CAST(N'1992-08-12T00:00:00' AS SmallDateTime), N'Hải Phòng', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', 1, CAST(N'1990-01-02T00:00:00' AS SmallDateTime), N'Tp. HCM', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B03', N'Đố Văn', N'Lâm', 0, CAST(N'1994-02-26T00:00:00' AS SmallDateTime), N'Bình Định', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B04', N'Bùi Kim', N'Dung', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hµ Néi', N'TH', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C01', N'Hà Quang', N'Anh', 0, CAST(N'1985-03-11T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C03', N'Lê Quang', N'Lưu', 0, CAST(N'1985-02-23T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T03', N'Hoàng Thị Hải', N'Yến', 1, CAST(N'1989-09-10T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T06', N'Nguyễn Văn', N'Thắng', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 1500000, NULL)
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [Def_SINHVIEN_HocBong]  DEFAULT ((0)) FOR [HocBong]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Makh] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Makh]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Mamh] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Mamh]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [Frk_SINHVIEN_Makh] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khoa] ([MaKH])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [Frk_SINHVIEN_Makh]
GO


SELECT * FROM sys.all_columns
GO
SELECT * FROM sys.all_objects
GO
SELECT * FROM sys.all_views
GO
--BÀI TẬP LAB05 
--1.Liệt kê các sinh viên có học bổng lớn hơn 100,000 và ở Tp HCM, gồm các thông tin : họ tên sinh viên ,
-- mã khoa , nơi sinh , học bổng
CREATE VIEW vw_SVHB
WITH ENCRYPTION 
AS
 SELECT        dbo.SinhVien.HoSV, dbo.SinhVien.TenSV, dbo.SinhVien.NoiSinh, dbo.SinhVien.HocBong, dbo.Khoa.MaKH
FROM            dbo.SinhVien INNER JOIN
                         dbo.Khoa ON dbo.SinhVien.MaKH = dbo.Khoa.MaKH
WHERE        (dbo.SinhVien.HocBong > 100) AND
                         (dbo.SinhVien.NoiSinh = 'Tp HCM')
GO

SELECT * FROM vw_SVHB
GO
--2.Danh sách các sinh viên của khoa Anh Văn và khoa Triết , gồm các thông tin :Mã sinh viên ,Mã khoa , phái 
CREATE VIEW vw_KHOAS
WITH ENCRYPTION 
AS 
    SELECT        dbo.Khoa.MaKH, dbo.SinhVien.MaSV, dbo.SinhVien.Phai
    FROM            dbo.SinhVien INNER JOIN
                         dbo.Khoa ON dbo.SinhVien.MaKH = dbo.Khoa.MaKH
     WHERE        (dbo.SinhVien.MaKH = 'AV') OR
                         (dbo.SinhVien.MaKH = 'TR')
GO
SELECT * FROM vw_KHOAS
GO
--3.Cho biết nhưng sinh viên có ngày sinh từ ngày 01/01/1986 đến ngày 05/06/1992 ,gồm các thông tin:Mã sinh viên,Nơi sinh,Học bổng

CREATE VIEW vw_SVNgaySinh
WITH ENCRYPTION
AS 
  SELECT        MaSV, NgaySinh, NoiSinh, HocBong
   FROM            dbo.SinhVien
   WHERE        (NgaySinh BETWEEN '01/01/1986' AND '05/06/1994')
GO
SELECT *FROM vw_SVNgaySinh
GO

--4.Danh sách sinh viên có học bổng từ 130,000 đến 170,000 gồm các thông tin: Mã sv,Ngày sinh, Phái , Mã khoa
CREATE VIEW vw_SVHocBong
WITH ENCRYPTION 
AS
   SELECT        dbo.SinhVien.MaSV, dbo.SinhVien.NgaySinh, dbo.SinhVien.Phai, dbo.Khoa.MaKH
   FROM            dbo.SinhVien INNER JOIN
                         dbo.Khoa ON dbo.SinhVien.MaKH = dbo.Khoa.MaKH
   WHERE        (dbo.SinhVien.HocBong BETWEEN 130000 AND 170000)
GO
SELECT *FROM vw_SVHocBong
GO

--5. Cho biết những môn học có số tiết lớn hơn 40 và nhỏ hơn 60 , gồm các thông tin : Mã môn học , tên môn học , số tiết

CREATE VIEW vw_Sotiet
WITH ENCRYPTION 
AS 
   SELECT        MaMH, TenMH, Sotiet
   FROM            dbo.MonHoc
   WHERE        (Sotiet > 40) AND (Sotiet < 60)
GO
SELECT * FROM vw_Sotiet
GO

--6.Liệt kê những sinh viên nam của khoa anh văn ,gồm các thông tin : Mã sv, Họ tên sv,Phai 
CREATE VIEW vw_Sinhvienkhoa
WITH ENCRYPTION
AS 
    SELECT        MaSV, HoSV, TenSV, CASE WHEN Phai = 0 THEN N'Nam' END AS Phai 
    FROM            dbo.SinhVien
    WHERE        (MaKH = 'AV') AND (Phai =  N'Nam')
GO
SELECT * FROM vw_Sinhvienkhoa
GO

--7.Danh sách sinh viên có nơi sinh ở Hà Nội và ngày sinh sau ngày 01/01/1990, gồm các thông tin : Họ sinh viên, Tên sinh viên, Nơi sinh, Ngầy sinh

CREATE VIEW vw_SinhVNoiS
WITH ENCRYPTION 
AS
   SELECT        HoSV, TenSV, NgaySinh, NoiSinh
   FROM            dbo.SinhVien
   WHERE        (NgaySinh BETWEEN 01 / 01 / 1990 AND GETDATE()) AND (NoiSinh = N'Hà Nội')
GO
SELECT * FROM vw_SinhVNoiS
GO
--8.Liệt kê những sinh viên nữ , tên có chứa chữ M
CREATE VIEW vw_SINHVIENNU
WITH ENCRYPTION
AS  
     SELECT        HoSV + '' + TenSV AS N'Họ tên sv',MaSV , Phai
     FROM            dbo.SinhVien
     WHERE         (TenSV LIKE N'M%') 
GO
SELECT * FROM vw_SINHVIENNU
GO

--9.Danh sách các nam sinh viên khoa Tin học có ngày sinh sau ngày 30/5/1986
CREATE VIEW vw_sinhvientin
WITH ENCRYPTION 
AS
   SELECT        HoSV, TenSV, NgaySinh, CASE WHEN Phai = 0 THEN N'Nam' END AS Phai
    FROM            dbo.SinhVien
    WHERE        (NgaySinh BETWEEN 30 / 05 / 1986 AND GETDATE()) AND (MaKH = 'TH') AND (Phai = 0)
GO
SELECT * FROM vw_sinhvientin
GO

--10. Liệt kê danh sách sinh viên gồm các thông tin sau : họ và tên sv, giới tính , ngày sinh.
--Trong đó Giới tính hiển thị ở dạngNam/Nữ tuỳ theo giá trị của field Phai là True hay false 
CREATE VIEW vw_SINHVIENGT
WITH ENCRYPTION
AS
    SELECT HoSV+''+TenSV AS N'Họ tên SV',
       [Giới tính]=CASE WHEN Phai =0 THEN N'Nam' 
	                    WHEN Phai = 1 THEN N'Nữ'END 
       ,NgaySinh
     FROM SinhVIEN
GO
SELECT * FROM vw_SINHVIENGT
GO

--11.Cho biết danh sách sv gồm các thông tin sau : Mã sinh viên, Tuổi , Nơi sinh, Mã khoa.
--Trong đó Tuổ sẽ được tính bằng cách lấy năm hiện hành trừ cho năm sinh
CREATE VIEW vw_TUOISV
WITH ENCRYPTION 
AS
   SELECT MaSV,
       Tuoi =(YEAR(GETDATE())-YEAR(NgaySinh)),
	   NoiSinh,K.MaKH
    FROM Khoa AS K  INNER JOIN 
       SinhVien AS S ON K.MaKH = S.MaKH 
GO 
SELECT * FROM vw_TUOISV
GO 

--12.Danh sách những sinh viên có tuổi từ 20 đến 30 ,thông tin gồm: Họ tên sv,
--tuổi, tên khoa
CREATE VIEW vw_TuoiSVV
WITH ENCRYPTION 
AS 
     SELECT HoSV+''+TenSV AS N'Họ tên sinh viên','Tuổi'=(YEAR(GETDATE())-YEAR(NgaySinh)),K.TenKH AS N'Tên khoa'
     FROM SinhVien AS S INNER JOIN 
             Khoa AS K ON S.MaKH = K.MaKH
     WHERE (YEAR(GETDATE())-YEAR(NgaySinh)) BETWEEN 20 AND 30
GO
SELECT *FROM vw_TuoiSVV
GO
--13.Cho biết thông tin về mức hocj bổng của các sinh viên,gồm:Mã sv,Phai,Mã khoa ,Mức học bổng.
--trong đó ,mức học bổng sẽ hiển thị là " học bổng cao" nếu giá trị của field học bổng lớn hơn 500000 và
-- ngược lại hiển thị là'Mức trung bình'
CREATE VIEW vw_HOCBSV 
WITH ENCRYPTION 
AS
   SELECT MaSV, Phai,K.MaKH,'Mức học bổng' = CASE WHEN HocBong > 500000 THEN N'Học bổng cao'
                                        ELSE N'Mức trung bình'END 
    FROM SinhVien AS S INNER JOIN 
            Khoa AS K ON S.MaKH = K.MaKH
GO 
SELECT * FROM vw_HOCBSV
GO
--14. Danh sách sv của khoa Anh văn , điều kiện lọc phải sử dụng tên khoa, gồm các thông tin sau :
-- Họ tên sv, giới tính , tên khoa .Trong đó giớ tính sẽ hiển thị dạng Nam/nữ
CREATE VIEW vw_khoaSVV
WITH ENCRYPTION 
AS
   SELECT (SELECT  DISTINCT TenKH FROM Khoa WHERE TenKH='Anh văn')AS N'Tên khoa AV' ,HoSV+''+TenSV AS N'Họ tên sv',
      'Giới tính'= CASE WHEN Phai= 0 THEN N'Nam'
	               WHEN Phai=1 THEN N'Nữ' END , K.TenKH
   FROM SinhVien AS S INNER JOIN 
            Khoa  AS K ON S.MaKH = K.MaKH
   WHERE K.MaKH='AV'
GO
SELECT * FROM vw_khoaSVV
GO 


--15.Liệt kê bảng điểm của  sinh viên khoa tin học, gồm các thông tin:Tên khoa, họ tên sinh viên, tên môn học, số tiết, điểm
CREATE VIEW vw_DiemKhoa
WITH ENCRYPTION
AS
   SELECT TenKH ,HoSV+''+TenSV AS'Họ tên sv',TenMH ,Sotiet,Diem
   FROM SinhVien, Khoa, MonHoc,Ketqua
   WHERE Khoa.MaKH='TH'
GO 
SELECT * FROM vw_DiemKhoa
GO

--16.Kết quả học tập của sinh viên, gồm các thông tin: Họ sinh viên, mã khoa, tên môn học,điểm thi, loại.
--Trong đó loại sẽ là giỏi nếu điểm thi >8 , từ 6 đến 8 thì loại là khá, nhỏ hỏn 6 thì loại là trung bình
CREATE VIEW vw_XepLoai
WITH ENCRYPTION 
AS 
  SELECT HoSV+''+TenSV AS'Họ tên sv',Khoa.MaKH, TenMH,Diem,
       'Loại'= CASE WHEN Diem > 8 THEN N'Giỏi'
	                WHEN Diem BETWEEN 6 AND 8 THEN N'Khá'
					WHEN Diem<6 THEN N'Trung bình'
				END
  FROM SinhVien, Khoa, Ketqua ,MonHoc 
GO
SELECT *FROM  vw_XepLoai
GO 
--17. Cho biết học bổng cao nhất của từng khoa , gồm mã khoa, tên khoa,học bổng cao nhất 
CREATE VIEW vw_HocBongKHOA
WITH ENCRYPTION 
AS 
   SELECT Khoa.MaKH,Khoa.TenKH ,(SELECT  TOP 1 HocBong  FROM Khoa)AS 'Học bổng'
   FROM Khoa, SinhVien 
GO
SELECT * FROM vw_HocBongKHOA
GO

--18.Thống kê số sinh viên học của từng môn , thông tin có:mã môn, tên môn, số sinh viên đang học 
CREATE VIEW vw_SosvKhoa 
WITH ENCRYPTION 
AS 
   SELECT MonHoc.MaMH,MonHoc.TenMH,(SELECT COUNT(MaSV) FROM SinhVien WHERE MaKH = Khoa.MaKH) AS 'Số sinh viên'
   FROM MonHoc,Khoa 
GO 
SELECT * FROM vw_SosvKhoa
GO 

--19.Cho biết môn nào có điểm thi cao nhất,gồm các thông tin: Tên môn, Số tiết,tên sinh viên, điểm 
CREATE VIEW vw_Diemsv
WITH ENCRYPTION 
AS
   SELECT TenMH,Sotiet,TenSV,MAX(Diem)AS 'Điểm'
   FROM MonHoc, SinhVien ,Ketqua 
   GROUP BY TenMH,Sotiet,TenSV
GO 
SELECT * FROM vw_Diemsv
GO

--20.Cho biết khoa nào có đông sinh viên nhất , gồm mã khoa,tên khoa ,tổng số sv
CREATE VIEW vw_TongSV
WITH ENCRYPTION 
AS
    SELECT K.MaKH, K.TenKH , COUNT(MaSV) AS [Tổng sinh viên]
    FROM Khoa AS K,SinhVien  
    WHERE K.MaKH IN (SELECT DISTINCT MaKH FROM SinhVien)
	GROUP BY K.MaKH, K.TenKH
GO 
SELECT *FROM vw_TongSV
GO 
--21.Cho biết khoa nào có sinh viên lãnh học bổng cao nhất,gồm các thông tin sau: Tên khoa, Họ và tên sinh viên, học bổng
CREATE VIEW vw_HOCBONGCAO
WITH ENCRYPTION 
AS
    SELECT Khoa.TenKH,  HoSV+''+TenSV AS N'Họ tên sv' , (SELECT TOP 1 HocBong FROM SinhVien ORDER BY HocBong DESC)AS 'Học bổng cao'
    FROM SinhVien,Khoa   
    GROUP BY TenKH, HoSV+''+TenSV 
GO 
SELECT * FROM vw_HOCBONGCAO
GO 
 
 --22.Cho biết sinh viên của khoa Tin học có học bổng cao nhất , gồm các thông tin: Mã sinh viên,Họ sinh viên,
 --tên sinh viên, tên khoa, học bổng 
 CREATE VIEW vw_HOCBONGKHKOA 
 WITH ENCRYPTION 
 AS
     SELECT MaSV,HoSV, TenSV, TenKH,(SELECT TOP 1 HocBong FROM SinhVien ORDER BY HocBong DESC)AS 'Học bổng cao'
     FROM SinhVien,Khoa 
     WHERE Khoa.MaKH='TH'
 GO 
SELECT * FROM vw_HOCBONGKHKOA
GO 

--23.Cho biết sinh viên nào có điểm môn Cơ sơ dữ liệu lớn nhất, gồm thông tin: Họ sinh viên, Tên môn, Điểm 
CREATE VIEW vw_DIEMCAONHAT
WITH ENCRYPTION 
AS 
    SELECT        dbo.SinhVien.HoSV, dbo.MonHoc.TenMH,(SELECT TOP 1 Diem FROM Ketqua ORDER BY Diem DESC)AS 'Điểm' 
    FROM            dbo.SinhVien INNER JOIN
                         dbo.Ketqua ON dbo.SinhVien.MaSV = dbo.Ketqua.MaSV INNER JOIN
                         dbo.MonHoc ON dbo.Ketqua.MaMH = dbo.MonHoc.MaMH
    WHERE MonHoc.TenMH = N'Cơ sở dữ liệu'
GO 
SELECT *FROM vw_DIEMCAONHAT
GO 
--24.Cho biết 3 sinh viên có điểm thi môn đồ họa thấp nhất , thông tin: Họ tên sinh viên,tên khoa, tên môn, điểm
CREATE VIEW vw_DIEMMONHOC
WITH ENCRYPTION 
AS
    SELECT top 3 SinhVien.HoSV, SinhVien.TenSV, Khoa.TenKH, MonHoc.TenMH, Ketqua.Diem
    FROM     SinhVien INNER JOIN
                  Khoa ON SinhVien.MaKH = Khoa.MaKH INNER JOIN
                  Ketqua ON SinhVien.MaSV = Ketqua.MaSV INNER JOIN
                  MonHoc ON Ketqua.MaMH = MonHoc.MaMH
    where MonHoc.TenMH = N'Đồ họa ứng dụng'
    order by Ketqua.Diem DESC
go
SELECT *FROM vw_DIEMMONHOC
GO 
--25. Cho biết khoa nào có nhiều sinh viên nữ nhất ,gồm các thông tin:Mã khoa, tên khoa
create view vw_sinhviennukhoa
with encryption
as 
   SELECT top 1 with ties Khoa.MaKH, Khoa.TenKH,count(SinhVien.Phai) as[SoSinhVienNu]
   FROM     Khoa INNER JOIN
                  SinhVien ON Khoa.MaKH = SinhVien.MaKH
   where SinhVien.Phai = 1
   group by Khoa.MaKH, Khoa.TenKH
   order by count(SinhVien.Phai) desc
go
select *from vw_sinhviennukhoa
go 

--26.Thống kê sinh viên theo khoa, gồm các thông tin : mã khoa, tên khoa, tổng sinh viên , tổng sv nữ
create view vw_tongsinhviennu
with encryption 
as
   select  distinct K.MaKH,TenKH,
      [Tổng số sinh viên]=(select count(MaSV) from SinhVien where MaKH= K.MaKH),
      [Tổng sinh viên nữ]=(select count(MaSV) from SinhVien where MaKH= K.MaKH and Phai =1)
    from Khoa as K inner join 
          SinhVien as S on K.MaKH = S.MaKH
go 
select *from vw_tongsinhviennu
go
--27. Cho biết kết quả học tập của sinh viên , gồm họ tên sv,tên khoa , kết quả.
--Trong đó ,kết quả se là đậu nếu không có môn nào có điểm nhỏ hơn 4
CREATE VIEW vw_KETQUADIEM
WITH ENCRYPTION 
AS 
SELECT distinct SinhVien.HoSV, SinhVien.TenSV, Khoa.MaKH, Khoa.TenKH, MonHoc.TenMH, 
case
	when Ketqua.Diem > 4 then N'Đỗ'
	else N'Trượt'
end as[KETQUA]
FROM     Ketqua INNER JOIN
                  MonHoc ON Ketqua.MaMH = MonHoc.MaMH INNER JOIN
                  SinhVien ON Ketqua.MaSV = SinhVien.MaSV INNER JOIN
                  Khoa ON SinhVien.MaKH = Khoa.MaKH
where not  exists (select Ketqua.Diem from Ketqua where Ketqua.Diem <4 and Ketqua.MaSV = SinhVien.MaSV )
go
SELECT * FROM vw_KETQUADIEM
GO 
--28.Danh sách sinh viên không có môn nào nhỏ hơn 4 điểm gồm các thông tin: họ tên sv, tên khoa, phái
create view vw_diemmon
with encryption 
as
select distinct SinhVien.HoSV,SinhVien.TenSV,Khoa.TenKH,SinhVien.Phai 
FROM     Ketqua INNER JOIN
                  MonHoc ON Ketqua.MaMH = MonHoc.MaMH INNER JOIN
                  SinhVien ON Ketqua.MaSV = SinhVien.MaSV INNER JOIN
                  Khoa ON SinhVien.MaKH = Khoa.MaKH
where not  exists (select Ketqua.Diem from Ketqua where Ketqua.Diem <4 and Ketqua.MaSV = SinhVien.MaSV )
go
select *from vw_diemmon
go

--29.Cho biết danh sách những môn không có điểm thi nhỏ hơn 4 , gồm các thông tin :mã môn, tên môn
create view vw_monthi
with encryption
as
select MonHoc.MaMH,MonHoc.TenMH
FROM            SinhVien INNER JOIN
                         Khoa ON SinhVien.MaKH = Khoa.MaKH INNER JOIN
                         Ketqua ON SinhVien.MaSV = Ketqua.MaSV INNER JOIN
                         MonHoc ON Ketqua.MaMH = MonHoc.MaMH
where not exists (select Ketqua.Diem from Ketqua where Ketqua.Diem <4  and Ketqua.MaSV =SinhVien.MaSV )
go 
select * from vw_monthi
go 

--30.Cho biết những khoa không có sinh viên rớt, sinh viên rớt nếu điểm thi của môn nhỏ hơn 5, gồm các thông tin : mã khoa, tên khoa
Create view vw_ketquadiem
With encryption 
As
    select Khoa.MaKH,Khoa.TenKH,case when Ketqua.Diem<5 then N'Rớt'
                            else N'Đậu'end
     FROM            SinhVien INNER JOIN
                         Khoa ON SinhVien.MaKH = Khoa.MaKH INNER JOIN
                         Ketqua ON SinhVien.MaSV = Ketqua.MaSV INNER JOIN
                         MonHoc ON Ketqua.MaMH = MonHoc.MaMH 
      where not exists (select Ketqua.Diem from Ketqua where Ketqua.Diem<5 and Ketqua.MaSV=SinhVien.MaSV)
go 
Select * vw_ketquadiem 
go
--31.Thống kê số sinh viên đậu và số sinh viên rớt của từng môn, biết ràng sinh viên rớt khi điểm của môn 
--nhỏ hơn 5, gồm có:mã môn, tên môn, số sinh viên đậu,số sinh viên rớt
CREATE VIEW vw_TONGSINHVIEN
WITH ENCRYPTION 
AS
select distinct MonHoc.TenMH, MonHoc.MaMH,
      sum(case when Ketqua.Diem> 5 then 0
	             when Ketqua.Diem< 5 then 1 end) as [Sinh viên đậu],
	  sum(case when Ketqua.Diem< 5 then 0
	              when Ketqua.Diem> 5 then 1 end)as[Sinh viên rớt] 
FROM            SinhVien INNER JOIN
                         Ketqua ON SinhVien.MaSV = Ketqua.MaSV INNER JOIN
                         MonHoc ON Ketqua.MaMH = MonHoc.MaMH
group by MonHoc.TenMH, MonHoc.MaMH
go

SELECT *FROM vw_TONGSINHVIEN
GO 
--32.Cho biết môn nào khôngcos sinh viên rớt, gồm có:mã môn,tên môn
create view vw_thongkesv 
with encryption 
as
select distinct MonHoc.TenMH, MonHoc.MaMH,CASE WHEN  Ketqua.Diem> 5 THEN N'Sinh viên đậu'
                                         ELSE N'Sinh viên rớt' END AS 'Thống kê sv'
FROM            SinhVien INNER JOIN
                         Ketqua ON SinhVien.MaSV = Ketqua.MaSV INNER JOIN
                         MonHoc ON Ketqua.MaMH = MonHoc.MaMH
WHERE NOT EXISTS (SELECT Ketqua.Diem FROM Ketqua WHERE MaSV=SinhVien.MaSV AND Ketqua.Diem< 5 ) 
go
select *from vw_thongkesv
go 

--33.Danh sách sinh viên không có môn nào rớt, thông tin gồm: Mã sinh viên,Họ tên, mã khoa 
CREATE VIEW vw_THONGTINSINHVIEN
WITH ENCRYPTION 
AS 
select DISTINCT SinhVien.MaSV,SinhVien.HoSV,SinHVien.TenSV,Khoa.MaKH ,CASE WHEN  Ketqua.Diem> 5 THEN N'Sinh viên đậu'
                                         ELSE N'Sinh viên rớt' END AS 'Thống kê sv'
FROM            SinhVien INNER JOIN
                         Khoa ON SinhVien.MaKH = Khoa.MaKH INNER JOIN
                         Ketqua ON SinhVien.MaSV = Ketqua.MaSV INNER JOIN
                         MonHoc ON Ketqua.MaMH = MonHoc.MaMH 
WHERE NOT EXISTS (SELECT Ketqua.Diem FROM Ketqua WHERE MaMH=MonHoc.MaMH AND Ketqua.Diem< 5 ) 
go
SELECT * FROM vw_THONGTINSINHVIEN
GO 

--34. Danh sách các sinh viên rớt trên 2 môn , gồm mã sinh viên, họ sv,tên sv,mã khoa 
select SinhVien.MaSV,SinhVien.HoSV,SinhVien.TenSV,Khoa.MaKH 
FROM     Ketqua INNER JOIN
                  MonHoc ON Ketqua.MaMH = MonHoc.MaMH INNER JOIN
                  SinhVien ON Ketqua.MaSV = SinhVien.MaSV INNER JOIN
                  Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY SinhVien.MaSV,SinhVien.HoSV,SinhVien.TenSV,Khoa.MaKH 
HAVING SUM( CASE WHEN Ketqua.Diem > 5 THEN 0 
		         WHEN Ketqua.Diem < 5 THEN 1 END)>=2
GO
--35.Cho biết danh sách những khoa có nhiều hơn 10 sinh viên, gồm :mã khoa, tên khoa, tổng sinh viên khoa
CREATE  VIEW vw_TONGSINHVIENKHOA 
WITH ENCRYPTION
AS
select Khoa.MaKH,Khoa.TenKH,COUNT(SinhVien.MaSV)AS [Tổng sinh viên khoa]
FROM  Ketqua INNER JOIN
                         MonHoc ON Ketqua.MaMH = MonHoc.MaMH INNER JOIN
                         SinhVien ON Ketqua.MaSV = SinhVien.MaSV INNER JOIN
                         Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY Khoa.MaKH,Khoa.TenKH
HAVING COUNT(SinhVien.MaSV)>10
GO 
SELECT * FROM vw_TONGSINHVIENKHOA
GO 
--36.Danh sách những sinh viên thi nhiều hơn 4 môn , gồm có:mã sv,họ tên sv,số môn thi
CREATE VIEW vw_SOMONTHI 
WITH ENCRYPTION 
AS 
select SinhVien.MaSV,SinhVien.HoSV,SinhVien.TenSV ,COUNT(MonHoc.MaMH)AS [SỐ MÔN THI]
FROM Ketqua INNER JOIN
                         MonHoc ON Ketqua.MaMH = MonHoc.MaMH INNER JOIN
                         SinhVien ON Ketqua.MaSV = SinhVien.MaSV INNER JOIN
                         Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY SinhVien.MaSV,SinhVien.HoSV,SinhVien.TenSV
HAVING COUNT(MonHoc.MaMH)>4
GO
SELECT *FROM vw_SOMONTHI
GO 
--37.Cho biết khoa có 5 sinh viên trở lên , thông tin gồm có:mã khoa, tên khoa, tổng số sinh viên nam
CREATE VIEW vw_TONGSVNAM
WITH ENCRYPTION
AS
SELECT Khoa.MaKH,Khoa.TenKH,SUM(CASE WHEN SinhVien.Phai=0 THEN 1 ELSE 0 END)AS [TỔNG SỐ SINH VIÊN Nam]
FROM Ketqua INNER JOIN
                         MonHoc ON Ketqua.MaMH = MonHoc.MaMH INNER JOIN
                         SinhVien ON Ketqua.MaSV = SinhVien.MaSV INNER JOIN
                         Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY Khoa.MaKH,Khoa.TenKH
HAVING SUM(CASE WHEN SinhVien.Phai=0 THEN 1 ELSE 0 END)>5
GO 
SELECT * FROM vw_TONGSVNAM
GO 
--38.Danh sách những sinh viên có trung bình điểm thi lớn hơn 4, gồm các thông tin sau: họ tên sv,tên khoa, phái, điểm trung bình các môn
CREATE VIEW vw_TRUNGBINHDIEM
WITH ENCRYPTION 
AS 
SELECT SinhVien.HoSV,SinhVien.TenSV,SinhVien.Phai,AVG(Ketqua.Diem)AS[Điểm trung bình]
FROM Ketqua INNER JOIN
                         MonHoc ON Ketqua.MaMH = MonHoc.MaMH INNER JOIN
                         SinhVien ON Ketqua.MaSV = SinhVien.MaSV INNER JOIN
                         Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY SinhVien.HoSV,SinhVien.TenSV,SinhVien.Phai
HAVING AVG(Ketqua.Diem)>4
GO 
SELECT * FROM vw_TRUNGBINHDIEM
GO 
--39. Cho biết trung bình điểm thi của từng môn , chỉ lấy môn nào có trung bình điểm thi lớn hơn 6, thông tin gồm 
--có: mã môn,tên môn, trung bình điểm
CREATE VIEW vw_TRUNGBINHDIEMTHI
WITH ENCRYPTION 
AS 
SELECT MonHoc.MaMH,MonHoc.TenMH,AVG(Ketqua.Diem)AS [Trung bình điểm]
FROM Ketqua INNER JOIN
                         MonHoc ON Ketqua.MaMH = MonHoc.MaMH INNER JOIN
                         SinhVien ON Ketqua.MaSV = SinhVien.MaSV INNER JOIN
                         Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY MonHoc.MaMH,MonHoc.TenMH
HAVING AVG(Ketqua.Diem)>6
GO 
SELECT * FROM vw_TRUNGBINHDIEMTHI
GO 


























































