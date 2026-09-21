use amitdb;

--CREATE VIEW
--create view StudentView
--as select Student_id,Student_name,Address
--from Student
--create view StudentView1
--as select Student_id,Student_name,Address	
--from Student
--where Address='villa'
--select *from StudentView1
--select * from StudentView

--DELETE VIEW
--Drop view StudentView
--Drop view StudentView1

--ADD MULTIPLE TABLE IN VIEW
select * from Student
select * from Branch
create view StudentView as
 select s.Student_name,s.Address,b.BranchName from
 Student s inner join Branch b
on s.Student_id =b.Student_id
select * from StudentView
--Modify view table
--alter  view CollegeView as
--select Student_id,Student_name,Address,BranchName
--from Student
select * from sys.views
where name='Personview'
ALTER view [dbo].[StudentView] as
 select s.Student_name,s.Address,b.BranchName from
 Student s inner join Branch b
on s.Student_id =b.Student_id

