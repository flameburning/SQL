--Tạo CSDL / tạo cấu trúc bảng với các ràng buộc
--1. Tạo CSDL
CREATE TABLE SQL_BAI002_01
GO
--SỬ DỤNG CSDL 
USE SQL_BAI02_01
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
CREATE TABLE VATTU(
   MaVTu char(4) CONSTRAINT PK_VATTU PRIMARY KEY ,
   TenVTu nvarchar(50),
   DvTinh nvarchar(20),
   PhanTram real
)
GO