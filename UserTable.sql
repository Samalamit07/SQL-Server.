CREATE TABLE tbl_customer_user1 (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    Password NVARCHAR(50) NOT NULL,
    LedgerCategory NVARCHAR(100) NOT NULL,
    UserRole NVARCHAR(100) NOT NULL,
    UserName NVARCHAR(100) NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1,
    MonthwiseSales BIT NOT NULL DEFAULT 0,
    CustomerWise BIT NOT NULL DEFAULT 0,
    BrandWiseSales BIT NOT NULL DEFAULT 0,
    SalesPlan BIT NOT NULL DEFAULT 0,
    ModifyDays INT NOT NULL,
	CreatedAT DATETIME DEFAULT GETDATE(),
	UpdateAT DATETIME NULL
); 
select *from tbl_customer_user1