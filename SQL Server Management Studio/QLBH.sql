
USE QLBH
GO 
------------------TẠO CÁC BẢNG TRONG CSDL----------------
-----BẢNG CATEGORY 
CREATE TABLE CATEGORY(
 ID bigint ,
 NAME nvarchar(500),
 NOTES ntext ,
 ICON nvarchar(250),
 IDPARENT bigint,
 SLUG nvarchar(160),
 META_TITLE nvarchar(100),
 META_KEYWORD nvarchar(500),
 META_DESCRIPTION nvarchar(500),
 CREATED_DATE datetime,
 UPDATED_DATE datetime,
 CREATED_BY bigint NULL,
 UPDATED_BY bigint NULL,
 ISDELETE tinyint,
 ISACTIVE tinyint,
 PRIMARY KEY  (ID)
 )
 GO 

-------BẢNG PRODUCT 
CREATE TABLE PRODUCT (
 ID bigint,
 NAME nvarchar(500),
 DESCRIPTION ntext,
 NOTES ntext,
 IMAGE nvarchar(500),
 IDCATEGORY bigint,
 CONTENTS ntext,
 PRICE decimal,
 QUATITY int,
 SLUG nvarchar(160),
 META_TITLE nvarchar(100),
 META_KEYWORD nvarchar(500),
 META_DESCRIPTION nvarchar(500),
 CREATED_DATE datetime,
 UPDATED_DATE datetime,
 CREATED_BY bigint NULL,
 UPDATED_BY bigint NULL,
 ISDELETE tinyint,
 PRIMARY KEY (ID)
 )
 GO 

 ---BẢNG CONFIGURATIONS
 CREATE TABLE CONFIGURATIONS(
 ID bigint,
 NAME nvarchar(500),
 NOTES ntext,
 ISDELETE tinyint ,
 ISACTIVE tinyint,
 PRIMARY KEY (ID)
 )
 GO 

 -----BẢNG PRODUCT_CONFIG 
 CREATE TABLE PRODUCT_CONFIG(
 ID bigint,
 IDPRODUCT bigint,
 IDCONFIG bigint,
 VALUE ntext 
 PRIMARY KEY (ID)
 )
 GO 

 ---BẢNG PRODUCT_IMAGES
 CREATE TABLE PRODUCT_IMAGES
 ( ID bigint PRIMARY KEY,
   NAME nvarchar(250),
   URLIMG nvarchar(250),
   IDPRODUCT bigint
 )
 GO 

 --BẢNG NEWS_CATEGORY 
 CREATE TABLE NEWS_CATEGORY(
 ID bigint PRIMARY KEY,
 NAME nvarchar(500),
 NOTES ntext,
 ICON nvarchar(250),
 IDPARENT bigint,
 SLUG nvarchar(160),
 META_TITLE nvarchar(100),
 META_KEYWORD nvarchar(500),
 META_DESCRIPTION nvarchar(500),
 CREATED_DATE datetime,
 UPDATE_DATE datetime,
 CREATED_BY bigint NULL,
 UPDATED_BY bigint NULL,
 ISDELETE tinyint,
 ISACTIVE tinyint 
 )
 GO 

--BẢNG CUSTOMER 
CREATE TABLE CUSTOMER(
ID bigint PRIMARY KEY,
NAME nvarchar(250),
USERNAME nvarchar(50),
PASSWORD nvarchar(32),
ADDRESS nvarchar(500),
EMAIL nvarchar(150),
PHONE nvarchar(50),
CREATED_DATE datetime ,
ISDELETE tinyint,
ISACTIVE tinyint 
)
GO 
---BẢNG ORDERS 
CREATE TABLE ORDERS (
ID bigint PRIMARY KEY ,
IDORDERS char(10),
ORDERS_DATE datetime,
IDCUSTOMER bigint NULL,
TOTAL_MONEY decimal,
NOTES ntext ,
NAME_RECIVER nvarchar(250),
ADDRESS nvarchar(500),
EMAIL nvarchar(150),
PHONE nvarchar(50),
ISDELETE tinyint ,
ISACTIVE tinyint 
)
GO 

---BẢNG ORDERS_DETAILS 
CREATE TABLE ORDERS_DETAILS (
ID bigint PRIMARY KEY,
IDORD bigint,
IDPRODUCT bigint,
PRICE decimal,
QTY int,
TOTAL decimal,
RETURN_QTY int 
)
GO 

--BẢNG NEWS
CREATE TABLE NEWS
(ID bigint PRIMARY KEY,
 NAME nvarchar(500),
 DESCRIPITION ntext,
 IMAGE nvarchar(550),
 IDNEWSCATEGORY bigint,
 CONTENTS ntext,
 SLUG nvarchar(160),
 META_TITLE nvarchar(100),
 META_KEYWORD nvarchar(500),
 META_DESCRIPTION NVARCHAR(500),
 CREATED_DATE datetime ,
 UPDATED_DATE datetime,
 CREATED_BY bigint NULL,
 UPDATED_BY bigint NULL,
 ISDELETE tinyint,
 ISACTIVE tinyint
)
GO 

--BẢNG PAYMENT_METHOD 
