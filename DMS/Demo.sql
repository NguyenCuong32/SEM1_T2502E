-- Xoá Database HR_Database
DROP DATABASE HR_Database;
GO
-- Tạo mới Database
CREATE DATABASE HR_Database
GO
-- Làm việc với Database mong muốn
USE HR_Database
GO
-- Tạo mới bảng Grade
CREATE TABLE Grade(
    Grade_Id CHAR(1),
    Salary DECIMAL(6,2)
    PRIMARY KEY(Grade_Id) -- Đặt Grade_Id làm khoá chính
)
-- Tạo mới bảng Employee
CREATE TABLE Employee(
    Emp_No INT,-- Trường dữ liệu và kiểu dữ liệu 
    Emp_Name NVARCHAR(255),
    Grade_Id CHAR(1),
    PRIMARY KEY (Emp_No), -- Đặt Emp_No làm khoá chính của bảng Employee
    FOREIGN KEY (Grade_Id) REFERENCES Grade(Grade_Id)
)

GO
-- Tạo mới bảng Project
CREATE TABLE Project(
    Project_Id INT,
    Project_Name NVARCHAR(60)
    PRIMARY KEY(Project_Id) -- Đặt Project_Id làm khoá chính
)
GO 

GO
CREATE TABLE Employee_Project(
    Emp_No INT,
    Project_Id INT
    PRIMARY KEY(Emp_No,Project_Id) -- Đặt Emp_No và Project_Id làm khoá chính
)

-- Thêm dữ liệu vào các bảng
INSERT INTO dbo.Grade VALUES('A',2000);
INSERT INTO dbo.Grade VALUES('B',1500);
INSERT INTO dbo.Grade VALUES('C',1000);

SELECT * FROM dbo.Grade; -- Lấy tất cả các cột (trường) trong toàn bộ bảng Grade
SELECT Salary FROM dbo.Grade; -- Lấy cột Salary trong toàn bộ bảng Grade
SELECT * FROM dbo.Grade WHERE Grade_Id ='B' -- Lấy tất cả các cột với Grade_Id là B
SELECT Salary FROM dbo.Grade WHERE Grade_Id ='B'-- Lấy cột Salary Với Grade_Id là B

-- Cập nhật dữ liệu cho Grade_Id = C lên 1200

UPDATE dbo.Grade SET Salary = 1200 Where Grade_Id = 'C'

-- Xoá Grade_Id. = C
Delete dbo.Grade Where Grade_Id = 'C';


-- Thêm Dữ liệu cho bảng Employee

INSERT INTO dbo.Employee VALUES (1,N'Nguyên Văn A','A')
INSERT INTO dbo.Employee VALUES (2,N'Lê Thị Thảo','A')
INSERT INTO dbo.Employee VALUES (3,N'Lê Bình Minh','C')
INSERT INTO dbo.Employee VALUES (4,N'Nguyễn Hải Nam','C')
INSERT INTO dbo.Employee VALUES (5,N'Nguyễn Hải Minh','C')

SELECT * FROM dbo.Employee


-- Thêm Dữ liệu cho bảng Project
INSERT INTO dbo.Project Values(1,'HR Management')
INSERT INTO dbo.Project Values(2,'CMS')
INSERT INTO dbo.Project Values(3,'BlockChain')

Select * from dbo.Project


INSERT INTO dbo.Employee_Project VALUES(1,1)
INSERT INTO dbo.Employee_Project VALUES(1,2)
INSERT INTO dbo.Employee_Project VALUES(2,1)
INSERT INTO dbo.Employee_Project VALUES(2,3)

SELECT * from dbo.Employee_Project


-- Lấy dữ liệu về thu nhập của tất cả nhân viên

select A.Emp_No,A.Emp_Name,B.Salary from dbo.Employee A Join dbo.Grade B On A.Grade_Id = B.Grade_Id