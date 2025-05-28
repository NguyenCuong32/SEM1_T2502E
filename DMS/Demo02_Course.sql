DROP DATABASE STAR_CLASS;
GO
CREATE DATABASE STAR_CLASS
GO
USE STAR_CLASS
CREATE TABLE Learn
(
    LearnId INT IDENTITY(1,1),
    LearnName NVARCHAR(127),
    LearnDescription NVARCHAR(512),
    Capacity INT
    PRIMARY KEY(LearnId)
)
CREATE Table Course(
    CourseId INT IDENTITY(1,1),
    CourseName NVARCHAR(128),
    PRIMARY KEY (CourseId)
)
CREATE TABLE [Session]
(
    SessionId INT IDENTITY(1,1),
    SessionName NVARCHAR(127),
    [Description] NVARCHAR(512),
    LearnId INT,
    CourseId INT,
    PRIMARY KEY(SessionId),
    FOREIGN KEY(LearnId) REFERENCES Learn(LearnId),
    FOREIGN KEY (CourseId) REFERENCES Course(CourseId)
)
CREATE TABLE Faculty(
    FacultyId INT IDENTITY(1,1),
    FacultyName NVARCHAR(64),
    DOB DATE,
    [Address] NVARCHAR(128)
    PRIMARY KEY (FacultyId)
)
GO

  
GO
CREATE TABLE Course_Faculty(
    CourseId INT,
    FacultyId INT,
    PRIMARY KEY(CourseId,FacultyId),
    FOREIGN KEY(CourseId) REFERENCES [Course](CourseId),
    FOREIGN KEY(FacultyId) REFERENCES Faculty(FacultyId)
)
GO


INSERT Into dbo.Faculty (FacultyName,DOB,Address) VALUES(N'Nguyễn Văn Minh',GETDATE(),N'Hà nội')
INSERT Into dbo.Faculty (FacultyName,DOB,Address) VALUES(N'Nguyễn Thị Hoa',GETDATE(),N'Hà nội')
INSERT Into dbo.Faculty (FacultyName,DOB,Address) VALUES(N'Trần Thị Ánh',GETDATE(),N'Hà nội')
INSERT Into dbo.Faculty (FacultyName,DOB,Address) VALUES(N'Vũ Văn Hào',GETDATE(),N'Hà nội')


INSERT Into dbo.Learn(LearnName,LearnDescription,Capacity) VALUES(N'SQL Cơ bản',N'Học cơ bản về SQL',2)

INSERT Into dbo.[Course] (CourseName) VALUES(N'SQL Cơ bản')

INSERT Into dbo.[Course] (CourseName) VALUES(N'C Cơ bản')

INSERT Into dbo.[Course] (CourseName) VALUES(N'Java Cơ bản')

INSERT Into dbo.[Session] (SessionName,[Description],LearnId,CourseId) VALUES(N'Phần 1',N'Học cơ bản về SQL',1,1)
INSERT Into dbo.[Session] (SessionName,[Description],LearnId,CourseId) VALUES(N'Phần 2',N'Học cơ bản về SQL',1,1)



SELECT * from dbo.Faculty

SELECT * from dbo.Learn
SELECT * from dbo.Session
SELECT * from dbo.Course
SELECT * from dbo.Course_Faculty

INSERT INTO dbo.Course_Faculty (CourseId,FacultyId) VALUES(1,1)
INSERT INTO dbo.Course_Faculty (CourseId,FacultyId) VALUES(2,1)
INSERT INTO dbo.Course_Faculty (CourseId,FacultyId) VALUES(3,1)
INSERT INTO dbo.Course_Faculty (CourseId,FacultyId) VALUES(1,2)


-- Demo Where
Select * FROM dbo.Course WHERE CourseId ='1'
-- Demo like
SELECT * from dbo.Faculty WHERE FacultyName like N'Nguyễn%'

-- Demo Order
SELECT * from dbo.Faculty
SELECT * from dbo.Faculty Order by FacultyId ASC

-- Demo Join
-- Lấy thông tin về các giảng và khoá học của họ

Select 
        B.FacultyName,
        B.DOB,
        B.Address,
        C.CourseName
        from dbo.Course_Faculty A LEFT JOIN dbo.Faculty B ON A.FacultyId = B.FacultyId
                                  LEFT JOIN dbo.Course C ON A.CourseId = C.CourseId


-- Lấy tất cả session và learn của môn học SQL Cơ bản

SELECT
 A.CourseName,
 B.SessionName,
 B.[Description] 
 from dbo.Course A JOIN [Session] B ON A.CourseId = B.CourseId