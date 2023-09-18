--T-SQL
CREATE DATABASE SQL_BAI02
GO
USE SQL_BAI02
GO
--1. DDL ( CREATE / ALTER / DROP)-OJECT
--Tạo CSDL
CREATE DATABASE SQL_BAI02
GO
--SỬ DỤNG CSDL 
USE SQL_BAI02
GO
--
--CREATE -> table
--Tạo bảng đơn giản
CREATE TABLE ABC (
CLASSID int PRIMARY KEY,
CLASSNAME nvarchar(100))
GO 
---ALTER 
--THÊM MỘT CỘT VÀO BẢNG 
ALTER TABLE ABC
ADD STATUS bit 
GO 
---DROP ->TABLE
DROP TABLE ABC
GO 
--2. DML-> ngôn ngữ thao tác dữ liệu
--DML: SELECT / INSERT / UPDATE / DELETE
--2.1: SELECT
SELECT * FROM ABC
GO 
--2.2: INSERT : THÊM MỘT BẢN GHI DỮ LIỆU VÀO BẢNG
INSERT INTO ABC (CLASSID,CLASSNAME)VALUES(1,N'Kỹ thuật phần mềm')
GO 
/*
--GHI CHÚ :
    -Các cột có ràng buộc notnull thì phải được liệt kê sau tên bảng 
	-Danh sách giá trị phải tương ứng với danh sách cột đc thêm dữ liệu
	-Dữ liệu kiểu chuỗi phải đc đặt trong dấu nháy đơn :''
	-Dữ liệu kiểu ngày cũng đặt trong dấu nháy đơn :'' theo mặc định 
	       'yyyy/mm/dd' hoặc :'mm/dd/yyyy'
	-Cột có chứa giá trị tự tăng thì ko đc liệt kê khi thêm mới
*/
INSERT ABC VALUES (2,N'Khoa học máy tính')
GO 

--THÊM NHIỀU BẢN GHI 
INSERT ABC VALUES 
(3,N'AGFJ'),
(4,N'Thương mại điện tử')
GO 
SELECT * FROM ABC 
GO 

--2.3: UPDATE: CẬP NHẬT DỮ LIỆU TRÊN CÁC CỘT TRONG BẢNG 
--CẬP NHẬT CLAAS CÓ MÃ(CLASSID =3) VỚI TÊN (CLASSNAME='KIỂM THỬ PHẦN MỀM')
UPDATE ABC
SET CLASSNAME =N'KIỂM THỬ PHẦN MỀM'
WHERE CLASSID = 3
GO 
SELECT *FROM ABC
GO
--2.4:DELETE :XOAS1 HOẶC NHIỀU DÒNG DỮ LIỆU TRONG BẢNG
DELETE ABC WHERE CLASSID=1
GO
SELECT *FROM ABC 
GO 
--2.5:SELECT : Lấy dữ liệu từ 1 hoặc nhiều bảng
select *from ABC
GO 
--3.DCL:ĐỌC THÊM SLIDE (->DÀNH CHO DBA NHIỀU HƠN) 
--4.Kiểu dữ liệu (SQL SERVER)
/*
   *Kiểu số:
       -Kiểu số nguyên :tinyint,smallint, int,bigint,...
	   -Kiểu số thực: real , fload, decimal,numberic,...
   *Kiểu chuỗi:
       -Chuỗi non-unicode: char(gồm 8000 kí tự),varchar(4000 kí tự),text(2 tỉ kí tự),...
	   -Chuỗi unicode: nchar(gồm 8000 kí tự) ,nvarchar(4000 kí tự),ntext(2 tỉ kí tự),... 
   *Kiểu ngày giờ:date, datetime,datetime2,smallDatetime,...
   *Kiểu logic:bit
*/
--5.Biến ,hằng ,biểu thức,...
--Biến:
--Khai báo:
DECLARE @tenBien varchar(100)
DECLARE @AGE int
--Gán giá trị:
SET @tenBien='Devmaster';
SELECT @AGE=6
--In giá trịtừ biến/lấy giá trị
PRINT @tenBien
SELECT @AGE
GO 
--6.Điều khiển luồng:
--If...ELSE
--WHILE

DECLARE @age int
SET @age =6
IF @age >= 6
  SET @age= @age +10
ELSE 
  SET @age = @age - 10
PRINT @age 
--WHILE 
WHILE @age <20
BEGIN 
  PRINT '.....' +CAST( @age as nvarchar)
  SET @age = @age +1 
END
GO 
--PHÂN LÔ

--7.Các hàm hệ thống thường dùng
PRINT GETDATE() 
GO 
--CONVERT 
PRINT CONVERT(varchar(10), GETDATE(),105)
PRINT CONVERT(varchar(10), GETDATE(),103)
--DAY,MONTH,YEAR,...
PRINT DAY(GETDATE())
PRINT MONTH(GETDATE())
PRINT YEAR(GETDATE())










