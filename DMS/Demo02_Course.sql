DROP DATABASE STAT_CLASS;
GO
CREATE DATABASE STAT_CLASS
GO
USE STAT_CLASS
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

CREATE TABLE Course_Faculty(
    SessionId INT,
    FacultyId INT,
    PRIMARY KEY(SessionId,FacultyId)
)