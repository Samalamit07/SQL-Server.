USE [amitdb]
GO
Create Procedure Select_employee
As
SELECT [id]
      ,[userName]
      ,[Salary]
      ,[city]
  FROM [dbo].[employee]

GO


