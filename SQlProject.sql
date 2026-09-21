/*Brand List*/
CREATE TABLE Products (
    BrandName NVARCHAR(255)primary key  NOT NULL,
    PriceIncludeTax DECIMAL(18,2) NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE()
);
/*City list*/
CREATE TABLE tbl_city1 (
    CityID INT IDENTITY(1,1) PRIMARY KEY,
    CityName NVARCHAR(100) NOT NULL,
    StateName NVARCHAR(100) NOT NULL,
    IsActive BIT NOT NULL,
FOREIGN KEY (StateName) REFERENCES tbl_state1(StateName)
); 
/*Company List*/
CREATE TABLE tbl_employee (
    EmpCode NVARCHAR(50) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Address1 NVARCHAR(200) Not NULL,
    Address2 NVARCHAR(200)Not NULL,
    Address3 NVARCHAR(200)Not NULL,
    StateName NVARCHAR(100)Not NULL,
    Location NVARCHAR(100)Not NULL,
    RepDesignation NVARCHAR(100)Not NULL,
    PhoneNo NVARCHAR(20)Not NULL,
    AltPhoneNo NVARCHAR(20)Not NULL,
    ReferredBy NVARCHAR(100)Not NULL,
    ContactNo NVARCHAR(20)Not NULL,
    TIN NVARCHAR(50)Not NULL,
    IsActive BIT NOT NULL DEFAULT 1
);
/* Country list */
CREATE TABLE tbl_country (
    CountryId INT PRIMARY KEY not null,
    CountryName NVARCHAR(100) NOT NULL,
    IsActive BIT NOT NULL
);  ALTER TABLE tbl_country
    ADD Description Varchar(255);
	select * from tbl_country
/* Customer list*/
CREATE TABLE tbl_customer (
    CustomerId INT IDENTITY(1,1) PRIMARY KEY Not Null,
    CustomerCode NVARCHAR(50)Not Null,
    LedgerCategory int Not Null,
    FirmType int Not Null,
    Website NVARCHAR(200)Not Null,
    PrimaryMobileNo NVARCHAR(20)Not Null,
    SalesRep NVARCHAR(100)Not Null,
    CreditDays int Not Null,
    CreditLimit DECIMAL(18,2) Not Null,
    GodownName NVARCHAR(100) Not Null,
    Address1 NVARCHAR(200) Not Null,
    Address2 NVARCHAR(200) Not Null,
    Area NVARCHAR(100) Not Null,
    City NVARCHAR(100) Not Null,
    State NVARCHAR(100) Not Null,
    Pincode NVARCHAR(20) Not Null,
    LicenseNo NVARCHAR(50) Not Null,
    PANNo NVARCHAR(20) Not Null,
    GSTINNo NVARCHAR(20) Not Null,
    Email NVARCHAR(150) Not Null,
    PriceLevel NVARCHAR(100) Not Null,
    ContactPerson NVARCHAR(100) Not Null,
    ContactNo NVARCHAR(20) Not Null,
    IsActive BIT Not Null,
	CreatedAT DATETIME DEFAULT GETDATE(),
	UpdateAT DATETIME NULL
);
/* Godown List */
CREATE TABLE tbl_godown (
    GodownID INT IDENTITY(1,1) PRIMARY KEY Not null,
    LocationID INT NOT NULL,   
    GodownName NVARCHAR(100) NOT NULL,
    Address1 NVARCHAR(200) NOT NULL,
    Address2 NVARCHAR(200) NOT NULL,
    PhoneNo NVARCHAR(20) NOT NULL,
    AltPhoneNo NVARCHAR(20) NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1,
	CreatedAT DATETIME DEFAULT GETDATE(),
	UpdateAT DATETIME NULL
);
/* Role List*/
CREATE TABLE tbl_role (
    RoleID INT IDENTITY(1,1) PRIMARY KEY Not Null,
    RoleName NVARCHAR(100) NOT NULL,
    RoleType NVARCHAR(50) NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1,
    CreatedAT DATETIME DEFAULT GETDATE(),
	UpdateAT DATETIME NULL
);
/* Sale Representive List*/
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
/* State List*/
CREATE TABLE tbl_state1 (
     StateName NVARCHAR(100) NOT NULL PRIMARY KEY,
    CountryName NVARCHAR(100) NOT NULL,
    IsActive BIT NOT NULL
); EXEC sp_rename 'tbl_state1.CountryName','Description'
Select *from tbl_state1
/* Supplier List*/
CREATE TABLE tbl_supplier (
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierCode NVARCHAR(50) NOT NULL,
    SupplierName NVARCHAR(150) NOT NULL,
    FirmType NVARCHAR(50) NULL,
    Website NVARCHAR(200) NULL,
    PrimaryMobileNo NVARCHAR(20) NOT NULL,
    SupplierLocation NVARCHAR(100) NOT NULL,
    Address1 NVARCHAR(200) NOT NULL,
    Address2 NVARCHAR(200) NOT NULL,
    Area NVARCHAR(100) NULL,
    City NVARCHAR(100) NULL,
    StateName NVARCHAR(100) NOT NULL,
    Pincode NVARCHAR(10) NOT NULL,
    LicenseNo NVARCHAR(50) NULL,
    PANNo NVARCHAR(20) NOT NULL,
    GSTINNo NVARCHAR(20) NOT NULL,
    ContactPerson NVARCHAR(100) NOT NULL,
    Email NVARCHAR(150) NULL,
    PriceLevel NVARCHAR(50) NOT NULL,
    ExpDeliveryDays INT NOT NULL,
    ContactNo NVARCHAR(20) NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1,
	CreatedAT DATETIME DEFAULT GETDATE(),
	UpdateAT DATETIME NULL
);
/* Transporter List*/
CREATE TABLE tbl_transporter (
    TransporterID INT IDENTITY(1,1) PRIMARY KEY,
    TransporterName NVARCHAR(150) NOT NULL,
    ContactPersonName NVARCHAR(150) NOT NULL,
    MobileNo NVARCHAR(10) NOT NULL,
   IsActive BIT NOT NULL DEFAULT 1,
   	CreatedAT DATETIME DEFAULT GETDATE(),
	UpdateAT DATETIME NULL
);
/* User List*/
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