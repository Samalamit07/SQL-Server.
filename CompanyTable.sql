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