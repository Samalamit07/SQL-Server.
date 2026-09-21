USE [amitdb]
GO
create Procedure insert_employee_sp
@userName varchar(50),
@Salary int,
@city varchar(50),
@id int

as
begin
INSERT INTO [dbo].[employee]
           (userName, 
           Salary, 
           city,
		   id 
		   )
     VALUES(
           @userName,
           @Salary, 
		   @city,
		   @id
		   );
		   end
		  
		  
		   

