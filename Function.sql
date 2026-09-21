--Predefine Function or Aggregate
select * from tbl_employee
select sum(salary) 'Sum Salary' from tbl_employee
select count(salary) 'count Salary' from tbl_employee
select Max(salary) 'Max Salary' from tbl_employee

select Max(salary) 'SecondHighestSalary' from tbl_employee
where salary < (select max(salary) from tbl_employee)
select avg(salary) 'Avg Salary' from tbl_employee
select min(salary) 'Min Salary' from tbl_employee
select count(*) 'Count All' from tbl_employee
select count(empId) 'EmpId' from tbl_employee
select empId,EmpName from tbl_employee where empId=103 
select Upper(EmpName) from tbl_employee
select Lower(EmpName) from tbl_employee
select ltrim (EmpName) from tbl_employee
select abs(salary) from tbl_employee
select * from tbl_employee where empId % 2=0
select * from tbl_employee where empId % 2=1
-- Userdefined Function
create function dbo.GetEmployee()
returns table
as 
return (
select empId,EmpName from tbl_employee)
select * from dbo.GetEmployee()

