create table Student(
Student_id int not null,
Student_name varchar(50),
Address varchar(50),
);
select *from Student
insert Student(Student_id,Student_name,Address)
values(101,'Vivek','Villa'),
(102,'Banguru','Anji'),(103,'Manas','Junia')
create table Branch(
Student_id int not null,
BranchName varchar(50)
);
select * from Branch
insert Branch(Student_id,BranchName)
values(101,'CSE'),(102,'ME'),(104,'EE')
--select * from Student as s
--inner join Branch as b on s.Student_id=b.Student_id
--select * from Student as s
--left join Branch as b on s.Student_id= b.Student_id
--select * from Student as s
--right join Branch as b on s.Student_id=b.Student_id
--select * from Student as s
--full outer join Branch as b on s.Student_id = b.Student_id
--select * from Student as s
--Cross join Branch as b 





