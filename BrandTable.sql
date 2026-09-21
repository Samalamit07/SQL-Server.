CREATE TABLE Products (
    BrandName NVARCHAR(255)primary key  NOT NULL,
    PriceIncludeTax DECIMAL(18,2) NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE()
);