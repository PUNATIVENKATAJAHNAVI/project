CREATE TABLE Product(
ProductId INT,
name VARCHAR(100),
Description VARCHAR(255),
Price DECIMAL(10,2),
Category VARCHAR(50));

// REGION TABLE

CREATE TABLE Region(
RegionId INT,
Name VARCHAR(100));

//TIME PERIOD TABLE

CREATE TABLE TimePeriod(
TimePeriodId INT,
Name VARCHAR(100));

//customer table
CREATE TABLE Customer (
    CustomerID INT,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Age INT,
    LoyaltyStatus VARCHAR(50)
);

//purchase table
CREATE TABLE Purchase (
    PurchaseID INT,
    CustomerID INT,
    TimePeriodID INT,
    TotalAmount DECIMAL(10, 2)
);

//puchase product table
CREATE TABLE PurchaseProduct (
    PurchaseID INT,
    ProductID INT
);

//product region table
CREATE TABLE ProductRegion(
ProductID INT,
RegionId INT));

//Inventory table
CREATE TABLE Inventory(
InventoryId INT,
ProductId INT,
Stocklevel INT);