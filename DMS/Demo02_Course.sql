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

CREATE TABLE [Session]
(
    SessionId INT IDENTITY(1,1),
    SessionName NVARCHAR(127),
    [Description] NVARCHAR(512),
    LearnId INT,
    PRIMARY KEY(SessionId),
    FOREIGN KEY(LearnId) REFERENCES Learn(LearnId)
)
CREATE TABLE Faculty(
    FacultyId INT IDENTITY(1,1),
    FacultyName NVARCHAR(64),
    DOB DATE,
    [Address] NVARCHAR(128)
    PRIMARY KEY (FacultyId)
)
GO
CREATE Table Course(
    CourseId INT IDENTITY(1,1),
    CourseName NVARCHAR(128),
    SessionID INT,
    PRIMARY KEY (CourseId)
)
  
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


INSERT Into dbo.Learn(LearnName,LearnDescription,Capacity) VALUES(N'SQL Cơ bản',N'Học cơ bản về SQL',2)

INSERT Into dbo.[Session] (SessionName,[Description],LearnId) VALUES(N'Phần 1',N'Học cơ bản về SQL',1)
INSERT Into dbo.[Course] (CourseName,[SessionID]) VALUES(N'SQL Cơ bản',1)

INSERT Into dbo.[Course] (CourseName,[SessionID]) VALUES(N'C Cơ bản',1)

INSERT Into dbo.[Course] (CourseName,[SessionID]) VALUES(N'Java Cơ bản',1)


SELECT * from dbo.Faculty

SELECT * from dbo.Learn
SELECT * from dbo.Session
SELECT * from dbo.Course
SELECT * from dbo.Course_Faculty

INSERT INTO dbo.Course_Faculty (CourseId,FacultyId) VALUES(1,1)
INSERT INTO dbo.Course_Faculty (CourseId,FacultyId) VALUES(2,1)
INSERT INTO dbo.Course_Faculty (CourseId,FacultyId) VALUES(3,1)
INSERT INTO dbo.Course_Faculty (CourseId,FacultyId) VALUES(1,2)