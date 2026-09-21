----example of query
select * from tbl_employee
select * from tbl_Dept1
insert  into tbl_Dept1(DeptName,empId)
values('HR',101),('Manager',102),('Developer',103),('Tester',104),('Developer',105),('CEO',106),('Tester',107)
select EmpName from tbl_employee where salary =8000
---Subquery
select * from tbl_employee where salary=(select max(salary) from tbl_employee)
select  max(salary) as SecondHighestSalary from tbl_employee where salary <(select max(salary) from tbl_employee)
select EmpName ,salary from tbl_employee where salary= (select max(salary) from tbl_employee where salary < (select max(salary) from tbl_employee))