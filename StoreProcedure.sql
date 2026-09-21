create procedure Employee1
@empId int
as 
begin
DROP  procedure Employee1
select *from tbl_employee
--where empId =@empId
--End;
--exec Employee1 @empId =101;
--create procedure InsertEmployee
--@empId int,
---@EmpName varchar,
--@age tinyint,
--@salary int
--as
--begin
--insert into tbl_employee(empId,EmpName,age,salary)
--values(@empId,@EmpName,@age,@salary)
--end
--exec InsertEmployee 
--@empId=104,
--@EmpName='Banguru',
--@age=21,
--@salary=6000
--create procedure UpdateEmployee1
--@empId int,
--@EmpName varchar(50)
--as
--begin
--update tbl_employee
--set EmpName=@EmpName
--where empId=@empId
--end;
--exec UpdateEmployee1
--@empId=104,
--
--@EmpName='Rahul'