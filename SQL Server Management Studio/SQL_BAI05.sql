USE SQL_BAI04
GO
SELECT * FROM SinhVien
GO

--1. VIEW:
--1.1: VIEW HỆ THỐNG :
--<Xem tất cả các cột trong csdl>
SELECT * FROM sys.all_views
GO
SELECT * FROM sys.all_objects
GO
SELECT * FROM sys.columns
GO
--1.2:TẠO VIEW NGƯỜI DÙNG 
--Tạo view hiển thị thông tin sinh viên ,khoa
CREATE VIEW vw_SinhVienKhoa
AS
  SELECT Khoa.MaKH, Khoa.TenKH, SinhVien.MaSV, SinhVien.HoSV, SinhVien.TenSV, SinhVien.Phai, SinhVien.NgaySinh, SinhVien.NoiSinh, SinhVien.HocBong, SinhVien.DiemTrungBinh
  FROM Khoa INNER JOIN
         SinhVien ON Khoa.MaKH =SinhVien.MaKH
GO
SELECT *FROM vw_SinhVienKhoa
GO 
--Tạo view hiển thị thông tin sinh viên
CREATE VIEW vw_GetAllSinhVien
AS 
   SELECT *FROM SinhVien
GO 
--1.3: SỬA ĐỔI VIEW (ALTER VIEW)
--1.3.a) THÊM TÙY CHỌN ENCRYPTION
sp_helptext vw_GetAllSinhVien
go
ALTER VIEW vw_GetAllSinhVien
WITH ENCRYPTION
AS 
  SELECT*FROM SinhVien
GO 

--1.3.b) Tùy chọn CHECK OPTION => sử dụng để ràng buộc dữ liệu khi cập nhật thông qua view
SELECT*FROM vw_GetAllSinhVien
GO
INSERT vw_GetAllSinhVien VALUES('T07','A','AA',1,'1999-01-01','HN','AV',1234,0)
GO
ALTER VIEW vw_GetAllSinhVien
WITH ENCRYPTION
AS 
  SELECT*FROM SinhVien where Phai =0
  WITH CHECK OPTION 
GO 
INSERT vw_GetAllSinhVien VALUES('T08','A','AA',1,'1999-01-01','HN','AV',1234,0)
GO
--1.3.C) Tùy chọn SCHEMABINDING : ngăn không cho phép xóa sửa đối tượng cơ sở đã tham ra trong view
SELECT * INTO khoa_temp FROM Khoa
GO
CREATE VIEW vw_KhoaTemp
WITH ENCRYPTION, SCHEMABINDING 
AS
  SELECT *FROM khoa_temp
GO
--ERROR:Syntax '*' is not allowed in schema-bound objects.
--khi dùng câu lệnh schemabinding không đc dùng dấu * trong câu lênh truy vấn

CREATE VIEW vw_KhoaTemp
WITH ENCRYPTION, SCHEMABINDING 
AS
  SELECT [MaKH], [TenKH]
  FROM khoa_temp
GO
--error:Cannot schema bind view 'vw_KhoaTemp' because name 'khoa_temp' is invalid for schema binding. Names must be in two-part format and an object cannot reference itself.
--sửa lại như sau:
CREATE VIEW vw_KhoaTemp
WITH ENCRYPTION, SCHEMABINDING 
AS
  SELECT [MaKH], [TenKH]
  FROM dbo.khoa_temp
GO--phải sửa là dbo.khoa_temp thì mới đc
DROP TABLE khoa_temp
GO --Cannot DROP TABLE 'khoa_temp' because it is being referenced by object 'vw_KhoaTemp'.
--:CÁI NÀY LÀ THÔNG BÁO NÓ ĐÃ ĐC THAMGIA TRONG VIEW,THÌ NÓ KO CHO PHÉP XÓA NỮA,
--NẾU KO CÓ SCHEMABINDDING THÌ NÓ VẪN XÓA

--1.4:DROP VIEW :xóa đối tượng view
DROP VIEW vw_KhoaTemp
GO--bảng này ko còn xuất hiện trong view nữa 

--1.5:ORDER BY in select on view
CREATE VIEW vw_GetAllSinhVien
AS
  SELECT *
  FROM SinhVien
  ORDER BY MaSV ASC--BÊN TRONG NÀY CHẠY NHƯ BTHUONG ,CHẠY TỪ A01->B..KHI CHỈ CHẠY MỖI SELECT 
GO --NẾU CHẠY TẤT CẢ THÌ SẼ XẢY RA LỖI
--The ORDER BY clause is invalid in views, inline functions, derived tables, subqueries, and common table expressions, unless TOP, OFFSET or FOR XML is also specified.

CREATE VIEW vw_GetSinhV
AS
  SELECT TOP 100 PERCENT*
  FROM SinhVien
  ORDER BY Phai ASC
GO --chạy tất cả thì nó vẫn ra nhưng khi test lại thì ko đc săp xếp như yêu cầu 
SELECT * FROM vw_GetSinhV
GO--KIỂM TRA lại thì nó ko sấp xếp đúng,SELECT TOP 100 PERCENT*:biểu thức vô nghĩa 

--viết lại:
CREATE VIEW vw_GetSinh
AS
  SELECT TOP 99.999999 PERCENT*
  FROM SinhVien
  ORDER BY Phai ASC--ORDER BY phải đi kèm với TOP 99.999999 percent *
GO 
SELECT * FROM vw_GetSinh
GO
--10.Liệt kê danh sách sinh viên gồm các thông tin sau: Họ và tên sinh viên, Giới Tính,
-- Ngày sinh.Trong đó Giới tính hiển thị ở dạng Nam/Nữ tùy theo giá trị
-- của field Phai là True hay False 
--CREATE VIEW vw_Khoa
ALTER VIEW vw_Khoa
AS
  SELECT HoSV+''+TenSV AS N'Họ và tên sv',
         [Giới tính]= CASE
		       WHEN Phai=0 THEN N'Nam'
			   else N'Nữ'
			   END
		 ,[Ngày sinh]= CONVERT(varchar(10),NgaySinh,103) 
  FROM SinhVien
GO 
SELECT *FROM vw_Khoa
GO
--11.Cho biết danh sách sinh viên gồm các thông tin sau : Mã sinh viên, Tuổi , Nơi sinh
--Mã khoa.Trong đó tuổi sẽ đc tính bằng cách lấy năm hiện hành trừ cho năm sinh 
CREATE VIEW vw_SINHVIEN
AS 
  SELECT MaSV , Tuoi=(YEAR(GETDATE())-YEAR(NgaySinh))
  ,NoiSinh,MaKH 
  FROM SinhVien
GO
SELECT *FROM vw_SINHVIEN
GO

--19.Cho biết môn nào có điểm thi cao nhất, gồm các thông tin : tên môn , số tiết ,tên sinh viên, điểm

CREATE VIEW vw_19
AS 
   SELECT TOP 1 WITH TIES MonHoc.TenMH, MonHoc.Sotiet, SinhVien.TenSV, Ketqua.Diem
   FROM            MonHoc INNER JOIN
                         Ketqua ON MonHoc.MaMH = Ketqua.MaMH INNER JOIN
                         SinhVien ON Ketqua.MaSV = SinhVien.MaSV
ORDER BY Diem desc
GO
SELECT *FROM vw_19
GO

--2.THỦ TỤC : STORED PROCEDURE
--2.1:HỆ THỐNG 
--sp_helptext 
EXEC sp_helptext '[dbo].[vw_GetAllSinhVien]'
GO 
--2.2:THỦ TỤC NGƯỜI DÙNG ĐỊNH NGHĨA TRÊN CSDL HIỆN TẠI 
--DDL: CREATE / ALTER / DROP 
--2.2.a) Tạo(CREATE)
--tạo thủ tục hiển thị thông tin sinh viên
CREATE PROC spud_SINHVIEN_LIST
AS 
   SELECT*FROM SinhVien
GO 
--THỰC THI 
EXEC spud_SINHVIEN_LIST
GO 
EXECUTE spud_SINHVIEN_LIST
GO
spud_SINHVIEN_LIST
GO
--2.2.b) ALTER :SƯẢ ĐỔI 
ALTER PROC spud_SINHVIEN_LIST
WITH RECOMPILE 
AS 
   SELECT * FROM SinhVien
GO 
--HOẶC 
ALTER PROC spud_SINHVIEN_LIST 
AS 
   SELECT * FROM SinhVien
GO 
EXEC spud_SINHVIEN_LIST WITH RECOMPILE
GO 
--2.2.c)DROP:
DROP PROC spud_SINHVIEN_LIST
GO
--2.3:THỦ TỤC VỚI THAM SỐ ĐẦU VÀO 
--Liệt kê thông tin sinh viên theo mã khoa người dùng chọn
CREATE PROC spud_SinhVienByMaKH
   --TRHAM SỐ ĐẦU VÀO 
   @MaKH nvarchar(2)
with ENCRYPTION ,RECOMPILE 
AS 
BEGIN 
    SELECT * FROM SinhVien
	WHERE MaKH= @MaKH
END
GO 

--exec :2 cách này là tương đương vs nhau , dùng cách nào cx đc
EXEC spud_SinhVienByMaKH @MaKH = 'AV'
GO--CÁCH TƯỜNG MINH LÀ : EXEC tên thủ tục tên biến='giá trị'
EXEC spud_SinhVienByMaKH 'AV'
GO--cách truyền không tường minh , thì ko có tên biến mà thay vào đó truyền tuần tự danh sách các giá trị cho từng biến số

--2.4: Tham số đầu vào tùy chọn
--Liệt kê thông tin sinh viên theo mã khoa người dùng chọn,nếu không chọn thì liệt kê tất cả
CREATE PROC spud_SinhVienByMaKHDefault 
   --TRHAM SỐ ĐẦU VÀO 
   @MaKH nvarchar(2)=null --nếu không chọn, nó có giá trị mặc định 
with ENCRYPTION ,RECOMPILE 
AS 
BEGIN 
    SELECT * FROM SinhVien
	WHERE MaKH=ISNULL(@MaKH,MaKH)--NẾU MÀ NULL THÌ CHO HIỂN THỊ TẤT CẢ VÀ NÓ LÀ MaKH 
END--sử dụng hàm isnull để kiểm tra nếu giá trị của MaKH là null thì ta đặt luôn là MaKH (isnull(@MaKH,MaKH)),thì biểu thức này luôn luôn đúng
GO 

--SỬ DỤNG 
EXEC spud_SinhVienByMaKHDefault
GO
--KO TRUYỀN THAM SỐ 
EXEC spud_SinhVienByMaKHDefault 'AV'
GO
--2.5:Tthur tục với tham số đầu ra (output)
--Viết thủ tục tính tổng số sinh viên
CREATE PROC spud_TotalSV
  -- Tham số đầu ra
  @COUNT int OUTPUT
WITH RECOMPILE 
AS 
  SELECT @COUNT = COUNT(MaSV) FROM SinhVien--khi dùng count ko đc dùng sai,chỉ định cột trong tập kết quả mà ta cần lấy 
GO 
--KHI exec thì cần phải có 1 thành phần để đón giá trị này 
DECLARE @T INT --CẦN 1 biến 
EXEC spud_TotalSV @COUNT =@T OUTPUT --thủ tục exec vs tên và giá tri biến @count =@t (không đc đặt @t =@count)và từ khóa đầu ra
PRINT @T--hiển thị
GO 
--viết thủ tục tính tổng số sinh viên theo khoa (mã khoa).nếu ko có mã khoa thì tinhs tất cả
CREATE PROC spud_TotalSvByKhoa
  @MaKH char(2) = NULL,
  @COUNT int OUTPUT 
WITH RECOMPILE 
AS
   IF @MaKH IS null
       SELECT @COUNT = COUNT(MaSV) FROM SinhVien-- trong trường hợp null thì ko cần có điều kiện
   ELSE
       SELECT @COUNT = COUNT(MaSV) FROM SinhVien WHERE MaKH = @MaKH --trong trường hợp ko null thì phải có điều kiện
GO 


























































































































