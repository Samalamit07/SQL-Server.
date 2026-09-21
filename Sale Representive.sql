CREATE TABLE tbl_sales_representative (
    SalesRepID INT IDENTITY(1,1) PRIMARY KEY not null,
    EmpCode NVARCHAR(50) NOT NULL,
    Name NVARCHAR(100) NOT NULL,
    Address1 NVARCHAR(200) NOT NULL,
    Address2 NVARCHAR(200) NOT NULL,
    Address3 NVARCHAR(200) NOT NULL,
    StateName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(100) NOT NULL,
    RepDesignation NVARCHAR(100) NOT NULL,
    PhoneNo NVARCHAR(20) NOT NULL, 
    AltPhoneNo NVARCHAR(20) NOT NULL,
    ReferredBy NVARCHAR(100) NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1,
	CreatedAT DATETIME DEFAULT GETDATE(),
	UpdateAT DATETIME NULL
);
Select * from tbl_sales_representative