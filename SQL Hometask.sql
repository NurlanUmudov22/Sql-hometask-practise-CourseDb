create table Teachers(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50),
[Age] int,
[Email] nvarchar(100) unique,
)

insert into Teachers([Name], [Surname], [Age], [Email])
values ('Cavid', 'Bashirov', 30, 'cavid@gmail.com'),
('Hesen', 'Hesenov', 30, 'hesen@gmailcom'),
('Elnur', 'Celilov', 28, 'elnur@gmail.com'),
('Samir', 'Ayxanov', 33, 'samir@gmail.com')


insert into Teachers([Name], [Surname], [Age], [Email])
values ('Bayram', 'Bayramov', 19, 'bayram@gmail.com')


create table Students(
[Id] int primary key identity(1,1),
[FullName] nvarchar(80) not null,
[Age] int,
[Address] nvarchar(200),
)



insert into Students( [FullName], [Age], [Address])
values ('Behruz Eliyev',37, 'Gunesli'),
	   ('Reshad Aghayev',21, 'Neftciler'),
	   ('Kamran Muradov',24 , 'Sumqayit'),
	   ('Hacixan Hacixanov',19, 'Yasamal'),
	   ('Zeyqem Ashurov',39 , 'Ehmedli')



select * from Teachers

select * from Students

select Count(*) as 'Students count' from Students

select [Name], [Surname] from Teachers where [Age] > 20

select * from Teachers where [Email] like '%c%'