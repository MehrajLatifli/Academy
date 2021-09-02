create database Academy
use Academy




--Groups

create table Groups 
(
Id int primary key IDENTITY (1,1) NOT NULL,
Groupname nvarchar(10) NOT NULL,
Grouprating int NOT NULL,
[Year] int NOT NULL,

Check(Grouprating>=0 AND Grouprating<=5),
Check([Year]>=1 AND [Year]<=5),
Check(Groupname <>' '),
UNIQUE (ID,Groupname)
)

Insert into Academy.dbo.Groups(Groupname,Grouprating, [Year]) 
values
('G-T45TT44',5,5),
('Y-Z41ZZ45',3,5),
('F-F55FF55',2,5),
('U-U78UU77',1,5),
('I-K55KK54',5,5)


Select* from Academy.dbo.Groups




--Chairs (Departments)

create table Chairs 
(
Id int primary key IDENTITY (1,1) NOT NULL,
Financing money NOT NULL default(0),
Departmentname nvarchar(100) NOT NULL,

Check(Departmentname <>' '),
Check(Financing>=0),
UNIQUE (Departmentname)
)

Insert into Academy.dbo.Chairs(Financing,Departmentname) 
values
(155050.56,'History'),
(120450.56,'Economy'),
(150000.56,'Biology'),
(150300.56,'Mathematic'),
(180300.56,'Philosophy')


Select* from Academy.dbo.Chairs




--Faculties

create table Faculties 
(
Id int primary key IDENTITY (1,1) NOT NULL,
Facultyname nvarchar(100) NOT NULL,

Check(Facultyname <>' '),
UNIQUE (Facultyname)
)

Insert into Academy.dbo.Faculties(Facultyname) 
values
('Archeology'),
('History'),
('Logistics'),
('Economy'),
('Anatomy'),
('Microbiology'),
('Higher mathematics'),
('Cybernetics'),
('Ancient philosophy'),
('Modern philosophy')


Select* from Academy.dbo.Faculties




--Teachers

create table Teachers 
(
Id int primary key IDENTITY (1,1) NOT NULL,
Employmentdate date NOT NULL,
[Name] nvarchar(max) NOT NULL,
Premium money NOT NULL default(0),
Wagerate money NOT NULL default(0),
Surname nvarchar(max) NOT NULL,

Check(Employmentdate >='1990-01-01'),
Check([Name] <>' '),
Check(Premium>=0),
Check(Wagerate>0),
Check(Surname <>' '),
)

Insert into Academy.dbo.Teachers(Employmentdate,[Name],Premium,Wagerate,Surname) 
values
('1993-12-12','Feride',250.0,1000.0,'Zeynalli'),
('1995-01-12','Ferid',150.0,1000.0,'Zeynalli'),
('2000-05-15','Zeynal',350.0,1000.0,'Feridli'),
('2001-02-18','Mahmud',250.0,1000.0,'Mahmudlu'),
('1993-02-22','Zerife',150.0,1000.0,'Zeynalzade')


Select* from Academy.dbo.Teachers