create table Groups(

[Id] int,
[Name] nvarchar(50)
)

create table Students(
[Id] int,
[Name] nvarchar(50),
[Surname] nvarchar(50),
[Age] int 
)

drop table Groups

alter table Students 
add [Address] nvarchar(200)

alter table Students 
drop column [Address]


exec sp_rename Students, MyStudents

exec sp_rename MyStudents, Students



exec sp_rename 'Students.Surname',Lastname

exec sp_rename 'Students.Lastname',Surname


select * from Students


insert into Students([Id],[Name],[Surname],[Age])
values(6, 'Behruz', 'Eliyev',37),
	  (2, 'Reshad', 'Aghayev',21),
	  (3, 'Kamran', 'Muradov',24),
	  (4, 'Hacixan', 'Hacixanov',19),
	  (5, 'Zeyqem', 'Ashurov',39)


delete from Students where [Id] = 6



insert into Students([Id],[Name],[Surname],[Age])
values(7, 'Behruz', 'Eliyev',37)



update Students
set [Age] = 25
where [Id] = 5


select [Name], [Surname] from Students

select [Age] from Students

select [Age] as 'Students age' from Students

select Count(*) as 'Students count' from Students

select AVG([Age]) as 'Students avarage' from Students

select Sum([Age]) as 'Students age sum' from Students

select Min([Age]) as 'Students Min age' from Students

select Max([Age]) as 'Students Max age' from Students

select * from Students where [Id] = 3

select * from Students where [Id] > 3

select Count(*) as 'Count Students id>3' from Students where [Id] > 3

select * from Students where [Id] > 2 and [Id] < 5

select * from Students where Age between 25 and 39

select * from Students where [Name] like '%r'

select * from Students where [Name] like 'r%'

select * from Students where [Age] = (select Min(Age) from Students)

declare @age int
set @age = (select Min(Age) from Students)
select * from Students where [Age] = @age


select * from Students
order by [Age]


select * from Students
order by [Age] desc


select Substring((select [Name] from Students where [Id] = 3), 1,3) as ExtractString;


declare @resultName nvarchar(50)
set @resultName = (select [Name] from Students where [Id] = 3)
select substring(@resultName, 1,3) as ExtractString;


select LEN([Name]) as 'Length name' from Students where [Id] = 3 


select SUBSTRING([Name], 1, 3) from Students


create table Employees(
[Id] int primary key identity(1,1),
[Name] nvarchar(50)not null,
[Surname] nvarchar(50) default 'XXX',
[Age] int check (Age>= 18),
[Email] nvarchar(100) unique,
)


insert into Employees([Name],[Surname],[Age],[Email])
values('Nurlan','Umudov',22,'nurlan@gmail.com'
       )

select * from Employees




