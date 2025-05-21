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

