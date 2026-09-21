CREATE TABLE tbl_city1 (
    CityID INT IDENTITY(1,1) PRIMARY KEY,
    CityName NVARCHAR(100) NOT NULL,
    StateName NVARCHAR(100) NOT NULL,
    IsActive BIT NOT NULL,
FOREIGN KEY (StateName) REFERENCES tbl_state1(StateName)
); 