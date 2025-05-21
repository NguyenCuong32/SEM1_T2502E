CREATE DATABASE HR_Database
GO
USE HR_Database
GO
CREATE TABLE Employee(
    Emp_No INT,
    Emp_Name NVARCHAR(255),
    Grade CHAR(1),
    PRIMARY KEY (Emp_No)
)

GO
CREATE TABLE Project(
    Project_Id INT,
    Project_Name NVARCHAR(60)
)
GO 
CREATE TABLE Grade(
    Grade_Id CHAR(1),
    Salary DECIMAL(6,2)
)
GO
CREATE TABLE Employee_Project(
    Emp_No INT,
    Project_Id INT
)

