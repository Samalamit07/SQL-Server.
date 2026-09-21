create table tbl_usa(
Name varchar(50) not null,
age tinyint );
insert into tbl_usa(Name,age)
values('John',23),('Alex',24),('Bob',21),('Jack',22),('David',23)
select * from tbl_usa
create table tbl_uk(
Name varchar(50) not null,
age tinyint );
insert into tbl_uk(Name,age)
values('Vivek',23),('Alex',24),('Bob',21),('Banguru',22),('Gayle',23)
select Name,age from tbl_usa
union select Name,age from tbl_uk
select Name,age from tbl_usa
union all select Name,age from tbl_uk


