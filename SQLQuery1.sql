use amitdb
select * from employee;
--insert the value
insert into employee(id,EmpName,City, Salary)
values('1','Amit','Bls','100000'),
('2','Aman','Bls','200000'),
('3','Vivek','Bls','300000'),
('4','Jaya','Bls','400000'),
('5','Om panda','Bls','500000'),
('6','Akash','Bls','600000'),
('7','bhakti','Bls','700000');
select * from employee;
--alter the value
 alter table employee
alter column id int not null;
--alter and add pk
alter table employee
add constraint pk_employee
primary key(id);
--delete 
alter table employee
drop column city; 
--delete command
delete from employee
where EmpName='Amit'
--rename
--change the table name
sp_rename 'employee','employeetbl'
sp_rename 'employeetbl','employee'
---change the field name
sp_rename 'employee.EmpName','userName','column'
---update 
update employee
set EmpName ='Developer'
---truncate
truncate table employee;
---rollback
alter table employee
add city varchar(20)
select * from  employee where id=1 or id=3 or id=7

