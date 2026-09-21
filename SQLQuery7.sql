USE [amitdb]
GO
create Procedure delete_employee_sp
@id int
as
DELETE FROM [dbo].[employee]
      WHERE id=@id
GO


