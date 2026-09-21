USE [amitdb]
GO
create procedure update_employee_sp
@userName varchar(20),
@Salary int,
@city varchar(20),
@id int
As
UPDATE [dbo].[employee]
   SET userName =@userName,
      Salary = @Salary,
      city = @city
 WHERE id=@id
GO


