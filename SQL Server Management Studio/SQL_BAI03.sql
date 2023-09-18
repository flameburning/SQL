--Tạo CSDL / tạo cấu trúc bảng với các ràng buộc-------(PHẦN TIẾP CỦA BÀI SQL_BAI02)
--1. Tạo CSDL
CREATE TABLE SQL_BAI03
GO
--SỬ DỤNG CSDL 
USE SQL_BAI03
GO 
--2.TẠO CẤU TRÚC BẢNG VỚI CÁC RÀNG BUỘC
--RÀNG BUỘC DUY NHẤT: PRIMARY KEY, UNIQUE,IDENTITY(thuộc tính)
--RÀNG BUỘC MIỀN GIÁ TRỊ :DATATYPE / CHECK
--RÀNG BUỘC DEFAULT : giá trị mặc định trên cột 
--RÀNG BUỘC THAM CHIẾU: FORIEGN KEY 
--RÀNG BUỘC (thuộc tính) : NULL / NOT NULL 

--2.1: Tạo bảng với các ràng buộc duy nhất (praimary key, unique,identity)
/*CREATE TABLE <table name>
(
  <tencot> <kieu du lieu>[RÀNG BUỘC]
  [,...]
)
GO
CREATE TABLE <table name>
(
  <tencot> <kieu du lieu>
  [,...]
  [,ràng buộc dữ liệu]
)
GO
*/
--vd: TẠO BẢNG VATTU(MaVTu, TenVTu , DvTinh, PhanTram)
--PRIMARY KEY (PK):PK[MaVTu]
CREATE TABLE VATTU(
   MaVTu char(4) PRIMARY KEY ,
   TenVTu nvarchar(50),
   DvTinh nvarchar(20),
   PhanTram real
)
GO
DROP TABLE VATTU
GO 
--PRIMARY KEY 
CREATE TABLE VATTU(
   MaVTu char(4) CONSTRAINT PK_VATTU PRIMARY KEY ,
   TenVTu nvarchar(50),
   DvTinh nvarchar(20),
   PhanTram real
)
GO

--UNIQUE
DROP TABLE VATTU
GO 
CREATE TABLE VATTU(
   MaVTu char(4) CONSTRAINT PK_VATTU PRIMARY KEY ,
   TenVTu nvarchar(50) CONSTRAINT UQ_VATTU_TenVTu UNIQUE,
   DvTinh nvarchar(20),
   PhanTram real
)
GO


DROP TABLE VATTU
GO 
CREATE TABLE VATTU(
   MaVTu char(4),
   TenVTu nvarchar(50),
   DvTinh nvarchar(20),
   PhanTram real
   --Tạo các ràng buộc 
   ,CONSTRAINT PK_VATTU PRIMARY KEY(MaVTu),
    CONSTRAINT UQ_VATTU_TenVTu UNIQUE(TenVTu)
)
GO

--Khóa chính (primary key); duy nhất (unique) được tạo trên 2 cột 
/*
SoDh char 4 NOT NULL Số đơn đặt hàng
MaVTu char 4 NOT NULL Mã vật tư
SlDat int NOT NULL, SlDat > 0 Số lượng đặt 
*/
--pk[SoDh,MaVTu]
/*
CREATE TABLE CTDONDH(
SoDH char(4) PRIMARY KEY,
MaVTu char(4) PRIMARY KEY,
SlDat int
)
GO 
*/
CREATE TABLE CTDONDH(
SoDH char(4),
MaVTu char(4),
SlDat int,
PRIMARY KEY(SoDH,MaVTu)
)
GO
--IDENTITY:trường tự động tăng ,dành cho các trường kiểu số 
----bảng class (id, name, status);pk[id];identity[id]
CREATE TABLE CLASS(
ID int IDENTITY(1,1) CONSTRAINT PK_CLASS PRIMARY KEY ,
NAME nvarchar(50),
STATUS bit 
)
GO
INSERT CLASS VALUES(N'Kiểm thử ',1),(N'Kỹ thuật phần mềm',0)
GO
INSERT CLASS (NAME) VALUES (N'KHOA HỌC MÁY TÍNH')
GO  
SELECT * FROM CLASS 
GO 
DELETE CLASS WHERE STATUS IS NULL 
GO 
INSERT CLASS (NAME) VALUES (N'KHOA HỌC MÁY TÍNH')
GO 
SELECT * FROM CLASS 
GO 

--2.2: RÀNG BUỘC MIỀN GIÁ TRỊ :
--CONSTRAINT : CHECK 
-- ATTRIBUTE : DATATYPE/ NULL/ NOT NULL 
--Tọ bảng ĐONDH(SoDH(char(4)),NgayDH(Datetime),MaNCC(char(3)))
--pk[SoDH]; ck[NgayDH]: ngày đặt hàng phải sau ỏ bằng ngày hiện tại và không để trống 
CREATE TABLE DONDH (
SoDH char(4) CONSTRAINT PK_DONDH PRIMARY KEY,
NgayDH datetime NOT NULL  CONSTRAINT CK_DONDH_NgayDH CHECK(NgayDH>=GETDATE()),
MaNCC char(3)
)
GO  
INSERT DONDH(SoDH ,NgayDH,MaNCC)VALUES('D001','2023/07/25','C01')
GO--ERROR 
--2.3: RÀNG BUỘC DEFAULT :
--CỘT DỮ LIỆU CÓ THỂ KHÔG CẦN THÊM GIÁ TRỊ KKHI THÊM MỚI 
--tạo bange PNHAP(SoPN char(4),NgayNhap(date), SoDH char(4))
--Pk[SoPN];CK[NgayNhap]:>= GETDATE();
--DF[NgayNhap]: là ngày hiện tại 
CREATE TABLE PNHAP(
SoPN char(4) CONSTRAINT PK_PNHAP PRIMARY KEY,
NgayNhap date
 CONSTRAINT CK_PNHAP_NgayNhap CHECK (NgayNhap>= GETDATE()-1)
CONSTRAINT DF_PNHAP_NgayNhap DEFAULT GETDATE(),
SoDH char(4) NOT NULL 
)
GO
 INSERT PNHAP(SoPN, SoDH) VALUES('P001','D001')
 GO 
 SELECT * FROM PNHAP
 GO 
 PRINT GETDATE()
 GO 
 PRINT GETDATE()-1
 GO
 --2.4: FOREIGN KEY : RÀNG BUỘCTHAM CHIẾU (KHÓA NGOẠI)
 --PXUAT(SoPX,NgayXuat,TenKH),PK[SoPX]
 --CTPXUAT(SoPX, MaVTu, SlXuat,DgXuat),PK[SoPX,MaVTu],FK[SoPX]->PXUAT[SoPX]
 CREATE TABLE PXUAT(
 SoPX char(4) PRIMARY KEY ,
 NgayXuat date,
 TenKH nvarchar(200)
 )
 GO   

 CREATE TABLE CTPXUAT(
 SoPX char(4)
  CONSTRAINT FK_CTPXUAT_SoPX FOREIGN KEY REFERENCES PXUAT(SoPX)
         ON UPDATE CASCADE 
		 ON DELETE NO ACTION ,--1

 MaVTu char(4) REFERENCES VATTU,-- cách viết ngắn gọn nhất :cách 3 
 SlXuat int ,
 DgXuat money,/*
 PRIMARY KEY (SoPX, MaVTu),
 CONSTRAINT FK_CTPXUAT_SoPX FOREIGN KEY(SoPX) REFERENCES PXUAT(SoPX) 
         ON UPDATE CASCADE 
		 ON DELETE NO ACTION --2*/
 ) 
 GO 

