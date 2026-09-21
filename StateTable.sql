CREATE TABLE tbl_state1 (
     StateName NVARCHAR(100) NOT NULL PRIMARY KEY,
    CountryName NVARCHAR(100) NOT NULL,
    IsActive BIT NOT NULL
); EXEC sp_rename 'tbl_state1.CountryName','Description'
Select *from tbl_state1
