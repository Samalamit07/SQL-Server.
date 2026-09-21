CREATE TABLE tbl_transporter (
    TransporterID INT IDENTITY(1,1) PRIMARY KEY,
    TransporterName NVARCHAR(150) NOT NULL,
    ContactPersonName NVARCHAR(150) NOT NULL,
    MobileNo NVARCHAR(10) NOT NULL,
   IsActive BIT NOT NULL DEFAULT 1,
   	CreatedAT DATETIME DEFAULT GETDATE(),
	UpdateAT DATETIME NULL
);