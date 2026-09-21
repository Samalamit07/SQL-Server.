CREATE TABLE tbl_country (
    CountryId INT PRIMARY KEY not null,
    CountryName NVARCHAR(100) NOT NULL,
    IsActive BIT NOT NULL
);  ALTER TABLE tbl_country
    ADD Description Varchar(255);
	select * fr om tbl_country