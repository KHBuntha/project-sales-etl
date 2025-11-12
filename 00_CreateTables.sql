CREATE DATABASE SalesDB;
GO

USE SalesDB;
GO

CREATE TABLE StagingSales (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    OrderDate DATE,
    CustomerName NVARCHAR(100),
    Product NVARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2)
);

CREATE TABLE FactSales (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName NVARCHAR(100),
    Product NVARCHAR(100),
    TotalAmount DECIMAL(18,2),
    OrderMonth VARCHAR(7)
);
