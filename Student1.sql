-- verify the database structure

-- List the tables

SELECT
    TABLE_SCHEMA,
    TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;
GO

-- view the columns

EXEC sp_help 'dbo.Projects';
GO

EXEC sp_help 'dbo.Tasks';
GO

EXEC sp_help 'dbo.AIInteractions';
GO