create table tbl_employee(
empId int primary key not null,
empName varchar(50) not null,
age tinyint 
);
create table tbl_Dept1(
DeptName varchar(50) not null,
 empId int Foreign key references tbl_employee(empId) 
);
select *from tbl_Dept1
drop  table tbl_Dept
--delete tbl_Dept
--select * from tbl_Dept
select * from tbl_employee
insert into tbl_employee(empId,empName,age)
values(101,'Amit',18),(102,'Vivek',19),
(103,'Jade',18);
update tbl_employee
set age =20,
empName='Villa',
salary=4000
where empId=103
update tbl_employee
 set salary=3000
where empId=102
update tbl_employee
 set salary=5000
where empId=101


--alter table tbl_employee
 --add salary decimal
 --select max(salary) as SecondHighestSalary from tbl_employee
 --where salary < (select max(salary) from tbl_employee);
-- select empName ,salary from tbl_employee
-- where salary =(select max(salary) from tbl_employee);
select empName from tbl_employee
where empName = 'Villa'
--sp_rename 'tbl_employee' , 'EmployeeId'
--sp_rename 'EmployeeId','tbl_employee'
sp_rename 'tbl_employee.EmpName','EmployeeName','Column'
sp_rename 'tbl_employee.EmployeeName','EmpName','Column'
--select * from tbl_employee where empId % 2 <>0
--select * from tbl_employee where empId % 2 =1
